all:
	nasm -f elf test.asm
	ld -m elf_i386 -s -o test test.o
clean:
	rm -f *.o

build:
	./test