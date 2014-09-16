#include "insns.h"
//static Sint ffs1 (Sint a, Sint  e) { return __builtin_ffs (e); }
static Sint ffs2 (Sint a, Sint *e) { return __builtin_ffs (*e); }
