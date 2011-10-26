/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Functions for manipulating dictionaries.
 */

// Standard Incldues
#include <stdlib.h>
#include <stdio.h>

// Project Includes
#include "dictionary.h"

// Functions

void dictionary_init(dictionary* dict) {
	
}

void dictionary_init_struct(dictionary* dict) {
	int index;
	
	/*
	 * Allocate the necessary memory.
	 */
	
	dict->objective	= (double*)malloc(dict->num_vars * sizeof(double));
	dict-> matrix		= (double*)malloc(dict->num_vars * dict->num_cons * sizeof(double));
	
	dict->con_bounds.upper = (double*)malloc(dict->num_cons * sizeof(double));
	dict->con_bounds.lower = (double*)malloc(dict->num_cons * sizeof(double));
	
	dict->var_bounds.upper = (double*)malloc(dict->num_vars * sizeof(double));
	dict->var_bounds.lower = (double*)malloc(dict->num_vars * sizeof(double));
	
	dict->var_rests = (rest_t*)malloc(dict->num_vars * sizeof(rest_t));
	
	// Pick the initial resting bounds for the variables.
	for (index = 0; index < dict->num_vars; ++index) {
		if (dict->objective[index] >= 0) {
			dict->var_rests[index] = UPPER;
		} else {
			dict->var_rests[index] = LOWER;
		}
	}
}

bool dictionary_is_final(dictionary* dict) {
	int index;
	
	for (index = 0; index < dict->num_vars; ++index) {
		if ((dict->objective[index] < 0 && dict->var_rests == UPPER) || (dict->objective[index] > 0 && dict->var_rests == LOWER)) {
			return FALSE;
		}
	}
	
	return TRUE;
}

void dictionary_pivot(dictionary* dict) {
	
}

void dictionary_view(const dictionary* dict) {
	unsigned int i, j;
	
	printf("Num constraints: %d\n", dict->num_cons);
	printf("Num variables: %d\n\n", dict->num_vars);
	
	printf("Objective coefficients:\n");
	for (i = 0; i < dict->num_vars; ++i) {
		printf("%g  ", dict->objective[i]);
	}
	printf("\n\n");

	printf("Matrix:\n");
	for (j = 0; j < dict->num_cons; ++j) {
		for (i = 0; i < dict->num_vars; ++i) {
			printf("%5.3g", dict->matrix[i + j * dict->num_vars]);
		}
		printf("\n");
	}
	printf("\n\n");

	printf("Constraint bounds:\n");
	for (i = 0; i < dict->num_cons; ++i) {
		printf("(%4.3g, %4.3g) ", dict->con_bounds.lower[i], dict->con_bounds.upper[i]);
	}
	printf("\n\n");

	printf("Variable bounds:\n");
	for (i = 0; i < dict->num_vars; ++i) {
		printf("(%4.3g, %4.3g) ", dict->var_bounds.lower[i], dict->var_bounds.upper[i]);
	}
	printf("\n\n");
}
