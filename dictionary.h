/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Definitions for a dictionaries and functions that manipulate them.
 */

#ifndef DICTIONARY_H
#define DICTIONARY_H

typedef struct {
	double* upper;
	double* lower;
} bounds_s;

typedef struct {
	int num_vars, num_cons;
	
	double* objective;
	double* matrix;
	
	bounds_s con_bounds;
	bounds_s var_bounds; 
} dictionary;

void dictionary_init(dictionary* dict);
void dictionary_init_struct(dictionary* dict);
void dictionary_pivot(dictionary* dict);
void dictionary_view(const dictionary* dict);

#endif
