extern void y1 (char *);
extern void y2 (char *);

int x (void)
{
  char a = 0, b = 0;

  y1 (&a);
  y2 (&b);

  if (a < b)
    return 0;
  else
    return 1;
}
