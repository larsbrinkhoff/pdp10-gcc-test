/* flag: -Os */
#include "insns.h"

extern void clobber (void);
static Sint    push_prologue (Sint x)               { clobber (); return x; }
static Sint   *pushsi_reg    (  Sint *p,   Sint  x) { *++p =  x;  return p; }
static Sint   *pushsi_mem    (  Sint *p,   Sint *x) { *++p = *x;  return p; }
static Sfloat *pushsf_reg    (Sfloat *p, Sfloat  x) { *++p =  x;  return p; }
static Sfloat *pushsf_mem    (Sfloat *p, Sfloat *x) { *++p = *x;  return p; }
