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
#include "util.h"

typedef enum {
	LOWER,
	UPPER
} rest_t;

typedef enum {
	NOPE = 0,
	GOOD,
	BAD
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
} dictionary;

void select_entering_and_leaving(dictionary* dict, elr_t* result);

void				dictionary_free(dictionary* dict);
infeasible_set_t	dictionary_infeasible_rows(dictionary *dict);
void				dictionary_init(dictionary* dict);
void				dictionary_init_struct(dictionary* dict);
bool				dictionary_is_final(dictionary* dict);
void				dictionary_pivot(dictionary* dict, int col_index, int row_index, rest_t new_rest);
void				dictionary_resize(dictionary* dict, unsigned new_num_vars, unsigned new_num_cons);
viable_t			dictionary_var_can_enter(dictionary* dict, int col_index);
void				dictionary_var_can_leave(dictionary* dict, clr_t* result, int col_index, int row_index);
void				dictionary_view(const dictionary* dict);
void				dictionary_view_answer(const dictionary* dict, unsigned num_orig_vars);

#endif
