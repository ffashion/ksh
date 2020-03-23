cc = gcc
OBJ = ksh
all:
	$(cc) -c ./*.c 
	$(cc) -o $(OBJ) ./*.o /usr/lib/x86_64-linux-gnu/libreadline.so -I -lreadlin -lncurses -g
	rm *.o 
clean:
	rm *.o
