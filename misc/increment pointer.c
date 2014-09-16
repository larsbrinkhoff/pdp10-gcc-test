#include "insns.h"

#define INC(TYPE, N) \
static TYPE * inc_ ## TYPE ## _ ## N (TYPE *AC) { return AC + N; }

#define INC_1_9(TYPE)	\
INC (TYPE, 1)		\
INC (TYPE, 2)		\
INC (TYPE, 3)		\
INC (TYPE, 4)		\
INC (TYPE, 5)		\
INC (TYPE, 6)		\
INC (TYPE, 7)		\
INC (TYPE, 8)		\
INC (TYPE, 9)

typedef struct { Qint x[3]; } __attribute__ ((packed)) Qint3;
typedef struct { Hint x[3]; } __attribute__ ((packed)) Hint3;
typedef struct { Sint x[3]; } Sint3;

INC_1_9 (Qint)
INC_1_9 (Hint)
INC_1_9 (Sint)
INC_1_9 (Dint)
INC_1_9 (Qint3)
INC_1_9 (Hint3)
INC_1_9 (Sint3)
