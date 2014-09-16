#include "insns.h"

static Sint orca1 (Sint a, Sint  e) { return ~a | e; }
static Sint orca2 (Sint a, Sint *e) { return ~a | *e; }
static Sint orcai (Sint a)          { return ~a | 0123456; }
static Sint orcam (Sint a, Sint *e) {  *e |= ~a; }

BOTH (orcab1, ~a | *b)
BOTH (orcab2, *b | ~a)
