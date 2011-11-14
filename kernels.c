/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/26
 * Description:	Kernels for different methods of solving LPs.
 */

#include <stdio.h>

// Project Includes
#include "dictionary.h"
#include "kernels.h"

// Global Variables

extern config_t cfg;

// Functions

void general_simplex_kernel(dict_t* dict) {
	uint iters = 0;
	elr_t el_result;
	
	if (cfg.vv) {
		printf("\t** START OF SIMPLEX **\n\n");
	}
	
	while (!dict_is_final(dict)) {
		
		if (cfg.vv) {
			printf("Simplex Iteration %u:\n\n", iters);	
			dict_view(dict);
		}
		
		dict_select_entering_and_leaving(dict, &el_result);
		
		if (el_result.flip) {
			dict->var_rests[el_result.entering] = el_result.new_rest;
			
		} else {
			dict_pivot(dict, el_result.entering, el_result.leaving, el_result.new_rest);
		}
		
		++iters;
	}
	
	if (cfg.verbose) {
		printf("Simplex took %d iterations.\n\n", iters);
		
		if (cfg.vv) {
			printf("\t** END OF SIMPLEX **\n\n");
		}
	}
}
