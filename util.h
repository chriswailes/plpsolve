/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2011/10/26
 * Description:	Header file for utility functions.
 */

#ifndef UTIL_H
#define UTIL_H

#define ABS(a)   (a < 0 ? -a : a)
#define MAX(a,b) (a < b ?  b : a)
#define MIN(a,b) (a < b ?  a : b)

#define EPSILON 1e-5
#define FPN_IS_ZERO(n) (-EPSILON < n && n < EPSILON)

#include <sys/types.h>

typedef enum {
	FALSE = 0,
	TRUE  = 1
} bool;

typedef enum {
	GS
} method_t;

typedef enum {
	NONE = 0,
	AUTO,
	MP,
	PTHREADS
} pmode_t;

typedef struct {
	char* filename;
	
	method_t method;
	pmode_t pmode;
	
	bool blands;
	bool profys;
	
	uint simplex_limit;
	
	bool init_done;
	
	bool verbose;
	bool vv;
	char* mathprog_filename;
} config_t;

void get_config(int argc, char** argv);

#endif
