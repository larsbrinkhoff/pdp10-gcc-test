#include "insns.h"
Sint lshl1 (Sint a)         { return a << 1; }
Sint lshl2 (Sint a, Sint e) { return a << e; }
Sint lshl3 (Sint a, Sint x) { return a << (1 + x); }
uSint lshr1 (uSint a)         { return a >> 1; }
uSint lshr2 (uSint a, Sint e) { return a >> e; }
uSint lshr3 (uSint a, Sint e) { return a >> (-e); }
uSint lshr4 (uSint a, Sint x) { return a >> (1 + x); }
uSint lshr5 (uSint a, Sint x) { return a >> (1 - x); }
