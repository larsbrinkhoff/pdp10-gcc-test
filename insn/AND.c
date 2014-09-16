#include "insns.h"

static Sint and1 (Sint AC, Sint  Y) { return AC & Y; }
static Sint and2 (Sint AC, Sint *X) { return AC & *X; }
static Sint andi (Sint AC)          { return AC & 0123456; }
static Sint and3 (Sint AC)          { return AC & 0123456123456; }
static void andm (Sint AC, Sint *X) {   *X = AC & *X; }

BOTH (andb1, a & *b)
BOTH (andb2, *b & a)
