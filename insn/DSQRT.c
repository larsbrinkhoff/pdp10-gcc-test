/* flag: -fno-math-errno */
#include "insns.h"
//static Dfloat dsqrt2 (Dfloat AC, Dfloat  Y) { return __builtin_fsqrt (Y); }
static Dfloat dsqrt2 (Dfloat AC, Dfloat *X) { return __builtin_fsqrt (*X); }
