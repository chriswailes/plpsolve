#Authors:		Chris Wailes <chris.wailes@gmail.com> and
#			Jonathan Turner <jonathan.turner@colorado.edu>
#Project:		CS 5654 PA1
#Date:		2011/10/16
#Description:	Makefile for PA1.

CC		= gcc
CFLAGS	= -Wall -O3
LFLAGS	=

PROGRAM	= superlp

SOURCE	= dictionary.c input.c kernels.c main.c matrix.c output.c util.c
EXECS	= superlp

all: $(EXECS)

superlp: $(SOURCE)
	$(CC) $(CFLAGS) $(LFLAGS) -o $(PROGRAM) $(SOURCE)

.PHONY: clean
clean:
	rm -f $(EXECS)
