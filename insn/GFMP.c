/* flag: -mgfloat */
#include "insns.h"
static Dfloat gfmp1 (Dfloat AC, Dfloat  Y) { return AC *  Y; }
static Dfloat gfmp2 (Dfloat AC, Dfloat *X) { return AC * *X; }
static Dfloat gfmp3 (Dfloat AC) { return AC * 1234561234561234561.0L; }
