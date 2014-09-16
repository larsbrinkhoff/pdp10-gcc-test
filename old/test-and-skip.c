int
trne (int a)
{
  if (a & 0776)
    return 0123;
  else
    return 0456;
}

int
trne2 (int a)
{
  if (a & 077000)
    return 0123;
  else
    return 0456;
}

int
tlne (int a)
{
  if (a & 0377770000000)
    return 0123;
  else
    return 0456;
}

tdne (int a, int b)
{
  if (a & b)
    return 0123;
  else
    return 0456;
}

int
bar (int a)
{
  if (!(a & 010203))
    return 0123;
  else
    return 0456;
}
