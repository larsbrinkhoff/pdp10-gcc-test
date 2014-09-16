#include "insns.h"

static void aos (int *x)
{
  ++*x;
}

static int aos_ac (int *x)
{
  return ++*x;
}

extern int f (void);

#define AOS(N, OP)				\
static void aos##N (int *x)			\
{						\
  if (likely (!(++*x OP 0)))			\
    f ();					\
}

#define AOS_AC(N, OP)				\
static int aos##N##_ac (int *x)			\
{						\
  int y = ++*x;					\
  if (likely (!(y OP 0)))			\
    y = 0;					\
  return y;					\
}

#define TEST(N, OP) AOS (N, OP) AOS_AC (N, OP)

TEST (l, <)
TEST (e, ==)
TEST (le, <=)
TEST (ge, >=)
TEST (n, !=)
TEST (g, >)
