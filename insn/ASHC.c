#include "insns.h"
static Dint ashc1 (Dint a)         { return a >> 1; }
static Dint ashc2 (Dint a, Sint e) { return a >> e; }
static Dint ashc3 (Dint a, Sint e) { return a >> (-e); }
static Dint ashc4 (Dint a, Sint x) { return a >> (1 + x); }
static Dint ashc5 (Dint a, Sint x) { return a >> (1 - x); }
