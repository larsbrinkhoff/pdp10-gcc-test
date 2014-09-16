#include "insns.h"
Sint a[0100], b[0100];
static void blt1 (void) { __builtin_memcpy (a, b, sizeof a); }
static void blt2 (void) { __builtin_memset (a, 0, sizeof a); }
static void blt3 (Sint *dest, Sint *src) { __builtin_memcpy (dest, src, 0400);}
static void blt4 (Sint *dest) { __builtin_memset (dest, 0, 0400);}
