#include "insns.h"

static Sfloat fadr1 (Sfloat AC, Sfloat  Y) { return AC +  Y; }
static Sfloat fadr2 (Sfloat AC, Sfloat *X) { return AC + *X; }
static Sfloat fadri (Sfloat AC) 	   { return AC + 123.0F; }
static Sfloat fadr3 (Sfloat AC) 	   { return AC + 123456123.0F; }
static Sfloat fadrm (Sfloat AC, Sfloat *X) {        *X += AC; }

BOTH1 (Sfloat, fadrb1, a + *b)
BOTH1 (Sfloat, fadrb2, *b + a)
