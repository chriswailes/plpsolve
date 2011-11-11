/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Definitions for a dictionaries and functions that manipulate them.
 */

#ifndef DICTIONARY_H
#define DICTIONARY_H

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
	int entering;
	int leaving;
	
	rest_t new_rest;
	
	bool flip;
} elr_t;

typedef struct {
	int infeasible_row;
	double infeasible_amount;
} infeasible_row_t;

typedef struct {
	infeasible_row_t* infeasible_rows;
	unsigned num_infeasible_rows;
} infeasible_set_t;

typedef struct {
	int* unbounded_vars;
} unbounded_vars_t;

typedef struct {
	int num_vars, num_cons;
	
	double* objective;
	double* matrix;
	
	// These labels correspond to non-basis variables.
	int* col_labels;
	// These labels correspond to basis variables.
	int* row_labels;
	
	// The location of the pair of a split.  Unidirectional, so only one of a
	// pair points at the other (to prevent dupes).
	int* split_vars;

	bounds_t con_bounds;
	bounds_t var_bounds;
	
	rest_t* var_rests;
} dict_t;

bool is_unbounded_var_at_index(dict_t *dict, int index);
void select_entering_and_leaving(dict_t* dict, elr_t* result);

void				dict_free(dict_t* dict);
infeasible_set_t	dict_infeasible_rows(dict_t *dict);
void				dict_init(dict_t* dict);
bool				dict_is_final(dict_t* dict);
unsigned			dict_get_num_unbounded_vars(dict_t *dict);
void				dict_new(dict_t* dict);
void				dict_pivot(dict_t* dict, int col_index, int row_index, rest_t new_rest);
void				dict_populate_split_vars(dict_t* dict, int starting_split_var);
void				dict_resize(dict_t* dict, unsigned new_num_vars, unsigned new_num_cons);
viable_t			dict_var_can_enter(dict_t* dict, int col_index);
void				dict_var_can_leave(dict_t* dict, clr_t* result, int col_index, int row_index);
void				dict_view(const dict_t* dict);
void				dict_view_answer(const dict_t* dict, unsigned num_orig_vars);

#endif
