
#line 1 "src\debug\printd.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "C:\KEIL\C51\INC\STDARG.H" /0






 
 
 
 
 
 
 
 
 
 
 typedef char *va_list;
 
 
 
 
 
 
 
 
#line 17 "src\debug\printd.c" /0
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
#line 34 ".\SRC\CPU\TYPES.H" /1
  
 
#line 36 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 18 "src\debug\printd.c" /0
 
  
#line 1 "SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 "SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 "SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 "SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 "SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 19 "src\debug\printd.c" /0
 
  
#line 1 ".\SRC\UART\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\UART\UART_CFG.H" /0









 

















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 36 ".\SRC\UART\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern uint  UART0_RxCount;
 extern byte  uart0_RxBuf[256];
 extern uint  uart0_RxCount;
 extern uint  uart0_RxTail;
 extern byte  uart0_RxBuf[];
 extern uint  uart0_RxHead;
 
 extern uint  uart1_RxCount;
 extern uint  uart1_RxTail;
 extern byte  uart1_RxBuf[256];
 extern uint  uart1_RxHead;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void  uart_Init(byte port, baudrate, parity);
 extern void  uart_ShowBuffer(byte* pd, byte eol);
 bool  uart_ParityChk(char checkbyte);
 bool  uart_SetPort(byte portNum);
 
 extern uint  uart0_PutChar(char c);
 extern uint  uart0_GetKey(void);
 
 extern byte  uart0_setBaudRate(byte baudrate);
 extern void  uart0_PutStr(byte* pData, byte cnt);
 extern void  uart0_GetBuf(byte* pData, byte cnt);
 extern void  uart0_RxBufUpdate(byte cnt);
 extern byte  uart0_RxPtrSet(byte c);
 extern void  uart0_RxBufSet(byte c, uint  len);
 extern byte  uart0_RxBufCmp(byte *pData,byte len);
 extern uint  uart0_GetByteCount(void);
 extern void  uart0_DisplayRxPointers(void);
 extern void  uart0_ShowRxBuffer(void);
 byte  uart0_TxChk(void);
 void  uart0_SetMode(byte mode);
 uint  UA0_GetCount(void);
 extern char  uart0_NoBlockGetkey(void);
 
 extern uint  uart1_PutChar(char c);
 extern uint  uart1_GetKey(void);
 extern void  uart1_PutStr(byte* pData, byte cnt);
 extern void  uart1_GetBuf(byte* pData, byte cnt);
 extern void  uart1_RxBufUpdate(byte cnt);
 extern byte  uart1_RxPtrSet(byte c);
 extern void  uart1_RxBufSet(byte c, uint  len);
 extern byte  uart1_RxBufCmp(byte *pData,byte len);
 extern uint  uart1_GetByteCount(void);
 extern void  uart1_DisplayRxPointers(byte crlf);
 bool  UART_ParityChk(char checkbyte);
 byte  uart1_TxChk(void);
 void  uart1_SetMode(byte mode);
 uint  UA1_GetCount(void);
 extern char  uart1_NoBlockGetkey(void);
 
 void  PMM_Uart0Init(void);
 
 
 
#line 20 "src\debug\printd.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\STRING.H" /0






 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
 
#line 18 "C:\KEIL\C51\INC\STRING.H" /1
  
 
#line 20 "C:\KEIL\C51\INC\STRING.H" /0
 
 #pragma SAVE
 #pragma REGPARMS
 extern char *strcat (char *s1, char *s2);
 extern char *strncat (char *s1, char *s2, int n);
 
 extern char strcmp (char *s1, char *s2);
 extern char strncmp (char *s1, char *s2, int n);
 
 extern char *strcpy (char *s1, char *s2);
 extern char *strncpy (char *s1, char *s2, int n);
 
 extern int strlen (char *);
 
 extern char *strchr (const char *s, char c);
 extern int strpos (const char *s, char c);
 extern char *strrchr (const char *s, char c);
 extern int strrpos (const char *s, char c);
 
 extern int strspn (char *s, char *set);
 extern int strcspn (char *s, char *set);
 extern char *strpbrk (char *s, char *set);
 extern char *strrpbrk (char *s, char *set);
 extern char *strstr  (char *s, char *sub);
 extern char *strtok  (char *str, const char *set);
 
 extern char memcmp (void *s1, void *s2, int n);
 extern void *memcpy (void *s1, void *s2, int n);
 extern void *memchr (void *s, char val, int n);
 extern void *memccpy (void *s1, void *s2, char val, int n);
 extern void *memmove (void *s1, void *s2, int n);
 extern void *memset  (void *s, char val, int n);
 #pragma RESTORE
 
 
#line 21 "src\debug\printd.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\STDIO.H" /0






 
 
 
 
 
 
 
 
 
 
#line 17 "C:\KEIL\C51\INC\STDIO.H" /1
  
 
#line 19 "C:\KEIL\C51\INC\STDIO.H" /0
 
 
#line 21 "C:\KEIL\C51\INC\STDIO.H" /1
  
 
 
#line 24 "C:\KEIL\C51\INC\STDIO.H" /0
 
 #pragma SAVE
 #pragma REGPARMS
 extern char _getkey (void);
 extern char getchar (void);
 extern char ungetchar (char);
 extern char putchar (char);
 extern int printf   (const char *, ...);
 extern int sprintf  (char *, const char *, ...);
 extern int vprintf  (const char *, char *);
 extern int vsprintf (char *, const char *, char *);
 extern char *gets (char *, int n);
 extern int scanf (const char *, ...);
 extern int sscanf (char *, const char *, ...);
 extern int puts (const char *);
 
 #pragma RESTORE
 
 
 
