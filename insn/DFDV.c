#include "insns.h"
static Dfloat dfdv1 (Dfloat AC, Dfloat  Y) { return AC /  Y; }
static Dfloat dfdv2 (Dfloat AC, Dfloat *X) { return AC / *X; }
static Dfloat dfdv3 (Dfloat AC) { return AC / 12345612345612345612.0L; }
