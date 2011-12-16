#Authors:		Chris Wailes <chris.wailes@gmail.com>
#Project:		Parallel Linear Program Solver
#Date:		2011/10/16
#Description:	Makefile for plpsolve.

CC		= gcc
CFLAGS	= -Wall -O3
LFLAGS	=

PROGRAM	= plpsolve

SOURCE	= dictionary.c input.c kernels.c main.c matrix.c output.c util.c
EXECS	= superlp

all: $(EXECS)

plpsolve: $(SOURCE)
	$(CC) $(CFLAGS) $(LFLAGS) -o $(PROGRAM) $(SOURCE)

.PHONY: clean
clean:
	rm -f $(EXECS)
