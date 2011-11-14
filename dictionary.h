/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Definitions for a dictionaries and functions that manipulate them.
 */

#ifndef DICTIONARY_H
#define DICTIONARY_H

// Standard Includes
#include <sys/types.h>

// Project Includes
#include "matrix.h"
#include "util.h"

typedef enum {
	LOWER,
	UPPER
} rest_t;

typedef enum {
	NOPE = 0,
	BAD,
	GOOD
} viable_t;

typedef struct {
	double* upper;
	double* lower;
} bounds_t;

// Can-Leave-Result type
typedef struct {
	double constraint;
	rest_t new_rest;
	
	viable_t viable;
} clr_t;

// Entering-and-Leaving-Result type
typedef struct {
	uint entering;
	uint leaving;
	
	rest_t new_rest;
	
	bool flip;
} elr_t;

typedef struct {
	uint row_index;
	double amount;
} irow_t;

typedef struct {
	irow_t* rows;
	uint num_rows;
} iset_t;

typedef struct {
	int* unbounded_vars;
} unbounded_vars_t;

typedef struct {
	uint num_vars, num_cons;
	
	double* objective;
	matrix_t matrix;
	
	// These labels correspond to non-basis variables.
	uint* col_labels;
	// These labels correspond to basis variables.
	uint* row_labels;
	
	// The location of the pair of a split.  Unidirectional, so only one of a
	// pair points at the other (to prevent dupes).
	uint* split_vars;

	bounds_t con_bounds;
	bounds_t var_bounds;
	
	rest_t* var_rests;
} dict_t;

void		dict_free(dict_t* dict);
double	dict_get_constraint_value(const dict_t* dict, uint row_index);
iset_t	dict_get_infeasible_rows(const dict_t* dict);
uint		dict_get_num_unbounded_vars(const dict_t* dict);
double	dict_get_var_value_by_label(const dict_t* dict, uint var_label);
double	dict_get_var_bound_value(const dict_t* dict, uint col_index);
void		dict_init(dict_t* dict);
bool		dict_is_final(const dict_t* dict);
dict_t*	dict_new(uint num_vars, uint num_cons);
void		dict_pivot(dict_t* dict, uint col_index, uint row_index, rest_t new_rest);
void		dict_populate_split_vars(dict_t* dict, uint starting_split_var);
void		dict_resize(dict_t* dict, uint new_num_vars, uint new_num_cons);
void		dict_select_entering_and_leaving(const dict_t* dict, elr_t* result);
viable_t	dict_var_can_enter(const dict_t* dict, uint col_index);
void		dict_var_can_leave(const dict_t* dict, clr_t* result, uint col_index, uint row_index);
bool		dict_var_is_unbounded(const dict_t* dict, uint index);
void		dict_view(const dict_t* dict);
void		dict_view_answer(const dict_t* dict, uint num_orig_vars);

#endif
