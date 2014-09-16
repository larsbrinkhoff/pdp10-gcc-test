struct x
{
  int a[0100];
};

struct x X;

#if 1
void cpy1 (struct x *a, struct x *b)
{
  *a = *b;
};

void cpy1b (struct x *b)
{
  X = *b;
};

void cpy2 (int *a, int *b)
{
  __builtin_memcpy (a, b, 40);
}

void cpy3b (void)
{
  __builtin_memcpy ((int *)040, (int *)04000, 0400);
}

void cpy3 (int *a, int *b, int n)
{
  __builtin_memcpy (a, b, n);
}

void cpy4 (char *a, char *b, int n)
{
  __builtin_memcpy (a, b, n);
}
#endif

#if 1
void clr1 (struct x *x)
{
  __builtin_memset (x, 0, sizeof *x);
}
#endif

void clr1b (void)
{
  __builtin_memset (&X, 0, sizeof X);
}

#if 1
void clr2 (int *a)
{
  __builtin_memset (a, 0, 40);
}
#endif
