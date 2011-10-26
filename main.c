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

// Forward Declarations

void load_lp_file(dictionary *dict)
void pivot_kernel(dictionary* dict);

// Functions

int main(int argc, char** argv) {
	dictionary dict;

	get_config(argc, argv);
	load_lp_file(&dict);
	
	if (cfg.verbose) {
		dictionary_view(&dict);
	}
	
	switch (cfg.method) {
		case PIVOT:
		default:
			pivot_kernel(&dict);
			break;
	}
	
	return 0;
}

void load_lp_file(dictionary *dict) {
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

void pivot_kernel(dictionary* dict) {
	
}
