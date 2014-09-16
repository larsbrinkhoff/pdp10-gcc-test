extern short h[5];

#define H2(n, m) short h##n (void) { return h[m]; }
#define H(n) H2 (n, n)

H2(_3, -3)
H2(_2, -2)
H2(_1, -1)
H(0)
H(1)
H(2)
H(3)
H(4)

struct S
{
  int a;
  short b;
  unsigned short c;
};

	 short foo (struct S *s) { return s->b; }
unsigned short bar (struct S *s) { return s->c; }

typedef union
{
  int word;
  struct { short left, right; } half;
} signed_reg;

typedef union
{
  int word;
  struct { short left, right; } half;
} unsigned_reg;

short
half1 (signed_reg a)
{
  return a.half.right;
}

short
half2 (signed_reg a)
{
  return a.half.left;
}

unsigned short
half3 (unsigned_reg a)
{
  return a.half.right;
}

unsigned short
half4 (unsigned_reg a)
{
  return a.half.left;
}

signed_reg
half5 (signed_reg a)
{
  a.half.right = 1;
  return a;
}

signed_reg
half6 (signed_reg a)
{
  a.half.left = 1;
  return a;
}
