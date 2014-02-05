/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Parallel Linear Program Solver
 * Date:			2011/10/26
 * Description:	Header file for kernels for different methods of solving LPs.
 */

#ifndef KERNELS_H
#define KERNELS_H

#include "dictionary.h"

#define PROF_Y_THRESHOLD 10

dict_t* general_simplex_kernel(dict_t* dict);
dict_t* kernel_select(dict_t* dict);
dict_t* pthreads_kernel(dict_t* dict);

#endif
