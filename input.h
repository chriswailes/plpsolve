/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	Header file for input manipulation.
 */

#ifndef INPUT_H
#define INPUT_H

void load_constraint_bounds(FILE* in, unsigned num_constraints, double* target_lower, double* target_upper);
void load_matrix(FILE* in, unsigned num_variables, unsigned num_constraints, double* target);
void load_objective(FILE* in, unsigned num_variables, double* target);
void load_var_bounds(FILE* in, unsigned num_variables, double* target_lower, double* target_upper);

#endif
