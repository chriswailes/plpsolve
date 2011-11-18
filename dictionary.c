/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Functions for manipulating dictionaries.
 */

// Standard Incldues
#include <limits.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// Project Includes
#include "dictionary.h"
#include "kernels.h"
#include "matrix.h"
#include "util.h"

// Globals

extern config_t cfg;

// Functions

void dict_free(dict_t* dict) {
	free(dict->objective);
	free(dict->row_values);
	
	matrix_free(&dict->matrix);
	
	free(dict->col_labels);
	free(dict->row_labels);
	
	free(dict->row_bounds.upper);
	free(dict->row_bounds.lower);
	free(dict->col_bounds.upper);
	free(dict->col_bounds.lower);
	
	free(dict->col_rests);
	
	free(dict);
}

/*
 * FIXME:	This could possibly be made faster by obtaining a reference to the
 * 		relvent row and then indexing into it, as opposed to re-calculating
 * 		the row pointer each time.  However, I do believe that inlining and
 * 		common sub-expression elimination should take care of that for us.
 */
double dict_get_constraint_value(const dict_t* dict, uint con_index) {
	uint col_index;
	double con_val = 0;
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		con_val += matrix_get_value(&dict->matrix, con_index, col_index) * dict_get_var_bound_value(dict, col_index);
	}
	
	return con_val;
}

iset_t dict_get_infeasible_rows(const dict_t* dict) {
	uint row_index;
	double con_val;
	
	iset_t iset;
	
	iset.rows		= NULL;
	iset.num_rows	= 0;

	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		con_val = dict->row_values[row_index];
		
		if ((con_val < dict->row_bounds.lower[row_index]) || (con_val > dict->row_bounds.upper[row_index])) {

			// Increment the number of infeasible rows.
			++iset.num_rows;
			
			// Allocate enough space for the new irow_t element.
			iset.rows = realloc(iset.rows, iset.num_rows * sizeof(irow_t));
			
			iset.rows[iset.num_rows - 1].row_index	= row_index;
			iset.rows[iset.num_rows - 1].amount	= (con_val < dict->row_bounds.lower[row_index] ? dict->row_bounds.lower : dict->row_bounds.upper)[row_index] - con_val;
		}
	}

	return iset;
}

uint dict_get_num_unbounded_vars(const dict_t* dict) {
	uint col_index;
	uint num_unbounded_vars = 0;
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (dict_var_is_unbounded(dict, col_index)) {
			++num_unbounded_vars;
		}
	}
	
	return num_unbounded_vars;
}

inline double dict_get_var_bound_value(const dict_t* dict, uint var_index) {
	return (dict->col_rests[var_index] == UPPER ? dict->col_bounds.upper : dict->col_bounds.lower)[var_index];
}

double dict_get_var_value_by_label(const dict_t* dict, uint var_label) {
	uint col_index, row_index;
	double var_total;
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (dict->col_labels[col_index] == var_label) {
			
			var_total = dict_get_var_bound_value(dict, col_index);

			if (dict->split_vars[var_label]) {
				var_total -= dict_get_var_value_by_label(dict, dict->split_vars[var_label]);
			}

			return var_total;
		}
	}

	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		if (dict->row_labels[row_index] == var_label) {

			var_total = dict->row_values[row_index];

			if (dict->split_vars[var_label]) {
				var_total -= dict_get_var_value_by_label(dict, dict->split_vars[var_label]);
			}

			return var_total;
		}
	}
	
	fprintf(stderr, "Unknown variable request: x%u\n", var_label);
	exit(-1);
}

