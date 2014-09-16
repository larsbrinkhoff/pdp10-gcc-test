#include "insns.h"

static uHint A[4];
static Hint  B[4];
static uH2int C;

static uH2int hrr1  (uH2int AC, uH2int  Y) { AC.r = Y.r;  return AC; }
static uH2int hrr2  (uH2int AC, uH2int *X) { AC.r = X->r; return AC; }
static uH2int hrr3  (uH2int AC)            { AC.r = A[3]; return AC; }
static uH2int hrr4  (uH2int AC)            { AC.r = C.r; return AC; }
static H2int  hrr5  (H2int AC, Sint *X)    { AC.r = *X & 0777777; return AC;}
static Sint   hrroi (void)                 { return 0777777123456; }
static Sint   hrrz1 (Sint AC, uH2int *X)   { return X->r; }
static Sint   hrrz2 (void)                 { return A[3]; }
static Sint   hrrz3 (Sint AC, Sint *X)     { return *X & 0777777;}
static Sint   hrre1 (Sint AC, H2int *X)    { return X->r; }
static Sint   hrre2 (void)                 { return B[3]; }
static void   hrrm1 (Sint AC, H2int *X)    { X->r = AC; }
static void   hrrm2 (Sint AC)              { A[3] = AC; }
