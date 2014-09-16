//#define INT int
#define INT unsigned int

typedef INT char6 __attribute__ ((size (6)));
typedef INT char7 __attribute__ ((size (7)));
typedef INT char8 __attribute__ ((size (8)));
typedef INT char9 __attribute__ ((size (9)));
typedef INT short16 __attribute__ ((size (16)));
typedef INT short18 __attribute__ ((size (18)));
typedef INT int32 __attribute__ ((size (32)));
typedef INT int36;

static char6 a[12];
static char7 b[10];
static char8 c[8];
static char9 d[8];
static short16 e[4];
static short18 f[4];
static int32 g[2];
static int36 h[2];

static INT add_6 (void)
{
  return
    a[0] + a[1] + a[2] + a[3] + a[4] + a[5] +
    a[6] + a[7] + a[8] + a[9] + a[10] + a[11];
}

static INT add_7 (void)
{
  return b[0] + b[1] + b[2] + b[3] + b[4] + b[5] + b[6] + b[7] + b[8] + b[9];
}

static INT add_8 (void)
{
  return c[0] + c[1] + c[2] + c[3] + c[4] + c[5] + c[6] + c[7];
}

static INT add_9 (void)
{
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
}

static INT add_16 (void)
{
  return e[0] + e[1] + e[2] + e[3];
}

static INT add_18 (void)
{
  return f[0] + f[1] + f[2] + f[3];
}

static INT add_32 (void)
{
  return g[0] + g[1];
}

static INT add_36 (void)
{
  return h[0] + h[1];
}
