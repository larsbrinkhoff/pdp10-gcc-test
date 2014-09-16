#include "insns.h"
static Sint tlne (Sint AC) { if (AC & 0123456000000) AC = 0; return AC; }
