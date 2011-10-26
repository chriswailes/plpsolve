/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Header file for input manipulation.
 */

// Project Includes
#include "dictionary.h"

#ifndef INPUT_H
#define INPUT_H

void load_constraint_bounds(FILE* in, dictionary* dict);
void load_matrix(FILE* in, dictionary* dict);
void load_objective(FILE* in, dictionary* dict);
void load_var_bounds(FILE* in, dictionary* dict);

#endif
