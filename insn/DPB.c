#include "insns.h"

struct S
{
  unsigned x : 8; /* Dummy filler.  */
  unsigned a : 8;
};

static void dpb1 (Qint AC, Qint *X) { *X = AC; }
static void dpb2 (Hint AC, Hint *X) { *X = AC; }
static struct S dpb3 (struct S AC, Sint Y) { AC.a = Y; return AC; }
