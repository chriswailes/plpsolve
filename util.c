/*
 * Author:		Chris Wailes <chris.wailes@gmail.com> and
 * 				Jonathan Turner <jonathan.turner@colorado.edu>
 * Project:		CS 5654 PA1
 * Date:			2011/10/26
 * Description:	Utility functions.
 */

// Standard Includes
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

// Project Includes
#include "util.h"

// Forward Declarations

static inline bool check_option(char* opt, char* lng, char* srt);
static inline void init_config(void);
static inline void print_help(void);
static inline void print_help_item(char* lng, char* srt, char* help);

// Globals

extern config cfg;

// Functions

void get_config(int argc, char** argv) {
	int index;
	
	// Make sure that a filename is provided.
	if (argc < 2) {
		print_help();
		exit(0);
	}
	
	// Initialize configuration.
	init_config();
	
	for (index = 1; index < argc; ++index) {
		
		// Default Options
		if (check_option(argv[index], "--verbose", "-v")) {
			cfg.verbose = TRUE;
			
		} else if (check_option(argv[index], "--help", "-h")) {
			print_help();
			exit(0);
		
		// Project Options
		} else if (check_option(argv[index], "--parallel", "-p")) {
			if (strncmp(argv[index + 1], "mp", 2) == 0) {
				cfg.pmode = MP;
				
			} else if (strncmp(argv[index + 1], "pthreads", 8) == 0) {
				cfg.pmode = PTHREADS;
				
			} else if (strncmp(argv[index + 1], "gpu", 3) == 0) {
				cfg.pmode = GPU;
			}
			
			++index;
		} else if (check_option(argv[index], "--mathprog", "-m")) {
			cfg.mathprog_filename = argv[index + 1];
			++index;
		} else if (check_option(argv[index], "--rule", "-r")) {
			if (!strcmp(argv[index + 1], "blands")) {
				printf("FOOBAR!\n");
				cfg.rule = BLANDS;
				
			} else if (!strcmp(argv[index + 1], "profy")) {
				cfg.rule = PROFY;
			}
			
			++index;
		}
	}
	
	if (access(argv[argc - 1], R_OK) != 0) {
		printf("Can't read file %s\n", argv[argc - 1]);
		exit(-1);
		
	} else {
		cfg.filename = argv[argc - 1];
	}
}

void write_lp_mathprog(dictionary* dict, const char* filename) {
	int i, j, current_constraint;
	FILE* out = fopen(filename, "wt");
	for (i = 0; i < dict->num_vars; ++i) {
		fprintf(out, "var x%i;\n", dict->col_labels[i]);
	}
	fprintf(out, "\n");
	
	fprintf(out, "maximize objVal: ");
	for (i = 0; i < dict->num_vars; ++i) {
		if (i)
			fprintf(out, " + %f * x%i", dict->objective[i], dict->col_labels[i]);
		else
			fprintf(out, "%f * x%i", dict->objective[i], dict->col_labels[i]);
	}
	fprintf(out, ";\n\n");

	current_constraint = 1;

	for (j = 0; j < dict->num_cons; ++j) {
		if (dict->con_bounds.lower[j] != INFINITY && dict->con_bounds.lower[j] != -INFINITY) {
			fprintf(out, "c%i: ", current_constraint);
			for (i = 0; i < dict->num_vars; ++i) {
				if (i) {
					fprintf(out, " + %f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				} else {
					fprintf(out, "%f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				}
			}
			fprintf(out, " >= %f;\n", dict->con_bounds.lower[j]);
			++current_constraint;
		}

		if (dict->con_bounds.upper[j] != INFINITY && dict->con_bounds.upper[j] != -INFINITY) {
			fprintf(out, "c%i: ", current_constraint);
			
			for (i = 0; i < dict->num_vars; ++i) {
				if (i) {
					fprintf(out, " + %f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				} else {
					fprintf(out, "%f * x%i", dict->matrix[j * dict->num_vars + i], dict->col_labels[i]);
				}
			}
			fprintf(out, " <= %f;\n", dict->con_bounds.upper[j]);
			++current_constraint;
		}
	}
	
	for (i = 0; i < dict->num_vars; ++i) {
		if (dict->var_bounds.lower[i] != INFINITY && dict->var_bounds.lower[i] != -INFINITY) {
			fprintf(out, "c%i: x%i >= %f;\n", current_constraint, dict->col_labels[i], dict->var_bounds.lower[i]);
			++current_constraint;
		}

		if (dict->var_bounds.upper[i] != INFINITY && dict->var_bounds.upper[i] != -INFINITY) {
			fprintf(out, "c%i: x%i <= %f;\n", current_constraint, dict->col_labels[i], dict->var_bounds.upper[i]);
			++current_constraint;
		}
	}
	fprintf(out, "\n");
	
	fprintf(out, "solve; # directive to solve\n");
	fprintf(out, "display objVal, ");
	for (i = 0; i < dict->num_vars; ++i) {
		if (i == (dict->num_vars - 1)) {
			fprintf(out, "x%i;\n", dict->col_labels[i]);
		} else {
			fprintf(out, "x%i, ", dict->col_labels[i]);
		}
	}
	fprintf(out, "end;\n");
	fclose(out);
}

static inline bool check_option(char* opt, char* lng, char* srt) {
	return ((strcmp(opt, lng) == 0) || (strcmp(opt, srt) == 0));
}

static inline void init_config(void) {
	cfg.mathprog_filename = 0;
	cfg.method	= PIVOT;
	cfg.pmode		= NONE;
	cfg.rule		= NO;
	cfg.verbose	= FALSE;
}

static inline void print_help(void) {
	printf("Usage: ./superlp [options] <filename>\n\n");
	printf("Options:\n");
	
	//Help for Project options.
	print_help_item("parallel", "p", "Specifies parallelism mode.  Must be mp, pthreads, gpu, or none.");
	print_help_item("rule", "r", "Specifies the termination rule to use.  Choices are: none, blands, or profy.  Default is none.");
	
	// Help for Debug outputs.
	print_help_item("mathprog", "m", "Outputs mathprog compatible file.  Must specify filename.");

	// Help for Default options.
	print_help_item("verbose", "v", "Be verbose.");
	print_help_item("help", "h", "Print this message.");
}

static inline void print_help_item(char* lng, char* srt, char* help) {
	printf("\t--%s, -%s\t%s\n", lng, srt, help);
}
