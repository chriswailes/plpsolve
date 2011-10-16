/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/16
 * Description:	The main driver of our program.
 */

// Standard Incldues
#include <stdlib.h>
#include <stdio.h>

// Project Includes
#include "dictionary.h"
#include "input.h"

int main(int argc, char** argv) {
  unsigned i, j;
  if (argc < 2) {
    printf("Usage: ./lp-solver <filename>\n");
    return -1;
  }
  else {
    FILE *in;
    if ( (in = fopen(argv[1], "rt")) ) {
      unsigned num_constraints, num_variables;
      fscanf(in, "%i,%i\n", &num_constraints, &num_variables);
      printf("Num constraints: %d\n", num_constraints);
      printf("Num variables: %d\n", num_variables);

      /*
       * FIXME: Switch to something that doesn't load into memory all at once
       */
      double *objective = (double*)malloc(num_variables * sizeof(double));
      double *matrix = (double *)malloc(num_variables * num_constraints *
          sizeof(double));
      double *constraint_bounds_lower = (double*)malloc(num_constraints *
          sizeof(double));
      double *constraint_bounds_upper = (double*)malloc(num_constraints *
          sizeof(double));
      double *var_bounds_lower = (double*)malloc(num_variables * sizeof(double));
      double *var_bounds_upper = (double*)malloc(num_variables * sizeof(double));

      load_objective(in, num_variables, objective);
      load_matrix(in, num_variables, num_constraints, matrix);
      load_constraint_bounds(in, num_constraints, constraint_bounds_lower,
          constraint_bounds_upper);
      load_var_bounds(in, num_variables, var_bounds_lower, var_bounds_upper);

      for (i = 0; i < num_variables; ++i) {
        printf("objective: %g\n", objective[i]);
      }
      printf("matrix:\n");
      for (j = 0; j < num_constraints; ++j) {
        for (i = 0; i < num_variables; ++i) {
          printf("%5.3g", objective[i + j * num_variables]);
        }
        printf("\n");
      }
      printf("constraint bounds:\n");
      for (i = 0; i < num_constraints; ++i) {
        printf("(%4.3g, %4.3g) ", constraint_bounds_lower[i],
            constraint_bounds_upper[i]);
      }
      printf("\nvar bounds:\n");
      for (i = 0; i < num_variables; ++i) {
        printf("(%4.3g, %4.3g) ", var_bounds_lower[i],
            var_bounds_upper[i]);
      }
      printf("\n");
      return 0;	
    }
    else {
      printf("File %s not found\n", argv[1]);
      return -1;
    }
  }
}
