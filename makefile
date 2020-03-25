cc = gcc
OBJ = ksh
termux:
	$(cc) -c ./*.c
	$(cc) -o $(OBJ) ./*.o $(PREFIX)/lib/libreadline.so -I -lreadline -lncurses -g
	rm *.o
all:
	$(cc) -c ./*.c 
	$(cc) -o $(OBJ) ./*.o /usr/lib/x86_64-linux-gnu/libreadline.so -I -lreadlin -lncurses -g
	rm *.o 
clean:
	rm *.o
