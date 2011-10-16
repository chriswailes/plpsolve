#Authors:		Chris Wailes <chris.wailes@gmail.com> and
#			Jonathan Turner <jonathan.turner@colorado.edu>
#Project:		CS 5654 PA1
#Date:		2011/10/16
#Description:	Makefile for PA1.

CC		= gcc
CFLAGS	= -Wall -O3
LFLAGS	=

SOURCE	= dictionary.c input.c main.c
EXECS	= main

all: main

main: $(SOURCE)
	$(CC) $(CFLAGS) $(LFLAGS) -o $@ $(SOURCE)

.PHONY: clean
clean:
	rm -f $(EXECS)
