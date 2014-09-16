/* flag: -mgfloat */
#include "insns.h"
static Dfloat gfsc1 (Dfloat AC)         { return __builtin_dfsc (AC, 010); }
static Dfloat gfsc2 (Dfloat AC, Sint X) { return __builtin_dfsc (AC, X); }
