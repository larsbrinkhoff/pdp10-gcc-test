#include "insns.h"

static Sint xor1 (Sint a, Sint  e) { return a ^ e; }
static Sint xor2 (Sint a, Sint *e) { return a ^ *e; }
static Sint xori (Sint a) 	   { return a ^ 0123456; }
static Sint xor3 (Sint a) 	   { return a ^ 0123456123456; }
static void xorm (Sint a, Sint *e) {       *e ^= a; }

BOTH (xorb1, a ^ *b)
BOTH (xorb2, a ^ *b)
