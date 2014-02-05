/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2012/01/06
 * Description:	Code for the pthread workers.
 */

#define _GNU_SOURCE

// Standard Incldues
#include <math.h>
#include <pthread.h>
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

// Project Includes
#include "bloom.h"
#include "dictionary.h"
#include "work_queue.h"
#include "worker.h"

// Macros

#define WORKER_LOCK(worker) (pthread_mutex_lock(&((worker)->lock)))
#define WORKER_UNLOCK(worker) (pthread_mutex_unlock(&((worker)->lock)))

// Forward Declarations
int intcmp(const void* a, const void* b);

// Global Variables

extern config_t cfg;

static worker_t* workers;

static pthread_mutex_t filter_lock;
static bloom_t dict_filter;

static pthread_mutex_t barrier_lock;
static pthread_cond_t barrier;
static volatile uint barrier_count;

static pthread_mutex_t final_lock;
static pthread_cond_t final_cv;
static dict_t* volatile final_dict;

// Functions

void* worker_body(void* arg) {
	unsigned char* key;
	dict_t* dict;
	elr_t* el_pair;
	work_unit_t* wu, * new_wu;
	
	worker_t* self = (worker_t*) arg;
	
	//printf("Worker %ld: On CPU %d.\n", self->id, sched_getcpu());
	
	while (TRUE) {
		/*
		 * Wait for a simplex round to start.
		 */
		
		pthread_mutex_lock(&barrier_lock);
		
		printf("Worker %ld: Before barrier.\n", self->id);
		
		++barrier_count;
		pthread_cond_wait(&barrier, &barrier_lock);
		--barrier_count;
		
		printf("Worker %ld: After barrier.\n", self->id);
		
		pthread_mutex_unlock(&barrier_lock);
		
		// Try to find the final dictionary.
		while (final_dict == NULL) {
			
			/*
			 * Obtain a work unit.
			 */
			
			printf("Worker %ld: Obtaining work unit.\n", self->id);
			
			WORKER_LOCK(self);
			
			if (self->work.size > 0) {
				printf("Worker %ld: Taking work from local queue.\n", self->id);
				
				// Check our local work queue.
				wu = work_queue_unshift(&self->work);
				
			} else {
				printf("Worker %ld: Stealing work.\n", self->id);
				
				// Nothing in local queue; time to steal.
				wu = worker_steal(self);
			}
			
			WORKER_UNLOCK(self);
			
			printf("Worker %ld: Got work unit.\n", self->id);
			
			// Allocate space for they key if this is our first work unit.
			if (key == NULL) {
				key = calloc(wu->dict->num_cons, sizeof(int));
			}
			
			/*
			 * Process work unit.
			 */
			
			while ((el_pair = list_pop(&wu->elp)) != NULL) {
				// Get a clone of this work unit's dictionary.
				dict = dict_clone(wu->dict);
				
				// Perform the pivot.
				dict = dict_pivot(dict, el_pair->entering, el_pair->leaving, el_pair->new_rest, el_pair->adj_amount);
				
				// Check for the final dictionary.
				if (dict_is_final(dict)) {
					
					printf("Worker %ld: Found a final dictionary.\n", self->id);
					
					pthread_mutex_lock(&final_lock);
					
					if (final_dict == NULL) {
						
						printf("Worker %ld: Assigning final dictionary.\n", self->id);
						
						final_dict = dict;
					}
					
					pthread_cond_signal(&final_cv);
					pthread_mutex_unlock(&final_lock);
					
					// Break out of the work unit handeling loop.
					break;
				}
				
				// Make the key.
				memcpy(key, dict->row_labels, dict->num_cons * sizeof(int));
				qsort(key, dict->num_cons, sizeof(int), intcmp);
				
				// Check to see if we've visited this vertex before.
				if (bloom_check(&dict_filter, key, dict->num_cons * sizeof(int))) {
					/*
					 * This vertex has been seen before.  Free the
					 * dictionary and move on.
					 */
					dict_free(dict);
					
				} else {
					/*
					 * This vertex hasn't been seen before.  Generate a
					 * work unit for it and add it to our queue.
					 */
					bloom_add(&dict_filter, key, dict->num_cons * sizeof(int));
					
					new_wu = build_work_unit(dict);
					
					WORKER_LOCK(self);
					work_queue_add(&self->work, new_wu);
					WORKER_UNLOCK(self);
				}
			}
			
			work_unit_free(wu);
		}
		
		// Clean up any data left over from this simplex round.
		work_queue_empty(&self->work);
		
		free(key);
		key = NULL;
	}
	
	return NULL;
}

inline void worker_init(worker_t* worker, long id) {
	worker->id = id;
	pthread_mutex_init(&worker->lock, NULL);
	
	work_queue_init(&worker->work);
}

