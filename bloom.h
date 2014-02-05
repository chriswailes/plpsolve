/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Chris's Awesome Standard Library
 * Description:	Declarations for a simple Bloom Filter implementation that
 				was initially taken from here: http://en.literateprograms.org/Bloom_filter_%28C%29
 */

#ifndef BLOOM_H
#define BLOOM_H

// Standard Includes
#include <stdlib.h>
#include <sys/types.h>

// Project Includes
#include "hashes.h"
#include "util.h"

// Macros

// 0.25MiB == 2^18 bytes == 2097152 bits
#define BLOOM_SIZE_SMALL 2097152

// 0.50MiB == 2^19 bytes == 4194304 bits
#define BLOOM_SIZE_MEDIUM 4194304

// 1.00MiB == 2^20 bytes == 8388608 bits
#define BLOOM_SIZE_LARGE 8388608

#define DEFAULT_BLOOM_FILTER bloom_create(BLOOM_SIZE_MEDIUM, 3, bernstein_hash, sax_hash, sdbm_hash)

// Types

typedef unsigned int (*bloomhash_t)(const unsigned char*, uint);

typedef struct {
	size_t bits_size;
	unsigned char* bits;
	
	uint nfuncs;
	bloomhash_t* funcs;
} bloom_t;

// Functions

bloom_t*	bloom_create(size_t size, uint nfuncs, ...);
void		bloom_destroy(bloom_t* bloom);
bool		bloom_init(bloom_t* bloom, size_t size, uint nfuncs, ...);
bloom_t*	bloom_new(void);

void bloom_add(bloom_t* bloom, const unsigned char* data, uint length);
bool bloom_check(bloom_t* bloom, const unsigned char* data, uint length);
void bloom_reset(bloom_t* bloom);

#endif
