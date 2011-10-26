/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Functions for manipulating dictionaries.
 */

// Standard Incldues
#include <stdlib.h>

// Project Includes
#include "dictionary.h"

// Functions

void dictionary_init(dictionary* dict) {
	
}

void dictionary_init_struct(dictionary* dict) {
	dict->objective	= (double*)malloc(dict->num_vars * sizeof(double));
	dict-> matrix		= (double*)malloc(dict->num_vars * dict->num_cons * sizeof(double));
	
	dict->con_bounds.upper = (double*)malloc(dict->num_cons * sizeof(double));
	dict->con_bounds.lower = (double*)malloc(dict->num_cons * sizeof(double));
	
	dict->var_bounds.upper = (double*)malloc(dict->num_vars * sizeof(double));
	dict->var_bounds.lower = (double*)malloc(dict->num_vars * sizeof(double));
}

void dictionary_pivot(dictionary* dict) {
	
}
