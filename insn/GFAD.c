/* flag: -mgfloat */
#include "insns.h"
static Dfloat gfad1 (Dfloat AC, Dfloat  Y) { return AC +  Y; }
static Dfloat gfad2 (Dfloat AC, Dfloat *X) { return AC + *X; }
static Dfloat gfad3 (Dfloat AC) { return AC + 1234561234561234561.0L; }
