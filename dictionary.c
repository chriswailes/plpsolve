/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
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

// Constants

#define EXPAND_SIZE 10

// Globals

extern config_t cfg;

// Functions

void dict_add_aux_vars(dict_t* dict, iset_t iset) {
	uint col_index, index;
	int label;
	
	col_index = dict->num_vars - dict->num_aux_vars;
	label	= col_index - dict->num_split_vars + dict->num_cons;
	
	for (index = 0; index < iset.size; ++index) {
		dict->col_labels[col_index] = ++label;
		
		dict->col_bounds.upper[col_index]	= ABS(iset.rows[index].amount);
		dict->col_bounds.lower[col_index]	= 0.0;
		dict->col_rests[col_index]		= UPPER;
		
		dict->objective[col_index] = -1.0;
		
		matrix_set_value(&dict->matrix, iset.rows[index].index, col_index, iset.rows[index].amount < 0 ? -1 : 1);
		
		++col_index;
	}
	
	
	free(iset.rows);
}

void dict_add_split_vars(dict_t* dict, uvars_t uvars) {
	uint col_index0, col_index1, index, row_index;
	
	col_index1 = dict->num_vars - dict->num_aux_vars - dict->num_split_vars;
	
	for (index = 0; index < uvars.size; ++index) {
		col_index0 = uvars.indices[index];
		uvars.indices[index] = dict->col_labels[col_index0];
		
		// Set the lower bound of x_i^+ to 0.
		dict->col_bounds.lower[col_index0]	= 0;
		dict->col_rests[col_index0]		= LOWER;
		
		// Add the variable x_i^-.
		dict->col_labels[col_index1]		= -uvars.indices[index];
		dict->col_bounds.upper[col_index1]	= 0;
		dict->col_bounds.lower[col_index1]	= -INFINITY;
		dict->col_rests[col_index1]		= UPPER;
		dict->objective[col_index1]		= dict->objective[col_index0];
		
		for (row_index = dict->num_cons; row_index-- > 0;) {
			matrix_set_value(&dict->matrix, row_index, col_index1, matrix_get_value(&dict->matrix, row_index, col_index0));
		}
		
		++col_index1;
	}
	
	dict->split_vars = uvars.indices;
}

dict_t* dict_clone(dict_t* orig) {
	dict_t* clone;
	
	clone = dict_new(orig->num_vars, orig->num_cons);
	dict_copy(clone, orig);
	
	return clone;
}

void dict_copy(dict_t* new_dict, dict_t* orig_dict) {
	uint row_index;
	
	// Copy the matrix.
	for (row_index = orig_dict->num_cons; row_index-- > 0;) {
		memcpy(matrix_get_address(&new_dict->matrix, row_index, 0), matrix_get_address(&orig_dict->matrix, row_index, 0), orig_dict->num_vars * sizeof(double));
	}
	
	// Copy the labels.
	memcpy(new_dict->col_labels, orig_dict->col_labels, orig_dict->num_vars * sizeof(int));
	memcpy(new_dict->row_labels, orig_dict->row_labels, orig_dict->num_cons * sizeof(int));
	
	// Copy the bounds.
	memcpy(new_dict->col_bounds.upper, orig_dict->col_bounds.upper, orig_dict->num_vars * sizeof(double));
	memcpy(new_dict->col_bounds.lower, orig_dict->col_bounds.lower, orig_dict->num_vars * sizeof(double));
	
	memcpy(new_dict->col_rests, orig_dict->col_rests, orig_dict->num_vars * sizeof(rest_t));
	
	memcpy(new_dict->row_bounds.upper, orig_dict->row_bounds.upper, orig_dict->num_cons * sizeof(double));
	memcpy(new_dict->row_bounds.lower, orig_dict->row_bounds.lower, orig_dict->num_cons * sizeof(double));
	
	// Copy the objective.
	memcpy(new_dict->objective, orig_dict->objective, orig_dict->num_vars * sizeof(double));
}

