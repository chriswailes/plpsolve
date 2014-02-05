/*
 * Author:		Chris Wailes <chris.wailes@gmail.com>
 * Project:		Chris's Awesome Standard Library
 * Description:	Simple, non-cryptographically secure, hashes.
 */

// Standard Includes
#include <sys/types.h>

// Project Includes

// Macros

// Global Variables

// Functions

uint bernstein_hash(const unsigned char* data, uint length) {
	uint hash = 0;
	
	while (length-- > 0) {
		hash = 33 * hash + *data++;
	}
	
	return hash;
}

uint sax_hash(const unsigned char* data, uint length) {
	uint hash = 0;

	while (length-- > 0) {
		hash ^= (hash << 5) + (hash >> 2) + (unsigned char)*data++;
	}

	return hash;
}

uint sdbm_hash(const unsigned char* data, uint length) {
	uint hash = 0;
	
	while (length-- > 0) {
		hash = (unsigned char)*data++ + (hash << 6) + (hash << 16) - hash;
	}
	
	return hash;
}
