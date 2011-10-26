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
	
	dictionary dict;
	
	get_config(argc, argv);
	
	if ((in = fopen(cfg.filename, "rt")) != NULL) {
		
		fscanf(in, "%i,%i\n", &dict.num_cons, &dict.num_vars);
		printf("Num constraints: %d\n", dict.num_cons);
		printf("Num variables: %d\n\n", dict.num_vars);
		
		// Initialize our dictionary struct.
		dictionary_init_struct(&dict);
		
		// Load values from input file.
		load_objective(in, &dict);
		load_matrix(in, &dict);
		load_constraint_bounds(in, &dict);
		load_var_bounds(in, &dict);
		
		// Close the input file.
		fclose(in);
		
		printf("Objective coefficients:\n");
		for (i = 0; i < dict.num_vars; ++i) {
			printf("%g  ", dict.objective[i]);
		}
		printf("\n\n");
		
		printf("Matrix:\n");
		for (j = 0; j < dict.num_cons; ++j) {
			for (i = 0; i < dict.num_vars; ++i) {
				printf("%5.3g", dict.matrix[i + j * dict.num_vars]);
			}
			printf("\n");
		}
		printf("\n\n");
		
		printf("Constraint bounds:\n");
		for (i = 0; i < dict.num_cons; ++i) {
			printf("(%4.3g, %4.3g) ", dict.con_bounds.lower[i], dict.con_bounds.upper[i]);
		}
		printf("\n\n");
		
		printf("Variable bounds:\n");
		for (i = 0; i < dict.num_vars; ++i) {
			printf("(%4.3g, %4.3g) ", dict.var_bounds.lower[i], dict.var_bounds.upper[i]);
		}
		printf("\n\n");
		
		return 0;
		
	} else {
		printf("File %s not found\n", argv[1]);
		return -1;
		
	}
}
