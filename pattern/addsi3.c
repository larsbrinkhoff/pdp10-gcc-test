#include "insns.h"
static Sint add1 (Sint a, Sint  e) { return a + e; }
static Sint add2 (Sint a, Sint *e) { return a + *e; }
static Sint addi (Sint a) 	   { return a + 0123456; }
static Sint subi (Sint a) 	   { return a - 0123456; }
static Sint add3 (Sint a) 	   { return a + 0123456123456; }
static Sint addm (Sint a, Sint *e) { *e += a; }