void dict_flip_rest(dict_t* dict, uint var_index, rest_t new_rest) {
	uint row_index;
	double adj_amount;
	
	if (new_rest == UPPER) {
		adj_amount = dict->col_bounds.upper[var_index] - dict->col_bounds.lower[var_index];
		
	} else {
		adj_amount = dict->col_bounds.lower[var_index] - dict->col_bounds.upper[var_index];
	}
	
	// Adjust the row values.
	for (row_index = dict->num_cons; row_index-- > 0;) {
		dict->row_values[row_index] += matrix_get_value(&dict->matrix, row_index, var_index) * adj_amount;
	}
	
	// Adjust the objetive value.
	dict->objective_value += dict->objective[var_index] * adj_amount;
	
	// Actually flip the resting bound.
	dict->col_rests[var_index] = new_rest;
}

void dict_free(dict_t* dict) {
	
	if (dict == NULL) return;
	
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
	
	free(dict->split_vars);
	
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
	
	for (col_index = dict->num_vars; col_index-- > 0;) {
		con_val += matrix_get_value(&dict->matrix, con_index, col_index) * dict_get_var_bound_value(dict, col_index);
	}
	
	return con_val;
}

iset_t dict_get_infeasible_rows(const dict_t* dict) {
	uint row_index;
	double con_val;
	
	iset_t iset;
	
	iset.size	= 0;
	iset.rows = calloc(EXPAND_SIZE, sizeof(irow_t));
	
	for (row_index = dict->num_cons; row_index-- > 0;) {
		con_val = dict->row_values[row_index];
		
		if (!dict_row_is_feasible(dict, row_index)) {
			// Allocate more space if we have run out in the iset struct.
			if ((iset.size % EXPAND_SIZE)) {
				iset.rows = realloc(iset.rows, (iset.size + EXPAND_SIZE) * sizeof(irow_t));
			}
			
			iset.rows[iset.size  ].index  = row_index;
			iset.rows[iset.size++].amount = (con_val < dict->row_bounds.lower[row_index] ? dict->row_bounds.lower : dict->row_bounds.upper)[row_index] - con_val;
		}
	}
	
	iset.rows = realloc(iset.rows, iset.size * sizeof(irow_t));

	return iset;
}

uvars_t dict_get_unbounded_vars(const dict_t* dict) {
	uint col_index;
	uvars_t uvars;
	
	uvars.size	= 0;
	uvars.indices = calloc(EXPAND_SIZE, sizeof(uint));
	
	for (col_index = dict->num_vars; col_index-- > 0;) {
		if (dict_var_is_unbounded(dict, col_index)) {
			// Allocate more space if we have run out in the uvars struct.
			if ((uvars.size % EXPAND_SIZE) == 0) {
				uvars.indices = realloc(uvars.indices, (uvars.size + EXPAND_SIZE) * sizeof(uint));
			}
			
			uvars.indices[uvars.size++] = col_index;
		}
	}
	
	uvars.indices = realloc(uvars.indices, uvars.size * sizeof(int));
	
	return uvars;
}

inline double dict_get_var_bound_value(const dict_t* dict, uint var_index) {
	return (dict->col_rests[var_index] == UPPER ? dict->col_bounds.upper : dict->col_bounds.lower)[var_index];
}

double dict_get_var_value_by_label(const dict_t* dict, uint var_label) {
	uint col_index, row_index;
	double var_total;
	
	for (col_index = dict->num_vars; col_index-- > 0;) {
		if (dict->col_labels[col_index] == var_label) {
			
			var_total = dict_get_var_bound_value(dict, col_index);

			if (dict_var_was_split(dict, var_label)) {
				var_total -= dict_get_var_value_by_label(dict, -var_label);
			}

			return var_total;
		}
	}
	
	for (row_index = dict->num_cons; row_index-- > 0;) {
		if (dict->row_labels[row_index] == var_label) {
			
			var_total = dict->row_values[row_index];

			if (dict_var_was_split(dict, var_label)) {
				var_total -= dict_get_var_value_by_label(dict, -var_label);
			}

			return var_total;
		}
	}
	
	fprintf(stderr, "Unknown variable request: x%u\n", var_label);
	exit(-1);
}

