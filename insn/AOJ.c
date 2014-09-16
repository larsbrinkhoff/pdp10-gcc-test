#include "insns.h"
static Sint aojl  (Sint x, Sint AC){ do x += AC; while (++AC <  0); return x; }
static Sint aojge (Sint x, Sint AC){ do x += AC; while (++AC >= 0); return x; }
static Sint aojg  (Sint x, Sint AC){ do x += AC; while (++AC >  0); return x; }
