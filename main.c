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

config cfg;

// Functions

int main(int argc, char** argv) {
	dictionary dict;
	unsigned int num_orig_vars;

	get_config(argc, argv);
	
	load_lp_file(&dict);
	
	num_orig_vars = dict.num_vars;
	
	if (cfg.mathprog_filename) {
		output_glpsol(&dict, cfg.mathprog_filename);
		exit(0);
	}

	if (cfg.verbose) {
		dictionary_view(&dict);
	}

	// Initialize the dictionary proper.
	dictionary_init(&dict);
	
	switch (cfg.method) {
		case PIVOT:
		default:
			pivot_kernel(&dict);
			break;
	}
	
	if (cfg.verbose) {
		printf("Final Dictionary:\n");
		dictionary_view(&dict);
	}
	
	dictionary_view_answer(&dict, num_orig_vars);

	dictionary_free(&dict);
	return 0;
}
