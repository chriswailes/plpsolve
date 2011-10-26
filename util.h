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
	NONE = 0,
	MP,
	PTHREADS,
	GPU
} pmode_t;

typedef struct {
	char* filename;
	
	pmode_t pmode;
	
	bool verbose;
} config;

void get_config(int argc, char** argv);

#endif