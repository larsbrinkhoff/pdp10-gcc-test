#include "insns.h"

#define TEST(N, OP)				\
  static Sint skip##N (Sint AC, Sint *X)	\
  {						\
    if (likely (*X OP 0))			\
      AC = 0;					\
    return AC;					\
  }

TEST (l, >=)
TEST (e, !=)
TEST (le, >)
TEST (ge, <)
TEST (n, ==)
TEST (g, <=)
