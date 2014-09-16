typedef int DWtype __attribute__ ((mode (DI)));
typedef int Wtype __attribute__ ((mode (SI)));
typedef unsigned int UWtype __attribute__ ((mode (SI)));

struct DWstruct {Wtype high, low;};

typedef union
{
  struct DWstruct s;
  DWtype ll;
} DWunion;


DWtype
__muldi3 (DWtype u, DWtype v)
{
  DWunion w;
  DWunion uu, vv;

  uu.ll = u,
  vv.ll = v;

  w.ll = __umulsidi3 (uu.s.low, vv.s.low);
  w.s.high += ((UWtype) uu.s.low * (UWtype) vv.s.high
	       + (UWtype) uu.s.high * (UWtype) vv.s.low);

  return w.ll;
}
