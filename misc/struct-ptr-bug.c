#define POINTER(x)				\
  static void x##p (void)			\
  {						\
    extern void foo (struct x *);		\
    struct x p;					\
    foo (&p);					\
  }
#define COMPONENT(x, y)				\
  static int x##y (struct x *p)			\
  {						\
    return p->y;				\
  }

struct A { int a; short b; };
POINTER (A);
COMPONENT (A, a)
COMPONENT (A, b)

struct B { int a; char b; };
POINTER (B);
COMPONENT (B, a)
COMPONENT (B, b)

struct C { short a; char b; };
POINTER (C);
COMPONENT (C, a)
COMPONENT (C, b)

struct D { char a; char b; };
POINTER (D);
COMPONENT (D, a)
COMPONENT (D, b)
