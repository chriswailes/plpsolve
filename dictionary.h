/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
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

typedef struct {
	double* upper;
	double* lower;
} bounds_t;

// Can-Leave-Result type
typedef struct {
	double constraint;
	rest_t new_rest;
	
	bool viable;
} clr_t;

// Entering-and-Leaving-Result type
typedef struct {
	uint entering;
	uint leaving;
	
	double adj_amount;
	
	rest_t new_rest;
	
	bool flip;
} elr_t;

typedef struct {
	uint index;
	double amount;
} irow_t;

typedef struct {
	uint size;
	irow_t* rows;
} iset_t;

typedef struct {
	uint  size;
	uint* indices;
} uvars_t;

typedef struct {
	uint num_vars, num_cons, num_aux_vars, num_split_vars;
	
	double*	objective;
	double*	objective2; // Electric Boogaloo
	double	objective_value;
	matrix_t	matrix;
	double*	row_values;
	
	// These labels correspond to non-basis variables.
	int* col_labels;
	// These labels correspond to basis variables.
	int* row_labels;
	
	// The label of all variables that have been split.
	uint* split_vars;

	bounds_t row_bounds;
	bounds_t col_bounds;
	
	rest_t* col_rests;
} dict_t;

		void		dict_add_aux_vars(dict_t* dict, iset_t iset);
		void		dict_add_split_vars(dict_t* dict, uvars_t uvars);
		void		dict_copy(dict_t* new_dict, dict_t* orig_dict);
		void		dict_flip_rest(dict_t* dict, uint var_index, rest_t new_rest);
		void		dict_free(dict_t* dict);
		double	dict_get_constraint_value(const dict_t* dict, uint con_index);
		iset_t	dict_get_infeasible_rows(const dict_t* dict);
		uvars_t	dict_get_unbounded_vars(const dict_t* dict);
		double	dict_get_var_value_by_label(const dict_t* dict, uint var_label);
inline	double	dict_get_var_bound_value(const dict_t* dict, uint var_index);
		bool		dict_init(dict_t** dict);
		bool		dict_is_final(const dict_t* dict);
		dict_t*	dict_new(uint num_vars, uint num_cons);
		dict_t*	dict_pivot(dict_t* dict, uint var_index, uint con_index, rest_t new_rest, double adj_amount);
		dict_t*	dict_remove_aux_vars(dict_t* orig_dict);
inline	bool		dict_row_is_feasible(const dict_t* dict, uint con_index);
		void		dict_select_entering_and_leaving(const dict_t* dict, elr_t* result);
		void		dict_set_bounds(dict_t* dict);
inline	void		dict_set_objective_value(dict_t* dict);
		void		dict_set_values(dict_t* dict);
		bool		dict_var_can_enter(const dict_t* dict, uint var_index);
		void		dict_var_can_leave(const dict_t* dict, clr_t* result, uint var_index, uint con_index);
inline	bool		dict_var_is_unbounded(const dict_t* dict, uint var_index);
		bool		dict_var_was_split(const dict_t* dict, int var_label);
		void		dict_view(const dict_t* dict);
		void		dict_view_answer(const dict_t* dict);

#endif
