#include "insns.h"

static Sint divsi3_1 (Sint b, Sint  a)  { return a / 3; }
static Sint divsi3_2 (Sint a, Sint  b) { return a /  b; }
static void divsi3_3 (Sint a, Sint *b) {   *b = a / *b; }
