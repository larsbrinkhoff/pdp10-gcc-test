typedef int Qint __attribute__ ((mode (QI)));
typedef int Hint __attribute__ ((mode (HI)));
typedef int Sint __attribute__ ((mode (SI)));
typedef int Dint __attribute__ ((mode (DI)));
typedef int Tint __attribute__ ((mode (TI)));
typedef   signed sQint __attribute__ ((mode (QI)));
typedef unsigned uQint __attribute__ ((mode (QI)));
typedef unsigned uHint __attribute__ ((mode (HI)));
typedef unsigned uSint __attribute__ ((mode (SI)));
typedef unsigned uDint __attribute__ ((mode (DI)));
typedef unsigned uTint __attribute__ ((mode (TI)));
typedef float Sfloat __attribute__ ((mode (SF)));
typedef float Dfloat __attribute__ ((mode (DF)));

typedef int char6 __attribute__ ((size (6)));
typedef int int6  __attribute__ ((size (6)));
typedef int char7 __attribute__ ((size (7)));
typedef int int7  __attribute__ ((size (7)));
typedef int char8 __attribute__ ((size (8)));
typedef int int8  __attribute__ ((size (8)));
typedef int char9 __attribute__ ((size (9)));
typedef int int9  __attribute__ ((size (9)));
typedef int short16 __attribute__ ((size (16)));
typedef int int16   __attribute__ ((size (16)));
typedef int short18 __attribute__ ((size (18)));
typedef int int18   __attribute__ ((size (18)));
typedef int int32 __attribute__ ((size (32)));
typedef int int36;
typedef long long int72;
typedef unsigned uchar6 __attribute__ ((size (6)));
typedef unsigned uchar7 __attribute__ ((size (7)));
typedef unsigned uchar8 __attribute__ ((size (8)));
typedef unsigned uchar9 __attribute__ ((size (9)));
typedef unsigned ushort16 __attribute__ ((size (16)));
typedef unsigned ushort18 __attribute__ ((size (18)));
typedef unsigned uint32 __attribute__ ((size (32)));
typedef unsigned uint36;
typedef unsigned long long uint72;

typedef struct { Hint l; Hint r; } H2int;
typedef struct { uHint l; uHint r; } uH2int;

#define ROTL(X, N) (((X) << (N)) + ((X) >> (36 - (N))))
#define ROTR(X, N) (((X) >> (N)) + ((X) << (36 - (N))))

#define ROTCL(X, N) (((X) << (N)) + ((X) >> (72 - (N))))
#define ROTCR(X, N) (((X) >> (N)) + ((X) << (72 - (N))))

#define SWAP(X) (((X) << 18) | ((X) >> 18))

#define MUL(X, Y) ((Dint)(X) * (Dint)(Y))
#define smul_highpart(X, Y) (MUL ((X), (Y)) >> 35)

#define BOTH(NAME, OP) \
  BOTH1 (Sint, NAME, OP)
#define BOTH1(T, NAME, OP) \
  BOTH2 (T, NAME##a, OP, a, *b)		BOTH2 (T, NAME##b, OP, *b, a)
#define BOTH2(T, NAME, OP, A, B) \
  BOTH3 (T, NAME##a, OP, A, B, a)	BOTH3 (T, NAME##b, OP, A, B, *b)
#define BOTH3(T, NAME, OP, A, B, C)		\
static T NAME (T a, T *b)			\
{						\
  A = OP;					\
  B = A;					\
  return C;					\
}

#define likely(x) (__builtin_expect ((x), 1))
#define unlikely(x) (__builtin_expect ((x), 0))
