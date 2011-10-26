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
int load_lp_file(const char *filename, dictionary *dict) {
	FILE* in;
	if ((in = fopen(cfg.filename, "rt")) != NULL) {
		
		fscanf(in, "%i,%i\n", &dict->num_cons, &dict->num_vars);
		printf("Num constraints: %d\n", dict->num_cons);
		printf("Num variables: %d\n\n", dict->num_vars);
		
		// Initialize our dictionary struct.
		dictionary_init_struct(dict);
		
		// Load values from input file.
		load_objective(in, dict);
		load_matrix(in, dict);
		load_constraint_bounds(in, dict);
		load_var_bounds(in, dict);
		
		// Close the input file.
		fclose(in);
		
		return 1;
	}
	else {
		return 0;
	}
}

int main(int argc, char** argv) {
	dictionary dict;

	get_config(argc, argv);

	if (load_lp_file(cfg.filename, &dict)) {
		dictionary_view(&dict);
		return 0;
	} else {
		printf("File %s not found\n", cfg.filename);
		return -1;
	}
}
