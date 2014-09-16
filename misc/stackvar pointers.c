#include "insns.h"

/* This is a test case to verify that pointers to stack variables are
   correct.  */

extern void bar ();

#define TEST(T, N)				\
static void foo##T##N (void)			\
{						\
  T b[N];					\
  ARRAY_BAR##N;					\
}						\
static void bar##T##N (void)			\
{						\
  VARS##N (T);					\
  SCALAR_BAR##N;				\
}

#define VARS1(T) T a
#define ARRAY_BAR1 bar (&b[0])
#define SCALAR_BAR1 bar (&a)
#define VARS2(T) T a, b
#define ARRAY_BAR2 bar (&b[0], &b[1])
#define SCALAR_BAR2 bar (&a, &b)
#define VARS3(T) T a, b, c
#define ARRAY_BAR3 bar (&b[0], &b[1], &b[2])
#define SCALAR_BAR3 bar (&a, &b, &c)
#define VARS4(T) T a, b, c, d
#define ARRAY_BAR4 bar (&b[0], &b[1], &b[2], &b[3])
#define SCALAR_BAR4 bar (&a, &b, &c, &d)
#define VARS5(T) T a, b, c, d, e
#define ARRAY_BAR5 bar (&b[0], &b[1], &b[2], &b[3], &b[4])
#define SCALAR_BAR5 bar (&a, &b, &c, &d, &e)

#if 1
TEST (Qint, 1)
#endif
#if 1
TEST (Qint, 2)
#endif
#if 1
TEST (Qint, 3)
#endif
#if 1
TEST (Qint, 4)
#endif
#if 1
TEST (Qint, 5)
#endif

#if 1
TEST (Hint, 1)
TEST (Hint, 2)
TEST (Hint, 3)
TEST (Hint, 4)

TEST (Sint, 1)
#endif
#if 1
TEST (Sint, 2)
#endif
#if 1
TEST (Sint, 3)
TEST (Sint, 4)

TEST (Dint, 1)
TEST (Dint, 2)
TEST (Dint, 3)
TEST (Dint, 4)
#endif
