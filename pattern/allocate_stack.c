#include "insns.h"

static void bar (void)
{
  extern void foo (int *);
  int *x = alloca (2 * sizeof (int));
  x[0] = 0;
  x[1] = 0;
  foo (x);
}
