#include "insns.h"
static Sint move1 (Sint a, Sint  e) { return e; }
static Sint move2 (Sint a, Sint *e) { return *e; }
static Sint movei (void) 	    { return 0123456; }
static Sint move3 (void) 	    { return 0123456123456; }
static void movem (Sint a, Sint *e) { *e = a; }
