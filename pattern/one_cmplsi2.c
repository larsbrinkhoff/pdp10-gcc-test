#include "insns.h"
static Sint setca  (Sint AC) { return ~AC; }
//static Sint setcm1 (Sint AC, Sint Y)  { return ~Y; }
static Sint setcm2 (Sint AC, Sint *X) { return ~*X; }
static Sint setcam (Sint AC, Sint *X) {   *X = ~AC; }
static Sint setcmm (Sint AC, Sint *X) {   *X = ~*X; }
