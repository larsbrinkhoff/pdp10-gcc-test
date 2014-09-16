#include "insns.h"
static Sint sojl  (Sint x, Sint AC){ do x += AC; while (--AC <  0); return x; }
static Sint soje  (Sint x, Sint AC){do x += AC; while (--AC == 0); return x;}
static Sint sojle (Sint x, Sint AC){ do x += AC; while (--AC <= 0); return x; }
//static Sint sojge (Sint x, Sint AC){do x += AC; while (--AC >= 0); return x;}
//static Sint sojne (Sint x, Sint AC){do x += AC; while (--AC != 0); return x;}
//static Sint sojg  (Sint x, Sint AC){do x += AC; while (--AC >  0); return x;}
