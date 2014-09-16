#include "insns.h"
static Sint andca1 (Sint a, Sint  e) { return ~a & e; }
static Sint andca2 (Sint a, Sint *e) { return ~a & *e; }
static Sint andcai (Sint a)          { return ~a & 0123456; }
static Sint andcam (Sint a, Sint *e) {  *e &= ~a; }

BOTH (andcab1, ~a & *b)
BOTH (andcab2, *b & ~a)
