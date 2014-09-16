#include "insns.h"

#define TEST(N, M, OP, ARGS, FOO)		\
  static Sint cam##N##M ARGS			\
  {						\
    if (AC OP FOO)				\
      AC = 0;					\
    return AC;					\
  }

#define TEST2(N, OP)				\
  TEST (N, 1, OP, (Sint AC, Sint *X), *X)	\
  TEST (N, 2, OP, (Sint AC), 0123456123456)

TEST2 (l, >=)
TEST2 (e, !=)
TEST2 (le, <)
TEST2 (ge, >)
TEST2 (n, ==)
TEST2 (g, <=)
