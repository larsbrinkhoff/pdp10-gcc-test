#include "insns.h"

#define TEST(T, NAME, OP) static T NAME (T x) { return OP; }
#define TEST2(T, SNAME, UNAME, OP) TEST (T, SNAME, OP) TEST (u##T, UNAME, OP)

/* Single-word shifts.  */
TEST2 (Sint, ashl,  lshl,  x << 1)
TEST2 (Sint, smul,  umul,  x * 2)
TEST2 (Sint, ashr,  lshr,  x >> 1)
TEST2 (Sint, sdiv2, udiv2, x / 2)
TEST2 (Sint, sdiv4, udiv4, x / 4)

/* Double-word shifts.  */
TEST2 (Dint, dashl,  dlshl,  x << 1)
TEST2 (Dint, dsmul,  dumul,  x * 2)
TEST2 (Dint, dashr,  dlshr,  x >> 1)
TEST2 (Dint, dsdiv2, dudiv2, x / 2)
TEST2 (Dint, dsdiv4, dudiv4, x / 4)
