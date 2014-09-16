#include "insns.h"
extern void foo (void);
static void pushj1 (void (*AC) (void)) { AC (); }
static Sint pushj2 (void)              { foo (); return 0; }
static Sint pushj3 (void)              { pushj2 (); return 0; }

#if 0
static void **
pushj_reg (void **p, void *f)
{
  *++p = &&label;
  goto *f;
 label:
  return p;
}

static void **
pushj_sym (void **p)
{
  *++p = &&label;
  goto *(void *)pushj_reg;
 label:
  return p;
}
#endif
