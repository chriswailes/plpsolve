/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/26
 * Description:	Header file for utility functions.
 */

#ifndef UTIL_H
#define UTIL_H

#define MAX(a,b) (a < b ? b : a)
#define MIN(a,b) (a < b ? a : b)

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

typedef enum {
	NO = 0,
	BLANDS,
	PROFY
} rule_t;

typedef struct {
	char* filename;
	
	method_t method;
	pmode_t pmode;
	rule_t rule;
	
	bool verbose;
	char* mathprog_filename;
} config;

void get_config(int argc, char** argv);
inline int min_int(int left, int right);

#endif
