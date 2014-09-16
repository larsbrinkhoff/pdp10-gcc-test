#include "insns.h"

#define SKIP(N, OP, T) \
  static Sint skip##N##T (T AC) { return AC OP 0; }
#define CAM(N, OP, T)							\
  static Sint cam##N##T##1 (T AC1, T  AC2) { return AC1 OP  AC2; }	\
  static Sint cam##N##T##2 (T AC1, T *AC2) { return AC1 OP *AC2; }

#define SCC1(N, OP)				\
  SKIP (N, OP, Sint)   CAM (N, OP, Sint)	\
  SKIP (N, OP, Sfloat) CAM (N, OP, Sfloat)
#define SCC2(N, OP) SCC1 (N, OP) \
  SKIP (N, OP, uSint)  CAM (N, OP, uSint)

SCC1 (e, ==)
SCC1 (n, !=)
SCC2 (l, <)
SCC2 (g, >)
SCC2 (le, <=)
SCC2 (ge, >=)

#if 0
SKIP (e, ==, Dfloat)
CAM  (e, ==, Dfloat)
SKIP (l, <,  Dfloat)
CAM  (l, <,  Dfloat)
#endif
