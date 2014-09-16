#include "insns.h"

static Sfloat fsbr1 (Sfloat AC, Sfloat  Y) { return AC -  Y; }
static Sfloat fsbr2 (Sfloat AC, Sfloat *X) { return AC - *X; }
static Sfloat fsbri (Sfloat AC) 	   { return AC - 123.0F; }
static Sfloat fsbr3 (Sfloat AC) 	   { return AC - 123456123.0F; }
static Sfloat fsbrm (Sfloat AC, Sfloat *X) {   *X = AC - *X; }

BOTH1 (Sfloat, fsbrb, a - *b)
