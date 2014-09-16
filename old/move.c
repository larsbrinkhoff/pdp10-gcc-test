int foo (void) { return 01234567; }

int movei (void) { return 0123456; }
int movsi (void) { return 0123456000000; }
int hrroi (void) { return 0777777123456; }
int hrroi2 (void) { return -0654322; }
int hrloi (void) { return 0123456777777; }

int andi (int x) { return x & 0777777; }
int tlz (int x) { return x & 0123456777777; }
int andcmi (int x) { return x & -0123456; }
