#include "insns.h"
static Sint eqv1 (Sint a, Sint  e) { return ~(a ^ e); }
static Sint eqv2 (Sint a, Sint *e) { return ~(a ^ *e); }
static Sint eqvi (Sint a)          { return   a ^ ~0123456; }
static void eqvm (Sint a, Sint *e) {   *e = ~(a ^ *e); }

BOTH (eqvb1, ~(a ^ *b))
BOTH (eqvb2, ~(*b ^ a))
