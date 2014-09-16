#if 0
struct {
    char a,b,c,d;
    short e,f;
    long g;
} n;
#else
#define INT unsigned int
struct {
  INT a : 8;
  INT b : 8;
  INT c : 8;
  INT d : 8;
  INT : 4;
  INT e : 16;
  INT f : 16;
  INT : 4;
  INT g : 32;
  INT : 4;
} n;
#endif

main()
{
    char x;
    unsigned char y;
    short z;

    n.a = -1;
    n.b = -1;

    z = sizeof(n);
    if (z !=  12) exit();
    z = sizeof(y);
    if (z !=   1) exit();
    z = sizeof(z);
    if (z !=   2) exit();

    x = n.a;
    y = n.b;

    if (x == 255) x++;
    if (x ==   0) x--;
    if (y == 255) y++;
    if (y ==   0) y--;
    if (x ==   y) z = 1; else z = 2;

    {
      extern void foo ();
      foo (x, y, z);
    }
}

#if 0
struct
{
  unsigned int field1 : 10;
  unsigned int field2 : 5;
} x;

void foo (void)
{
  x.field1 += x.field2;
}
#else
struct
{
  char a, b, c;
} x;

char *
foo (void)
{
  return &x.b;
}
#endif

int fun (unsigned char *ptr)
{
  if (*ptr > 1000) return 1; else return 0;
}

int bar (void)
{
  signed char c = -1;
  if (c == 511)
    return 1;
  else
    return 0;
}
