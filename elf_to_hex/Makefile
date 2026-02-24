# Makefile to create an elf_to_hex executable.
# The executable creates mem-hex files containing 32-Byte words

CC = gcc

elf_to_hex_32: elf_to_hex.c
	gcc -g  -o elf_to_hex_32  elf_to_hex.c  -lelf -DWORD_WIDTH=32

elf_to_hex_64: elf_to_hex.c
	gcc -g  -o elf_to_hex_64  elf_to_hex.c  -lelf -DWORD_WIDTH=64

elf_to_hex_128: elf_to_hex.c
	gcc -g  -o elf_to_hex_128  elf_to_hex.c  -lelf -DWORD_WIDTH=128

elf_to_hex_256: elf_to_hex.c
	gcc -g  -o elf_to_hex_256  elf_to_hex.c  -lelf -DWORD_WIDTH=256

all: elf_to_hex_32 elf_to_hex_64 elf_to_hex_128 elf_to_hex_256

# ================================================================

.PHONY: clean
clean:
	rm  -f  *~

.PHONY: full_clean
full_clean:
	rm  -f  *~  elf_to_hex