bool dict_init(dict_t* dict) {
	uint col_index, row_index, set_index, pre_resize_num_vars;
	uint old_num_vars, old_num_cons;
	double* old_objective, *new_objective;
	uint num_unbounded_vars;
	
	iset_t iset;
	
	num_unbounded_vars = dict_get_num_unbounded_vars(dict);
	
	pre_resize_num_vars = dict->num_vars;
	
	dict_resize(dict, dict->num_vars + num_unbounded_vars, dict->num_cons);
	dict_populate_split_vars(dict, pre_resize_num_vars);
	
	iset = dict_get_infeasible_rows(dict);
	
	if (!iset.num_rows) {
		// Dictionary is feasible; return.
		return FALSE;
	}
	
	if (cfg.vv) printf("\t** START OF INITIALIZATION **\n\n");
	
	dict_set_bounds_and_values(dict);
	
	// Perform initialization
	old_objective	= dict->objective;
	old_num_vars	= dict->num_vars;
	old_num_cons	= dict->num_cons;
	
	dict_resize(dict, dict->num_vars + iset.num_rows, dict->num_cons);

	new_objective = (double *)malloc(sizeof(double) * dict->num_vars);

	for (col_index = 0; col_index < old_num_vars; ++col_index) {
		dict->objective[col_index] = 0;
	}
	
	for (set_index = 0; set_index < iset.num_rows; ++set_index) {
		dict->objective[set_index + old_num_vars]			= -1;
		dict->col_bounds.lower[set_index + old_num_vars]		= 0;
		dict->col_labels[set_index + old_num_vars]			= 1 + set_index + (dict->num_vars - iset.num_rows) + dict->num_cons;
		dict->col_rests[set_index + old_num_vars]			= UPPER;
		
		if (iset.rows[set_index].amount < 0) {
			// FIXME: During shrinking this can segfault
			dict->col_bounds.upper[old_num_vars + set_index] = -iset.rows[set_index].amount;
			matrix_set_value(&dict->matrix, iset.rows[set_index].row_index, old_num_vars + set_index, -1);
			
		} else {
			dict->col_bounds.upper[old_num_vars + set_index] = iset.rows[set_index].amount;
			matrix_set_value(&dict->matrix, iset.rows[set_index].row_index, old_num_vars + set_index, 1);
		}
		
		// Adjust the row value.
		dict->row_values[iset.rows[set_index].row_index] +=
			dict->col_bounds.upper[old_num_vars + set_index] * matrix_get_value(&dict->matrix, iset.rows[set_index].row_index, old_num_vars + set_index);
	}
	
	general_simplex_kernel(dict);
	
	if (cfg.vv) {
		printf("Dictionary before removing initialization variables:\n");
		dict_view(dict);
	}
	
	//memcpy(dict->objective, old_objective, sizeof(*dict->objective) * old_num_vars);

	//Let's build our new objective
	//First, let's initialize our objective to zero
	memset(new_objective, 0, sizeof(double) * dict->num_vars);

	//Then, let's gather up the new objective
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		//If it's an original independent var, just add it in
		if (dict->col_labels[col_index] <= old_num_vars) {
			new_objective[col_index] += old_objective[dict->col_labels[col_index]];
		}
	}

	//Next, look in the basis and find the original independent vars and sum their
	//contributions
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		for (row_index = 0; row_index < dict->num_cons; ++row_index) {
			if (dict->row_labels[row_index] <= old_num_vars) {
				new_objective[col_index] += old_objective[dict->row_labels[row_index]] *
						matrix_get_value(&dict->matrix, row_index, col_index);
			}
		}
	}

	dict->objective = new_objective;
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (dict->col_labels[col_index] > (old_num_vars + old_num_cons)) {
			dict->col_bounds.lower[col_index] = 0;
			dict->col_bounds.upper[col_index] = 0;
		}
	}
	
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		if (dict->row_labels[row_index] > (old_num_vars + old_num_cons)) {
			dict->row_bounds.lower[row_index] = 0;
			dict->row_bounds.upper[row_index] = 0;
		}
	}
	
	dict_set_bounds_and_values(dict);
	
	if (cfg.vv) printf("\t** END OF INITIALIZATION **\n\n");
	
	return TRUE;
}

