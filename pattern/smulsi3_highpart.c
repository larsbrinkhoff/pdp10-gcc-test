#include "insns.h"

static Sint mulm1 (Sint x, Sint y, Sint q)
{
  x = MUL (x, y) >> 35;
  /* Addition needed to hide hard reg from combine pass.  */
  return x + q;
}

static void mulm2 (Sint x, Sint *y)
{
  *y = MUL (x, *y) >> 35;
}
