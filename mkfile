</$objtype/mkfile
BIN=/$objtype/bin

TARG=riomod2
OFILES=\
	riomod2.$O\
	debug.$O\
	data.$O\
	fsys.$O\
	scrl.$O\
	time.$O\
	util.$O\
	wctl.$O\
	wind.$O\
	xfid.$O\

HFILES=dat.h\
	fns.h\

UPDATE=\
	mkfile\
	$HFILES\
	${OFILES:%.$O=%.c}\

</sys/src/cmd/mkone

$O.out:	/$objtype/lib/libdraw.a /$objtype/lib/libframe.a \
	/$objtype/lib/libthread.a /$objtype/lib/libplumb.a /$objtype/lib/libc.a
syms:V:
	$CC -a $CFLAGS riomod.c	> syms
	$CC -aa $CFLAGS *.c 	>>syms
