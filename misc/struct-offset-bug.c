struct foo
{
  int a;
  int b[1];
};

static void f1 (struct foo *x)
{
  x->b[0] = 0;
}

static void f2 (struct foo *x)
{
  int i = 0;
  x->b[i] = 0;
}
