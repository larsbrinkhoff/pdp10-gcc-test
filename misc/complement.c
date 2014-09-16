#include "insns.h"
static Sint neg  (Sint AC) { return ~AC + 1; }
static Sint not  (Sint AC) { return -AC - 1; }
static Sint not2 (Sint AC) { return -(AC + 1); }
