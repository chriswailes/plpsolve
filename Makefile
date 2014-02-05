#Authors:		Chris Wailes <chris.wailes@gmail.com>
#Project:		Parallel Linear Program Solver
#Date:		2011/10/16
#Description:	Makefile for plpsolve.

CC		= gcc
CFLAGS	= -Wall -O3 -fopenmp -fPIC -g
LFLAGS	= -pthread

PROGRAM	= plpsolve

SOURCE	= bloom.c dictionary.c hashes.c input.c kernels.c list.c main.c matrix.c output.c util.c work_queue.c worker.c
EXECS	= plpsolve

all: $(EXECS)

$(PROGRAM): $(SOURCE)
	$(CC) $(CFLAGS) $(LFLAGS) -o $(PROGRAM) $(SOURCE)

.PHONY: clean
clean:
	rm -f $(EXECS)
