extern void foo (int);
extern int bar;

void
decrement_and_branch_until_zero (int x)
{
  int i;

  for (i = 0; i < 100; i++)
    foo (x);
}

#define SOJ(name, start, op) \
 void soj##name (void) { int i;  for (i = start; i op 0; i--) foo (i); }

SOJ (g, 100, >)
SOJ (l, -100, <)
SOJ (ge, 100, >=)
SOJ (le, -100, <=)
SOJ (e, 100, ==)
SOJ (n, bar, !=)

#define AOJ(name, start, op) \
 void aoj##name (void) { int i;  for (i = start; i op 0; i++) foo (i); }

AOJ (l, -100, <)
AOJ (le, -100, <=)
AOJ (n, bar, !=)
AOJ (e, -100, ==)
AOJ (g, 100, >)
AOJ (ge, 100, >=)

#define SOJ2(name, op) \
 void soj2##name (int i) { if (--i op 0) goto x; return; x: foo (i); }

SOJ2 (g, >)
SOJ2 (l, <)
SOJ2 (ge, >=)
SOJ2 (le, <=)
SOJ2 (e, ==)
SOJ2 (n, !=)

#define AOJ2(name, op) \
 void aoj2##name (int i) { if (++i op 0) goto x; return; x: foo (i); }

AOJ2 (g, >)
AOJ2 (l, <)
AOJ2 (ge, >=)
AOJ2 (le, <=)
AOJ2 (e, ==)
AOJ2 (n, !=)
