#ifndef _chplio_H_
#define _chplio_H_

#include <stdio.h>
#include "chpltypes.h"

void _write_integer64(FILE* outfile, char* format, _integer64 val);
void _write_string(FILE* outfile, char* format, _string val);

#endif

