#include <stdint.h>
#include <stdarg.h>
#include <stdlib.h>

static char digits[] = "0123456789ABCDEF";

#define UART0 0x10000000
#define Reg(reg) ((volatile unsigned char *)(UART0 + reg))

#define ReadReg(reg) (*(Reg(reg)))
#define WriteReg(reg, v) (*(Reg(reg)) = (v))

void
putc(char c)
{
  WriteReg(0,c);
}

static void
printint(int xx, int base, int sgn)
{
  char buf[16];
  int i, neg;
  unsigned x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    putc(buf[i]);
}

static void
printptr(uint64_t x) {
  int i;
  putc('0');
  putc('x');
  for (i = 0; i < (sizeof(uint64_t) * 2); i++, x <<= 4)
    putc(digits[x >> (sizeof(uint64_t) * 8 - 4)]);
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
vprintf(const char *fmt, va_list ap)
{
  char *s;
  int c, i, state;

  state = 0;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(va_arg(ap, int), 10, 1);
      } else if(c == 'l') {
        printint(va_arg(ap, uint64_t), 10, 0);
      } else if(c == 'x') {
        printint(va_arg(ap, int), 16, 0);
      } else if(c == 'p') {
        printptr(va_arg(ap, uint64_t));
      } else if(c == 's'){
        s = va_arg(ap, char*);
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(*s);
          s++;
        }
      } else if(c == 'c'){
        putc(va_arg(ap, unsigned));
      } else if(c == '%'){
        putc(c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc('%');
        putc(c);
      }
      state = 0;
    }
  }
}

void
printf(const char *fmt, ...)
{
  va_list ap;

  va_start(ap, fmt);
  vprintf(fmt, ap);
}

void print_int(int x) {
  printf("%d", x);
}
