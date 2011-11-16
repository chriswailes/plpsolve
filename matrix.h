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
	unsigned num_rows;
	unsigned num_cols;
	
	double* values;
} matrix_t;

double	matrix_accum_value(matrix_t* m, unsigned row_index, unsigned col_index, double val);
void		matrix_free(matrix_t* m);
double*	matrix_get_address(const matrix_t* m, unsigned row_index, unsigned col_index);
double*	matrix_get_row(const matrix_t* m, unsigned row_index);
double	matrix_get_value(const matrix_t* m, unsigned row, unsigned col);
void		matrix_init(matrix_t* m, unsigned num_rows, unsigned num_cols);
void		matrix_resize(matrix_t* m, unsigned new_rows, unsigned new_cols);
double	matrix_set_value(matrix_t* m, unsigned row_index, unsigned col_index, double val);

#endif
