#define R	0000000777777
#define L	0777777000000

typedef struct {          short l;          short r; } sshort;
typedef struct { unsigned short l; unsigned short r; } ushort;
typedef struct {       int l : 18;       int r : 18; } sbitfld;
typedef struct {  unsigned l : 18;  unsigned r : 18; } ubitfld;
typedef      int sint;
typedef unsigned uint;

#define TEST1(N, T, X)							\
  static T    h##N    (T  x, T  y) {           X;         return x; }	\
  static T    h##N##m (T  x, T *z) { T y = *z; X;         return x; }	\
  static void h##N##M (T *z, T  y) { T x = *z; X; *z = x; }
#define TEST2(N, T, X) TEST1 (N##s, s##T, X) TEST1 (N##u, u##T, X)
#define TEST4(N, T, X, Y) TEST2 (N##p, T, x=(X)+(Y)) TEST2 (N##o, T, x=(X)|(Y))

/* HRR */
//TEST2 (rr1,	short,	x.r = y.r)
TEST2 (rr2,	bitfld,	x.r = y.r)
TEST4 (rr3,	int,	x & L, y & R)

/* HLL */
TEST2 (ll1,	short,	x.l = y.l)
TEST2 (ll2,	bitfld,	x.l = y.l)
TEST4 (ll3,	int,	x & R, y & L)

/* HRL */
//TEST2 (rl1,	short,	x.l = y.r)
TEST2 (rl2,	bitfld,	x.l = y.r)
TEST4 (rl3,	int,	x & R, y << 18)
TEST4 (rl4,	int,	x & R, (y & R) << 18)
TEST4 (rl5,	int,	x & R, (y << 18) & L)
TEST4 (rl6,	int,	x & R, ((y & R) << 18) & L)

/* HLR */
TEST2 (lr1,	short,	x.r = y.l)
TEST2 (lr2,	bitfld,	x.r = y.l)
TEST4 (lr3,	int,	x & L, (uint)y >> 18)
TEST4 (lr4,	int,	x & L, (uint)(y & L) >> 18)
TEST4 (lr5,	int,	x & L, (y >> 18) & R)
TEST4 (lr6,	int,	x & L, ((uint)(y & L) >> 18) & R)

/* HRRZ */
//TEST2 (rrz1,	short,	x.r = y.r; x.l = 0)
//TEST2 (rrz2,	short,	x.l = 0; x.r = y.r)
TEST2 (rrz3,	bitfld,	x.r = y.r; x.l = 0)
TEST2 (rrz4,	bitfld,	x.l = 0; x.r = y.r)
TEST4 (rrz5,	int,	y & R, 0)

/* HLLZ */
TEST2 (llz1,	short,	x.l = y.l; x.r = 0)
TEST2 (llz2,	short,	x.r = 0; x.l = y.l)
TEST2 (llz3,	bitfld,	x.l = y.l; x.r = 0)
TEST2 (llz4,	bitfld,	x.r = 0; x.l = y.l)
TEST4 (llz5,	int,	y & L, 0)

/* HRLZ */
//TEST2 (rlz1,	short,	x.l = y.r; x.r = 0)
//TEST2 (rlz2,	short,	x.r = 0; x.l = y.r)
TEST2 (rlz3,	bitfld,	x.l = y.r; x.r = 0)
TEST2 (rlz4,	bitfld,	x.r = 0; x.l = y.r)
TEST4 (rlz5,	int,	y << 18, 0)
TEST4 (rlz6,	int,	(y & R) << 18, 0)
TEST4 (rlz7,	int,	(y << 18) & L, 0)
TEST4 (rlz8,	int,	((y & R) << 18) & L, 0)

/* HLRZ */
//TEST2 (lrz1,	short,	x.r = y.l; x.l = 0)
//TEST2 (lrz2,	short,	x.l = 0; x.r = y.l)
TEST2 (lrz3,	bitfld,	x.r = y.l; x.l = 0)
TEST2 (lrz4,	bitfld,	x.l = 0; x.r = y.l)
TEST4 (lrz5,	int,	(uint)y >> 18, 0)
TEST4 (lrz6,	int,	(uint)(y & L) >> 18, 0)
TEST4 (lrz7,	int,	(y >> 18) & R, 0)
TEST4 (lrz8,	int,	((uint)(y & L) >> 18) & R, 0)

/* HRRO */
//TEST2 (rro1,	short,	x.r = y.r; x.l = R)
//TEST2 (rro2,	short,	x.l = R; x.r = y.r)
TEST2 (rro3,	bitfld,	x.r = y.r; x.l = R)
TEST2 (rro4,	bitfld,	x.l = R; x.r = y.r)
TEST4 (rro5,	int,	y & R, L)

