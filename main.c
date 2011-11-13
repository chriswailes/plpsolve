/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	The main driver of our program.
 */

// Standard Incldues
#include <math.h>
#include <stdlib.h>
#include <stdio.h>

// Project Includes
#include "dictionary.h"
#include "input.h"
#include "kernels.h"
#include "output.h"
#include "util.h"

// Global Variables

config_t cfg;

// Functions

int main(int argc, char** argv) {
	dict_t* dict;
	unsigned int num_orig_vars;

	get_config(argc, argv);
	
	dict = load_lp_file();
	
	num_orig_vars = dict->num_vars;
	
	if (cfg.mathprog_filename) {
		output_glpsol(dict, cfg.mathprog_filename);
		exit(0);
	}

	if (cfg.verbose) {
		dict_view(dict);
	}

	// Initialize the dictionary proper.
	dict_init(dict);
	
	switch (cfg.method) {
		case GS:
		default:
			general_simplex_kernel(dict);
			break;
	}
	
	if (cfg.verbose) {
		printf("Final Dictionary:\n");
		dict_view(dict);
	}
	
	dict_view_answer(dict, num_orig_vars);

	dict_free(dict);
	return 0;
}
