/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2012/01/06
 * Description:	Code for the pthread workers.
 */

// Standard Includes
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

// Project Includes
#include "list.h"
#include "util.h"
#include "work_queue.h"

// Functions

work_queue_t* work_queue_create(void) {
	work_queue_t* q;
	
	q = work_queue_new();
	
	work_queue_init(q);
	
	return q;
}

void work_queue_destroy(work_queue_t* q) {
	
}

void work_queue_free(work_queue_t* q) {
	work_queue_destroy(q);
	free(q);
}

inline void work_queue_init(work_queue_t* q) {
	list_init(&q->levels);
	q->size = 0;
}

inline work_queue_t* work_queue_new(void) {
	return (work_queue_t*) malloc(sizeof(work_queue_t));
}

void work_queue_empty(work_queue_t* q) {
	list_t* level;
	work_unit_t* wu;
	
	while ((level = (list_t*) list_unshift(&q->levels)) != NULL) {
		
		while ((wu = (work_unit_t*) list_unshift(level)) != NULL) {
			work_unit_free(wu);
		}
		
		free(level);
	}
}

void work_queue_add(work_queue_t* q, work_unit_t* wu) {
	list_t* level;
	list_node_t* node = NULL;
	work_unit_t* wu_tmp;
	
	for (node = q->levels.head; node != NULL; node = node->next) {
		level	= (list_t*)node->data;
		wu_tmp	= (work_unit_t*)level->head->data; 
		
		if (wu->elp.size == wu_tmp->elp.size) {
			list_shift(level, wu);
			break;
			
		} else if (wu->elp.size < wu_tmp->elp.size) {
			level = list_create();
			list_shift(level, wu);
			
			list_insert_before(&q->levels, node, level);
			break;
		}
	}
	
	/*
	 * If node is null we need to insert a new level at the end of the queue.
	 * This can happen when the work unit's level isn't present and belongs at
	 * the end of the list or when the queue is empty.
	 */
	if (node == NULL) {
		level = list_create();
		list_shift(level, wu);
		
		list_push(&q->levels, level);
	}
	
	++q->size;
}

work_unit_t* work_queue_unshift(work_queue_t* q) {
	list_t* level;
	work_unit_t* wu;
	
	if (q->size == 0) {
		return NULL;
	}
	
	level = (list_t*)q->levels.head->data;
	
	wu = list_pop(level);
	
	if (level->size == 0) {
		free(level);
		list_unshift(&q->levels);
	}
	
	--q->size;
	
	return wu;
}

work_unit_t* work_queue_pop(work_queue_t* q) {
	list_t* level;
	work_unit_t* wu;
	
	if (q->size == 0) {
		return NULL;
	}
	
	level = (list_t*)q->levels.tail->data;
	
	wu = list_pop(level);
	
	if (level->size == 0) {
		free(level);
		list_pop(&q->levels);
	}
	
	--q->size;
	
	return wu;
}

inline void work_unit_free(work_unit_t* wu) {
	elr_t* elp;
	
	dict_free(wu->dict);
	
	while ((elp = (elr_t*) list_unshift(&wu->elp)) != NULL) {
		free(elp);
	}
	
	free(wu);
}
