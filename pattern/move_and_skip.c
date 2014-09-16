#include "insns.h"

#define SKIP(M, CMP)				\
static int skip##M (int AC, int *X1, int *X2)	\
{						\
  return unlikely (*X1 CMP 0) ? *X1 : *X2;	\
}

SKIP (e, ==)
SKIP (n, !=)
SKIP (ge, >=)
SKIP (le, <=)
SKIP (g, >)
SKIP (l, <)