bool dict_is_final(const dict_t* dict) {
	uint col_index;
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if ((dict->objective[col_index] < 0 && dict->col_rests[col_index] == UPPER) || (dict->objective[col_index] > 0 && dict->col_rests[col_index] == LOWER)) {
			return FALSE;
		}
	}
	
	return TRUE;
}

dict_t* dict_new(uint num_vars, uint num_cons) {
	dict_t* dict;
	
	/*
	 * Allocate the necessary memory.
	 */
	
	dict = malloc(sizeof(dict_t));
	
	// Initialize the matrix.
	matrix_init(&dict->matrix, num_cons, num_vars);
	
	dict->objective	= (double*)malloc(num_vars * sizeof(double));
	dict->row_values	= (double*)malloc(num_cons * sizeof(double));
	
	dict->col_labels = (uint*)malloc(num_vars * sizeof(uint));
	dict->row_labels = (uint*)malloc(num_cons * sizeof(uint));
	
	dict->row_bounds.upper = (double*)malloc(num_cons * sizeof(double));
	dict->row_bounds.lower = (double*)malloc(num_cons * sizeof(double));
	
	dict->col_bounds.upper = (double*)malloc(num_vars * sizeof(double));
	dict->col_bounds.lower = (double*)malloc(num_vars * sizeof(double));
	
	dict->col_rests = (rest_t*)malloc(num_vars * sizeof(rest_t));
	
	dict->split_vars = (uint*)malloc((num_vars+1) * sizeof(uint));
	memset(dict->split_vars, 0, (num_vars+1) * sizeof(uint));
	
	// Set the number of variables and constraints for the dictionary.
	dict->num_vars = num_vars;
	dict->num_cons = num_cons;
	
	return dict;
}

/*
 * Pivots a dictionary around the given column and row.
 * 
 * The col_index corresponds with the entering variable, and the row_index
 * corresponds with the leaving variable.
 * 
 * Starts with (1):
 * 	xm = c1*x1 + c2*x2 + ... + cn*xn
 * 
 * Converts to (2):
 * 	-cj*xn = c1*x1 + c2*x2 + 1*xm + ... + cn*xn
 * 
 * Then to (3):
 * 	xn = (c1/-cj)*x1 + (c2/-cj)*x2 + (1/-cj)*xm + ... + (cn/-cj)*xn
 */
void dict_pivot(dict_t* dict, uint var_index, uint con_index, rest_t new_rest, double adj_amount) {
	uint row_index, col_index;
	
	double  coefficient, swap;
	double* tmp_row;
	
	// Allocate space for our work.
	tmp_row = (double*)malloc(dict->num_vars * sizeof(double));
	
	// Copy the pivot row.
	memcpy(tmp_row, matrix_get_row(&dict->matrix, con_index), dict->num_vars * sizeof(double));
	
	/* 
	 * Grab the coefficient from the pivot column and then replace it,
	 * converting to (2).
	 */
	coefficient = -tmp_row[var_index];
	tmp_row[var_index] = -1.0;
	
	// Divide the vector by the coefficient, converting to (3).
	for (row_index = 0; row_index < dict->num_vars; ++row_index) {
		tmp_row[row_index] /= coefficient;
	}

	// Replace old row with new row.
	memcpy(matrix_get_row(&dict->matrix, con_index), tmp_row, dict->num_vars * sizeof(double));
	
	/* 
	 * Update the constraint values and then substitute new rows into old rows
	 * in the matrix.
	 */
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		if (row_index == con_index) {
			dict->row_values[row_index] = dict_get_var_bound_value(dict, var_index) + adj_amount;
			
		} else {
			coefficient = matrix_get_value(&dict->matrix, row_index, var_index);
			
			dict->row_values[row_index] += coefficient * adj_amount;
			
			for (col_index = 0; col_index < dict->num_vars; ++col_index) {
				if (col_index == var_index) {
					matrix_set_value(&dict->matrix, row_index, col_index, coefficient * tmp_row[col_index]);
					
				} else {
					matrix_accum_value(&dict->matrix, row_index, col_index, coefficient * tmp_row[col_index]);
				}
				
				if (FPN_IS_ZERO(matrix_get_value(&dict->matrix, row_index, col_index))) matrix_set_value(&dict->matrix, row_index, col_index, 0.0);
			}
		}
		
		if (FPN_IS_ZERO(dict->row_values[row_index])) dict->row_values[row_index] = 0.0;
	}
	
	// Perform the same steps for the objective function.
	coefficient = dict->objective[var_index];
	for (row_index = 0; row_index < dict->num_vars; ++row_index) {
		if (row_index == var_index) {
			dict->objective[row_index]  = coefficient * tmp_row[row_index];
			
		} else {
			dict->objective[row_index] += coefficient * tmp_row[row_index];
		}
	}
	
	/*
	 * Swap bounds and labels
	 */
	
	swap						= dict->col_labels[var_index];
	dict->col_labels[var_index]	= dict->row_labels[con_index];
	dict->row_labels[con_index]	= swap;
	
	swap							= dict->col_bounds.upper[var_index];
	dict->col_bounds.upper[var_index]	= dict->row_bounds.upper[con_index];
	dict->row_bounds.upper[con_index]	= swap;
	
	swap							= dict->col_bounds.lower[var_index];
	dict->col_bounds.lower[var_index]	= dict->row_bounds.lower[con_index];
	dict->row_bounds.lower[con_index]	= swap;
	
	// Set the new resting bound appropriately.
	dict->col_rests[var_index] = new_rest;
	
	// Free our temporary row.
	free(tmp_row);
}