work_unit_t* worker_steal(worker_t* self) {
	uint index;
	
	work_unit_t* wu = NULL;
	
	while (wu == NULL) {
		for (index = cfg.ncpus; index-- > 0;) {
			if (index != self->id && workers[index].work.size > 0) {
				
				WORKER_LOCK(&workers[index]);
				
				if (workers[index].work.size > 0) {
					wu = work_queue_pop(&workers[index].work);
					
					WORKER_UNLOCK(&workers[index]);
					break;
					
				} else {
					WORKER_UNLOCK(&workers[index]);
				}
			}
		}
	}
	
	return wu;
}

void workers_setup(void) {
	long ncpus;
	
	pthread_attr_t worker_attrs;
	cpu_set_t cpus;
	
	/*
	 * Data Structure Initialization
	 */
	
	bloom_init(&dict_filter, BLOOM_SIZE_MEDIUM, 3, bernstein_hash, sax_hash, sdbm_hash);
	
	/*
	 * Mutex and CV Initialization
	 */
	
	pthread_mutex_init(&filter_lock, NULL);
	
	pthread_mutex_init(&barrier_lock, NULL);
	pthread_cond_init(&barrier, NULL);
	
	pthread_mutex_init(&final_lock, NULL);
	pthread_cond_init(&final_cv, NULL);
	
	/*
	 * Worker Initialization
	 */
	
	ncpus = cfg.ncpus;
	workers = calloc(ncpus, sizeof(worker_t));
	
	// Initialize the thread attributes.
	pthread_attr_init(&worker_attrs);
	
	while (ncpus-- > 0) {
		/*
		 * Zero out the CPU set and then add a single CPU.
		 */
		CPU_ZERO(&cpus);
		CPU_SET(ncpus, &cpus);
		
		/*
		 * Set the thread to be bound the that single CPU.
		 */
		pthread_attr_setaffinity_np(&worker_attrs, sizeof(cpu_set_t), &cpus);
		
		/*
		 * Create the thread and set it to work.
		 */
		worker_init(&workers[ncpus], ncpus);
		pthread_create(&workers[ncpus].thread, &worker_attrs, worker_body, &workers[ncpus]);
	}
	
	pthread_attr_destroy(&worker_attrs);
}

dict_t* workers_manager(dict_t* dict) {
	work_unit_t* wu;
	
	printf("Manager: Before spinlock.\n");
	
	// Make sure all workers are at the barrier.
	// FIXME Spinlock
	while (barrier_count != cfg.ncpus) {}
	
	printf("Manager: After spinlock.\n");
	
	// Reset data.
	final_dict = NULL;
	bloom_reset(&dict_filter);
	
	printf("Manager: After bloom reset.\n");
	
	// Set up initial work.
	wu = build_work_unit(dict);
	work_queue_add(&(workers[0].work), wu);
	
	printf("Manager: After initial work unit placement.\n");
	
	// Wake the workers up.
	pthread_mutex_lock(&final_lock);
	pthread_cond_broadcast(&barrier);
	
	printf("Manager: After broadcasting to the barrier.\n");
	
	// Wait for a worker to find the final dictionary.
	pthread_cond_wait(&final_cv, &final_lock);
	
	// Unlock the final lock for use next round.
	pthread_mutex_unlock(&final_lock);
	
	printf("Manager: About to return.\n");
	
	return final_dict;
}

work_unit_t* build_work_unit(dict_t* dict) {
	uint col_index, row_index;
	double max_con;
	
	clr_t* clrs;
	
	elr_t flip_elr;
	elr_t* elr;
	work_unit_t* wu;
	
	clrs	= calloc(dict->num_cons, sizeof(clr_t));
	wu	= malloc(sizeof(work_unit_t));
	
	wu->dict = dict;
	list_init(&wu->elp);
	
	// Test the dictionary for flipping.
	dict_select_entering_and_leaving(dict, &flip_elr);
	
	if (flip_elr.flip) {
		dict_flip_rest(dict, flip_elr.entering, flip_elr.new_rest);
	}
	
	// Build the actual work unit.
	for (col_index = dict->num_vars; col_index-- > 0;) {
		if (dict_var_can_enter(dict, col_index)) {
			max_con = INFINITY;
			
			// Calculating all 'can leave' results.
			for (row_index = dict->num_cons; row_index-- > 0;) {
				dict_var_can_leave(dict, &clrs[row_index], col_index, row_index);
				
				// Find the max constraint value.
				if (clrs[row_index].viable && clrs[row_index].constraint < max_con) {
					max_con = clrs[row_index].constraint;
				}
			}
			
			// Build entering and leaving pairs.
			for (row_index = dict->num_cons; row_index-- > 0;) {
				if (clrs[row_index].viable && clrs[row_index].constraint == max_con) {
					elr = malloc(sizeof(elr_t));
					
					elr->entering		= col_index;
					elr->leaving		= row_index;
					elr->adj_amount	= dict->col_rests[col_index] == UPPER ? -max_con : max_con;
					elr->new_rest		= clrs[row_index].new_rest;
					
					list_shift(&wu->elp, elr);
				}
			}
		}
	}
	
	free(clrs);
	
	return wu;
}

int intcmp(const void* a, const void* b) {
	return *(int*)a - *(int*)b;
}

