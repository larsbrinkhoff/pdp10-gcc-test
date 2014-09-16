#include "insns.h"

#define TEST(N, T1, T2)				\
static void arg##N (T2 *x)			\
{						\
  extern void bar (T1 *);			\
  bar ((T1 *)x);				\
}						\
static void stack##N (void)			\
{						\
  extern void bar (T1 *);			\
  T2 x;						\
  bar ((T1 *)&x);				\
}

#define TEST9(N, T1, T2)			\
  TEST (N##__, T1, T2)				\
  TEST (N##s_, signed T1, T2)			\
  TEST (N##u_, unsigned T1, T2)			\
  TEST (N##_s, T1, signed T2)			\
  TEST (N##ss, signed T1, signed T2)		\
  TEST (N##us, unsigned T1, signed T2)		\
  TEST (N##_u, T1, unsigned T2)			\
  TEST (N##su, signed T1, unsigned T2)		\
  TEST (N##uu, unsigned T1, unsigned T2)

TEST9 (1, char, char)
TEST9 (2, short, short)
TEST9 (3, int, int)
