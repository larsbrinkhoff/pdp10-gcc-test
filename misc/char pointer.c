#include "insns.h"

//#define HALF
#define FULL

static struct S
{
  Qint a, b, c, d, e, f, g, h;
#ifdef HALF
  Hint A, B, C;
#endif
#ifdef FULL
  Sint D;
#endif
} x;

#define PTR(T, X)				\
static T *ptr_ ## X = &x.X;			\
static T *ret_ ## X (void) { return &x.X; }

#define QPTR(X)	PTR (Qint, X)
#define HPTR(X)	PTR (Hint, X)
#define SPTR(X)	PTR (Sint, X)

#if 1
//QPTR (a)
//QPTR (b)
//QPTR (c)
//QPTR (d)
//QPTR (e)
//QPTR (f)
//QPTR (g)
QPTR (h)
#endif
#ifdef HALF
HPTR (A)
HPTR (B)
HPTR (C)
#endif
#ifdef FULL
//SPTR (D)
#endif

static char *foo (struct S *x) { return &x->h; }
