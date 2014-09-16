extern void foo (int);
extern int bar[100];

int
aobjn (void)
{
  int i, x;

  x = 0;
  for (i = 0; i < 100; i++)
    x += bar[i];

  return x;
}