/* HLLO */
TEST2 (llo1,	short,	x.l = y.l; x.r = R)
TEST2 (llo2,	short,	x.r = R; x.l = y.l)
TEST2 (llo3,	bitfld,	x.l = y.l; x.r = R)
TEST2 (llo4,	bitfld,	x.r = R; x.l = y.l)
TEST4 (llo5,	int,	y & L, R)

/* HRLO */
//TEST2 (rlo1,	short,	x.l = y.r; x.r = R)
//TEST2 (rlo2,	short,	x.r = R; x.l = y.r)
TEST2 (rlo3,	bitfld,	x.l = y.r; x.r = R)
TEST2 (rlo4,	bitfld,	x.r = R; x.l = y.r)
TEST4 (rlo5,	int,	y << 18, R)
TEST4 (rlo6,	int,	(y & R) << 18, R)
TEST4 (rlo7,	int,	(y << 18) & L, R)
TEST4 (rlo8,	int,	((y & R) << 18) & L, R)

/* HLRO */
//TEST2 (lro1,	short,	x.r = y.l; x.l = R)
//TEST2 (lro2,	short,	x.l = R; x.r = y.l)
TEST2 (lro3,	bitfld,	x.r = y.l; x.l = R)
TEST2 (lro4,	bitfld,	x.l = R; x.r = y.l)
TEST4 (lro5,	int,	(uint)y >> 18, L)
TEST4 (lro6,	int,	(uint)(y & L) >> 18, L)
TEST4 (lro7,	int,	(y >> 18) & R, L)
TEST4 (lro8,	int,	((uint)(y & L) >> 18) & R, L)

/* HRRE */
//TEST2 (rre1,	short,	x.r = y.r; x.l = (int)(y.r << 18) >> 35)
TEST2 (rre3,	bitfld,	x.r = y.r; x.l = (int)(y.r << 18) >> 35)
//TEST2 (rre5,	int,	x = (int)(short)y)
TEST2 (rre6,	int,	x = (int)(y << 18) >> 18)

/* HLRE */
//TEST2 (lre1,	short,	x.r = y.l; x.l = (int)(y.l << 18) >> 35)
TEST2 (lre3,	bitfld,	x.r = y.l; x.l = (int)(y.l << 18) >> 35)
TEST2 (lre5,	int,	x = (int)y >> 18)
TEST2 (lre6,	int,	x = (int)(y & L) >> 18)

#define S1(N, T, A, B, C, D)			\
  TEST1 (N##1, T, A = B; C = D)			\
  TEST1 (N##2, T, C = D; A = B)
#define S2(N, T, A, B, C)				\
  S1 (N##xr, T, A, B, C, x.r)				\
  S1 (N##xl, T, A, B, C, x.l)				\
  S1 (N##yr, T, A, B, C, y.r)				\
  S1 (N##yl, T, A, B, C, y.l)				\
  S1 (N##z,  T, A, B, C, 0)				\
  S1 (N##o,  T, A, B, C, 0777777)			\
  S1 (N##el, T, A, B, C, (int)(y.l << 18) >> 35)	\
  S1 (N##er, T, A, B, C, (int)(y.r << 18) >> 35)
#define S3(N, T, A, B)				\
  TEST1 (N, T, A = B)				\
  S2 (N##r, T, A, B, x.r)			\
  S2 (N##l, T, A, B, x.l)
#define S4(N, T, A)				\
  S3 (N##xr, T, A, x.r)				\
  S3 (N##xl, T, A, x.l)				\
  S3 (N##yr, T, A, y.r)				\
  S3 (N##yl, T, A, y.l)
#define S5(T)					\
  S4 (T##r, T, x.r)				\
  S4 (T##l, T, x.l)
#define S6(T)					\
  S5 (u##T)					\
  S5 (s##T)

#if 0
S6 (short)
S6 (bitfld)
#endif

#define I1(N, T, A, B)				\
  TEST1 (N, T, x = (A) + (B))			\
  TEST1 (N, T, x = (A) | (B))
#define I2(N, T, A, B)				\
  I1 (N, T, A, B)				\
  I1 (N, T, B, A)
#define I3(N, T, A)				\
  I2(N, T, A, y & R)				\
  I2(N, T, A, y & L)				\
  I2(N, T, A, (y >> 18) & R)			\
  I2(N, T, A, y << 18)				\
  I2(N, T, A, 0)				\
  I2(N, T, A, 0777777)				\
  I2(N, T, A, 0777777000000)			\
  I2(N, T, A, (int)((y << 18) >> 35) & R)	\
  I2(N, T, A, (int)((y << 18) >> 35) << 18)	\
  I2(N, T, A, (int)(y >> 35) & R)		\
  I2(N, T, A, ((y >> 35) << 18))
#define I4(N, T)				\
  I3 (N, T, x & R)				\
  I3 (N, T, x & L)				\
  I3 (N, T, (x >> 18) & R)			\
  I3 (N, T, x << 18)
