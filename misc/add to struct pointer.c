#include "insns.h"

//#define HALF
#define FULL

static struct S
{
  Qint a, b, c, d, e, f, g;
#ifdef HALF
  Hint A, B, C;
#endif
#ifdef FULL
  Sint D;
#endif
} x;

static struct S *foo (struct S *x) { return x + 1; }
static Qint     *bar (Qint *x)     { return x + 0123; }
#define T Qint
static T     *baz (T *x)     { return x + 0123; }
static T     *baz1 (T *x)     { return x + 1; }
static T     *baz2 (T *x)     { return x + 2; }
static T     *baz3 (T *x)     { return x + 3; }
static T     *baz4 (T *x)     { return x + 4; }
static T     *baz5 (T *x)     { return x + 5; }
static T     *baz6 (T *x)     { return x + 6; }
static T     *baz7 (T *x)     { return x + 7; }
static T     *baz8 (T *x)     { return x + 8; }
static T     *baz9 (T *x)     { return x + 9; }
