#include "insns.h"

//static Sint orcm1 (Sint a, Sint  e) { return a |  ~e; }
static Sint orcm2 (Sint a, Sint *e) { return a | ~*e; }
static Sint orcmm (Sint a, Sint *e) {   *e = a | ~*e; }

BOTH (orcmb1, a | ~*b)
BOTH (orcmb2, ~*b | a)
