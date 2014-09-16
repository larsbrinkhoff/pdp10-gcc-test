#include "insns.h"
static Sfloat fsc1 (Sfloat AC)         { return __builtin_fsc (AC, 010); }
static Sfloat fsc2 (Sfloat AC, Sint X) { return __builtin_fsc (AC, X); }
