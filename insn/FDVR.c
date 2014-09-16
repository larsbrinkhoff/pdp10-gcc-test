#include "insns.h"

static Sfloat fdvr1 (Sfloat AC, Sfloat  Y) { return AC /  Y; }
static Sfloat fdvr2 (Sfloat AC, Sfloat *X) { return AC / *X; }
static Sfloat fdvri (Sfloat AC) 	   { return AC / 123.0F; }
static Sfloat fdvr3 (Sfloat AC) 	   { return AC / 123456123.0F; }
static Sfloat fdvrm (Sfloat AC, Sfloat *X) {   *X = AC / *X; }

BOTH1 (Sfloat, fdvrb, a / *b)
