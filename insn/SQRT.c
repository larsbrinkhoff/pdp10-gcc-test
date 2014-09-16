/* flag: -fno-math-errno */
#include "insns.h"
//static Sfloat sqrt1 (Sfloat AC, Sfloat  Y) { return __builtin_sqrtf (Y); }
static Sfloat sqrt2 (Sfloat AC, Sfloat *X) { return __builtin_sqrtf (*X); }
