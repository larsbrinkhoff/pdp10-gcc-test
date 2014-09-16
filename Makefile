
CC = ../pdp10/gcc/cc1 -quiet -O2

all: check

clean:
	rm -f *~ */*~ tmp.* *.c.* */*.c.* {insn,misc,pattern}/*/*.s
	rm -f check.log results.log

check:
	@CC="$(CC)" sh checkall
