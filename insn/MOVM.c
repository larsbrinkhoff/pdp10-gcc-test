#include "insns.h"

//static Sint movm1  (Sint a, Sint  e) { return __builtin_abs (e); }
static Sint movm2  (Sint a, Sint *e) { return __builtin_abs (*e); }
static Sint movmm3 (Sint a, Sint *e) {   *e = __builtin_abs (a); }
static Sint movms4 (Sint *e)         {   *e = __builtin_abs (*e); }
//static Sfloat movm5  (Sfloat a, Sfloat  e) { return __builtin_fabsf (e); }
static Sfloat movm6  (Sfloat a, Sfloat *e) { return __builtin_fabsf (*e); }
static Sfloat movmm7 (Sfloat a, Sfloat *e) {   *e = __builtin_fabsf (a); }
static Sfloat movms8 (Sfloat *e)           {   *e = __builtin_fabsf (*e); }

BOTH (movms9, __builtin_abs (*b))
BOTH1 (Sfloat, movms10, __builtin_fabsf (*b))
