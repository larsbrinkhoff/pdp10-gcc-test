typedef signed char schar;
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;

typedef struct { int a; } one_word;
typedef struct { int a; int b; } two_words;
typedef struct { int a; int b; int c; } three_words;
typedef struct { int a; int b; int c; int d; } four_words;

extern int	external_variable;
int		global_variable;
static int	local_variable;

void extended_addressing (void)
{
  extern void foo (int *);
  int x;

  *(volatile int *)&external_variable = 1;
  *(volatile int *)&global_variable = 1;
  *(volatile int *)&local_variable = 1;

  *(volatile int *)&x = (int)extended_addressing;
  *(volatile int *)&x = (int)foo;
}

int	add0 (void)		{ return external_variable +
					 global_variable +
					 local_variable; }

int	add1 (int a, int b)	{ return a + b; }
int	add2 (int a, int *b)	{ return a + *b; }
int	add3 (int *a, int b)	{ return *a + b; }
int	add4 (int a)		{ return a + 42; }
void	add5 (int a, int *b)	{ *b += a; }
void	add6 (int *a, int b)	{ *a += b; }
int	add7 (int a, int *b)	{ return *b += a; }	/* !!! ADDB not used */
int	add8 (int *a, int b)	{ return *a += b; }	/* !!! ADDB not used */
void	add9 (void)		{ *((int *)42) += 43; }
void	add10 (void)		{ extern int x;
				  static int y;
				  x += 42; y += 42; }
int	add11 (int a, int b,
	       int c, int d,
	       int e)		{ return a + b + c + d + e; }
int	add11b (int a, int b,
	        int c, int d,
	        int e)		{ return add11 (a, b, c, d, e); }
int	add11c (void)		{ return add11 (1, 2, 3, 4, 5); }
int	add12 (int a, int b,
	       int c, int d,
	       int e, int f)	{ return a + b + c + d + e + f; }
int	add12b (int a, int b,
	        int c, int d,
	        int e, int f)	{ return add12 (a, b, c, d, e, f); }
int	add12c (void)		{ return add12 (1, 2, 3, 4, 5, 6); }
int	add13 (int a, int b,
	       int c, int d,
	       int e, int f,
	       int g)		{ return a + b + c + d + e + f + g; }
int	add13b (int a, int b,
	        int c, int d,
	        int e, int f,
		int g)		{ return add13 (a, b, c, d, e, f, g); }
int	add13c (void)		{ return add13 (1, 2, 3, 4, 5, 6, 7); }

long long dadd1 (long long a,
		 long long b)	{ return a + b; }
long long dadd1b (int x,
		  long long a,
		  long long b)	{ return a + b; }
long long dadd1c (void)		{ return dadd1b (1, 2LL, 3LL); }
long long dadd2 (long long a,
		 long long b,
		 long long c)	{ return a + b + c; }
long long dadd2b (long long a,
		  long long b,
		  long long c)	{ return dadd2 (a, b, c); }
long long dadd2c (void)		{ return dadd2 (1LL, 2LL, 3LL); }
long long dadd3 (long long a,
		 long long b,
		 long long c,
		 long long d)	{ return a + b + c + d; }
long long dadd3b (void)		{ return dadd3 (1LL, 2LL, 3LL, 4LL); }
long long dadd3c (long long a,
		  long long b,
		  long long c,
		  long long d)	{ extern long long foo ();
				  return foo (a, b, c, d); }

void	swap1 (a, b)		{ extern void foo (int, int);
				  foo (b, a); }
void	swap1b (a, b)		{ extern void foo (int, int);
				  asm ("exch %0,%1"
				       : "=r" (a), "=rm" (b)
				       : "0" (a), "1" (b));
				  foo (a, b); }
void	swap2 (int *a, int *b)	{ int tmp;
				  tmp = *a;
				  *a = *b;
				  *b = tmp; }
void	swap2b (int *a, int *b)	{ asm ("move 0,%0\n\t"
				       "exch 0,%1\n\t"
				       "movem 0,%0"
				       : "=rm" (*a), "=rm" (*b)
				       : "0" (*a), "1" (*b)
				       : "0"); }

void	call1 (int a)		{ add9 (); }
int	call2 (int a)		{ return add4 (a); }
int	call3 (int a,
	       int (*b) (int))	{ return b (a); }
int	call4 (int a)		{ return ((int (*) (int))420) (a); }
int	call5 (int a, int b)	{ return add1 (b, a); }
int	call6 (int a, int b)	{ return add1 (a + 1, b); }
int	call7 (int a, int b)	{ return add1 (a, b + 1); }
int	call8 (int a, int b)	{ return add1 (a, b) + 1; }
int	call9 (int a, int b)	{ return add1 (b + a, a * b) + a + b; }
void	call10 (void)		{ extern void foo (int x, ...);
				  foo (17, 42, 100, 74, 64); }
void	call11 (int a, int b,
		int c, int d,
		int e)		{ extern int foo (int x, ...);
				  foo (a, b, c, d, e); }
void	call12 (int a, int b,
		int c, int d,
		int e, int f)	{ extern int foo (int x, ...);
				  foo (a, b, c, d, e, f); }
