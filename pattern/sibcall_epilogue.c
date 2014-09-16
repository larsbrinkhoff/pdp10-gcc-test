#include "insns.h"

extern Sint foo (Sint AC1);
static Sint bar (Sint AC1) { return foo (AC1); }
static Sint baz (Sint AC1) { return bar (AC1); }