void dict_populate_split_vars(dict_t* dict, uint starting_split_var) {
	uint col_index, row_index;
	uint next_split_var = starting_split_var;
	
	for (col_index = 0; col_index < starting_split_var; ++col_index) {
		if (dict_var_is_unbounded(dict, col_index)) {
			
			// Split the variable.
			for (row_index = 0; row_index < dict->num_cons; ++row_index) {
				// A bit silly, but don't negate zeros because it looks ugly
				if (matrix_get_value(&dict->matrix, row_index, col_index)) {
					matrix_set_value(&dict->matrix, row_index, next_split_var, -matrix_get_value(&dict->matrix, row_index, col_index));
					
				} else {
					matrix_set_value(&dict->matrix, row_index, next_split_var, matrix_get_value(&dict->matrix, row_index, col_index));
				}
			}
			
			dict->col_bounds.upper[next_split_var] = INFINITY;
			dict->col_bounds.lower[next_split_var] = 0;
			
			dict->col_bounds.upper[col_index] = INFINITY;
			dict->col_bounds.lower[col_index] = 0;

			dict->col_rests[next_split_var]	= LOWER;
			dict->col_rests[col_index]		= LOWER;

			dict->objective[next_split_var] = -dict->objective[col_index];

			dict->col_labels[next_split_var]				= 1 + next_split_var + dict->num_cons;
			dict->split_vars[dict->col_labels[col_index]]	= dict->col_labels[next_split_var];

			++next_split_var;
		}
	}
}

