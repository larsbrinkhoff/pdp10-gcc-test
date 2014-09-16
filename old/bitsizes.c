//#define INT int
#define INT unsigned int

typedef INT char6 __attribute__ ((size (6)));
typedef INT char7 __attribute__ ((size (7)));
typedef INT char8 __attribute__ ((size (8)));
typedef INT char9 __attribute__ ((size (9)));
typedef INT short16 __attribute__ ((size (16)));
typedef INT short18 __attribute__ ((size (18)));
typedef INT int32 __attribute__ ((size (32)));

struct
{
  char6 a; char6 b; char6 c; char6 d; char6 e; char6 f;
  char7 g; char7 h; char7 i; char7 j; char7 k;
  char8 l; char8 m; char8 n; char8 o;
  char9 p; char9 q; char9 r; char9 s;
  short16 t; short16 u;
  short18 v; short18 w;
  int32 x;
  int32 y;
} S;

#if 1
static INT add_6 (void)
{
  return (INT)S.a + (INT)S.b + (INT)S.c + (INT)S.d + (INT)S.e + (INT)S.f;
}

static INT add_7 (void)
{
  return (INT)S.g + (INT)S.h + (INT)S.i + (INT)S.j + (INT)S.k;
}

static INT add_8 (void)
{
  return (INT)S.l + (INT)S.m + (INT)S.n + (INT)S.o;
}

static INT add_9 (void)
{
  return (INT)S.p + (INT)S.q + (INT)S.r + (INT)S.s;
}
#endif

static INT add_16 (void)
{
  return (INT)S.t + (INT)S.u;
}

#if 1
static INT add_18 (void)
{
  return (INT)S.v + (INT)S.w;
}

static INT add_32 (void)
{
  return (INT)S.x + (INT)S.y;
}
#endif
