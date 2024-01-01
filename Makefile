ARCH = aarch64

main: main-$(ARCH).o
	gcc -o main-$(ARCH) main-$(ARCH).o

main-$(ARCH).o: main-$(ARCH).s
	gcc -o main-$(ARCH).o -c main-$(ARCH).s

main-$(ARCH).s: main.c
	gcc -o main-$(ARCH).s -S main.c
