#include "insns.h"

/* Test that loading and storing from/to scalars smaller than a word
   use the right instructions.  Also test pointers.  */

/* This tests a variable of type T as a static variable.  */
#define LD_STATIC(T) static T ld_static_##T (void) { return a_##T; }
#define ST_STATIC(T) static void st_static_##T (T x) { a_##T = x; }
#define PTR_STATIC(T) static T * ptr_static_##T (void) { return &a_##T; }
#define STATIC(T) static T a_##T; LD_STATIC (T) ST_STATIC (T) PTR_STATIC(T)

/* This tests a variable of type T on the stack.  */
#define LD_STACK(T) static T ld_stack_##T (void) { volatile T x; return x; }
#define ST_STACK(T) static void st_stack_##T (T x) { volatile T y = x; }
#define PTR_STACK(T) \
  static void ptr_stack_##T (void) { T x; extern void foo (T *); foo (&x); }
#define STACK(T) LD_STACK (T) ST_STACK (T) PTR_STACK(T)

/* Apply test F on all types smaller than a word.  */
#define TEST(F) F (sQint) F (uQint) F (Hint) F (uHint)

TEST (STATIC)
TEST (STACK)

