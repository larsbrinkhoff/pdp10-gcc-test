#include "insns.h"
static Dfloat dfad1 (Dfloat AC, Dfloat  Y) { return AC +  Y; }
static Dfloat dfad2 (Dfloat AC, Dfloat *X) { return AC + *X; }
static Dfloat dfad3 (Dfloat AC)            { return AC + 12345612345612345612.0L; }
