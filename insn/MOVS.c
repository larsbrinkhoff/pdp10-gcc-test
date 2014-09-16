#include "insns.h"
//static uSint movs1 (uSint a, uSint  e) { return SWAP (e); }
static uSint movs2 (uSint a, uSint *e) { return SWAP (*e); }
static uSint movsi (void) 	       { return 0123456000000; }
static void  movsm (uSint a, uSint *e) { *e = SWAP (a); }
