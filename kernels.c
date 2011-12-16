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

dict_t* general_simplex_kernel(dict_t* dict) {
	uint iters = 0;
	uint unprogress = 0;
	double prev_objective;
	elr_t el_result;
	
	if (cfg.vv) {
		printf("\t** START OF SIMPLEX **\n\n");
	}
	
	prev_objective = dict->objective_value;
	
	while (!dict_is_final(dict) && (!cfg.simplex_limit || iters < cfg.simplex_limit)) {
		
		if (cfg.vv) {
			printf("Simplex Iteration %u:\n\n", iters);	
			dict_view(dict);
		}
		
		dict_select_entering_and_leaving(dict, &el_result);
		
		if (el_result.flip) {
			dict_flip_rest(dict, el_result.entering, el_result.new_rest);
			
		} else {
			dict = dict_pivot(dict, el_result.entering, el_result.leaving, el_result.new_rest, el_result.adj_amount);
		}
		
		if (cfg.profys) {
			if (prev_objective == dict->objective_value) {
				if (++unprogress == PROF_Y_THRESHOLD) {
					cfg.blands = TRUE;
					
				}
				
			} else {
				cfg.blands = FALSE;
				unprogress = 0;
			}
			
			prev_objective = dict->objective_value;
		}
		
		++iters;
	}
	
	if (cfg.verbose) {
		printf("Simplex took %d iterations.\n\n", iters);
		
		if (cfg.vv) {
			printf("\t** END OF SIMPLEX **\n\n");
		}
	}
	
	return dict;
}
