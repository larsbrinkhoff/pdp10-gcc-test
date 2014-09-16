#include "insns.h"
static Sint and1   (Sint AC, Sint  Y) { return AC & Y; }
static Sint and2   (Sint AC, Sint *X) { return AC & *X; }
static Sint andi   (Sint AC) 	      { return AC & 0123456; }
static Sint tlz    (Sint AC) 	      { return AC & 0123456777777; }
static Sint andcmi (Sint AC) 	      { return AC & ~0123456; }
static Sint and3   (Sint AC) 	      { return AC & 0123456123456; }
static Sint andm   (Sint AC, Sint *X) {   *X = AC & *X; }
