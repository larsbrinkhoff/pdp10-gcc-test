#include "insns.h"
static Dint dadd1 (Dint AC, Dint  Y) { return AC + Y; }
static Dint dadd2 (Dint AC, Dint *X) { return AC + *X; }
static Dint dadd3 (Dint AC)          { return AC + 0123456123456123456123456LL; }
