ARCH = aarch64
BINARY = binary-$(ARCH)
OBJECT = object-$(ARCH)
ASSEMBLY = assembly-$(ARCH)

main: main.o
	mkdir $(BINARY)
	gcc -o $(BINARY)/main $(OBJECT)main.o

main.o: main.s
	mkdir $(OBJECT)
	gcc -o $(OBJECT)/main.o -c $(ASSEMBLY)/main.s

main.s: main.c
	mkdir $(ASSEMBLY)
	gcc -o $(ASSEMBLY)/main.s -S main.c
