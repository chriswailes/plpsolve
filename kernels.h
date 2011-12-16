/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/26
 * Description:	Header file for kernels for different methods of solving LPs.
 */

#ifndef KERNELS_H
#define KERNELS_H

#include "dictionary.h"

#define PROF_Y_THRESHOLD 10

dict_t* general_simplex_kernel(dict_t* dict);

#endif
