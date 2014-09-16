#define HRRO(register, string)		\
do {					\
  if (__builtin_constant_p (string))	\
    asm ("HRROI %0,%1"			\
	 : "=r" (register)		\
	 : "g" (string));		\
  else					\
    asm ("HRRO %0,%1"			\
	 : "=r" (register)		\
	 : "rm" (string));		\
} while (0)

#define PSOUT(string)		\
do {				\
  register int arg1 asm("1");	\
  HRRO (arg1, string);		\
  asm ("PSOUT"			\
       : : "r" (arg1));		\
} while (0)

static void printoct (int x)
{
  int i;

  for (i = 0; i < 12; i++)
    {
      int y = (x >> (3 * (11 - i))) & 7;
      if (0)
	;
#define X(x) else if (y == x) PSOUT (#x)
	X(0);
        X(1);
	X(2);
	X(3);
	X(4);
	X(5);
	X(6);
	X(7);
    }
}

union
{
  long long x;
  struct { int a; int b; } y;
} foo;

int
main (int argc, char **argv)
{
  foo.x = 042;
  printoct (foo.y.a);
  PSOUT (" ");
  printoct (foo.y.b);
  PSOUT ("\r\n");
  return 0;
}
