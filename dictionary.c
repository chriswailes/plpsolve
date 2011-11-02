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

// Globals

extern config cfg;

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

	int *new_split_vars = malloc(sizeof(int) * new_num_vars);
	memset(new_split_vars, 0, sizeof(int) * new_num_vars);
	memcpy(new_split_vars, dict->split_vars, sizeof(int) * min_int(new_num_vars, dict->num_vars));
	dict->split_vars = new_split_vars;

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

bool is_unbounded_var_at_index(dictionary *dict, int index) {
	/* Not sure if you're technically allowed to check equality with infinity,
	 * but since we're the ones setting infinity and not trying to create new
	 * infinities, perhaps this is allowed?
	 */
	if (dict->var_bounds.upper[index] == INFINITY &&
			dict->var_bounds.lower[index] == -INFINITY)

		return TRUE;
	else
		return FALSE;
}

unsigned dictionary_get_num_unbounded_vars(dictionary *dict) {
	int i;
	unsigned num_unbounded_vars = 0;
	for (i = 0; i < dict->num_vars; ++i) {
		if (is_unbounded_var_at_index(dict, i))
			++num_unbounded_vars;
	}
	return num_unbounded_vars;
}


void dictionary_populate_split_vars(dictionary* dict, int starting_split_var) {
	int next_split_var = starting_split_var;

	int i;
	for (i = 0; i < starting_split_var; ++i) {
		if (is_unbounded_var_at_index(dict, i)) {
			// split var
			int j;
			for (j = 0; j < dict->num_cons; ++j) {
				// A bit silly, but don't negate zeros because it looks ugly
				if (dict->matrix[j * dict->num_vars + i])
					dict->matrix[j * dict->num_vars + next_split_var] =
						-dict->matrix[j * dict->num_vars + i];
				else
					dict->matrix[j * dict->num_vars + next_split_var] =
						dict->matrix[j * dict->num_vars + i];
			}
			dict->var_bounds.upper[next_split_var] = 0;
			dict->var_bounds.lower[next_split_var] = -INFINITY;
			dict->var_bounds.upper[i] = INFINITY;
			dict->var_bounds.lower[i] = 0;

			dict->var_rests[next_split_var] = UPPER;
			dict->var_rests[i] = LOWER;

			dict->objective[next_split_var] = -dict->objective[i];

			dict->col_labels[next_split_var] = 1 + next_split_var + dict->num_cons;
			dict->split_vars[dict->col_labels[i]] = dict->col_labels[next_split_var];

			++next_split_var;
		}
	}
}

void dictionary_init(dictionary* dict) {
	unsigned num_unbounded_vars = dictionary_get_num_unbounded_vars(dict);

	int pre_resize_num_vars = dict->num_vars;
	dictionary_resize(dict, dict->num_vars + num_unbounded_vars, dict->num_cons);
	dictionary_populate_split_vars(dict, pre_resize_num_vars);

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
	
	dict->split_vars = (int*)malloc(dict->num_vars * sizeof(int));
	memset(dict->split_vars, 0, dict->num_vars * sizeof(int));

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
	
	printf("Row Index: %d\n", row_index);
	
	// Copy the pivot row.
	memcpy(tmp_row, &dict->matrix[row_index * dict->num_vars], dict->num_vars * sizeof(double));
	
	printf("HERE!\n");
	
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
			dict->objective[index0]  = coefficient * tmp_row[index0];
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

bool dictionary_var_can_enter(dictionary* dict, int col_index) {
	if ((dict->objective[col_index] < 0 && dict->var_rests[col_index] == UPPER) || (dict->objective[col_index] > 0 && dict->var_rests[col_index] == LOWER)) {
		return TRUE;
	} else {
		return FALSE;
	}
}

/*
 * Determines if a variable (referenced by the corresponding row in the matrix)
 * can leave when a given variable (referenced by the corresponding column in
 * the matrix) is entering.
 * 
 * If the variable can't leave 0 is returned.  If it can leave, the amount that
 * it constrains the entering variable is returned.
 */
double dictionary_var_can_leave(dictionary* dict, int col_index, int row_index) {
	int index;
	double accum = 0;
	double t_coef;
	double* row = &dict->matrix[row_index * dict->num_vars];
	
	/*
	 * Accumulate the constant given the resting bounds for the non-basic
	 * variables.
	 */
	for (index = 0; index < dict->num_vars; ++index) {
		//~printf("BAF: %f\n", row[index]);
		accum += row[index] * (dict->var_rests[index] == UPPER ? dict->var_bounds.upper : dict->var_bounds.lower)[index];
	}
	
	//~printf("BAR: %f\n", accum);
	
	// Get the coefficient for t.
	t_coef  = dict->var_rests[col_index] == UPPER ? -1.0 : 1.0;
	t_coef *= row[col_index];
	
	/*
	 * Calculate the amount this leaving variable choice constrains the
	 * entering variable's value.
	 */
	if (dict->con_bounds.lower[row_index] < accum && t_coef < 0) {
		return (dict->con_bounds.lower[row_index] - accum) / t_coef;
	} else if (accum < dict->con_bounds.upper[row_index] && t_coef > 0) {
		return (dict->con_bounds.upper[row_index] - accum) / t_coef;
	} else {
		return -1;
	}
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

	printf("Split vars: ");
	for (i = 0; i < dict->num_vars; ++i) {
		if (dict->split_vars[i])
			printf("x%i<->x%i ", i, dict->split_vars[i]);
	}
	printf("\n\n");
}

void select_entering_and_leaving(dictionary* dict, int* e_and_l) {
	int index;
	double tmp, max_constraint;
	
	bool flip;
	
	if (cfg.rule == BLANDS) {
		
	} else if (cfg.rule == PROFY) {
		
	} else {
		// Select the entering variable.
		for (index = 0; index < dict->num_vars; ++index) {
			if (dictionary_var_can_enter(dict, index)) {
				e_and_l[0] = index;
				break;
			}
		}
		
		/*
		 * Pick the leaving variable.
		 */
		
		if (dict->objective[e_and_l[0]] < 0 && dict->var_rests[e_and_l[0]] == UPPER) {
			max_constraint	= dict->var_bounds.lower[e_and_l[0]];
			flip			= TRUE;
			
		} else if (dict->objective[e_and_l[0]] > 0 && dict->var_rests[e_and_l[0]] == LOWER) {
			max_constraint	= dict->var_bounds.upper[e_and_l[0]];
			flip			= TRUE;
			
		} else {
			max_constraint	= 0;
			flip			= FALSE;
		}
		
		for (index = 0; index < dict->num_cons; ++index) {
			tmp = dictionary_var_can_leave(dict, e_and_l[0], index);
			
			printf("FOO: %f\n", tmp);
			printf("BAF: %f\n", max_constraint);
			
			// Found a new, more constraining, choice.
			if (tmp != -1 && tmp < max_constraint) {
				printf("BAR!\n");
				max_constraint	= tmp;
				e_and_l[1]	= index;
				flip			= FALSE;
			}
		}
		
		if (flip) {
			e_and_l[1] = -1;
		}
	}
	
	printf("DONE AND DONE!\n");
}
