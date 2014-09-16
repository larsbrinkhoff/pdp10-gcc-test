void
movstr (char *a, char *b, int c)
{
  __builtin_memcpy (a, b, c);
}
