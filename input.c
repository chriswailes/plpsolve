/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Functions for dealing with files in the input format.
 */

// Standard Includes
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Project Includes
#include "dictionary.h"
#include "input.h"
#include "util.h"

// Global Variables

extern config_t cfg;

dict_t* load_lp_file(void) {
	uint col_index, row_index;
	uint num_vars, num_cons;
	FILE* in;
	
	dict_t* dict;
	
	if ((in = fopen(cfg.filename, "rt")) != NULL) {
		fscanf(in, "%u,%u\n", &num_cons, &num_vars);
		
		// Initialize our dictionary struct.
		dict = dict_new(num_vars, num_cons);
		
		// Set the variable labels.
		for (col_index = 1; col_index <= num_vars; ++col_index) {
			dict->col_labels[col_index - 1] = col_index;
		}
		
		for (row_index = 1; row_index <= num_cons; ++row_index) {
			dict->row_labels[row_index - 1] = num_vars + row_index;
		}
		
		// Load values from input file.
		load_objective(in, dict);
		load_matrix(in, dict);
		load_constraint_bounds(in, dict);
		load_var_bounds(in, dict);
	
		dict_set_bounds_and_values(dict);

		// Close the input file.
		fclose(in);
		
		return dict;
		
	} else {
		printf("Can't open file %s\n", cfg.filename);
		exit(-1);
	}
}

void load_constraint_bounds(FILE* in, dict_t* dict) {
	uint i;

	for (i = 0; i < dict->num_cons; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->row_bounds.lower[i]);
		else
			fscanf(in, "%lf", &dict->row_bounds.lower[i]);
	}
	fscanf(in, "\n");

	for (i = 0; i < dict->num_cons; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->row_bounds.upper[i]);
		else
			fscanf(in, "%lf", &dict->row_bounds.upper[i]);
	}
	fscanf(in, "\n");
}

void load_matrix(FILE* in, dict_t* dict) {
	uint col_index, row_index;
	
	for (row_index = 0; row_index < dict->num_cons; ++row_index) {
		for (col_index = 0; col_index < dict->num_vars; ++col_index) {
			fscanf(in, col_index ? ", %lf" : "%lf", matrix_get_address(&dict->matrix, row_index, col_index));
		}
	}
	fscanf(in, "\n");
}

void load_objective(FILE* in, dict_t* dict) {
	uint i;
	
	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->objective[i]);
		else
			fscanf(in, "%lf", &dict->objective[i]);
	}
	fscanf(in, "\n");
}

void load_var_bounds(FILE* in, dict_t* dict) {
	uint i;
	
	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->col_bounds.lower[i]);
		else
			fscanf(in, "%lf", &dict->col_bounds.lower[i]);
	}
	fscanf(in, "\n");

	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->col_bounds.upper[i]);
		else
			fscanf(in, "%lf", &dict->col_bounds.upper[i]);
	}
	fscanf(in, "\n");
}
