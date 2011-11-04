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

extern config cfg;

// Functions

void pivot_kernel(dictionary* dict) {
	unsigned int iters = 0;
	elr_t el_result;
	
	while (!dictionary_is_final(dict)) {
		select_entering_and_leaving(dict, &el_result);
		
		//~printf("Flip: %-5s Entering: %d Leaving: %d\n", el_result.flip ? "TRUE" : "FALSE", el_result.entering, el_result.leaving);
		
		if (el_result.flip) {
			dict->var_rests[el_result.entering] = el_result.new_rest;
			
		} else {
			dictionary_pivot(dict, el_result.entering, el_result.leaving, el_result.new_rest);
		}
		
		//~dictionary_view(dict);
		
		++iters;
	}
	
	if (cfg.verbose) {
		printf("Simplex took %d iterations.\n\n", iters);
	}
}
