#include "insns.h"

static Dfloat movdf0 (void) { return 0.0L; }
static Dfloat movdf1 (void) { return 123.0L; }
static Dfloat movdf2 (Dfloat a, Dfloat e) { return e; }
static Dfloat movdf3 (Dfloat a, Dfloat *e) { return *e; }
static Dfloat movdf4 (void) { return 12345612345612345612.0L; }
static void   movdf5 (Dfloat a, Dfloat *e) { *e = a; }
