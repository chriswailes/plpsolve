/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2012/01/06
 * Description:	Definitions for the pthread workers.
 */

#ifndef WORKER_H
#define WORKER_H

// Standard Includes
#include <pthread.h>
#include <sys/types.h>

// Project Includes
#include "dictionary.h"
#include "work_queue.h"

typedef struct {
	long id;
	pthread_t thread;
	
	pthread_mutex_t lock;
	
	work_queue_t work;
} worker_t;

work_unit_t* build_work_unit(dict_t* dict);

void*		worker_body(void* arg);
void			worker_init(worker_t* worker, long id;);
work_unit_t*	worker_steal(worker_t* self);

dict_t*	workers_manager(dict_t* dict);
void		workers_setup(void);

#endif
