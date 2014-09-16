#include "insns.h"
static Sfloat movsf1 (Sfloat a, Sfloat  e) { return e; }
static Sfloat movsf2 (Sfloat a, Sfloat *e) { return *e; }
static Sfloat movsf3 (void) { return 0.0; }
static Sfloat movsf4 (void) { return 123.0; }
static Sfloat movsf5 (void) { return 123456123.0; }
static Sfloat movsf6 (Sfloat a, Sfloat *e) { *e = a; }
