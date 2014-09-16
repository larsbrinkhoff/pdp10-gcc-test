#include "insns.h"

#define LOAD1(T)  static T    load1##T  (T *a, int i)      { return a[i]; }
#define LOAD2(T)  static T    load2##T        (int i)      { return A##T[i]; }
#define STORE1(T) static void store1##T (T *a, int i, T x) { a[i] = x; }
#define STORE2(T) static void store2##T       (int i, T x) { A##T[i] = x; }
#define TEST(T)  static T A##T[0100]; LOAD1 (T) LOAD2 (T) STORE1 (T) STORE2 (T)

TEST (Qint)
TEST (uQint)
TEST (Hint)
TEST (uHint)
TEST (Sint)
TEST (Dint)
TEST (Sfloat)
TEST (Dfloat)
