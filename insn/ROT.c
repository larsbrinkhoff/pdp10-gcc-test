#include "insns.h"
static uSint rotl1 (uSint AC)         { return ROTL (AC, 1); }
static uSint rotl2 (uSint AC, Sint X) { return ROTL (AC, X); }
static uSint rotl3 (uSint AC, Sint X) { return ROTL (AC, 1 + X); }
static uSint rotr1 (uSint AC)         { return ROTR (AC, 1); }
static uSint rotr2 (uSint AC, Sint X) { return ROTR (AC, X); }
static uSint rotr3 (uSint AC, Sint X) { return ROTR (AC, -X); }
static uSint rotr4 (uSint AC, Sint X) { return ROTR (AC, 1 + X); }
static uSint rotr5 (uSint AC, Sint X) { return ROTR (AC, 1 - X); }

