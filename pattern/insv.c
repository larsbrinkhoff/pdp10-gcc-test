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

#define STORE(len, pos) \
static void store##len##_##pos (int x) { s.x##len##_##pos = x; } \
static void sarr##len##_##pos (int x) { x##len[(36 / len) + pos] = x; } \
static void sptr##len##_##pos (struct S *s, int x) { s->x##len##_##pos = x; }

STORE ( 6, 0) STORE ( 6, 1) STORE (6, 2) STORE (6, 3) STORE (6, 4) STORE (6, 5)
STORE ( 7, 0) STORE ( 7, 1) STORE (7, 2) STORE (7, 3) STORE (7, 4)
STORE ( 8, 0) STORE ( 8, 1) STORE (8, 2) STORE (8, 3)
STORE ( 9, 0) STORE ( 9, 1) STORE (9, 2) STORE (9, 3)
STORE (16, 0) STORE (16, 1)
STORE (18, 0) STORE (18, 1)
STORE (32, 0)
