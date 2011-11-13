/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/11/10
 * Description:	Functions for dealing with matrices.
 */

// Standard Includes
#include <stdlib.h>
#include <string.h>

// Project Includes
#include "matrix.h"
#include "util.h"

void matrix_free(matrix_t* m) {
	free(m->values);
	free(m);
}

matrix_t* matrix_new(unsigned int rows, unsigned int cols) {
	matrix_t* m;
	
	m		= (matrix_t*)malloc(sizeof(matrix_t));
	m->values	= (double*  )malloc(rows * cols * sizeof(double));
	
	// Zero-initialize the matrix;
	memset(m->values, 0, rows * cols * sizeof(double));
	
	return m;
}

void matrix_resize(matrix_t* m, unsigned int new_rows, unsigned int new_cols) {
	unsigned int r_index, c_index;
	double* new_v;
	
	if (m->num_rows == new_rows && m->num_cols == new_cols) {
		return;
	}
	
	new_v = (double*)malloc(new_rows * new_cols * sizeof(double));
	
	// Zero-initialize the matrix.
	memset(new_v, 0, new_rows * new_cols * sizeof(double));
	
	// Copy the old values over.
	for (r_index = 0; r_index < MIN(new_rows, m->num_rows); ++r_index) {
		for (c_index = 0; c_index < MIN(new_cols, m->num_cols); ++ c_index) {
			new_v[r_index*new_cols + c_index] = matrix_value_get(m, r_index, c_index);
		}
	}
}

inline double matrix_value_get(matrix_t* m, unsigned int row, unsigned int col) {
	return m->values[row*m->num_cols + col];
}

inline void matrix_value_set(matrix_t* m, unsigned int row, unsigned int col, double val) {
	m->values[row*m->num_cols + col] = val;
}
