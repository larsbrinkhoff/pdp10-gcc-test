#include "insns.h"

static Dint mul1 (Sint a, Sint b, Sint  e) { return MUL (a, e); }
static Dint mul2 (Sint a, Sint b, Sint *e) { return MUL (a, *e); }
static Dint muli (Sint a) 		   { return MUL (a, 0123456); }
static Dint mul3 (Sint a) 		   { return MUL (a, 0123456123456); }
static void mulm (Sint AC, Sint *X) { *X = smul_highpart (AC, *X); }
