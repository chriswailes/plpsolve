/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2012/01/24
 * Description:	A list implementation.
 */

#ifndef LIST_H
#define LIST_H

// Standard Includes
#include <sys/types.h>

// Project Includes

// Types

typedef struct  list_node_s {
	struct list_node_s* prev;
	struct list_node_s* next;
	
	void* data;
} list_node_t;

typedef struct {
	list_node_t* head;
	list_node_t* tail;
	
	uint size;
} list_t;

// Functions

list_t*	list_create(void);
void		list_destroy(list_t* list);
void		list_free(list_t* list);
void		list_init(list_t* list);
list_t*	list_new(void);

void		list_push(list_t* list, void* data);
void*	list_pop(list_t* list);
void		list_shift(list_t* list, void* data);
void*	list_unshift(list_t* list);

void		list_insert_after(list_t* list, list_node_t* node, void* data);
void		list_insert_before(list_t* list, list_node_t* node, void* data);

#endif
