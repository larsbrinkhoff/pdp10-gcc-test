#if 1
#define RH(x) ((x) & 0777777)
#else
#define RH(x) ((unsigned short)(x))
#endif

#define TEST_OPERATOR(N, OP)    TEST_EXPRESSION (N, x OP y)
#define TEST_EXPRESSION(N, EXP) TEST_STATEMENTS (N, return EXP;)
#define TEST_STATEMENTS(N, STMTS) \
  TEST_FUNCTION (N##0, z, int y = RH (z); STMTS ) \
  TEST_FUNCTION (N##1, z, int y = RH (z + 1); STMTS )
#define TEST_FUNCTION(N, Y, BODY) \
  static int N (int x, int Y) { BODY }

TEST_OPERATOR	(addi,		+)
TEST_OPERATOR	(subi,		-)
TEST_OPERATOR	(imuli,		*)
TEST_OPERATOR	(iori,		|)
TEST_OPERATOR	(andi,		&)
TEST_OPERATOR	(xori,		^)

TEST_EXPRESSION	(movei,		       y)
TEST_EXPRESSION	(movni,		      -y)
TEST_EXPRESSION	(eqvi,		~(x ^  y))
TEST_EXPRESSION	(orcmi,		  x | ~y)
TEST_EXPRESSION	(orcbi,		 ~x | ~y)
TEST_EXPRESSION	(andcmi,	  x & ~y)
TEST_EXPRESSION	(andcbi,	 ~x & ~y)

TEST_EXPRESSION	(tlo,		x |  (y << 18))
TEST_EXPRESSION	(tlc,		x ^  (y << 18))
TEST_EXPRESSION	(tlz,		x & ~(y << 18))

TEST_STATEMENTS	(cai,		if (x != y) x = 0; return x;)
