extern void *alloca (long);
extern void frob_ptr (void *x);

#if 1
void alloca1 (void)
{
  void *p = alloca (42);
  frob_ptr (p);
}
#endif

#if 1
void alloca2 (int x)
{
  void *p = alloca (x);
  frob_ptr (p);
}
#endif
