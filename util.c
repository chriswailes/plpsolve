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
		if (check_option(argv[index], "--verbose", "--v")) {
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
		}
	}
	
	if (access(argv[argc - 1], R_OK) != 0) {
		printf("Can't read file %s\n", argv[argc - 1]);
		exit(0);
		
	} else {
		cfg.filename = argv[argc - 1];
	}
}

static inline bool check_option(char* opt, char* lng, char* srt) {
	return ((strcmp(opt, lng) == 0) || (strcmp(opt, srt) == 0));
}

static inline void init_config(void) {
	cfg.pmode	= NONE;
	cfg.verbose	= FALSE;
}

static inline void print_help(void) {
	printf("Usage: ./superlp [options] <filename>\n\n");
	printf("Options:\n");
	
	//Help for Project options.
	print_help_item("parallel", "p", "Specifies parallelism mode.  Must be mp, pthreads, gpu, or none.");
	
	// Help for Default options.
	print_help_item("verbose", "v", "Be verbose.");
	print_help_item("help", "h", "Print this message.");
}

static inline void print_help_item(char* lng, char* srt, char* help) {
	printf("\t--%s, -%s\t%s\n", lng, srt, help);
}