void dict_resize(dict_t* dict, uint new_num_vars, uint new_num_cons) {
	//In case we want to snapshot the previous pointers, don't realloc them.
	//Instead, just create a new dictionary and replace the pointers.
	
	uint* new_row_labels;
	uint* new_col_labels;
	uint* new_split_vars;
	double* new_objective;
	
	rest_t* new_var_rests;
	bounds_t new_var_bounds, new_con_bounds;
	
	if (new_num_vars == dict->num_vars && new_num_cons == dict->num_cons) {
		return;
	}
	
	new_objective = malloc(sizeof(double) * new_num_vars);
	memset(new_objective, 0, sizeof(double) * new_num_vars);
	memcpy(new_objective, dict->objective, sizeof(double) * MIN(new_num_vars, dict->num_vars));
	dict->objective = new_objective;

	new_col_labels = malloc(sizeof(uint) * new_num_vars);
	memset(new_col_labels, 0, sizeof(uint) * new_num_vars);
	memcpy(new_col_labels, dict->col_labels, sizeof(uint) * MIN(new_num_vars, dict->num_vars));
	dict->col_labels = new_col_labels;

	new_var_rests = malloc(sizeof(rest_t) * new_num_vars);
	memset(new_var_rests, 0, sizeof(rest_t) * new_num_vars);
	memcpy(new_var_rests, dict->col_rests, sizeof(rest_t) * MIN(new_num_vars, dict->num_vars));
	dict->col_rests = new_var_rests;

	new_split_vars = malloc(sizeof(uint) * (new_num_vars + 1));
	memset(new_split_vars, 0, sizeof(uint) * (new_num_vars + 1));
	memcpy(new_split_vars, dict->split_vars, sizeof(uint) * (MIN(new_num_vars, dict->num_vars) + 1));
	dict->split_vars = new_split_vars;
	
	new_var_bounds.lower = malloc(sizeof(double) * new_num_vars);
	memset(new_var_bounds.lower, 0, (sizeof(double) * new_num_vars));

	new_var_bounds.upper = malloc(sizeof(double) * new_num_vars);
	memset(new_var_bounds.upper, 0, (sizeof(double) * new_num_vars));

	memcpy(new_var_bounds.lower, dict->col_bounds.lower, sizeof(double) * MIN(new_num_vars, dict->num_vars));
	memcpy(new_var_bounds.upper, dict->col_bounds.upper, sizeof(double) * MIN(new_num_vars, dict->num_vars));
	dict->col_bounds = new_var_bounds;

	new_row_labels = malloc(sizeof(uint) * new_num_cons);
	memset(new_row_labels, 0, (sizeof(uint) * new_num_cons));
	memcpy(new_row_labels, dict->row_labels, sizeof(uint) * MIN(new_num_cons, dict->num_cons));
	dict->row_labels = new_row_labels;

	new_con_bounds.lower = malloc(sizeof(double) * new_num_cons);
	memset(new_con_bounds.lower, 0, (sizeof(double) * new_num_cons));

	new_con_bounds.upper = malloc(sizeof(double) * new_num_cons);
	memset(new_con_bounds.upper, 0, (sizeof(double) * new_num_cons));

	memcpy(new_con_bounds.lower, dict->row_bounds.lower, sizeof(double) * MIN(new_num_cons, dict->num_cons));
	memcpy(new_con_bounds.upper, dict->row_bounds.upper, sizeof(double) * MIN(new_num_cons, dict->num_cons));
	dict->row_bounds = new_con_bounds;
	
	dict->row_values = realloc(dict->row_values, new_num_cons * sizeof(double));
	
	matrix_resize(&dict->matrix, new_num_cons, new_num_vars);

	dict->num_cons = new_num_cons;
	dict->num_vars = new_num_vars;
}

/*
 * FIXME:
 * 	- Implement Bland's Rule - DONE
 * 	- Implement ProfY's Rule
 * 	- Change so that if no leaving variable is found for an entering variable we try again.
 */
