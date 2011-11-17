/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/11/10
 * Description:	Header file for matrices.
 */

#ifndef MATRIX_H
#define MATRIX_H

#include <sys/types.h>

typedef struct {
	uint num_rows;
	uint num_cols;
	
	double* values;
} matrix_t;

inline	double	matrix_accum_value(matrix_t* m, uint row_index, uint col_index, double val);
		void		matrix_free(matrix_t* m);
inline	double*	matrix_get_address(const matrix_t* m, uint row_index, uint col_index);
inline	double*	matrix_get_row(const matrix_t* m, uint row_index);
inline	double	matrix_get_value(const matrix_t* m, uint row, uint col);
		void		matrix_init(matrix_t* m, uint num_rows, uint num_cols);
		void		matrix_resize(matrix_t* m, uint new_rows, uint new_cols);
inline	double	matrix_set_value(matrix_t* m, uint row_index, uint col_index, double val);

#endif
