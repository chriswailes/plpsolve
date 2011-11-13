/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/11/10
 * Description:	Header file for matrices.
 */

#ifndef MATRIX_H
#define MATRIX_H

typedef struct {
	unsigned int num_rows;
	unsigned int num_cols;
	
	double* values;
} matrix_t;

void		matrix_free(matrix_t* m);
matrix_t*	matrix_new(unsigned int rows, unsigned int cols);
void		matrix_resize(matrix_t* m, unsigned int new_rows, unsigned int new_cols);
double	matrix_value_get(matrix_t* m, unsigned int row, unsigned int col);
void		matrix_value_set(matrix_t* m, unsigned int row, unsigned int col, double val);

#endif
