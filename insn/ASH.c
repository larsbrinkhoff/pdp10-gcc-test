#include "insns.h"
Sint ash1 (Sint a)         { return a >> 1; }
Sint ash2 (Sint a, Sint e) { return a >> e; }
Sint ash3 (Sint a, Sint e) { return a >> (-e); }
Sint ash4 (Sint a, Sint x) { return a >> (1 + x); }
Sint ash5 (Sint a, Sint x) { return a >> (1 - x); }
