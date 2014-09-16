#include "insns.h"
//static Sint andcm1 (Sint a, Sint  e) { return a &  ~e; }
static Sint andcm2 (Sint a, Sint *e) { return a & ~*e; }
static Sint andcmi (Sint a)          { return a & ~0123456; }
static void andcmm (Sint a, Sint *e) {   *e = a & ~*e; }

BOTH (andcmb1, a & ~*b)
BOTH (andcmb2, ~*b & a)