#line 22 "src\debug\printd.c" /0
 
 
 
 byte DEBUG_MsgEnable = 1;
 
 
 
 
 static int prints(const char *string, int width, int pad);
 static int printi(long i, int b, int sg, int width, int pad, int letbase);
 static int printipa(long i, int width, int pad);
 
 
 
 
 
 
 
 
 
 
 static int prints(const char *string, int width, int pad)
 {
 register int pc = 0, padchar = ' ';
 
 if (width > 0) 
 {
 register int len = 0;
 register const char *ptr;
 for (ptr = string; *ptr; ++ptr)
 ++len;
 if (len >= width)
 width = 0;
 else
 width -= len;
 if (pad & 2) padchar = '0';
 }
 if (!(pad & 1))
 {
 for ( ; width > 0; --width)
 {
  uart1_PutChar(padchar);
 ++pc;
 }
 }
 for ( ; *string ; ++string)
 {
  uart1_PutChar(*string);
 ++pc;
 }
 for ( ; width > 0; --width)
 {
  uart1_PutChar(padchar);
 ++pc;
 }
 return pc;
 }
 
 
 
 
 
 
 
 
 static int printi(long i, int b, int sg, int width, int pad, int letbase)
 { 
 
 
 
 
 
 char print_buf[18];
 register char *s;
 register long t, neg = 0, pc = 0;
 register unsigned long u = i;
 
 if (i == 0)
 {
 print_buf[0] = '0';
 print_buf[1] = '\0';
 return prints ( print_buf, width, pad);
 }
 if (sg && b == 10 && i < 0)
 {
 neg = 1;
 u = -i;
 }
 s = print_buf + 18-1;
 *s = '\0';
 while (u)
 {
 t = u % b;
 if( t >= 10 )
 t += letbase - '0' - 10;
 *--s = t + '0';
 u /= b;
 }
 if (neg)
 {
 if( width && (pad & 2) )
 {
  uart1_PutChar('-');
 ++pc;
 --width;
 }
 else
 { *--s = '-'; }
 }
 return pc + prints(s, width, pad);
 }
 
 
 
 
 
 
 
 
 
 
 
 int printd(const char *format, ...)
 {
 register int width, pad;
 register int pc = 0;
 char scr[2];
 
 va_list args;
 
 if (DEBUG_MsgEnable == 0)
 return 0;
 
  args = (va_list)&format + sizeof(format);
 for (; *format != 0; ++format)
 {
 if (*format == '%')
 {
 ++format;
 width = pad = 0;
 if (*format == '\0') break;
 if (*format == '%') goto out;
 if (*format == '-') 
 {
 ++format;
 pad = 1;
 }
 while (*format == '0')
 {
 ++format;
 pad |= 2;
 }
 for ( ; *format >= '0' && *format <= '9'; ++format)
 {
 width *= 10;
 width += *format - '0';
 }
 switch(*format)
 {
 case 'c' :
 scr[0] = (char)(((char *)args)++[0]);
 scr[1] = '\0';
 pc += prints ( scr, width, pad);
 continue;
 case 's':
 {
 char *s = (char *)(((char * *)args)++[0]);
 pc += prints ( s?s:"(null)", width, pad);
 continue;
 }
 case 'i':
 {
 ++format;
 if(*format == 'p')
 {
 pc += printipa((((long *)args)++[0]), width, pad);
 }
 continue;
 }
 case 'b':
 ++format;
 if (*format == 'd')
 pc += printi ( (((char *)args)++[0]), 10, 1, width, pad, 'a');
 else if (*format == 'u')
 pc += printi ( (((byte *)args)++[0]), 10, 0, width, pad, 'a');
 else if (*format == 'x')
 pc += printi ( (((byte *)args)++[0]), 16, 0, width, pad, 'a');
 continue;
 case 'd':
 ++format;
 if (*format == 'd')
 pc += printi ( (((int *)args)++[0]), 10, 1, width, pad, 'a');
 else if (*format == 'u')
 pc += printi ( (((uint *)args)++[0]), 10, 0, width, pad, 'a');
 else if (*format == 'x')
 pc += printi ( (((uint *)args)++[0]), 16, 0, width, pad, 'a');
 continue;
 case 'l':
 ++format;
 if (*format == 'd')
 pc += printi ( (((long *)args)++[0]), 10, 1, width, pad, 'a');
 else if (*format == 'u')
 pc += printi ( (((ulong *)args)++[0]), 10, 0, width, pad, 'a');
 else if (*format == 'x')
 pc += printi ( (((ulong *)args)++[0]), 16, 0, width, pad, 'a');
 continue;
 }
 }
 else
 {
 out:
  uart1_PutChar(*format);
 ++pc;
 }
 }
  ;
 return pc;
 }
 
 
 
 
 
 
 
 
 int printipa(long i, int width, int pad)
 { 
 
 
 char  print_buf[18];
 char *s;
 long  t, pc = 0;
 ulong u = i;
 char  x = 0;
 
 memset(&print_buf[0], '\0', 18);
 s = &print_buf[0] + 18 - 1;
 *s = '\0';
 
 do
 {
 u = (i >> x) & 0xFF;
 do
 {
 t = u % 10;
 *--s = t + '0';
 u /= 10;
 }
 while (u);
 x += 8;
 if((x <= 24))
 *--s = '.';
 }
 while(x < 25);
 
 return pc + prints(s, width, pad);
 }
 
 void printd_int (int x) 
 {
 char buf [1];
 sprintf (buf, "%d\n", x);
 printd("%s\n\r",buf);
 }
