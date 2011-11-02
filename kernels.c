/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/26
 * Description:	Kernels for different methods of solving LPs.
 */

// Project Includes
#include "dictionary.h"
#include "kernels.h"

// Functions

void pivot_kernel(dictionary* dict) {
	int e_and_l[2];
	
	while (!dictionary_is_final(dict)) {
		select_entering_and_leaving(dict, &e_and_l);
		
		/*
		 * If the leaving variable is -1 we need to swap the bounds on the
		 * selected entering variable.  Otherwise we need to pivot on the
		 * entering and leaving variables.
		 */
		if (e_and_l[1] == -1) {
			dict->var_rests[e_and_l[0]] = (dict->var_rests[e_and_l[0]] == UPPER ? LOWER : UPPER);
			
		} else {
			dictionary_pivot(dict, e_and_l[0], e_and_l[1]);
		}
	}
}
