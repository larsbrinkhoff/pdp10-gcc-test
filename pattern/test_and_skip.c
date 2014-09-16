#include "insns.h"
static Sint trne  (Sint AC) { if (  AC & 0123456)        AC = 0; return AC; }
static Sint trnn  (Sint AC) { if (!(AC & 0123456))       AC = 0; return AC; }
static Sint tlne  (Sint AC) { if (  AC & 0123456000000)  AC = 0; return AC; }
static Sint tlnn  (Sint AC) { if (!(AC & 0123456000000)) AC = 0; return AC; }
static Sint tdne1 (Sint AC) { if (  AC & 0123456123456)  AC = 0; return AC; }
static Sint tdnn1 (Sint AC) { if (!(AC & 0123456123456)) AC = 0; return AC; }
static Sint tdne2 (Sint AC, Sint *X) { if (  AC & *X)    AC = 0; return AC; }
static Sint tdnn2 (Sint AC, Sint *X) { if (!(AC & *X))   AC = 0; return AC; }
