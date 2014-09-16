#define CMP(x,op) \
int s##x (signed a, signed b) { return a op b; } \
int u##x (unsigned a, unsigned b) { return a op b; }

CMP(e, ==)
CMP(n, !=)
CMP(l, <)
CMP(le, >=)
CMP(g, >)
CMP(ge, >=)
