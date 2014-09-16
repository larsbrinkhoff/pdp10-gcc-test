#include "insns.h"

struct S
{
  uchar6    x6_0,  x6_1, x6_2, x6_3, x6_4, x6_5;
  uchar7    x7_0,  x7_1, x7_2, x7_3, x7_4;
  uchar8    x8_0,  x8_1, x8_2, x8_3;
  uchar9    x9_0,  x9_1, x9_2, x9_3;
  ushort16 x16_0, x16_1;
  ushort18 x18_0, x18_1;
  uint32   x32_0;
} s;

uchar6   x6[12];
uchar7   x7[10];
uchar8   x8[8];
uchar9   x9[8];
ushort16 x16[4];
ushort18 x18[4];
uint32   x32[2];

#define LOAD(len, pos)							 \
static int load##len##_##pos (void) { return s.x##len##_##pos; }	 \
static int larr##len##_##pos (void) { return x##len[(36 / len) + pos]; } \
static int lptr##len##_##pos (struct S *s) { return s->x##len##_##pos; }

LOAD ( 6, 0) LOAD ( 6, 1) LOAD (6, 2) LOAD (6, 3) LOAD (6, 4) LOAD (6, 5)
LOAD ( 7, 0) LOAD ( 7, 1) LOAD (7, 2) LOAD (7, 3) LOAD (7, 4)
LOAD ( 8, 0) LOAD ( 8, 1) LOAD (8, 2) LOAD (8, 3)
LOAD ( 9, 0) LOAD ( 9, 1) LOAD (9, 2) LOAD (9, 3)
LOAD (16, 0) LOAD (16, 1)
LOAD (18, 0) LOAD (18, 1)
LOAD (32, 0)
