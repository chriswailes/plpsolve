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
		unsigned num_cons, num_vars;
		
		fscanf(in, "%i,%i\n", &num_cons, &num_vars);
		printf("Num constraints: %d\n", num_cons);
		printf("Num variables: %d\n\n", num_vars);

		/*
		* FIXME: Switch to something that doesn't load into memory all at once
		*/
		double* objective	= (double*)malloc(num_vars * sizeof(double));
		double* matrix		= (double*)malloc(num_vars * num_cons * sizeof(double));
		
		double* cons_bounds_lower = (double*)malloc(num_cons * sizeof(double));
		double* cons_bounds_upper = (double*)malloc(num_cons * sizeof(double));
		
		double* var_bounds_lower = (double*)malloc(num_vars * sizeof(double));
		double* var_bounds_upper = (double*)malloc(num_vars * sizeof(double));

		load_objective(in, num_vars, objective);
		load_matrix(in, num_vars, num_cons, matrix);
		load_constraint_bounds(in, num_cons, cons_bounds_lower, cons_bounds_upper);
		load_var_bounds(in, num_vars, var_bounds_lower, var_bounds_upper);
		
		// Close the input file.
		fclose(in);
		
		printf("Objective coefficients:\n");
		for (i = 0; i < num_vars; ++i) {
			printf("%g  ", objective[i]);
		}
		printf("\n\n");
		
		printf("Matrix:\n");
		for (j = 0; j < num_cons; ++j) {
			for (i = 0; i < num_vars; ++i) {
				printf("%5.3g", matrix[i + j * num_vars]);
			}
			printf("\n");
		}
		printf("\n\n");
		
		printf("Constraint bounds:\n");
		for (i = 0; i < num_cons; ++i) {
			printf("(%4.3g, %4.3g) ", cons_bounds_lower[i], cons_bounds_upper[i]);
		}
		printf("\n\n");
		
		printf("Variable bounds:\n");
		for (i = 0; i < num_vars; ++i) {
			printf("(%4.3g, %4.3g) ", var_bounds_lower[i], var_bounds_upper[i]);
		}
		printf("\n\n");
		
		return 0;
		
	} else {
		printf("File %s not found\n", argv[1]);
		return -1;
		
	}
}
