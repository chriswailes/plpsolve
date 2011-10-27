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

// Project Includes
#include "dictionary.h"
#include "input.h"
#include "util.h"

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
