#include "insns.h"
static uDint rotcl1 (uDint a)         { return ROTCL (a, 1); }
static uDint rotcl2 (uDint a, Sint e) { return ROTCL (a, e); }
static uDint rotcl3 (uDint a, Sint x) { return ROTCL (a, 1 + x); }
static uDint rotcr1 (uDint a)         { return ROTCR (a, 1); }
static uDint rotcr2 (uDint a, Sint e) { return ROTCR (a, e); }
static uDint rotcr3 (uDint a, Sint e) { return ROTCR (a, -e); }
static uDint rotcr4 (uDint a, Sint x) { return ROTCR (a, 1 + x); }
static uDint rotcr5 (uDint a, Sint x) { return ROTCR (a, 1 - x); }

