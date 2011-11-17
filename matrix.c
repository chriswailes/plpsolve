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
#include <sys/types.h>

// Project Includes
#include "matrix.h"
#include "util.h"

inline double matrix_accum_value(matrix_t* m, uint row_index, uint col_index, double val) {
	return m->values[row_index*m->num_cols + col_index] += val;
}

void matrix_free(matrix_t* m) {
	free(m->values);
}

inline double* matrix_get_address(const matrix_t* m, uint row_index, uint col_index) {
	return &m->values[row_index*m->num_cols + col_index];
}

inline double* matrix_get_row(const matrix_t* m, uint row_index) {
	return &m->values[row_index * m->num_cols];
}

inline double matrix_get_value(const matrix_t* m, uint row_index, uint col_index) {
	return m->values[row_index*m->num_cols + col_index];
}

void matrix_init(matrix_t* m, uint num_rows, uint num_cols) {
	// Set the number of rows and columns.
	m->num_rows = num_rows;
	m->num_cols = num_cols;
	
	// Allocate space for the actual values.
	m->values	= (double*)malloc(num_rows * num_cols * sizeof(double));
	
	// Zero-initialize the matrix;
	memset(m->values, 0, num_rows * num_cols * sizeof(double));
}

void matrix_resize(matrix_t* m, uint new_rows, uint new_cols) {
	uint row_index, col_index;
	double* new_v;
	
	if (m->num_rows == new_rows && m->num_cols == new_cols) {
		return;
	}
	
	new_v = (double*)malloc(new_rows * new_cols * sizeof(double));
	
	// Zero-initialize the matrix.
	memset(new_v, 0, new_rows * new_cols * sizeof(double));
	
	// Copy the old values over.
	for (row_index = 0; row_index < MIN(new_rows, m->num_rows); ++row_index) {
		for (col_index = 0; col_index < MIN(new_cols, m->num_cols); ++ col_index) {
			new_v[row_index*new_cols + col_index] = matrix_get_value(m, row_index, col_index);
		}
	}
	
	free(m->values);
	
	m->values		= new_v;
	m->num_rows	= new_rows;
	m->num_cols	= new_cols;
}

inline double matrix_set_value(matrix_t* m, uint row_index, uint col_index, double val) {
	return m->values[row_index*m->num_cols + col_index] = val;
}
