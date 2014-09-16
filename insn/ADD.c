#include "insns.h"

static Sint add1  (Sint a, Sint  e) { return a + e; }
static Sint add2  (Sint a, Sint *e) { return a + *e; }
static Sint addi2 (Sint a) 	    { return a + 0123456; }
static Sint add3  (Sint a) 	    { return a + 0123456123456; }
static void addm4 (Sint a, Sint *e) { *e += a; }
static Sint *add5  (Sint *a, Sint  e) { return a + e; }
//static Sint *add6  (Sint *a, Sint *e) { return a + *e; }
static Sint *addi7 (Sint *a) 	      { return a + 0123456; }
static Sint *add8  (Sint *a) 	      { return a + 01234561234; }
static void  addm9 (Sint a, Sint *e)  {       *e += a; }

BOTH (addb1, a + *b)
BOTH (addb2, *b + a)
