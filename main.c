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

// Project Includes
#include "dictionary.h"
#include "input.h"
#include "util.h"

// Globals

config cfg;

// Functions

int main(int argc, char** argv) {
	FILE* in;
	unsigned int i, j;
	
	get_config(argc, argv);
	
	if ((in = fopen(cfg.filename, "rt")) != NULL) {
		unsigned num_constraints, num_variables;
		
		fscanf(in, "%i,%i\n", &num_constraints, &num_variables);
		printf("Num constraints: %d\n", num_constraints);
		printf("Num variables: %d\n\n", num_variables);

		/*
		* FIXME: Switch to something that doesn't load into memory all at once
		*/
		double* objective	= (double*)malloc(num_variables * sizeof(double));
		double* matrix		= (double*)malloc(num_variables * num_constraints * sizeof(double));
		
		double* constraint_bounds_lower = (double*)malloc(num_constraints * sizeof(double));
		double* constraint_bounds_upper = (double*)malloc(num_constraints * sizeof(double));
		
		double* var_bounds_lower = (double*)malloc(num_variables * sizeof(double));
		double* var_bounds_upper = (double*)malloc(num_variables * sizeof(double));

		load_objective(in, num_variables, objective);
		load_matrix(in, num_variables, num_constraints, matrix);
		load_constraint_bounds(in, num_constraints, constraint_bounds_lower, constraint_bounds_upper);
		load_var_bounds(in, num_variables, var_bounds_lower, var_bounds_upper);
		
		printf("Objective coefficients:\n");
		for (i = 0; i < num_variables; ++i) {
			printf("%g  ", objective[i]);
		}
		printf("\n\n");
		
		printf("Matrix:\n");
		for (j = 0; j < num_constraints; ++j) {
			for (i = 0; i < num_variables; ++i) {
				printf("%5.3g", objective[i + j * num_variables]);
			}
			printf("\n");
		}
		printf("\n\n");
		
		printf("Constraint bounds:\n");
		for (i = 0; i < num_constraints; ++i) {
			printf("(%4.3g, %4.3g) ", constraint_bounds_lower[i], constraint_bounds_upper[i]);
		}
		printf("\n\n");
		
		printf("Variable bounds:\n");
		for (i = 0; i < num_variables; ++i) {
			printf("(%4.3g, %4.3g) ", var_bounds_lower[i], var_bounds_upper[i]);
		}
		printf("\n\n");
		
		return 0;
		
	} else {
		printf("File %s not found\n", argv[1]);
		return -1;
		
	}
}
