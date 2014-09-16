int
twos_complement1 (int a)
{
  return ~a + 1;
}

int
twos_complement2 (int a, int b)
{
  return ~(a + 2 * b - a) + 1;
}

