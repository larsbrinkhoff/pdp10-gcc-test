#include "insns.h"
static Sint andcb1 (Sint a, Sint  e) { return ~a &  ~e; }
static Sint andcb2 (Sint a, Sint *e) { return ~a & ~*e; }
static Sint andcbi (Sint a)          { return ~a & ~0123456; }
static Sint andcbm (Sint a, Sint *e) {   *e = ~a & ~*e; }

BOTH (andcb1, ~a & ~*b)
BOTH (andcb2, ~*b & ~a)
