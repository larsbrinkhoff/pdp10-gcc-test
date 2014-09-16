#include "insns.h"

static Sint abs1 (Sint a, Sint *e) { return __builtin_abs (*e); }
static void abs2 (Sint a, Sint *e) {   *e = __builtin_abs (a); }
static void abs3 (Sint *e)         {   *e = __builtin_abs (*e); }
