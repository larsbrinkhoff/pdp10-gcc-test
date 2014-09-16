#define EOF (-1)
#define NULL 0

int		getchar (void);
int		putchar (int c);
char *		gets (char *s);
static inline const char *
		ADJBP (int n, const char *s);
int		puts (const char *s);
void		puto (unsigned x);
void		__main (void);
void		_exit (int code) __attribute__ ((noreturn));
void		exit (int code) __attribute__ ((noreturn));

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

int errno;

static inline const char *
ADJBP (int n, const char *s)
{
  const char *t;
  asm ("ADJBP %0,%2"
       : "=r" (t)
       : "0" (n), "g" (s));
  return t;
}

#define LDB(c, s)		\
  asm volatile ("LDB %0,%1"	\
		: "=r" (c)	\
		: "g" (s))

#define DPB(c, s)		\
  asm volatile ("DPB %0,%1"	\
		:		\
		: "r" (c), "g" (s))

#define ILDB(c, s)			\
  asm volatile ("ILDB %0,%1"		\
		: "=r" (c), "=g" (s)	\
		: "1" (s))

#define IDPB(c, s)		\
  asm volatile ("IDPB %1,%0"	\
		: "=g" (s)	\
		: "r" (c), "0" (s))

char *
gets (char *s)
{
  char *t = s;
  int c;

#define BREAK(c) (c == EOF || c == '\r' || c = '\n')

  c = getchar ();
  if (c == EOF)
    return NULL;
  else if (c == '\n')
    {
      DPB (0, s);
      return t;
    }
  else
    DPB (c, s);

  while ((c = getchar ()) != EOF && c != '\n')
    IDPB (c, s);

  IDPB (0, s);
  return t;
}

int
puts (const char *s)
{
  int c;

  LDB (c, s);
  while (c != 0)
    {
      putchar (c);
      ILDB (c, s);
    }

  return 0;
}

void
puto (unsigned x)
{
  if (x == 0)
    putchar ('0');
  else
    {
      puto (x >> 3);
      putchar ('0' + (x & 7));
    }
}

int
getchar (void)
{
  register int c asm("1");
  asm ("PBIN"
       : "=r" (c));
  if (c != '\r')
    return c;

  asm volatile ("PBIN"
		: "=r" (c));
  return '\n';
}

asm ("\nCRLF:\tASCIZ /\n/\n");

int
putchar (int c)
{
  register int arg1 asm("1");

  if (c != '\n')
    {
      arg1 = c;
      asm ("PBOUT"
	   : /* no outputs */
	   : "r" (arg1));
      return 0;
    }

  asm ("HRROI 1,CRLF\n\t"
       "PSOUT");
  return 0;
}

void
__main (void)
{
}

void
exit (int code)
{
  _exit (code);
}

void
_exit (int code)
{
  for (;;)
    asm ("HALTF"
	 :
	 : "r" (code));
}
