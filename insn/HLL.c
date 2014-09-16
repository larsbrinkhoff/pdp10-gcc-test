#include "insns.h"

static uHint A[4];
static Hint  B[4];
static uH2int C;

static uH2int hll1  (uH2int AC, uH2int  Y) { AC.l = Y.l;  return AC; }
static uH2int hll2  (uH2int AC, uH2int *X) { AC.l = X->l; return AC; }
static uH2int hll3  (uH2int AC)            { AC.l = A[2]; return AC; }
static uH2int hll4  (uH2int AC)            { AC.l = C.l;  return AC; }
static H2int  hll5  (H2int AC, Sint *X)    { AC.l = *X >> 18; return AC;}
static Sint   hllz1 (Sint AC, Sint *X)     { return *X & 0777777000000; }
static void   hllm1 (uH2int AC, H2int *X)  { X->l = AC.l; }
static void   hllm2 (uH2int AC)            { A[2] = AC.l; }

