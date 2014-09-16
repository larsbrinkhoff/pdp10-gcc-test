#include "insns.h"
//static Sint setcm1 (Sint AC, Sint Y)  { return ~Y; }
static Sint setcm2 (Sint AC, Sint *X) { return ~*X; }
static Sint setcmm (Sint AC, Sint *X) {   *X = ~*X; }

BOTH (setcmb, ~*b)
