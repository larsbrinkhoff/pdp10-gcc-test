/* flag: -Os */
#include "insns.h"

extern void clobber (void);
static Sint    pop_prologue (Sint x)               { clobber (); return x; }
static Sint   *popsi_mem    (  Sint *p,   Sint *x) { *x = *p--;  return p; }
static Sfloat *popsf_mem    (Sfloat *p, Sfloat *x) { *x = *p--;  return p; }
static Sint   *popsi_combine(  Sint *p,   Sint *x) { *x = (--p)[1]; return p; }
static Sfloat *popsf_combine(Sfloat *p, Sfloat *x) { *x = (--p)[1]; return p; }
