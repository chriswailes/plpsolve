/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/26
 * Description:	Header file for utility functions.
 */

#ifndef UTIL_H
#define UTIL_H

typedef enum {
	FALSE = 0,
	TRUE  = 1
} bool;

typedef enum {
	PIVOT
} method_t;

typedef enum {
	NONE = 0,
	MP,
	PTHREADS,
	GPU
} pmode_t;

typedef struct {
	char* filename;
	
	method_t method;
	pmode_t pmode;
	
	bool verbose;
	char* mathprog_filename;
} config;

void get_config(int argc, char** argv);

#endif
