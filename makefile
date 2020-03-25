cc = gcc
OBJ = ksh
AnddPREFIX=/data/data/com.termux/usr
termux:
	gcc $(AnddPREFIX)/lib/libreadline.so -o $(AnddPREFIX)/bin/ksh
all:
	$(cc) -c ./*.c 
	$(cc) -o $(OBJ) ./*.o /usr/lib/x86_64-linux-gnu/libreadline.so -I -lreadlin -lncurses -g
	rm *.o 
install:
	gcc ksh.c /usr/lib/x86_64-linux-gnu/libreadline.so -o /usr/bin/ksh
clean:
	rm *.o
