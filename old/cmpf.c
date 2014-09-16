#define CMP(TYPE) int cmp##TYPE (TYPE a, TYPE b) { return a < b ? 042 : 0666; }

CMP (float)
CMP (double)
