all:
	nasm -f elf hello.asm
	ld -m elf_i386 -s -o hello hello.o
	nasm -f elf 9stars.asm
	ld -m elf_i386 -s -o 9stars 9stars.o
hello:
	nasm -f elf hello.asm
	ld -m elf_i386 -s -o hello hello.o
test:
	nasm -f elf 9stars.asm
	ld -m elf_i386 -s -o 9stars 9stars.o
clean:
	rm -f *.o
build:
	./hello