void dict_select_entering_and_leaving(const dict_t* dict, elr_t* result) {
	uint col_index, row_index, min_sub = INT_MAX;
	double max_constraint;
	
	clr_t cl_result;
	
	if (cfg.vv) {
		printf("Entering and leaving variable analysis:\n");
	}
	
	// Select the entering variable.
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (dict_var_can_enter(dict, col_index)) {
			
			if (cfg.vv) {
				printf("\tx%u can enter.\n", dict->col_labels[col_index]);
			}
			
			if (cfg.blands) {
				if (dict->col_labels[col_index] < min_sub) {
					if (cfg.vv) printf("\tSelecting x%u as entering variable due to Bland's Rule\n", dict->col_labels[col_index]);
					
					result->entering	= col_index;
					min_sub			= dict->col_labels[col_index];
				}
				
			} else {
				
				if (cfg.vv) printf("\tSelecting x%u as entering variable.\n", dict->col_labels[col_index]);
				
				result->entering = col_index;
				break;
			}
		}
	}
	
	if (cfg.vv) printf("\n");
	
	/*
	 * Pick the leaving variable.
	 */
	if (dict->objective[result->entering] < 0 && dict->col_rests[result->entering] == UPPER && dict->col_bounds.lower[result->entering] != -INFINITY) {
		max_constraint = fabs(dict->col_bounds.upper[result->entering] - dict->col_bounds.lower[result->entering]);
		
		if (cfg.vv) printf("\tx%u can flip to its LOWER bound: t ≤ %- 7.3g\n\n", dict->col_labels[result->entering], max_constraint);
		
		result->flip		= TRUE;
		result->new_rest	= LOWER;
		
	} else if (dict->objective[result->entering] > 0 && dict->col_rests[result->entering] == LOWER && dict->col_bounds.upper[result->entering] != INFINITY) {
		max_constraint = fabs(dict->col_bounds.upper[result->entering] - dict->col_bounds.lower[result->entering]);
		
		if (cfg.vv) printf("\tx%u can flip to its UPPER bound: t ≤ %- 7.3g\n\n", dict->col_labels[result->entering], max_constraint);
		
		result->flip		= TRUE;
		result->new_rest	= UPPER;
		
	} else {
		max_constraint = INFINITY;
		result->flip	= FALSE;
	}
	
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		dict_var_can_leave(dict, &cl_result, result->entering, row_index);
		
		if (cl_result.viable) {
			
			if (cfg.vv) printf("\tx%u can leave: t ≤ %- 7.3g\n", dict->row_labels[row_index], cl_result.constraint);
			
			// Found a new, more constraining, choice.
			if (cl_result.constraint < max_constraint ||
				(cfg.blands && (cl_result.constraint == max_constraint && dict->row_labels[row_index] < min_sub))) {
				
				if (cfg.vv) printf("\tSelecting x%u as leaving variable.\n", dict->row_labels[row_index]);
				
				max_constraint		= cl_result.constraint;
				min_sub			= dict->row_labels[row_index];
				
				result->leaving	= row_index;
				result->new_rest	= cl_result.new_rest;
				result->flip		= FALSE;
			}
		}
	}
	
	// Set the adjustment amount to be used during pivoting.
	result->adj_amount = dict->col_rests[result->entering] == UPPER ? -max_constraint : max_constraint;
	
	if (cfg.vv) {
		if (result->flip) {
			printf("\n\tFlip x%u\n\n", dict->col_labels[result->entering]);
		} else {
			printf("\n\tPivot with x%u entering and x%u leaving.\n\n", dict->col_labels[result->entering], dict->row_labels[result->leaving]);
		}
	}
}

void dict_set_bounds_and_values(dict_t* dict) {
	uint col_index, row_index;
	
	// Pick the initial resting bounds for the variables.
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if ((dict->objective[col_index] >= 0 && dict->col_bounds.upper[col_index] != INFINITY) || (dict->col_bounds.lower[col_index] == -INFINITY)) {
			dict->col_rests[col_index] = UPPER;
			
		} else {
			dict->col_rests[col_index] = LOWER;
		}
	}
	
	// Calculate the initial values of the constraints.
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		dict->row_values[row_index] = dict_get_constraint_value(dict, row_index);
	}
}

/*
 * Return should be Good, Bad, and Nope
 */
bool dict_var_can_enter(const dict_t* dict, uint var_index) {
	if ( (dict->objective[var_index] < 0 && dict->col_rests[var_index] == UPPER) ||
		(dict->objective[var_index] > 0 && dict->col_rests[var_index] == LOWER)) {
		
		return TRUE;
		
	} else {
		return FALSE;
	}
}

/*
 * Determines if a variable (referenced by the corresponding row in the matrix)
 * can leave when a given variable (referenced by the corresponding column in
 * the matrix) is entering.
 */
