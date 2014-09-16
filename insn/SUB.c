#include "insns.h"

static Sint sub1  (Sint AC, Sint  Y) { return AC - Y; }
static Sint sub2  (Sint AC, Sint *X) { return AC - *X; }
static Sint subi3 (Sint AC)          { return AC - 0123456; }
static void subm4 (Sint AC, Sint *X) {   *X = AC - *X; }

static Sint *sub5  (Sint *AC, Sint  Y) { return AC - Y; }
//static Sint *sub6  (Sint *AC, Sint *X) { return AC - *X; }
static Sint *subi7 (Sint *AC)          { return AC - 0123456; }

BOTH (subb1, a - *b)
