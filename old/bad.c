long long dadd1b (int x,
		  long long a,
		  long long b)	{ return a + b; }
long long dadd1c (void)		{ return dadd1b (1, 2LL, 3LL); }

typedef struct { int a; int b; int c; int d; int e; int f; int g; } seven;
int foo (int a, seven b) { return a + b.a + b.b + b.c + b.d + b.e + b.f + b.g;}
void bar (void) { foo (1, (seven){ 2, 3, 4, 5, 6, 7, 8 } ); }

typedef struct { char a; char b; char c; char d; } fourc;
char fooc (char a, fourc b) { return a + b.a + b.b + b.c + b.d; }
#if 0
void barc (void) { fooc (1, (fourc){ 2, 3, 4, 5 } ); }
#endif

extern long long dadd2 (long long, long long, long long);
long long dadd2b (long long a,
		  long long b,
		  long long c)	{ return dadd2 (a, b, c); }
#if 0
long long dadd3c (long long a,
		  long long b,
		  long long c,
		  long long d)	{ extern long long foo ();
				  return foo (a, b, c, d); }
#endif

extern void *alloca (long);
extern void frob_ptr (void *x);
void	alloca1 (void)		{ frob_ptr (alloca (42)); }
void	alloca2 (int x)		{ frob_ptr (alloca (x)); }
