#include "insns.h"

#define TEST(N, OP) \
  static Sint cai##N (Sint AC) { if (AC OP 2) AC = 0; return AC; }

TEST (l, >=)
TEST (e, !=)
TEST (le, >)
TEST (ge, <)
TEST (n, ==)
TEST (g, <=)
