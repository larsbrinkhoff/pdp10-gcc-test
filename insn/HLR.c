#include "insns.h"

static uHint  A[4];
static Hint   B[4];
static uH2int C;

static uH2int hlr1   (uH2int AC, uH2int Y)  { AC.r = Y.l;  return AC; }
static uH2int hlr2   (uH2int AC, uH2int *X) { AC.r = X->l; return AC; }
static uH2int hlr3   (uH2int AC)            { AC.r = A[2]; return AC; }
static uH2int hlr4   (uH2int AC)            { AC.r = C.l; return AC; }
static uH2int hlr5   (uH2int AC, uSint *X)  { AC.r = *X >> 18; return AC; }
static Sint   hlrz1  (Sint AC, uH2int *X)   { return X->l; }
static Sint   hlrz2  (void)                 { return A[2]; }
static Sint   hlrz3  (Sint AC, uSint *X)    { return *X >> 18; }
static Sint   hlre1  (Sint AC, H2int *X)    { return X->l; }
static Sint   hlre2  (void)                 { return B[2]; }
static Sint   hlre3  (Sint AC, Sint *X)     { return AC = *X >> 18; }
static void   hlrm1  (uH2int AC, H2int *X)  { X->r = AC.l; }
static void   hlrm2  (uH2int AC)            { A[3] = AC.l; }
static void   hlrm3  (H2int AC, H2int *X)   { X->r = AC.l; }
static void   hlrmz1 (uH2int AC, Sint *X)   { *X = AC.r; }
static void   hlrme1 (H2int AC, Sint *X)    { *X = AC.r; }
