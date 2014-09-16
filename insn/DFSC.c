#include "insns.h"
static Dfloat dfsc1 (Dfloat AC)         { return __builtin_dfsc (AC, 010); }
static Dfloat dfsc2 (Dfloat AC, Sint X) { return __builtin_dfsc (AC, X); }
