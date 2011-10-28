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

void dictionary_init(dictionary* dict) {
	
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
	
	// Pick the initial resting bounds for the variables.
	for (index = 0; index < dict->num_vars; ++index) {
		if (dict->objective[index] >= 0) {
			dict->var_rests[index] = UPPER;
		} else {
			dict->var_rests[index] = LOWER;
		}
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
		printf("(%4.3g, %4.3g) ", dict->var_bounds.lower[i], dict->var_bounds.upper[i]);
	}
	printf("\n\n");
}