void	call13 (int a, int b,
		int c, int d,
		int e, int f,
		int g)		{ extern int foo (int x, ...);
				  foo (a, b, c, d, e, f, g); }
int	call14 (void)		{ return add11 (1, 2, 3, 4, 5); }
int	call15 (void)		{ return add12 (1, 2, 3, 4, 5, 6); }

int	varargs1 (int a, ...)	{ return 0; }
int	varargs2 (int a, int b,
		  ...)		{ return 0; }
int	varargs3 (int a, int b,
		  int c, ...)	{ return 0; }
int	varargs4 (int a, int b,
		  int c, int d,
		  ...)		{ return 0; }
int	varargs5 (int a, int b,
		  int c, int d,
		  int e, ...)	{ return 0; }

int	varargs6 (void)		{ return varargs1 (1, 2, 3); }
int	varargs7 (void)		{ return varargs1 (1, 2, 3, 4); }
int	varargs8 (void)		{ return varargs1 (1, 2, 3, 4, 5); }
int	varargs9 (void)		{ return varargs1 (1, 2, 3, 4, 5, 6); }
int	varargs10 (void)	{ return varargs1 (1, 2, 3, 4, 5, 6, 7); }

one_word	structret1 (void) { one_word x;
				    x.a = 1; 
				    return x; }
two_words	structret2 (void) { two_words x;
				    x.a = 1;
				    x.b = 2;
				    return x; }
three_words	structret3 (void) { three_words x;
				    x.a = 1;
				    x.b = 2;
				    x.c = 3;
				    return x; }
four_words	structret4 (void) { four_words x;
				    x.a = 1;
				    x.b = 2;
				    x.c = 3;
				    x.d = 4;
				    return x; }

int lsh1 (int a)	{ return a << 7; }
int lsh2 (int a, int b)	{ return a << b; }
int lsh3 (int a, int b)	{ return a << (b + 7); }

unsigned int lsh4 (unsigned int a)		{ return a >> 7; }
unsigned int lsh5 (unsigned int a, int b)	{ return a >> b; }
unsigned int lsh6 (unsigned int a, int b)	{ return a >> (b + 7); }
unsigned int lsh7 (unsigned int a, int b)	{ return a >> -(b + 7); }
unsigned int lsh8 (unsigned int a, int b)	{ return a >> (7 - b); }

int ash1 (int a)	{ return a >> 7; }
int ash2 (int a, int b)	{ return a >> b; }
int ash3 (int a, int b)	{ return a >> (7 - b); }
int ash4 (int a, int b)	{ return a >> -(7 + b); }

uint rot1 (uint a)		{ return (a << 1) | (a >> 35); }
uint rot2 (uint a)		{ return (a >> 1) | (a << 35); }
uint rot3 (uint a, int b)	{ return (a << b) | (a >> (36 - b)); }
uint rot4 (uint a, int b)	{ return (a >> b) | (a << (36 - b)); }

//int sextc (schar a)	{ return (int)a; }
//int sexts (short a)	{ return (int)a; }
uint zextc (uchar a)	{ return (uint)a; }
//uint zexts (short a)	{ return (uint)a; }
//char truncc (int a)	{ return (char)a; }
//short truncs (int a)	{ return (short)a; }

uchar ldb1 (uchar *a)		{ return *a; }
uchar ldb1b (uchar *a)		{ return *++a; }	/* !!! ADDI<->IBP */
uchar ldb2a (void)		{ return *(char *)4; }
uchar ldb2b (void)		{ return *(char *)5; }
uchar ldb2c (void)		{ return *(char *)6; }
uchar ldb2d (void)		{ return *(char *)7; }
uchar ldb2e (void)		{ return *(char *)8; }
void dpb1 (uchar *a, uchar b)	{ *a = b; }
void dpb2 (uchar a)		{ extern uchar foo;
				  foo = a; }
void dpb3 (uchar a)		{ static uchar foo;
				  foo = a; }

void	if0 (int a)		{ if (a) add0 (); }
void	if1 (int a)		{ extern void foo (void);
				  if (a) foo (); }
void	if2 (int a, int b)	{ extern void foo (void);
				  if (a == b) foo (); }

//schar addchar1 (schar a, schar b)	{ return a + b; }
uchar addchar2 (uchar a, uchar b)	{ return a + b; }
//ushort addushort (ushort a, ushort b)	{ return a + b; }

extern void *alloca (long);
extern void frob_ptr (void *x);
void	alloca1 (void)		{ frob_ptr (alloca (42)); }
void	alloca2 (int x)		{ frob_ptr (alloca (x)); }

void	jump1 (void *a)		{ goto *a; }
void	jump2 (int a)
{
  extern void foo (void);
  extern void bar (void);
  void *x;
  if (a)
    x = &&l1;
  else
    x = &&l2;
  goto *x;
 l1:
  foo ();
 l2:
  bar ();
}

float	floatret0 (void)	{ return (float)0.0; }
float	floatret1 (void)	{ return (float)1.0; }
float	floatret2 (void)	{ return (float)2.0; }
/*float	floatret31 (void)	{ return (float)3.1; }*/
double	doubleret (void)	{ return (double)1.0; }

int	abs1 (int a)		{ return __builtin_abs (a); }
