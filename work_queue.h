/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2012/01/06
 * Description:	Definitions for the pthread workers.
 */

#ifndef WORK_QUEUE_H
#define WORK_QUEUE_H

// Standard Includes
#include <sys/types.h>

// Project Includes
#include "dictionary.h"
#include "list.h"
#include "util.h"

// Types

typedef struct {
	// A list of lists.
	list_t levels;
	uint size;
} work_queue_t;

typedef struct {
	dict_t* dict;
	
	// Entering and leaving pairs.
	list_t elp;
} work_unit_t;

// Functions

work_queue_t*	work_queue_create(void);
void			work_queue_destroy(work_queue_t* q);
void			work_queue_free(work_queue_t* q);
void			work_queue_init(work_queue_t* q);
work_queue_t*	work_queue_new(void);

void work_queue_empty(work_queue_t* q);

void			work_queue_add(work_queue_t* q, work_unit_t* unit);
work_unit_t*	work_queue_unshift(work_queue_t* q);
work_unit_t*	work_queue_pop(work_queue_t* q);

void work_unit_free(work_unit_t* unit);

#endif
