/* flag: -mgfloat */
#include "insns.h"
static Dfloat gfdv1 (Dfloat AC, Dfloat  Y) { return AC /  Y; }
static Dfloat gfdv2 (Dfloat AC, Dfloat *X) { return AC / *X; }
static Dfloat gfdv3 (Dfloat AC) { return AC / 1234561234561234561.0L; }
