#include "insns.h"
static Dint jffo (Dint AC) { __builtin_jffo (AC, &&label); label: return AC; }
