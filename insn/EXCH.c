#include "insns.h"

static Sint exch1 (Sint a, Sint *e)
{
  Sint tmp = a;
  a = *e;
  *e = tmp;
  return a;
}

static Sint exch2 (Sint a, Sint *e)
{
  Sint tmp = *e;
  *e = a;
  a = tmp;
  return a;
}
