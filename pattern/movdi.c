#include "insns.h"

static Dint dmove1 (Dint a, Dint e) { return e; }
static Dint dmove2 (Dint a, Dint *e) { return *e; }
static Dint dmove3 (void) { return 0123456123456654321654321LL; }
static void dmovem (Dint a, Dint *e) { *e = a; }