bool dict_init(dict_t** dict) {
	uint col_index, row_index;
	uint last_orig_var_label;
	
	uvars_t uvars;
	iset_t iset;
	
	dict_t* stage1_dict;
	dict_t* stage2_dict;
	dict_t* orig_dict = *dict;
	
	uvars = dict_get_unbounded_vars(orig_dict);
	
	if (uvars.size == 0) {
		stage1_dict = orig_dict;
		orig_dict = NULL;
		
	} else {
		/*
		 * Allocate a new dictionary with enough space for the split
		 * variables.
		 */
		stage1_dict = dict_new(orig_dict->num_vars + uvars.size, orig_dict->num_cons);
		stage1_dict->num_aux_vars = 0;
		stage1_dict->num_split_vars = uvars.size;
		
		// Copy the original dictionary into the stage 1 dictionary.
		dict_copy(stage1_dict, orig_dict);
		
		// Add the split variables.
		dict_add_split_vars(stage1_dict, uvars);
		
		/*
		 * Set the bounds and values now that we don't have a column resting
		 * on infinity.
		 */ 
		dict_set_bounds(stage1_dict);
		dict_set_values(stage1_dict);
	}
	
	// Free the original dictionary.
	dict_free(orig_dict);
	
	iset = dict_get_infeasible_rows(stage1_dict);
	
	// Return False if we didn't do any initialization.
	if ((uvars.size + iset.size) == 0) {
		return FALSE;
	}
	
	/*
	 * Set the appropriate dictionary reference and return True if we had to
	 * split some variables.
	 */
	if (iset.size == 0) {
		*dict = stage1_dict;
		return TRUE;
	}
	
	// Allocate a new dictionary with enough space for the auxilary variables.
	stage2_dict = dict_new(stage1_dict->num_vars + iset.size, stage1_dict->num_cons);
	stage2_dict->num_aux_vars = iset.size;
	stage2_dict->num_split_vars = stage1_dict->num_split_vars;
	stage2_dict->split_vars = stage1_dict->split_vars;
	
	stage1_dict->split_vars = NULL;
	
	// Copy the stage 1 dictionary values into the stage 2 dictionary.
	dict_copy(stage2_dict, stage1_dict);
	
	// Free the stage 1 dictionary.
	dict_free(stage1_dict);
	
	// Do the Electric Boogaloo
	stage2_dict->objective2 = calloc(stage2_dict->num_vars, sizeof(double));
	
	for (col_index = stage2_dict->num_vars; col_index-- > 0;) {
		if (col_index < stage2_dict->num_vars - iset.size) {
			stage2_dict->objective2[col_index] = stage2_dict->objective[col_index];
			
		} else {
			stage2_dict->objective2[col_index] = 0;
		}
	}
	
	// Initialize the new objective function.
	for (col_index = stage2_dict->num_vars; col_index-- > 0;) {
		stage2_dict->objective[col_index] = 0.0;
	}
	
	// Add the new auxilary variables.
	dict_add_aux_vars(stage2_dict, iset);
	
	// Perform simplex.
	dict_set_values(stage2_dict);
	general_simplex_kernel(stage2_dict);
	
	// Check original problem feasability.
	if (-1e-5 > stage2_dict->objective_value || stage2_dict->objective_value >  1e-5) {
		printf("Problem is infeasible: %f.\n", stage2_dict->objective_value);
		exit(0);
	}
	
	// Replace objective function.
	free(stage2_dict->objective);
	stage2_dict->objective	= stage2_dict->objective2;
	stage2_dict->objective2	= NULL;
	
	// Re-calculate the objective value.
	dict_set_objective_value(stage2_dict);
	
	// Remove auxilary variables.
	stage2_dict = dict_remove_aux_vars(stage2_dict);
	
	// Adjust bounds on any remaining auxilary variables.
	if (stage2_dict->num_aux_vars > 0) {
		last_orig_var_label = stage2_dict->num_vars + stage2_dict->num_cons - stage2_dict->num_aux_vars - stage2_dict->num_split_vars;
	
		for (row_index = stage2_dict->num_cons; row_index-- > 0;) {
			if (stage2_dict->row_labels[row_index] >= last_orig_var_label) {
				stage2_dict->row_bounds.upper[row_index] = 0.0;
				stage2_dict->row_bounds.lower[row_index] = 0.0;
			}
		}
	}
	
	// Set the appropriate dictionary reference and return True.
	*dict = stage2_dict;
	return TRUE;
}

