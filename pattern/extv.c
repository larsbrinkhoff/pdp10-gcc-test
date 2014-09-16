#include "insns.h"

struct S
{
  char6    x6_0,  x6_1, x6_2, x6_3, x6_4, x6_5;
  char7    x7_0,  x7_1, x7_2, x7_3, x7_4;
  char8    x8_0,  x8_1, x8_2, x8_3;
  char9    x9_0,  x9_1, x9_2, x9_3;
  short16 x16_0, x16_1;
  short18 x18_0, x18_1;
  int32   x32_0;
} s;

char6   x6[12];
char7   x7[10];
char8   x8[8];
char9   x9[8];
short16 x16[4];
short18 x18[4];
int32   x32[2];

#define LOAD(len, pos) \
static int load##len##_##pos (void) { return s.x##len##_##pos; } \
static int larr##len##_##pos (void) { return x##len[(36 / len) + pos]; } \
static int lptr##len##_##pos (struct S *s) { return s->x##len##_##pos; }

#if 1
LOAD ( 6, 0) LOAD ( 6, 1) LOAD (6, 2) LOAD (6, 3) LOAD (6, 4) LOAD (6, 5)
LOAD ( 7, 0) LOAD ( 7, 1) LOAD (7, 2) LOAD (7, 3) LOAD (7, 4)
LOAD ( 8, 0) LOAD ( 8, 1) LOAD (8, 2) LOAD (8, 3)
LOAD ( 9, 0) LOAD ( 9, 1) LOAD (9, 2) LOAD (9, 3)
LOAD (16, 0) LOAD (16, 1)
LOAD (18, 0) LOAD (18, 1)
LOAD (32, 0)
#else
static int load9_1 (void) { return s.x9_1; }
#endif
