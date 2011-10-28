/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	The main driver of our program.
 */

// Standard Incldues
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

// Project Includes
#include "dictionary.h"
#include "input.h"
#include "kernels.h"
#include "util.h"

// Globals

config cfg;

// Forward Declarations

static void load_lp_file(dictionary* dict);
static void write_lp_mathprog(dictionary *dict, const char *filename);

// Functions

int main(int argc, char** argv) {
	dictionary dict;

	get_config(argc, argv);
	load_lp_file(&dict);
	
	if (cfg.verbose) {
		dictionary_view(&dict);
	}
	
	if (cfg.mathprog_filename) {
		write_lp_mathprog(&dict, cfg.mathprog_filename);
	}

	// Initialize the dictionary proper.
	dictionary_init(&dict);
	
	switch (cfg.method) {
		case PIVOT:
		default:
			pivot_kernel(&dict);
			break;
	}
	
	dictionary_pivot(&dict, 0, 0);
	
	dictionary_view(&dict);
	
	dictionary_free(&dict);
	
	return 0;
}

static void load_lp_file(dictionary *dict) {
	FILE* in;
	
	if ((in = fopen(cfg.filename, "rt")) != NULL) {
		fscanf(in, "%i,%i\n", &dict->num_cons, &dict->num_vars);
		
		// Initialize our dictionary struct.
		dictionary_init_struct(dict);
		
		// Load values from input file.
		load_objective(in, dict);
		load_matrix(in, dict);
		load_constraint_bounds(in, dict);
		load_var_bounds(in, dict);
		
		// Close the input file.
		fclose(in);
		
	} else {
		printf("Can't open file %s\n", cfg.filename);
		exit(-1);
	}
}

static void write_lp_mathprog(dictionary *dict, const char *filename) {
	int i, j, current_constraint;
	FILE *out = fopen(filename, "wt");
	for (i = 0; i < dict->num_vars; ++i) {
		fprintf(out, "var x%i;\n", dict->col_labels[i]);
	}
	fprintf(out, "\n");
	fprintf(out, "maximize objVal: ");
	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fprintf(out, " + %f * x%i", dict->objective[i], dict->col_labels[i]);
		else
			fprintf(out, "%f * x%i", dict->objective[i], dict->col_labels[i]);
	}
	fprintf(out, ";\n\n");

	current_constraint = 1;

	for (j = 0; j < dict->num_cons; ++j) {
		if (dict->con_bounds.lower[j] != INFINITY && dict->con_bounds.lower[j] != -INFINITY) {
			fprintf(out, "c%i: ", current_constraint);
			for (i = 0; i < dict->num_vars; ++i) {
				if (i) {
					fprintf(out, " + %f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				}
				else {
					fprintf(out, "%f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				}
			}
			fprintf(out, " >= %f;\n", dict->con_bounds.lower[j]);
			++current_constraint;
		}

		if (dict->con_bounds.upper[j] != INFINITY && dict->con_bounds.upper[j] != -INFINITY) {
			fprintf(out, "c%i: ", current_constraint);
			for (i = 0; i < dict->num_vars; ++i) {
				if (i) {
					fprintf(out, " + %f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				}
				else {
					fprintf(out, "%f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				}
			}
			fprintf(out, " <= %f;\n", dict->con_bounds.upper[j]);
			++current_constraint;
		}
	}
	for (i = 0; i < dict->num_vars; ++i) {
		if (dict->var_bounds.lower[i] != INFINITY && dict->var_bounds.lower[i] != -INFINITY) {
			fprintf(out, "c%i: x%i >= %f;\n", current_constraint, dict->col_labels[i], dict->var_bounds.lower[i]);
			++current_constraint;
		}

		if (dict->var_bounds.upper[i] != INFINITY && dict->var_bounds.upper[i] != -INFINITY) {
			fprintf(out, "c%i: x%i <= %f;\n", current_constraint, dict->col_labels[i], dict->var_bounds.upper[i]);
			++current_constraint;
		}
	}
	fprintf(out, "\n");
	fprintf(out, "solve; # directive to solve\n");
	fprintf(out, "display objVal, ");
	for (i = 0; i < dict->num_vars; ++i) {
		if (i == (dict->num_vars - 1)) {
			fprintf(out, "x%i;\n", dict->col_labels[i]);
		}
		else {
			fprintf(out, "x%i, ", dict->col_labels[i]);
		}
	}
	fprintf(out, "end;\n");
	fclose(out);
}
