#include "insns.h"

//static Sint movn1  (Sint a, Sint  e) { return -e; }
static Sint movn2  (Sint a, Sint *e) { return -*e; }
static Sint movnm3 (Sint a, Sint *e) {   *e = -a; }
static Sint movns4 (Sint *e)         {   *e = -*e; }
//static Sfloat movn5  (Sfloat a, Sfloat  e) { return -e; }
static Sfloat movn6  (Sfloat a, Sfloat *e) { return -*e; }
static Sfloat movnm7 (Sfloat a, Sfloat *e) {   *e = -a; }
static Sfloat movns8 (Sfloat *e)           {   *e = -*e; }

BOTH (movns9, -*b)
BOTH1 (Sfloat, movns10, -*b)
