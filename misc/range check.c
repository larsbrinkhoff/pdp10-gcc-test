extern void bar (void);
extern void baz (void);

#define OR(N, X, Y)							\
  static void or##N (int x)  { if (x < 017 || x > 042) { X; } Y; }	\
  static void or0##N (int x) { if (x < 0   || x > 042) { X; } Y; }
#define AND(N, X, Y)							\
  static void and##N (int x)   { if (x > 017 && x < 042) { X; } Y; }	\
  static void and_1##N (int x) { if (x >  -1 && x < 042) { X; } Y; }
#define TEST(N, X, Y) OR (N, X, Y)  AND (N, X, Y)

TEST (1, bar (), baz ())
TEST (2, bar (); return, baz ())
TEST (3, bar (); bar (), baz ())
TEST (4, bar (), baz (); baz ())
