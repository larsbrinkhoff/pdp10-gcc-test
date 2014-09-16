#include "insns.h"

#if 0
register void **p asm ("10");

static void
popj (void)
{
  goto *p--;
}
#endif

static void popj1 (void) {}
