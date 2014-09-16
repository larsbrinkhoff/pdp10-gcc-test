#include "insns.h"

static Sfloat fmpr1 (Sfloat AC, Sfloat  Y) { return AC *  Y; }
static Sfloat fmpr2 (Sfloat AC, Sfloat *X) { return AC * *X; }
static Sfloat fmpri (Sfloat AC) 	   { return AC * 123.0F; }
static Sfloat fmpr3 (Sfloat AC) 	   { return AC * 123456123.0F; }
static Sfloat fmprm (Sfloat AC, Sfloat *X) {        *X *= AC; }

BOTH1 (Sfloat, fmprb1, a * *b)
BOTH1 (Sfloat, fmprb2, *b * a)
