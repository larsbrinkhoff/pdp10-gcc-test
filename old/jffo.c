#if 1
int
JFFO (int a)
{
  union { long long x; int y[2]; } z;
  z.y[0] = a;

  __builtin_jffo (z.x, &&nonzero);
  return -1;
 nonzero:
  return z.y[1];
}
#endif

#if 1
int
FFS (int a)
{
  return __builtin_ffs (a);
}
#endif
