int
foo1 (int a)
{
  a |= 01234567;
  return a;
}

int
foo2 (int a, int b)
{
  a |= 01234567;
  b |= 01234567;
  return a + b;
}

int
foo3 (int a, int b, int c)
{
  a |= 01234567;
  b |= 01234567;
  c |= 01234567;
  return a + b + c;
}


int
foo4 (int a, int b, int c, int d)
{
  a |= 01234567;
  b |= 01234567;
  c |= 01234567;
  d |= 01234567;
  return a + b + c + d;
}

int
bar1 (int a)
{
  a |= 0123456;
  return a;
}

int
bar2 (int a, int b)
{
  a |= 0123456;
  b |= 0123456;
  return a + b;
}
