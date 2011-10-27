/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Definitions for a dictionaries and functions that manipulate them.
 */

// Project Includes
#include "util.h"

#ifndef DICTIONARY_H
#define DICTIONARY_H

typedef enum {
	LOWER,
	UPPER
} rest_t;

typedef struct {
	double* upper;
	double* lower;
} bounds_t;

typedef struct {
	int num_vars, num_cons;
	
	double* objective;
	double* matrix;
	
	// These labels correspond to non-basis variables.
	int* col_labels;
	// These labels correspond to basis variables.
	int* row_labels;
	
	bounds_t con_bounds;
	bounds_t var_bounds;
	
	rest_t* var_rests;
} dictionary;

void dictionary_free(dictionary* dict);
void dictionary_init(dictionary* dict);
void dictionary_init_struct(dictionary* dict);
bool dictionary_is_final(dictionary* dict);
void dictionary_pivot(dictionary* dict, int col_index, int row_index);
void dictionary_view(const dictionary* dict);

#endif
