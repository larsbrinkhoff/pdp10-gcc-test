#include "insns.h"
static Dfloat dfmp1 (Dfloat AC, Dfloat  Y) { return AC *  Y; }
static Dfloat dfmp2 (Dfloat AC, Dfloat *X) { return AC * *X; }
static Dfloat dfmp3 (Dfloat AC) { return AC * 12345612345612345612.0L; }
