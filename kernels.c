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
	unsigned int iters = 0;
	elr_t el_result;
	
	//~printf("\n\n");
	//~printf("START OF SIMPLEX!!!\n");
	
	//~while (!dictionary_is_final(dict)) {
	while (iters < 8) {
		//~printf("Iteration %d\n", iters);
		
		select_entering_and_leaving(dict, &el_result);
		
		if (el_result.flip) {
			dict->var_rests[el_result.entering] = el_result.new_rest;
			
		} else {
			dict_pivot(dict, el_result.entering, el_result.leaving, el_result.new_rest);
		}
		
		//~dict_view(dict);
		
		++iters;
	}
	
	if (cfg.verbose) {
		printf("Simplex took %d iterations.\n\n", iters);
	}
}
