#include "insns.h"

struct S
{
  unsigned : 8;
  unsigned a : 8;
};

static uSint ldb1 (uQint    *AC) { return *AC; }
static uSint ldb2 (uHint    *AC) { return *AC; }
static uSint ldb3 (struct S  AC) { return  AC.a; }
