/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2011/11/10
 * Description:	A header file for functions that write various forms out
 * 				output.
 */

#ifndef OUTPUT_H
#define OUTPUT_H

#include "dictionary.h"

void output_glpsol(dict_t* dict, const char* filename);

#endif
