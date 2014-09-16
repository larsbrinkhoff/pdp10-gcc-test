typedef long long longlong;

#define WHILE(TYPE)				\
extern void clobber_##TYPE (TYPE);		\
void						\
while_##TYPE (TYPE *a)				\
{						\
  while (*a)					\
    clobber_##TYPE (*a++);			\
}

#define ADD(TYPE, N)				\
TYPE *						\
add##N##_##TYPE (TYPE *a)			\
{						\
  return a + N;					\
}

#define BINOP(TYPE, NAME, OP)			\
TYPE *						\
NAME##_##TYPE (int b, TYPE *a)			\
{						\
  return a OP b;				\
}

#define DIFF(TYPE)				\
int						\
diff_##TYPE (TYPE *a, TYPE *b)			\
{						\
  return a - b;					\
}

#if 0
WHILE(char)
WHILE(short)
WHILE(int)
WHILE(longlong)
#endif

#if 0
ADD(char, 1);
ADD(short, 1);
ADD(int, 1);
ADD(longlong, 1);
#endif

#if 0
static char **A;
static short **B;
static int **C;
static long long **D;

void add1_charp1 (char **a) { (*a)++; }
void add1_charp2 (void) { (*A)++; }
void addn_charp3 (int n) { *A += n; }

void add1_shortp1 (short **a) { (*a)++; }
void add1_shortp2 (void) { (*B)++; }
void addn_shortp3 (int n) { *B += n; }

void add1_intp1 (int **a) { (*a)++; }
void add1_intp2 (void) { (*C)++; }
void addn_intp3 (int n) { *C += n; }

void add1_longlongp1 (long long **a) { (*a)++; }
void add1_longlongp2 (void) { (*D)++; }
void addn_longlongp3 (int n) { *D += n; }

//void add1_intp2 (void) { (*(int **)4)++; }
#endif

#if 0
BINOP (char, plus, +)
BINOP (short, plus, +)
BINOP (int, plus, +)
BINOP (longlong, plus, +)
#endif

#if 0
BINOP (char, minus, -)
BINOP (short, minus, -)
BINOP (int, minus, -)
BINOP (longlong, minus, -)
#endif

#if 0
DIFF (char);
DIFF (short);
#endif
#if 0
DIFF (int);
DIFF (longlong);
#endif

#if 1
#define PACKED __attribute__ ((packed))
#else
#define PACKED
#endif

struct intaligned
{
  int a;
  short b;
  char c;
};

struct shortaligned
{
  int a;
  short b;
} PACKED;

struct charaligned
{
  char a;
  char b;
  char c;
  char d;
} PACKED;

struct x
{
  char a;
  char b;
  char c;
  struct
  {
    char x;
    char y;
    char z;
  } d;
  char e;
  char f;
};

#if 0
int sizeof_int (void) { return sizeof (int); }
int sizeof_char (void) { return sizeof (char); }
int sizeof_intaligned (void) { return sizeof (struct intaligned); }
int sizeof_shortaligned (void) { return sizeof (struct shortaligned); }
int sizeof_charaligned (void) { return sizeof (struct charaligned); }

struct intaligned * plus_intaligned (struct intaligned *x) { return x + 1; }
struct shortaligned * plus_shortaligned (struct shortaligned *x) { return x + 1; }
struct charaligned * plus_charaligned (struct charaligned *x) { return x + 1; }
struct x * plus_x (struct x *x) { return x + 1; }
#endif

#if 1
struct y
{
  int a;
  char *b;
  short *c;
  int *d;
  long long *e;
};

void blah (struct y *y)
{
  y->b++;
  y->c++;
  y->d++;
  y->e++;
}
#endif

#if 0
struct z
{
  char a;
  char *b;
  short *c;
  int *d;
  long long *e;
};

void bluh (struct z *z)
{
  z->b++;
  z->c++;
  z->d++;
  z->e++;
}
#endif

#if 0
struct w
{
  int a : 8;
  int b : 8;
  int c : 8;
  int d : 8;
  int e : 8;
};

void bluh (struct z *z)
{
  z->a++;
  z->b++;
  z->c++;
  z->d++;
  z->e++;
}
#endif
