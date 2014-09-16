#include "insns.h"

/* This test case tests storing of left-justified 32-bit fields.
   Under some circumstances, the store can be made with an LSH and a
   MOVEM, discarding the rightmost four bits.  Otherwise, a DPB
   instruction is used.  */

#define BITS 32

/* An int32 is always followed by four junk bits.  */
struct A
{
  int32 x;
  int y;
};

/* The rightmost bits in the first word are explicitly declared to be
   junk.  */
struct B
{
  int x : BITS;
  int : 36 - BITS;
  int y : 1;
};

/* The rightmost bits in the first word fall into the gap between x
   and y.  */
struct C
{
  int x : BITS;
  int y;
};

/* Nothing is declared after x, so the last bits in the word should be
   treated as junk.  */
struct D
{
  int x : BITS;
};

/* The last bits are explicitly declared with a name, and therefore
   can't be considered to be junk.  */
struct E
{
  int x : BITS;
  int y : 36 - BITS;
};

#define STORE(X) static void store_##X (struct X *x, int y) { x->x = y; }

STORE (A)
STORE (B)
STORE (C)
STORE (D)
STORE (E)
