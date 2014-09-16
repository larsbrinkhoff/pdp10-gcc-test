typedef unsigned char6 __attribute__ ((size (6)));
typedef unsigned char7 __attribute__ ((size (7)));
typedef unsigned char8 __attribute__ ((size (8)));
typedef unsigned char9 __attribute__ ((size (9)));

#define TEST(T1, T2) \
static T1 * test_##T1##_##T2 (T2 * x) { return x; }

  TEST (char6, char7)
  TEST (char6, char8)
  TEST (char6, char9)
  TEST (char6, char)

/*TEST (char7, char6)*/
  TEST (char7, char8)
  TEST (char7, char9)
  TEST (char7, char)

/*TEST (char8, char6)*/
/*TEST (char8, char7)*/
  TEST (char8, char9)
  TEST (char8, char)

/*TEST (char9, char6)*/
  TEST (char9, char7)
  TEST (char9, char8)
  TEST (char9, char)

  TEST (char, char6)
  TEST (char, char7)
  TEST (char, char8)
  TEST (char, char9)
