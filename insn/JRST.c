#include "insns.h"
static void jrst1 (void)     { loop: goto loop; }
static void jrst2 (void *AC) { goto *AC; }
static void jrst3 (void)     { jrst3 (); }
