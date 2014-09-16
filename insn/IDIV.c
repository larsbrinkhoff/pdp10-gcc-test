#include "insns.h"

static Sint idivm1 (Sint AC, Sint  Y) { return  Y / AC; }
static void idivm2 (Sint AC, Sint *X) {   *X = AC / *X; }
static Sint idiv3  (Sint AC1, Sint AC2, Sint AC3) { return AC1 % AC3; }
static Sint idiv4  (Sint AC1, Sint AC2, Sint  *X) { return AC1 % *X; }
