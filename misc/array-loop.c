struct foo { int x; int y; };
struct foo bar[10];
static void baz (void)
{
  int i;
  bar[0].y = 0;
  for (i = 0; i < 10; i++)
    bar[i].y = 0;
}
