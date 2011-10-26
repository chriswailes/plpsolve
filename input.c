/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Functions for dealing with files in the input format.
 */

// Project Includes
#include <stdio.h>
#include <stdlib.h>

#include "input.h"

void load_constraint_bounds(FILE* in, unsigned num_constraints, double* target_lower, double* target_upper) {
	unsigned i;

	for (i = 0; i < num_constraints; ++i) {
		if (i)
			fscanf(in, ", %lf", &target_lower[i]);
		else
			fscanf(in, "%lf", &target_lower[i]);
	}
	fscanf(in, "\n");

	for (i = 0; i < num_constraints; ++i) {
		if (i)
			fscanf(in, ", %lf", &target_upper[i]);
		else
			fscanf(in, "%lf", &target_upper[i]);
	}
	fscanf(in, "\n");
}

void load_matrix(FILE* in, unsigned num_variables, unsigned num_constraints, double* target) {
	unsigned i, j;
	
	for (j = 0; j < num_constraints; ++j) {
		for (i = 0; i < num_variables; ++i) {
			if (i)
				fscanf(in, ", %lf", &target[i + j * num_variables]);
			else
				fscanf(in, "%lf", &target[i + j * num_variables]);
		}
	}
	fscanf(in, "\n");
}

void load_objective(FILE* in, unsigned num_variables, double* target) {
	unsigned i;
	
	for (i = 0; i < num_variables; ++i) {
		if (i)
			fscanf(in, ", %lf", &target[i]);
		else
			fscanf(in, "%lf", &target[i]);
	}
	fscanf(in, "\n");
}

void load_var_bounds(FILE* in, unsigned num_variables, double* target_lower, double* target_upper) {
	unsigned i;
	
	for (i = 0; i < num_variables; ++i) {
		if (i)
			fscanf(in, ", %lf", &target_lower[i]);
		else
			fscanf(in, "%lf", &target_lower[i]);
	}
	fscanf(in, "\n");

	for (i = 0; i < num_variables; ++i) {
		if (i)
			fscanf(in, ", %lf", &target_upper[i]);
		else
			fscanf(in, "%lf", &target_upper[i]);
	}
	fscanf(in, "\n");
}
