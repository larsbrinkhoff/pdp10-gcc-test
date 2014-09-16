#include "insns.h"

static Sint orcb1 (Sint a, Sint  e) { return ~a |  ~e; }
static Sint orcb2 (Sint a, Sint *e) { return ~a | ~*e; }
static Sint orcbi (Sint a)          { return ~a | ~0123456; }
static Sint orcbm (Sint a, Sint *e) {   *e = ~a | ~*e; }

BOTH (orcbb1, ~a | ~*b)
BOTH (orcbb2, ~*b | ~a)
