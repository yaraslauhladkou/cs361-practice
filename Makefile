main: main.o
	gcc -o main main.o

main.o: main.c
	gcc -c main.c

main.s: main.c
	gcc -S main.c

