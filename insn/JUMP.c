#include "insns.h"
static Sint x;

#define TEST(N, OP) \
  static Sint jump##N (Sint AC) { if (likely (AC OP 0)) x = 0; return AC; }

TEST (l, >=)
TEST (e, !=)
TEST (le, >)
TEST (n, ==)
TEST (ge, <)
TEST (g, <=)
