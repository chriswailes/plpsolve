/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Functions for manipulating dictionaries.
 */

// Standard Incldues
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

// Project Includes
#include "dictionary.h"
#include "util.h"

// Functions

void dictionary_free(dictionary* dict) {
	free(dict->objective);
	free(dict->matrix);
	
	free(dict->col_labels);
	free(dict->row_labels);
	
	free(dict->con_bounds.upper);
	free(dict->con_bounds.lower);
	free(dict->var_bounds.upper);
	free(dict->var_bounds.lower);
	
	free(dict->var_rests);
}

infeasible_set_t dictionary_infeasible_rows(dictionary *dict) {
	//This can be done a little less naively, but do it naively for now
	int i, j;
	infeasible_set_t infeasible_set;
	infeasible_set.infeasible_rows = 0;
	infeasible_set.num_infeasible_rows = 0;

	for (j = 0; j < dict->num_cons; ++j) {
		double constraint_sum = 0.0;
		for (i = 0; i < dict->num_vars; ++i) {
			switch (dict->var_rests[i]) {
			case UPPER:
				constraint_sum += dict->matrix[i + j * dict->num_vars] * dict->var_bounds.upper[i];
				break;
			case LOWER:
				constraint_sum += dict->matrix[i + j * dict->num_vars] * dict->var_bounds.lower[i];
				break;
			}
		}
		if ((constraint_sum < dict->con_bounds.lower[j]) ||
				(constraint_sum > dict->con_bounds.upper[j])) {

			//add infeasible
			++infeasible_set.num_infeasible_rows;
			if (infeasible_set.num_infeasible_rows) {
				infeasible_set.infeasible_rows = realloc(infeasible_set.infeasible_rows,
						infeasible_set.num_infeasible_rows * sizeof(infeasible_row_t));
			}
			else {
				infeasible_set.infeasible_rows = malloc(infeasible_set.num_infeasible_rows *
						sizeof(infeasible_row_t));
			}

			if (constraint_sum < dict->con_bounds.lower[j]) {
				infeasible_set.infeasible_rows[infeasible_set.num_infeasible_rows-1].infeasible_row = j;
				infeasible_set.infeasible_rows[infeasible_set.num_infeasible_rows-1].infeasible_amount =
						dict->con_bounds.lower[j] - constraint_sum;
			}
			else if (constraint_sum > dict->con_bounds.upper[j]) {
				infeasible_set.infeasible_rows[infeasible_set.num_infeasible_rows-1].infeasible_row = j;
				infeasible_set.infeasible_rows[infeasible_set.num_infeasible_rows-1].infeasible_amount =
						dict->con_bounds.upper[j] - constraint_sum;
			}
		}
	}

	return infeasible_set;
}

int min_int(int left, int right) {
	if (right < left)
		return right;
	else
		return left;
}

void dictionary_resize(dictionary* dict, unsigned new_num_vars, unsigned new_num_cons) {
	//In case we want to snapshot the previous pointers, don't realloc them.
	//Instead, just create a new dictionary and replace the pointers.

	double *new_objective = malloc(sizeof(double) * new_num_vars);
	memset(new_objective, 0, sizeof(double) * new_num_vars);
	memcpy(new_objective, dict->objective, sizeof(double) * min_int(new_num_vars, dict->num_vars));
	dict->objective = new_objective;

	int *new_col_labels = malloc(sizeof(int) * new_num_vars);
	memset(new_col_labels, 0, sizeof(int) * new_num_vars);
	memcpy(new_col_labels, dict->col_labels, sizeof(int) * min_int(new_num_vars, dict->num_vars));
	dict->col_labels = new_col_labels;

	rest_t* new_var_rests = malloc(sizeof(rest_t) * new_num_vars);
	memset(new_var_rests, 0, sizeof(rest_t) * new_num_vars);
	memcpy(new_var_rests, dict->var_rests, sizeof(rest_t) * min_int(new_num_vars, dict->num_vars));
	dict->var_rests = new_var_rests;

	bounds_t new_var_bounds;
	new_var_bounds.lower = malloc(sizeof(double) * new_num_vars);
	memset(new_var_bounds.lower, 0, (sizeof(double) * new_num_vars));

	new_var_bounds.upper = malloc(sizeof(double) * new_num_vars);
	memset(new_var_bounds.upper, 0, (sizeof(double) * new_num_vars));

	memcpy(new_var_bounds.lower, dict->var_bounds.lower, sizeof(double) *
			min_int(new_num_vars, dict->num_vars));
	memcpy(new_var_bounds.upper, dict->var_bounds.upper, sizeof(double) *
			min_int(new_num_vars, dict->num_vars));
	dict->var_bounds = new_var_bounds;

	int *new_row_labels = malloc(sizeof(int) * new_num_cons);
	memset(new_row_labels, 0, (sizeof(int) * new_num_cons));
	memcpy(new_row_labels, dict->row_labels, sizeof(int) * min_int(new_num_cons, dict->num_cons));
	dict->row_labels = new_row_labels;

	bounds_t new_con_bounds;
	new_con_bounds.lower = malloc(sizeof(double) * new_num_cons);
	memset(new_con_bounds.lower, 0, (sizeof(double) * new_num_cons));

	new_con_bounds.upper = malloc(sizeof(double) * new_num_cons);
	memset(new_con_bounds.upper, 0, (sizeof(double) * new_num_cons));

	memcpy(new_con_bounds.lower, dict->con_bounds.lower, sizeof(double) *
			min_int(new_num_cons, dict->num_cons));
	memcpy(new_con_bounds.upper, dict->con_bounds.upper, sizeof(double) *
			min_int(new_num_cons, dict->num_cons));
	dict->con_bounds = new_con_bounds;

	double* new_matrix = malloc(sizeof(double) * new_num_vars * new_num_cons);
	memset (new_matrix, 0, sizeof(double) * new_num_vars * new_num_cons);

	int i;
	for (i = 0; i < min_int(dict->num_cons, new_num_cons); ++i) {
		memcpy(new_matrix + i * new_num_vars, dict->matrix + i * dict->num_vars,
				sizeof(double) * min_int(new_num_vars, dict->num_vars));
	}

	dict->matrix = new_matrix;

	dict->num_cons = new_num_cons;
	dict->num_vars = new_num_vars;
}

