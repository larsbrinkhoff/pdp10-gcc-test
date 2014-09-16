#include "insns.h"
static Dfloat dfsb1 (Dfloat AC, Dfloat  Y) { return AC -  Y; }
static Dfloat dfsb2 (Dfloat AC, Dfloat *X) { return AC - *X; }
static Dfloat dfsb3 (Dfloat AC) { return AC - 12345612345612345612.0L; }
