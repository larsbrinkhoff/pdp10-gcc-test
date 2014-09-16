struct x
{
  int a : 7;
  int b : 7;
  int c : 7;
  int d : 7;
  int e : 16;
} x;

void foo (void)
{
  x.a = -1;
  x.b = -1;
  x.c = -1;
  x.d = -1;
  x.e = -1;
}

int not (int x)
{
  return ~x;
}

union u
{
  struct x x;
  int y[2];
};

void
main (void)
{
  union u u;
  u.y[0] = 0;
  u.y[1] = 0;
  u.x.a = -1;
  u.x.e = -1;
  printf ("%08x %08x\n", u.y[0], u.y[1]);
}