void dictionary_init(dictionary* dict) {
	infeasible_set_t infeasible = dictionary_infeasible_rows(dict);
	
	if (infeasible.num_infeasible_rows) {
		// perform initialization
		double *old_objective = dict->objective;
		int old_num_vars = dict->num_vars;
		int old_num_cons = dict->num_cons;

		printf("Number infeasible rows: %i\n", infeasible.num_infeasible_rows);
		int i;
		for (i = 0; i < infeasible.num_infeasible_rows; ++i) {
			printf("  row: %i by %f\n", infeasible.infeasible_rows[i].infeasible_row,
					infeasible.infeasible_rows[i].infeasible_amount);
		}
		dictionary_view(dict);

		dictionary_resize(dict, dict->num_vars + infeasible.num_infeasible_rows,
				dict->num_cons);

		for (i = 0; i < old_num_vars; ++i) {
			dict->objective[i] = 0;
		}
		for (i = 0; i < infeasible.num_infeasible_rows; ++i) {
			dict->objective[i + old_num_vars] = -1;
			dict->var_bounds.lower[i + old_num_vars] = 0;
			dict->col_labels[old_num_vars + i] = 1 + i + (dict->num_vars - infeasible.num_infeasible_rows) + dict->num_cons;
			if (infeasible.infeasible_rows[i].infeasible_amount < 0) {
				dict->var_bounds.upper[i + old_num_vars] = infeasible.infeasible_rows[i].infeasible_amount * -1;

				//FIXME: During shrinking this can segfault
				dict->matrix[infeasible.infeasible_rows[i].infeasible_row * dict->num_vars + old_num_vars + i] = -1;
			}
			else {
				dict->var_bounds.upper[i + old_num_vars] = infeasible.infeasible_rows[i].infeasible_amount;
				dict->matrix[infeasible.infeasible_rows[i].infeasible_row * dict->num_vars + old_num_vars + i] = 1;
			}
		}

		dictionary_view(dict);

		dictionary_resize(dict, old_num_vars, old_num_cons);
		dict->objective = old_objective;

		printf("Resetting to original dictionary\n");
		dictionary_view(dict);
	}
	else {
		// dictionary is feasible, return
		return;
	}
}

void dictionary_init_struct(dictionary* dict) {
	int index;
	
	/*
	 * Allocate the necessary memory.
	 */
	
	dict->objective	= (double*)malloc(dict->num_vars * sizeof(double));
	dict->matrix		= (double*)malloc(dict->num_vars * dict->num_cons * sizeof(double));
	
	dict->col_labels = (int*)malloc(dict->num_vars * sizeof(int));
	dict->row_labels = (int*)malloc(dict->num_cons * sizeof(int));
	
	dict->con_bounds.upper = (double*)malloc(dict->num_cons * sizeof(double));
	dict->con_bounds.lower = (double*)malloc(dict->num_cons * sizeof(double));
	
	dict->var_bounds.upper = (double*)malloc(dict->num_vars * sizeof(double));
	dict->var_bounds.lower = (double*)malloc(dict->num_vars * sizeof(double));
	
	dict->var_rests = (rest_t*)malloc(dict->num_vars * sizeof(rest_t));
	
	// Initialize the variable labels.
	for (index = 1; index <= dict->num_vars; ++index) {
		dict->col_labels[index - 1] = index;
	}
	
	for (index = 1; index <= dict->num_cons; ++index) {
		dict->row_labels[index - 1] = dict->num_vars + index;
	}
}

