//#define INT int
#define INT unsigned int

typedef INT char6 __attribute__ ((size (6)));
typedef INT char7 __attribute__ ((size (7)));
typedef INT char8 __attribute__ ((size (8)));
typedef INT char9 __attribute__ ((size (9)));
typedef INT short16 __attribute__ ((size (16)));
typedef INT short18 __attribute__ ((size (18)));
typedef INT int32 __attribute__ ((size (32)));
typedef INT int36 __attribute__ ((size (36)));

#if 0
static char6 A;
static INT B __attribute__ ((size (7)));
static INT C __attribute__ ((size (8)));
static INT D __attribute__ ((size (9)));
static INT E __attribute__ ((size (16)));
static INT F __attribute__ ((size (18)));
static INT G __attribute__ ((size (32)));
#endif

struct
{
  INT dummy;

  char6 a;	/*  0.. 5 */
  char6 b;	/*  6..11 */
  char6 c;	/* 12..17 */
  char6 d;	/* 18..23 */
  char6 e;	/* 24..29 */
  char6 f;	/* 30..35 */

  char7 g;	/*  0.. 6 */
  char7 h;	/*  7..13 */
  char7 i;	/* 14..20 */
  char7 j;	/* 21..27 */
  char7 k;	/* 28..34 */

  char8 l;	/*  0.. 7 */
  char8 m;	/*  8..15 */
  char8 n;	/* 16..23 */
  char8 o;	/* 24..31 */

  char9 p;	/*  0.. 8 */
  char9 q;	/*  9..17 */
  char9 r;	/* 18..26 */
  char9 s;	/* 27..35 */

  short16 t;	/*  0..15 */
  short16 u;	/* 16..31 */

  short18 v;	/*  0..17 */
  short18 w;	/* 18..35 */

  int32 x;	/*  0..31 */
  int32 y;	/*  0..31 */

  int36 z;	/*  0..36 */
} H;

#if 0
static INT foo (void)
{
  return A + B + C + D + E + F + G;
}
#endif

#if 0
static INT bar (void)
{
  return H.f + H.k + H.o + H.s + H.u + H.w + H.x + H.y;
}
#endif

#if 0
static INT get_6 (void)
{
  return H.a;
}
#endif

#if 0
static INT add_6_2 (void)
{
  return H.a + H.b;
}
#endif

#if 1
static INT add_6 (void)
{
  return (INT)H.a + (INT)H.b + (INT)H.c + (INT)H.d + (INT)H.e + (INT)H.f;
}
#endif

#if 1
static INT add_7 (void)
{
  return (INT)H.g + (INT)H.h + (INT)H.i + (INT)H.j + (INT)H.k;
}
#endif

#if 1
static INT add_8 (void)
{
  return (INT)H.l + (INT)H.m + (INT)H.n + (INT)H.o;
}
#endif

#if 1
static INT add_9 (void)
{
  return (INT)H.p + (INT)H.q + (INT)H.r + (INT)H.s;
}
#endif

#if 1
static INT add_16 (void)
{
  return (INT)H.t + (INT)H.u;
}
#endif

#if 1
static INT add_18 (void)
{
  return (INT)H.v + (INT)H.w;
}
#endif

#if 1
static INT add_32 (void)
{
  return (INT)H.x + (INT)H.y;
}
#endif

#if 0
static INT
baz (void)
{
  return H.a + H.g + H.l + H.p + H.t + H.v;
}
#endif
