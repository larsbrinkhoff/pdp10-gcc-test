#include "insns.h"
static Sint imul1 (Sint AC, Sint  Y) { return AC * Y; }
static Sint imul2 (Sint AC, Sint *X) { return AC * *X; }
static Sint imuli (Sint AC) 	     { return AC * 0123456; }
static Sint imul3 (Sint AC) 	     { return AC * 0123456123456; }
static void imulm (Sint AC, Sint *X) {  *X *= AC; }

BOTH (imulb1, a * *b)
BOTH (imulb2, *b * a)
