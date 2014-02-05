/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2012/01/24
 * Description:	A list implementation.
 */

// Standard Includes
#include <stdlib.h>

// Project Includes
#include "list.h"

// Functions

list_t* list_create(void) {
	list_t* list;
	
	list = list_new();
	list_init(list);
	
	return list;
}

void list_destroy(list_t* list) {
	list_node_t* node;
	
	while (list->head != NULL) {
		node = list->head;
		list->head = node->next;
		
		free(node);
	}
}

void list_free(list_t* list) {
	list_destroy(list);
	free(list);
}

void list_init(list_t* list) {
	list->head = NULL;
	list->tail = NULL;
	
	list->size = 0;
}

list_t* list_new(void) {
	return (list_t*)malloc(sizeof(list_t));
}

void list_push(list_t* list, void* data) {
	list_node_t* node;
	
	node = malloc(sizeof(list_node_t));
	node->data = data;
	node->next = NULL;
	
	if (list->size++ != 0) {
		list->tail->next	= node;
		node->prev		= list->tail;
		list->tail		= node;
		
	} else {
		node->prev = NULL;
		list->head = list->tail = node;
	}
}

void* list_pop(list_t* list) {
	void* data;
	list_node_t* node;
	
	if (list->size == 0) {
		return NULL;
	}
	
	node = list->tail;
	data = node->data;
	
	if (--list->size == 0) {
		list->head = list->tail = NULL;
		
	} else {
		node->prev->next = NULL;
		list->tail = node->prev;
	}
	
	free(node);
	
	return data;
}

void list_shift(list_t* list, void* data) {
	list_node_t* node;
	
	node = malloc(sizeof(list_node_t));
	node->data = data;
	node->prev = NULL;
	
	if (list->size++ != 0) {
		list->head->prev	= node;
		node->next		= list->head;
		list->head		= node;
		
	} else {
		node->next = NULL;
		list->head = list->tail = node;
	}
}

void* list_unshift(list_t* list) {
	void* data;
	list_node_t* node;
	
	if (list->size == 0) {
		return NULL;
	}
	
	node = list->head;
	data = node->data;
	
	if (--list->size == 0) {
		list->head = list->tail = NULL;
		
	} else {
		node->next->prev = NULL;
		list->head = node->next;
	}
	
	free(node);
	
	return data;
}

void list_insert_after(list_t* list, list_node_t* node, void* data) {
	list_node_t* new_node;
	
	if (node == list->tail) {
		list_push(list, data);
		
	} else {
		new_node = malloc(sizeof(list_node_t));
		new_node->data = data;
		
		new_node->next = node->next;
		new_node->prev = node;
		
		node->next->prev = new_node;
		node->next = new_node;
		
		++list->size;
	}
}

void list_insert_before(list_t* list, list_node_t* node, void* data) {
	list_node_t* new_node;
	
	if (node == list->head) {
		list_shift(list, data);
		
	} else {
		new_node = malloc(sizeof(list_node_t));
		new_node->data = data;
		
		new_node->next = node;
		new_node->prev = node->prev;
		
		node->prev->next	= new_node;
		node->prev		= new_node;
		
		++list->size;
	}
}
