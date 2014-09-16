#include "insns.h"

static void sos (int *x)
{
  --*x;
}

static int sos_ac (int *x)
{
  return --*x;
}

extern int f (void);

#define SOS(N, OP)				\
static void sos##N (int *x)			\
{						\
  if (likely (!(--*x OP 0)))			\
    f ();					\
}

#define SOS_AC(N, OP)				\
static int sos##N##_ac (int *x)			\
{						\
  int y = --*x;					\
  if (likely (!(y OP 0)))			\
    y = 0;					\
  return y;					\
}

#define TEST(N, OP) SOS (N, OP) SOS_AC (N, OP)

TEST (l, <)
TEST (e, ==)
TEST (le, <=)
TEST (ge, >=)
TEST (n, !=)
TEST (g, >)
