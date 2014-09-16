#include "insns.h"

/* This test case calls a function with five words of arguments.
   Since only four words are passed in registers, the fifth word is
   passed on stack, forcing an XMOVEI.  */
static void
xmovei1 (Sint AC1, Sint AC2, Sint AC3, Sint AC4)
{
  extern void foo (Sint, Sint, Sint, Sint, Sint);
  foo (AC1, AC2, AC3, AC4, 0);
}

/* This test case passed the address of a local variable to a
   function.  This forces the variable to reside in the stack frame,
   which is allocated with XMOVEI.  */
static void
xmovei2 (void)
{
  extern void foo (Sint *);
  Sint x;
  foo (&x);
}

/* Calling clobber() clobbers the value in ACs 1 and 2, so they are
   saved in ACs 5 and 6.  The previous contents of ACs 5 and 6 are
   saved in the stack frame, which is allocated with XMOVEI.  */
static Dint
xmovei3 (Dint AC)
{
  extern void clobber (void);
  clobber ();
  return AC;
}
