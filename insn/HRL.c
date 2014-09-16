#include "insns.h"

static uHint A[4];
static Hint  B[4];
static uH2int C;

static uH2int hrl1  (uH2int AC, uH2int Y)  { AC.l = Y.r;  return AC; }
static uH2int hrl2  (uH2int AC, uH2int *X) { AC.l = X->r; return AC; }
static uH2int hrl3  (uH2int AC)            { AC.l = A[3]; return AC; }
static uH2int hrl4  (uH2int AC)            { AC.l = C.r; return AC; }
static uH2int hrl5  (uH2int AC, uSint *X)  { AC.l = *X; return AC; }
static Sint   hrloi (void)                 { return 0123456777777; }
static Sint   hrlz1 (Sint AC,  Sint *X)    { return *X << 18; }
static void   hrlm1 (uH2int AC, H2int *X)  { X->l = AC.r; }
static void   hrlm2 (uH2int AC)            { A[2] = AC.r; }
//static void   hrlm3 (H2int AC, H2int *X)   { X->l = AC.r; }
