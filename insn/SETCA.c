#include "insns.h"
static Sint setca  (Sint AC)          { return ~AC; }
static Sint setcam (Sint AC, Sint *X) {   *X = ~AC; }

BOTH (setcab, ~a)
