struct foo
{
  void **array;
  int count;
};

static void *
search_object (unsigned pc)
{
  struct foo *vec;
  unsigned lo, hi;
      
  for (lo = 0, hi = vec->count; lo < hi; )
    {
      unsigned i = (lo + hi) / 2;
      void *f = vec->array[i];
      unsigned pc_begin, pc_range;
      int x = get (f);

      quux (x);
      quux (x);

      if (pc < pc_begin)
	hi = i;
      else if (pc >= pc_begin + pc_range)
	lo = i + 1;
      else
	return f;
    }
}
