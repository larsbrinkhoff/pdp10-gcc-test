#include "insns.h"

static Sint ior1 (Sint a, Sint  e) { return a | e; }
static Sint ior2 (Sint a, Sint *e) { return a | *e; }
static Sint iori (Sint a) 	   { return a | 0123456; }
static Sint ior3 (Sint a) 	   { return a | 0123456123456; }
static Sint iorm (Sint a, Sint *e) {       *e |= a; }

BOTH (iorb1, a | *b)
BOTH (iorb2, *b | a)
