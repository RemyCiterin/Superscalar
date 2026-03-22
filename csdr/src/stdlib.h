#pragma once

void* malloc(unsigned);
void free(void*);

void printf(const char*, ...);
void putc(char c);
void print_int(int x);


unsigned strlen(const char*);
void* memset(void*, int, unsigned);
void *memmove(void*, const void*, int);
void *memcpy(void*, const void*, int);
//char* strcpy(char*, const char*);


unsigned read_cycle();
unsigned read_instret();
