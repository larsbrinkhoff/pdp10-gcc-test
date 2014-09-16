/* flag: -mgfloat */
#include "insns.h"
static Dfloat gfsb1 (Dfloat AC, Dfloat  Y) { return AC -  Y; }
static Dfloat gfsb2 (Dfloat AC, Dfloat *X) { return AC - *X; }
static Dfloat gfsb3 (Dfloat AC) { return AC - 1234561234561234561.0L; }