bool dict_is_final(const dict_t* dict) {
	uint col_index;
	
	for (col_index = dict->num_vars; col_index-- > 0;) {
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
	
	dict->objective		= (double*)malloc(num_vars * sizeof(double));
	dict->objective2		= NULL;
	dict->row_values		= (double*)malloc(num_cons * sizeof(double));
	
	dict->col_labels		= (int*)malloc(num_vars * sizeof(uint));
	dict->row_labels		= (int*)malloc(num_cons * sizeof(uint));
	
	dict->row_bounds.upper	= (double*)malloc(num_cons * sizeof(double));
	dict->row_bounds.lower	= (double*)malloc(num_cons * sizeof(double));
	
	dict->col_bounds.upper	= (double*)malloc(num_vars * sizeof(double));
	dict->col_bounds.lower	= (double*)malloc(num_vars * sizeof(double));
	
	dict->col_rests		= (rest_t*)malloc(num_vars * sizeof(rest_t));
	
	dict->split_vars		= NULL;
	
	// Set the number of variables and constraints for the dictionary.
	dict->num_vars			= num_vars;
	dict->num_cons			= num_cons;
	dict->num_aux_vars		= 0;
	dict->num_split_vars	= 0;
	
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
dict_t* dict_pivot(dict_t* dict, uint var_index, uint con_index, rest_t new_rest, double adj_amount) {
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
	
	if (cfg.pmode == OMP) {
		#pragma omp parallel for schedule(dynamic, 20) private(coefficient, row_index, col_index) shared(adj_amount)
		for (row_index = 0; row_index < dict->num_cons; ++row_index) {
			if (row_index == con_index) {
				dict->row_values[row_index] = dict_get_var_bound_value(dict, var_index) + adj_amount;
			
			} else {
				coefficient = matrix_get_value(&dict->matrix, row_index, var_index);
			
				dict->row_values[row_index] += coefficient * adj_amount;
			
				for (col_index = dict->num_vars; col_index-- > 0;) {
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
	} else {
		for (row_index = dict->num_cons; row_index-- > 0;) {
			if (row_index == con_index) {
				dict->row_values[row_index] = dict_get_var_bound_value(dict, var_index) + adj_amount;
			
			} else {
				coefficient = matrix_get_value(&dict->matrix, row_index, var_index);
			
				dict->row_values[row_index] += coefficient * adj_amount;
			
				for (col_index = dict->num_vars; col_index-- > 0;) {
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
	}
	
	// Perform the same steps for the objective function.
	coefficient = dict->objective[var_index];
	dict->objective_value += coefficient * adj_amount;
	
	if (FPN_IS_ZERO(dict->objective_value)) dict->objective_value = 0.0;
	
	for (col_index = dict->num_vars; col_index-- > 0;) {
		if (col_index == var_index) {
			dict->objective[col_index]  = coefficient * tmp_row[col_index];
			
		} else {
			dict->objective[col_index] += coefficient * tmp_row[col_index];
		}
		
		if (FPN_IS_ZERO(dict->objective[col_index])) dict->objective[col_index] = 0.0;
	}
	
	if (!cfg.init_done) {
		coefficient = dict->objective2[var_index];
		for (col_index = dict->num_vars; col_index-- > 0;) {
			swap = dict->objective2[col_index];
			
			if (col_index == var_index) {
				dict->objective2[col_index]  = coefficient * tmp_row[col_index];
			
			} else {
				dict->objective2[col_index] += coefficient * tmp_row[col_index];
			}
			
			if (FPN_IS_ZERO(dict->objective2[col_index])) dict->objective2[col_index] = 0.0;
		}
	}
	
	/*
	 * Swap bounds and labels
	 */
	
	swap							= dict->col_labels[var_index];
	dict->col_labels[var_index]		= dict->row_labels[con_index];
	dict->row_labels[con_index]		= swap;
	
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
	
	if (cfg.init_done) {
		// Remove any auxilary variables that are now out of the basis.
		return dict_remove_aux_vars(dict);
		
	} else {
		return dict;
	}
}

dict_t* dict_remove_aux_vars(dict_t* orig_dict) {
	uint col_index0, col_index1, row_index;
	uint remove_count = 0;
	int last_orig_var_label;
	
	dict_t* new_dict;
	
	// Nothing to remove.  Return early.
	if (orig_dict->num_aux_vars == 0) {
		return orig_dict;
	}
	
	last_orig_var_label = orig_dict->num_vars + orig_dict->num_cons - orig_dict->num_aux_vars - orig_dict->num_split_vars;
	
	// Count the number of auxilary variables we are going to remove.
	for (col_index0 = orig_dict->num_vars; col_index0-- > 0;) {
		if (orig_dict->col_labels[col_index0] > last_orig_var_label) {
			++remove_count;
		}
	}
	
	// Nothing to remove.  Return early.
	if (remove_count == 0) {
		return orig_dict;
	}
	
	// Alocate our new dictionary.
	new_dict = dict_new(orig_dict->num_vars - remove_count, orig_dict->num_cons);
	
	/*
	 * Selectivly copy/move data to new dictionary.
	 */
	new_dict->num_aux_vars	= orig_dict->num_aux_vars - remove_count;
	new_dict->num_split_vars	= orig_dict->num_split_vars;
	
	new_dict->split_vars	= orig_dict->split_vars;
	orig_dict->split_vars	= NULL;
	
	new_dict->objective_value = orig_dict->objective_value;
	
	// Copy the matrix.
	for (row_index = orig_dict->num_cons; row_index-- > 0;) {
		for (col_index0 = col_index1 = 0; col_index0 < orig_dict->num_vars; ++col_index0) {
			if (orig_dict->col_labels[col_index0] <= last_orig_var_label) {
				matrix_set_value(&new_dict->matrix, row_index, col_index1, matrix_get_value(&orig_dict->matrix, row_index, col_index0));
				
				++col_index1;
			}
		}
	}
	
	// Copy row data.
	for (row_index = new_dict->num_cons; row_index-- > 0;) {
		// Labels
		new_dict->row_labels[row_index] = orig_dict->row_labels[row_index];
		
		// Bounds
		new_dict->row_bounds.upper[row_index] = orig_dict->row_bounds.upper[row_index];
		new_dict->row_bounds.lower[row_index] = orig_dict->row_bounds.lower[row_index];
		
		// Values
		new_dict->row_values[row_index] = orig_dict->row_values[row_index];
	}
	
	// Copy column data.
	for (col_index0 = col_index1 = 0; col_index0 < orig_dict->num_vars; ++col_index0) {
		if (orig_dict->col_labels[col_index0] <= last_orig_var_label) {
			// Labels
			new_dict->col_labels[col_index1] = orig_dict->col_labels[col_index0];
			
			// Bounds
			new_dict->col_bounds.upper[col_index1] = orig_dict->col_bounds.upper[col_index0];
			new_dict->col_bounds.lower[col_index1] = orig_dict->col_bounds.lower[col_index0];
			
			// Rests
			new_dict->col_rests[col_index1] = orig_dict->col_rests[col_index0];
			
			// Objective
			new_dict->objective[col_index1] = orig_dict->objective[col_index0];
			
			++col_index1;
		}
	}
	
	dict_free(orig_dict);
	return new_dict;
}

inline bool dict_row_is_feasible(const dict_t* dict, uint con_index) {
	double con_value = dict->row_values[con_index];
	
	return dict->row_bounds.lower[con_index] <= con_value && con_value <= dict->row_bounds.upper[con_index]; 
}

void dict_select_entering_and_leaving(const dict_t* dict, elr_t* result) {
	uint col_index, row_index, min_sub = INT_MAX;
	double max_constraint;
	
	clr_t cl_result;
	
	if (cfg.vv) {
		printf("Entering and leaving variable analysis:\n");
	}
	
	// Select the entering variable.
	for (col_index = dict->num_vars; col_index-- > 0;) {
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
	
	for (row_index = dict->num_cons; row_index-- > 0;) {
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

void dict_set_bounds(dict_t* dict) {
	uint col_index;
	
	// Pick the initial resting bounds for the variables.
	for (col_index = dict->num_vars; col_index-- > 0;) {
		if ((dict->objective[col_index] >= 0 && dict->col_bounds.upper[col_index] != INFINITY) || (dict->col_bounds.lower[col_index] == -INFINITY)) {
			dict->col_rests[col_index] = UPPER;
			
		} else {
			dict->col_rests[col_index] = LOWER;
		}
	}
}

inline void dict_set_objective_value(dict_t* dict) {
	uint col_index;
	
	dict->objective_value = 0.0;
	for (col_index = dict->num_vars; col_index-- > 0;) {
		dict->objective_value += dict->objective[col_index] * dict_get_var_bound_value(dict, col_index);
	}
}

void dict_set_values(dict_t* dict) {
	uint row_index;
	
	// Calculate the values of the constraints.
	for (row_index = dict->num_cons; row_index-- > 0;) {
		dict->row_values[row_index] = dict_get_constraint_value(dict, row_index);
	}
	
	// Calculate the value of the objective.
	dict_set_objective_value(dict);
}

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
	double con_value;
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
	con_value = dict->row_values[con_index];
	
	// Get the coefficient for t.
	t_coef  = dict->col_rests[var_index] == UPPER ? -1.0 : 1.0;
	t_coef *= row[var_index];
	
	/*
	 * Calculate the amount this leaving variable choice constrains the
	 * entering variable's value.
	 */
	if (dict->row_bounds.lower[con_index] <= con_value && t_coef < 0) {
		result->viable		= TRUE;
		result->constraint	= (dict->row_bounds.lower[con_index] - con_value) / t_coef;
		result->new_rest	= LOWER;
		
	} else if (con_value <= dict->row_bounds.upper[con_index] && t_coef > 0) {
		result->viable		= TRUE;
		result->constraint	= (dict->row_bounds.upper[con_index] - con_value) / t_coef;
		result->new_rest	= UPPER;
		
	} else {
		result->viable = FALSE;
	}
}

inline bool dict_var_is_unbounded(const dict_t* dict, uint var_index) {
	return -INFINITY == dict->col_bounds.lower[var_index] && dict->col_bounds.upper[var_index] == INFINITY;
}

bool dict_var_was_split(const dict_t* dict, int var_label) {
	uint index;
	
	if (var_label < 0) return FALSE;
	
	for (index = dict->num_split_vars; index-- > 0;) {
		if (dict->split_vars[index] == var_label) {
			return TRUE;
		}
	}
	
	return FALSE;
}

void dict_view(const dict_t* dict) {
	uint col_index, row_index;
	double tmp;
	char buffer[10];
	
	// Print column labels.
	printf("                         ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (dict->col_labels[col_index] >= 0) {
			snprintf(buffer, 10, "x%u", dict->col_labels[col_index]);
			
		} else {
			snprintf(buffer, 10, "-x%u", -dict->col_labels[col_index]);
		}
		
		printf("%8s", buffer);
	}
	printf("     value\n");
	
	// Print bounds, labels, and values for rows.
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		// Format the column label.
		if (dict->row_labels[row_index] >= 0) {
			snprintf(buffer, 10, "x%u", dict->row_labels[row_index]);
			
		} else {
			snprintf(buffer, 10, "-x%u", -dict->row_labels[row_index]);
		}
		
		// Print out bounds and label info.
		printf("% 7.3g % 7.3g | %5s |", dict->row_bounds.lower[row_index], dict->row_bounds.upper[row_index], buffer);
		
		for (col_index = 0; col_index < dict->num_vars; ++col_index) {
			tmp = matrix_get_value(&dict->matrix, row_index, col_index);
			printf(" % 7.2g", tmp == -0 ? 0 : tmp);
		}
		
		// Print the constraint's value.
		printf(" | % 7.3g", dict->row_values[row_index]);
		
		printf("\n");
	}
	
	// Print seperator.
	printf("-----------------------------------");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf("--------");
	}
	printf("\n");
	
	// Print objective function coefficients.
	printf("                      z |");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf(" % 7.3g", dict->objective[col_index]);
	}
	printf("\n");
	
	// Print the variables' lower bounds.
	printf("                        | ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf(dict->col_rests[col_index] == LOWER ? " [% 5.2g]" : "  % 5.2g ", dict->col_bounds.lower[col_index]);
	}
	printf("\n");
	
	// Print the variables' upper bounds.
	printf("                        | ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		printf(dict->col_rests[col_index] == UPPER ? " [% 5.2g]" : "  % 5.2g ", dict->col_bounds.upper[col_index]);
	}
	printf("\n\n");
}

void dict_view_answer(const dict_t* dict) {
	uint var_index;
	uint num_orig_vars;
	char buffer[10];
	
	num_orig_vars = dict->num_vars - dict->num_aux_vars - dict->num_split_vars;
	
	printf("\t   z = %g\n", dict->objective_value);

	for (var_index = 1; var_index <= num_orig_vars; ++var_index) {
		snprintf(buffer, 10, "x%u", var_index);
		printf("\t%4s = %g\n", buffer, dict_get_var_value_by_label(dict, var_index));
	}
}
