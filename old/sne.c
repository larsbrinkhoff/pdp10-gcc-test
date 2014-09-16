#if 1
#define TEST(name, op) int s##name (int a) { return a op 0; }

TEST (ne, !=)
TEST (eq, ==)
TEST (gt, >)
TEST (ge, >=)
TEST (lt, <)
TEST (le, <=)
#endif

#if 1
#define MOVE(name, op) int movsi##name (int a, int b) { return a op 0 ? a : b; }

MOVE (ne, !=)
MOVE (eq, ==)
MOVE (gt, >)
MOVE (ge, >=)
MOVE (lt, <)
MOVE (le, <=)

#define MOVEU(name, op) unsigned movsi##name##u (unsigned a, unsigned b) { return a op 0 ? a : b; }

MOVEU (ne, !=)
MOVEU (eq, ==)
MOVEU (gt, >)
#endif

int movsi2eq (int a, int b, int c) { return a == 0 ? b : c; }
int movsi2ne (int a, int b, int c) { return a != 0 ? b : c; }
int movsi3eq (int a, int b, int c, int d) { return a == b ? c : d; }