void dict_var_can_leave(const dict_t* dict, clr_t* result, uint var_index, uint con_index) {
	double accum;
	double t_coef;
	double* row = matrix_get_row(&dict->matrix, con_index);
	
	// If the entering variable's coefficient is 0 this variable can't leave.
	if (FPN_IS_ZERO(row[var_index])) {
		result->viable = FALSE;
		return;
	}
	
	/*
	 * Accumulate the constant given the resting bounds for the non-basic
	 * variables.
	 */
	accum = dict->row_values[con_index];
	
	// Get the coefficient for t.
	t_coef  = dict->col_rests[var_index] == UPPER ? -1.0 : 1.0;
	t_coef *= row[var_index];
	
	/*
	 * Calculate the amount this leaving variable choice constrains the
	 * entering variable's value.
	 */
	if (dict->row_bounds.lower[con_index] <= accum && t_coef < 0) {
		result->viable		= TRUE;
		result->constraint	= (dict->row_bounds.lower[con_index] - accum) / t_coef;
		result->new_rest	= LOWER;
		
	} else if (accum <= dict->row_bounds.upper[con_index] && t_coef > 0) {
		result->viable		= TRUE;
		result->constraint	= (dict->row_bounds.upper[con_index] - accum) / t_coef;
		result->new_rest	= UPPER;
		
	} else {
		result->viable = FALSE;
	}
}

inline bool dict_var_is_unbounded(const dict_t* dict, uint var_index) {
	return dict->col_bounds.upper[var_index] == INFINITY && dict->col_bounds.lower[var_index] == -INFINITY;
}

void dict_view(const dict_t* dict) {
	uint col_index, row_index;
	char buffer[10];
	
	// Print column labels.
	printf("                        ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		snprintf(buffer, 10, "x%u", dict->col_labels[col_index]);
		printf("%8s", buffer);
	}
	printf("     value\n");
	
	// Print bounds, labels, and values for rows.
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		// Format the column label.
		snprintf(buffer, 10, "x%u", dict->row_labels[row_index]);
		
		// Print out bounds and label info.
		printf("% 7.3g % 7.3g | %4s |", dict->row_bounds.lower[row_index], dict->row_bounds.upper[row_index], buffer);
		
		for (col_index = 0; col_index < dict->num_vars; ++col_index) {
			printf(" % 7.3g", matrix_get_value(&dict->matrix, row_index, col_index));
		}
		
		// Print the constraint's value.
		printf(" | % 7.3g", dict->row_values[row_index]);
		
		printf("\n");
	}
	
	// Print seperator.
	printf("----------------------------------");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf("--------");
	}
	printf("\n");
	
	// Print objective function coefficients.
	printf("                     z |");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf(" % 7.3g", dict->objective[col_index]);
	}
	printf("\n");
	
	// Print the variables' lower bounds.
	printf("                       | ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf(dict->col_rests[col_index] == LOWER ? " [% 5.2g]" : "  % 5.2g ", dict->col_bounds.lower[col_index]);
	}
	printf("\n");
	
	// Print the variables' upper bounds.
	printf("                       | ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf(dict->col_rests[col_index] == UPPER ? " [% 5.2g]" : "  % 5.2g ", dict->col_bounds.upper[col_index]);
	}
	printf("\n\n");
}

void dict_view_answer(const dict_t* dict, uint num_orig_vars) {
	uint col_index, var_index;
	double objective = 0.0;
	char buffer[10];
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		objective += dict->objective[col_index] * dict_get_var_bound_value(dict, col_index);
	}

	printf("\t   z = %- 7.3g\n", objective);

	for (var_index = 1; var_index <= num_orig_vars; ++var_index) {
		snprintf(buffer, 10, "x%u", var_index);
		
		printf("\t%4s = %- 7.3g\n", buffer, dict_get_var_value_by_label(dict, var_index));
	}
}
