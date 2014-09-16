#define INT int

typedef INT char8 __attribute__ ((size (8)));
typedef INT char9 __attribute__ ((size (9)));
typedef INT short16 __attribute__ ((size (16)));
typedef INT short18 __attribute__ ((size (18)));
typedef INT int32 __attribute__ ((size (32)));
typedef INT int36;

INT D __attribute__ ((size (9)));
INT E __attribute__ ((size (16)));
INT F __attribute__ ((size (18)));
INT G __attribute__ ((size (32)));

struct
{
  INT dummy;

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

  int36 y;	/*  0..36 */
} H;

INT foo (void)
{
  return D + E + F + G + H.o + H.s + H.u + H.w + H.x;
  //return H.l + H.m + H.n + H.o;
  //return H.t + H.u;
  //return H.x;
}

char8 *
bar (void)
{
  return &H.o;
}
