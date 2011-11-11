/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/11/10
 * Description:	Header file for matrices.
 */

#ifndef MATRIX_H
#define MATRIX_H

#define MATRIX_VALUE_GET(m, row, col) m->values[row*m->num_cols + col]
#define MATRIX_VALUE_SET(m, row, col, val) m->values[row*m->num_cols + col] = val


typedef struct {
	unsigned int num_rows;
	unsigned int num_cols;
	
	double* values;
} matrix_t;

void		matrix_free(matrix_t* m);
matrix_t*	matrix_new(unsigned int rows, unsigned int cols);
void		matrix_resize(matrix_t* m, unsigned int new_rows, unsigned int new_cols);

#endif
