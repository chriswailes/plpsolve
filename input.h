/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Header file for input manipulation.
 */

#ifndef INPUT_H
#define INPUT_H

// Project Includes
#include "dictionary.h"

dict_t* load_lp_file(void);

void load_constraint_bounds(FILE* in, dict_t* dict);
void load_matrix(FILE* in, dict_t* dict);
void load_objective(FILE* in, dict_t* dict);
void load_var_bounds(FILE* in, dict_t* dict);

#endif
