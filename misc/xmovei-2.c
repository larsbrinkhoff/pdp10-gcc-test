/* Check that the stack address is calculated twice, instead of just
   once and saved in a callee-saved register.

   Right:

	foo:
		xmovei 17,3(17)
		xmovei 1,-2(17)
		pushj 17,bar
		xmovei 1,-2(17)
		jrst baz

   Wrong:

	foo:
		xmovei 17,4(17)
		movem 5,-3(17)
		xmovei 5,-2(17)
		move 1,5
		pushj 17,bar
		move 1,5
		jrst baz
*/

struct x
{
  int x[3];
};

static int foo (void)
{
  extern void bar (struct x *);
  extern void baz (struct x *) __attribute__ ((noreturn));
  struct x x;
  bar (&x);
  baz (&x);
}
