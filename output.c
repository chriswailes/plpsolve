/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/11/10
 * Description:	Functions for writing various forms out output.
 */

// Standard Includes
#include <math.h>
#include <stdio.h>

// Project Includes
#include "dictionary.h"

void output_glpsol(dict_t* dict, const char* filename) {
	int col_index, row_index, current_constraint;
	FILE* out = fopen(filename, "wt");
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		fprintf(out, "var x%i;\n", dict->col_labels[col_index]);
	}
	fprintf(out, "\n");
	
	fprintf(out, "maximize objVal: ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (col_index)
			fprintf(out, " + %f * x%i", dict->objective[col_index], dict->col_labels[col_index]);
		else
			fprintf(out, "%f * x%i", dict->objective[col_index], dict->col_labels[col_index]);
	}
	fprintf(out, ";\n\n");

	current_constraint = 1;

	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		if (dict->row_bounds.lower[row_index] != INFINITY && dict->row_bounds.lower[row_index] != -INFINITY) {
			fprintf(out, "c%i: ", current_constraint);
			
			for (col_index = 0; col_index < dict->num_vars; ++col_index) {
				fprintf(out, col_index ? " + %f * x%i" : "%f * x%i", matrix_get_value(&dict->matrix, row_index, col_index), dict->col_labels[col_index]);
			}
			
			fprintf(out, " >= %f;\n", dict->row_bounds.lower[row_index]);
			++current_constraint;
		}

		if (dict->row_bounds.upper[row_index] != INFINITY && dict->row_bounds.upper[row_index] != -INFINITY) {
			fprintf(out, "c%i: ", current_constraint);
			
			for (col_index = 0; col_index < dict->num_vars; ++col_index) {
				fprintf(out, col_index ? " + %f * x%i" : "%f * x%i", matrix_get_value(&dict->matrix, row_index, col_index), dict->col_labels[col_index]);
			}
			
			fprintf(out, " <= %f;\n", dict->row_bounds.upper[row_index]);
			++current_constraint;
		}
	}
	
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (dict->col_bounds.lower[col_index] != INFINITY && dict->col_bounds.lower[col_index] != -INFINITY) {
			fprintf(out, "c%i: x%i >= %f;\n", current_constraint, dict->col_labels[col_index], dict->col_bounds.lower[col_index]);
			++current_constraint;
		}

		if (dict->col_bounds.upper[col_index] != INFINITY && dict->col_bounds.upper[col_index] != -INFINITY) {
			fprintf(out, "c%i: x%i <= %f;\n", current_constraint, dict->col_labels[col_index], dict->col_bounds.upper[col_index]);
			++current_constraint;
		}
	}
	fprintf(out, "\n");
	
	fprintf(out, "solve; # directive to solve\n");
	fprintf(out, "display objVal, ");
	for (col_index = 0; col_index < dict->num_vars; ++col_index) {
		if (col_index == (dict->num_vars - 1)) {
			fprintf(out, "x%i;\n", dict->col_labels[col_index]);
		} else {
			fprintf(out, "x%i, ", dict->col_labels[col_index]);
		}
	}
	fprintf(out, "end;\n");
	fclose(out);
}