bool dictionary_is_final(dictionary* dict) {
	int index;
	
	for (index = 0; index < dict->num_vars; ++index) {
		if ((dict->objective[index] < 0 && dict->var_rests[index] == UPPER) || (dict->objective[index] > 0 && dict->var_rests[index] == LOWER)) {
			return FALSE;
		}
	}
	
	return TRUE;
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
void dictionary_pivot(dictionary* dict, int col_index, int row_index) {
	int index0, index1;
	
	double  coefficient, swap;
	double* tmp_row;
	
	// Allocate space for our work.
	tmp_row = (double*)malloc(dict->num_vars * sizeof(double));
	
	// Copy the pivot row.
	memcpy(tmp_row, &dict->matrix[row_index * dict->num_vars], dict->num_vars * sizeof(double));
	
	// Grab the coefficient from the pivot column, and then replace it.
	coefficient = -tmp_row[col_index];
	tmp_row[col_index] = -1.0;
	
	// Divide the vector by the coefficient, converting to form 3.
	for (index0 = 0; index0 < dict->num_vars; ++index0) {
		tmp_row[index0] /= coefficient;
	}
	
	// Replace old row with new row.
	memcpy(&dict->matrix[row_index * dict->num_vars], tmp_row, dict->num_vars * sizeof(double));
	
	// Substitute new rows into old rows in the matrix.
	for (index0 = 0; index0 < dict->num_cons; ++index0) {
		if (index0 != row_index) {
			coefficient = dict->matrix[(index0 * dict->num_vars) + col_index];
			
			for (index1 = 0; index1 < dict->num_vars; ++index1) {
				if (index1 == col_index) {
					dict->matrix[(index0 * dict->num_vars) + index1]  = coefficient * tmp_row[index1];
					
				} else {
					dict->matrix[(index0 * dict->num_vars) + index1] += coefficient * tmp_row[index1];
				}
			}
		}
	}
	
	// Perform the same steps for the objective function.
	coefficient = dict->objective[col_index];
	for (index0 = 0; index0 < dict->num_vars; ++index0) {
		if (index0 == col_index) {
			dict->objective[index0]  = tmp_row[index0];
		} else {
			dict->objective[index0] += coefficient * tmp_row[index0];
		}
	}
	
	/*
	 * Swap bounds and labels
	 */
	
	swap = dict->col_labels[col_index];
	dict->col_labels[col_index] = dict->row_labels[row_index];
	dict->row_labels[row_index] = swap;
	
	swap = dict->var_bounds.upper[col_index];
	dict->var_bounds.upper[col_index] = dict->con_bounds.upper[row_index];
	dict->con_bounds.upper[row_index] = swap;
	
	swap = dict->var_bounds.lower[col_index];
	dict->var_bounds.lower[col_index] = dict->con_bounds.lower[row_index];
	dict->con_bounds.lower[row_index] = swap;
	
	// Free our temporary row.
	free(tmp_row);
}

void dictionary_view(const dictionary* dict) {
	unsigned int i, j;
	char buffer[10];
	
	printf("Num constraints: %d\n", dict->num_cons);
	printf("Num variables: %d\n\n", dict->num_vars);
	
	printf("Objective coefficients:\n");
	for (i = 0; i < dict->num_vars; ++i) {
		printf("%g  ", dict->objective[i]);
	}
	printf("\n\n");

	printf("Matrix:\n     ");
	for (i = 0; i < dict->num_vars; ++i) {
		snprintf(buffer, 10, "x%d", dict->col_labels[i]);
		printf("%5s", buffer);
	}
	printf("\n");
	
	for (j = 0; j < dict->num_cons; ++j) {
		printf("x%-4d", dict->row_labels[j]);
		for (i = 0; i < dict->num_vars; ++i) {
			printf("%5.3g", dict->matrix[i + j * dict->num_vars]);
		}
		printf("\n");
	}
	printf("\n\n");

	printf("Constraint bounds:\n");
	for (i = 0; i < dict->num_cons; ++i) {
		printf("(%4.3g, %4.3g) ", dict->con_bounds.lower[i], dict->con_bounds.upper[i]);
	}
	printf("\n\n");

	printf("Variable bounds:\n");
	for (i = 0; i < dict->num_vars; ++i) {

		printf("(");
		if (dict->var_rests[i] == LOWER)
			printf("[");
		printf("%4.3g", dict->var_bounds.lower[i]);
		if (dict->var_rests[i] == LOWER)
			printf("]");
		printf(", ");
		if (dict->var_rests[i] == UPPER)
			printf("[");
		printf("%4.3g", dict->var_bounds.upper[i]);
		if (dict->var_rests[i] == UPPER)
			printf("]");
		printf(")");
	}
	printf("\n\n");
}
