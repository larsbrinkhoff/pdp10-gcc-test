#include "insns.h"
//static Dint dmovn1 (Dint a, Dint  e) { return -e; }
static Dint dmovn2  (Dint a, Dint *e) { return -*e; }
static Dint dmovnm3 (Dint a, Dint *e) { *e = -a; }
//static Dfloat dmovn4 (Dfloat a, Dfloat  e) { return -e; }
static Dfloat dmovn5  (Dfloat a, Dfloat *e) { return -*e; }
static Dfloat dmovnm6 (Dfloat a, Dfloat *e) { *e = -a; }
