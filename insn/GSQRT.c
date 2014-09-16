/* flag: -mgfloat */
/* flag: -fno-math-errno */
#include "insns.h"
//static Dfloat gsqrt1 (Dfloat AC, Dfloat  Y) { return __builtin_fsqrt (Y); }
static Dfloat gsqrt2 (Dfloat AC, Dfloat *X) { return __builtin_fsqrt (*X); }
