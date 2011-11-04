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

extern config cfg;

void load_lp_file(dictionary* dict) {
	int index;
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
		
		// Pick the initial resting bounds for the variables.
		for (index = 0; index < dict->num_vars; ++index) {
			if ((dict->objective[index] >= 0 && dict->var_bounds.upper[index] < INFINITY) || (dict->var_bounds.lower[index] == -INFINITY)) {
				dict->var_rests[index] = UPPER;
				
			} else {
				dict->var_rests[index] = LOWER;
			}
		}

		// Close the input file.
		fclose(in);
		
	} else {
		printf("Can't open file %s\n", cfg.filename);
		exit(-1);
	}
}

void load_constraint_bounds(FILE* in, dictionary* dict) {
	unsigned i;

	for (i = 0; i < dict->num_cons; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->con_bounds.lower[i]);
		else
			fscanf(in, "%lf", &dict->con_bounds.lower[i]);
	}
	fscanf(in, "\n");

	for (i = 0; i < dict->num_cons; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->con_bounds.upper[i]);
		else
			fscanf(in, "%lf", &dict->con_bounds.upper[i]);
	}
	fscanf(in, "\n");
}

void load_matrix(FILE* in, dictionary* dict) {
	unsigned i, j;
	
	for (j = 0; j < dict->num_cons; ++j) {
		for (i = 0; i < dict->num_vars; ++i) {
			if (i)
				fscanf(in, ", %lf", &dict->matrix[i + j * dict->num_vars]);
			else
				fscanf(in, "%lf", &dict->matrix[i + j * dict->num_vars]);
		}
	}
	fscanf(in, "\n");
}

void load_objective(FILE* in, dictionary* dict) {
	unsigned i;
	
	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->objective[i]);
		else
			fscanf(in, "%lf", &dict->objective[i]);
	}
	fscanf(in, "\n");
}

void load_var_bounds(FILE* in, dictionary* dict) {
	unsigned i;
	
	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->var_bounds.lower[i]);
		else
			fscanf(in, "%lf", &dict->var_bounds.lower[i]);
	}
	fscanf(in, "\n");

	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fscanf(in, ", %lf", &dict->var_bounds.upper[i]);
		else
			fscanf(in, "%lf", &dict->var_bounds.upper[i]);
	}
	fscanf(in, "\n");
}
