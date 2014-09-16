#include "insns.h"

static Dint lshcl1 (Dint a)         { return a << 1; }
static Dint lshcl2 (Dint a, Sint e) { return a << e; }
static Dint lshcl3 (Dint a, Sint x) { return a << (1 + x); }

static uDint lshcr1 (uDint a)         { return a >> 1; }
static uDint lshcr2 (uDint a, Sint e) { return a >> e; }
static uDint lshcr3 (uDint a, Sint e) { return a >> (-e); }
static uDint lshcr4 (uDint a, Sint x) { return a >> (1 + x); }
static uDint lshcr5 (uDint a, Sint x) { return a >> (1 - x); }
