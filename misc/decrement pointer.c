#include "insns.h"

#define DEC(TYPE, N) \
static TYPE * dec_ ## TYPE ## _ ## N (TYPE *AC) { return AC - N; }

#define DEC_1_9(TYPE)	\
DEC (TYPE, 1)		\
DEC (TYPE, 2)		\
DEC (TYPE, 3)		\
DEC (TYPE, 4)		\
DEC (TYPE, 5)		\
DEC (TYPE, 6)		\
DEC (TYPE, 7)		\
DEC (TYPE, 8)		\
DEC (TYPE, 9)

typedef struct { Qint x[3]; } __attribute__ ((packed)) Qint3;
typedef struct { Hint x[3]; } __attribute__ ((packed)) Hint3;
typedef struct { Sint x[3]; } Sint3;

DEC_1_9 (Qint)
DEC_1_9 (Hint)
DEC_1_9 (Sint)
DEC_1_9 (Dint)
DEC_1_9 (Qint3)
DEC_1_9 (Hint3)
DEC_1_9 (Sint3)
