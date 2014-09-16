#include "insns.h"

static Qint Q;
static Qint QA[8];

static Hint H;
static Hint HA[4];

static struct S
{
  int filler;
  uQint Q1;
  uQint Q2;
  uQint Q3;
  uQint Q4;
  Hint H1;
  Hint H2;
  unsigned : 8;
  unsigned a : 8;
  unsigned b : 10;
} S;

struct T
{
  unsigned : 8;
  unsigned a : 8;
  unsigned b : 10;
};

static Qint *Qp1 = &Q;
static Qint *Qp2 = &QA[4];
static Qint *Qp3 = &QA[5];
static Qint *Qp4 = &QA[6];
static Qint *Qp5 = &QA[7];
static Qint *Qp6 = &S.Q1;
static Qint *Qp7 = &S.Q2;
static Qint *Qp8 = &S.Q3;
static Qint *Qp9 = &S.Q4;
static Hint *Hp1 = &H;
static Hint *Hp2 = &HA[2];
static Hint *Hp3 = &HA[3];
static Hint *Hp4 = &S.H1;
static Hint *Hp5 = &S.H2;

static uSint ldb1 (void) { return S.Q1; }
static uSint ldb2 (void) { return S.Q2; }
static uSint ldb3 (void) { return S.Q3; }
static uSint ldb4 (void) { return S.Q4; }
static uSint ldb5 (void) { return S.a; }
static uSint ldb6 (void) { return S.b; }
static uSint ldb7 (struct T AC) { return AC.a; }
static uSint ldb8 (struct T AC) { return AC.b; }
