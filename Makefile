all:
	nasm -f elf hello.asm
	ld -m elf_i386 -s -o hello hello.o
hello:
	nasm -f elf hello.asm
	ld -m elf_i386 -s -o hello hello.o
clean:
	rm -f *.o
build:
	./hello
