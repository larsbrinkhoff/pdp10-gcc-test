#include "insns.h"
static Sint tdne1 (Sint AC) { if (AC & 0123456123456) AC = 0; return AC; }
static Sint tdne2 (Sint AC, Sint *X) { if (AC & *X)   AC = 0; return AC; }
