#include "insns.h"

#define TEST(T1, T2)				\
static void foo (void)				\
{						\
  extern void bar (T1 *);			\
  T2 x;						\
  bar (&x);					\
}

TEST (char, char)
TEST (unsigned char, char)
TEST (char, unsigned char)
TEST (unsigned char, unsigned char)
