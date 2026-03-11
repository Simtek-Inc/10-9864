
#line 1 "src\uart\uart.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\REG80390.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr	P0			= 0x80; 
 sfr	SP			= 0x81; 
 sfr	DPL0		= 0x82; 
 sfr	DPH0		= 0x83; 
 sfr	DPL			= 0x82; 
 sfr	DPH			= 0x83; 
 sfr	DPL1		= 0x84; 
 sfr	DPH1		= 0x85; 
 sfr	DPS			= 0x86; 
 sfr	PCON		= 0x87; 
 sfr TCON		= 0x88; 
 sfr TMOD		= 0x89; 
 sfr TL0			= 0x8A; 
 sfr TL1			= 0x8B; 
 sfr TH0			= 0x8C; 
 sfr TH1			= 0x8D; 
 sfr CKCON		= 0x8E; 
 sfr CSREPR		= 0x8F; 
 
 sfr P1			= 0x90; 
 sfr EIF			= 0x91; 
 sfr WTST		= 0x92; 
 sfr DPX0		= 0x93; 
 sfr DPX			= 0x93; 
 sfr	SDSTSR		= 0x94; 
 sfr DPX1		= 0x95; 
 sfr I2CCIR		= 0x96; 
 sfr I2CDR		= 0x97; 
 sfr SCON0		= 0x98; 
 sfr SBUF0		= 0x99; 
 sfr DBAR		= 0x9A; 
 sfr DCIR		= 0x9B; 
 sfr DDR			= 0x9C; 
 sfr ACON		= 0x9D; 
 sfr PISSR1		= 0x9E; 
 sfr PISSR2		= 0x9F; 
 
 sfr P2			= 0xA0; 
 
 sfr LMSR		= 0xA1; 
 sfr LCR			= 0xA2; 
 sfr LSR			= 0xA3; 
 sfr LDALR		= 0xA4; 
 sfr LDAHR		= 0xA5; 
 sfr LDCSR		= 0xA6; 
 
 sfr LSAIER		= 0xA1; 
 sfr LSCR		= 0xA2; 
 sfr LSSR		= 0xA3; 
 sfr XMWLR		= 0xA4; 
 sfr XMWHR		= 0xA5; 
 sfr XMRLR		= 0xA6; 
 sfr XMRHR		= 0xA7; 
 
 sfr IE			= 0xA8; 
 sfr LDLR		= 0xA9; 
 sfr LDHR		= 0xAA; 
 sfr DMALR		= 0xAB; 
 sfr DMAMR		= 0xAC; 
 sfr DMAHR		= 0xAD; 
 sfr TCIR		= 0xAE; 
 sfr	TDR			= 0xAF; 
 
 sfr P3			= 0xB0; 
 sfr CCAPL0      = 0xB1; 
 sfr CCAPL1      = 0xB2; 
 sfr CCAPL2      = 0xB3; 
 sfr CCAPL3      = 0xB4; 
 sfr CCAPL4      = 0xB5; 
 sfr MCIR		= 0xB6; 
 sfr MDR			= 0xB7; 
 sfr IP			= 0xB8; 
 sfr CCAPH0      = 0xB9; 
 sfr CCAPH1      = 0xBA; 
 sfr CCAPH2      = 0xBB; 
 sfr CCAPH3      = 0xBC; 
 sfr CCAPH4      = 0xBD; 
 sfr EPCR		= 0xBE; 
 sfr EPDR		= 0xBF; 
 
 sfr SCON1		= 0xC0; 
 sfr SBUF1		= 0xC1; 
 sfr CMOD		= 0xC2; 
 sfr CCON		= 0xC3; 
 sfr CL			= 0xC4; 
 sfr CH			= 0xC5; 
 sfr T2CON		= 0xC8; 
 sfr T2IF		= 0xC9; 
 sfr RLDL		= 0xCA; 
 sfr RLDH		= 0xCB; 
 sfr TL2			= 0xCC; 
 sfr TH2			= 0xCD; 
 sfr SPICIR		= 0xCE; 
 sfr SPIDR		= 0xCF; 
 
 sfr PSW			= 0xD0; 
 sfr CCAPM0		= 0xD1; 
 sfr CCAPM1		= 0xD2; 
 sfr CCAPM2		= 0xD3; 
 sfr CCAPM3		= 0xD4; 
 sfr CCAPM4		= 0xD5; 
 sfr OWCIR		= 0xD6; 
 sfr OWDR		= 0xD7; 
 sfr WDCON		= 0xD8; 
 sfr CANCIR		= 0xDE; 
 sfr CANDR		= 0xDF; 
 
 sfr ACC			= 0xE0; 
 
 
 sfr	UR2_DLL		= 0xE1; 
 sfr	UR2_THR		= 0xE1; 
 sfr	UR2_RBR		= 0xE1; 
 sfr	UR2_DLH		= 0xE2; 
 sfr	UR2_IER		= 0xE2; 
 sfr	UR2_FCR		= 0xE3; 
 sfr	UR2_IIR		= 0xE3; 
 sfr	UR2_LCR		= 0xE4; 
 sfr	UR2_MCR		= 0xE5; 
 sfr	UR2_LSR		= 0xE6; 
 sfr	UR2_MSR		= 0xE7; 
 
 sfr EIE			= 0xE8; 
 sfr STATUS		= 0xE9; 
 sfr MXAX		= 0xEA; 
 sfr TA			= 0xEB; 
 
 sfr B			= 0xF0; 
 sfr EIP			= 0xF8; 
 sfr MD0			= 0xF9; 
 sfr MD1			= 0xFA; 
 sfr MD2			= 0xFB; 
 sfr MD3			= 0xFC; 
 sfr MD4			= 0xFD; 
 sfr MD5			= 0xFE; 
 sfr ARCON		= 0xFF; 
 
 
 
 sbit P0_0		= 0x80;
 sbit P0_1		= 0x81;
 sbit P0_2		= 0x82;
 sbit P0_3		= 0x83;
 sbit P0_4		= 0x84;
 sbit P0_5		= 0x85;
 sbit P0_6		= 0x86;
 sbit P0_7		= 0x87;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit	IT0		= 0x88;
 sbit	IE0		= 0x89;
 sbit	IT1		= 0x8A;
 sbit	IE1		= 0x8B;
 sbit	TR0		= 0x8C;
 sbit	TF0		= 0x8D;
 sbit	TR1		= 0x8E;
 sbit	TF1		= 0x8F;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit P1_0		= 0x90;
 sbit P1_1		= 0x91;
 sbit P1_2		= 0x92;
 sbit P1_3		= 0x93;
 sbit P1_4		= 0x94;
 sbit P1_5		= 0x95;
 sbit P1_6		= 0x96;
 sbit P1_7		= 0x97;
 
 
 
 
 
 
 
 
 
 
 
 sbit RI0			= 0x98;
 sbit TI0			= 0x99;
 sbit RB08			= 0x9A;
 sbit TB08			= 0x9B;
 sbit REN0			= 0x9C;
 sbit SM02			= 0x9D;
 sbit SM01			= 0x9E;
 sbit SM00			= 0x9F;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit P2_0		= 0xA0;
 sbit P2_1		= 0xA1;
 sbit P2_2		= 0xA2;
 sbit P2_3		= 0xA3;
 sbit P2_4		= 0xA4;
 sbit P2_5		= 0xA5;
 sbit P2_6		= 0xA6;
 sbit P2_7		= 0xA7;
 
 
 
 sbit EX0                    = 0xA8;                                                        
 sbit ET0                    = 0xA9;                                                        
 sbit EX1                    = 0xAA;                                                        
 sbit ET1                    = 0xAB;                                                        
 sbit ES0                    = 0xAC;                                                        
 sbit ET2                    = 0xAD;                                                        
 sbit ES1                    = 0xAE;                                                        
 sbit EA                     = 0xAF;                                                        
 
 
 
 sbit P3_0		= 0xB0;
 sbit P3_1		= 0xB1;
 sbit P3_2		= 0xB2;
 sbit P3_3		= 0xB3;
 sbit P3_4		= 0xB4;
 sbit P3_5		= 0xB5;
 sbit P3_6		= 0xB6;
 sbit P3_7		= 0xB7;
 
 sbit RXD                    = 0xB0;                                                        
 sbit TXD                    = 0xB1;                                                        
 sbit INT0                   = 0xB2;                                                        
 sbit INT1                   = 0xB3;                                                        
 sbit T0                     = 0xB4;                                                        
 sbit T1                     = 0xB5;                                                        
 sbit WR                     = 0xB6;                                                        
 sbit RD                     = 0xB7;                                                        
 
 
 
 sbit PX0		= 0xB8;
 sbit PT0		= 0xB9;
 sbit PX1		= 0xBA;
 sbit PT1		= 0xBB;
 sbit PS0		= 0xBC;
 sbit PT2		= 0xBD;
 sbit PS1		= 0xBE;
 
 
 
 sbit RI1		= 0xC0;
 sbit TI1		= 0xC1;
 sbit RB18		= 0xC2;
 sbit TB18		= 0xC3;
 sbit REN1		= 0xC4;
 sbit SM12		= 0xC5;
 sbit SM11		= 0xC6;
 sbit SM10		= 0xC7;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit CPRL2		= 0xC8;
 sbit CT2		= 0xC9;
 sbit TR2		= 0xCA;
 sbit EXEN2		= 0xCB;
 sbit TCLK		= 0xCC;
 sbit RCLK		= 0xCD;
 sbit EXF2		= 0xCE;
 sbit TF2		= 0xCF;
 
 
 
 sbit P			= 0xD0;
 sbit F1			= 0xD1;
 sbit OV			= 0xD2;
 sbit RS0		= 0xD3;
 sbit RS1		= 0xD4;
 sbit F0			= 0xD5;
 sbit AC			= 0xD6;
 sbit CY			= 0xD7;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit RWT		= 0xD8;
 sbit EWT		= 0xD9;
 sbit WTRF		= 0xDA;
 sbit WDIF		= 0xDB;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit EINT2		= 0xE8;
 sbit EINT3		= 0xE9;
 sbit EINT4		= 0xEA;
 sbit EINT5		= 0xEB;
 sbit EINT6		= 0xEC;
 sbit EWDI		= 0xED;
 
 
 
 sbit PINT2		= 0xF8;
 sbit PINT3		= 0xF9;
 sbit PINT4		= 0xFA;
 sbit PINT5		= 0xFB;
 sbit PINT6		= 0xFC;
 sbit PWDI		= 0xFD;
 
 
 
#line 20 "src\uart\uart.c" /0
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 21 "src\uart\uart.c" /0
 
  
#line 1 "SRC\UART\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\UART\UART_CFG.H" /0









 

















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 36 "SRC\UART\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 22 "src\uart\uart.c" /0
 
  
#line 1 ".\SRC\CPU\AX11000_CFG.H" /0









 














 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 23 "src\uart\uart.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 24 "src\uart\uart.c" /0
 
  
#line 1 ".\SRC\ADAPTER\ADAPTER_CFG.H" /0









 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "src\uart\uart.c" /0
 
  
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
 
 
#line 26 "src\uart\uart.c" /0
 
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 26 ".\SRC\DEBUG\PRINTD.H" /1
  
 
 
 
 
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
  
 
  
 
 
 
  
 
  
 
 
 
 
 
 
 
 
 
 
#line 74 ".\SRC\DEBUG\PRINTD.H" /0
 
#line 28 "src\uart\uart.c" /0
 
 
 
 static byte       uart0_TxBuf[256];
 static uint       uart0_TxHead  = 0;
 static uint       uart0_TxTail  = 0;
 static uint       uart0_TxCount = 0;
 static byte       uart0_TxFlag  = 0;
 byte       uart0_RxBuf[256];
 uint       uart0_RxHead  = 0;
 uint       uart0_RxTail  = 0;
 static byte       uart0_Mode    = 0;
 uint              uart0_RxCount = 0;
 
 static byte       uart1_TxBuf[256];
 static uint       uart1_TxHead  = 0;
 static uint       uart1_TxTail  = 0;
 static uint       uart1_TxCount = 0;
 static byte       uart1_TxFlag  = 0;
 byte              uart1_RxBuf[256];
 uint              uart1_RxHead  = 0;
 uint              uart1_RxTail  = 0;
 byte              uart1_Mode    = 0;
 uint              uart1_RxCount = 0;
 
 static byte       uartPort = 0;
 
 
 void              uart_ShowBuffer(byte* pd, byte eol);
 
 static void       uart0_ISR(void);
 static void       uart0_Init(byte baudrate, parity);
 static uint       uart0_PutChar(char c);
 static uint       uart0_GetKey(void);
 char       uart0_NoBlockGetkey(void);
 
 byte       uart0_setBaudRate(byte baudrate);
 void              uart0_PutStr(byte* pData, byte cnt);
 void              uart0_GetBuf(byte* pData, byte cnt);
 void              uart0_RxBufUpdate(byte cnt);
 byte              uart0_RxPtrSet(byte c);
 void              uart0_RxBufSet(byte c, uint len);
 byte              uart0_RxBufCmp(byte *pData,byte len);
 uint              uart0_GetByteCount(void);
 void              uart0_DisplayRxPointers(void);
 void              uart0_ShowRxBuffer(void);
 char              uart0_NoBlockGetkey (void);
 byte              uart0_TxChk(void);
 
 static void       uart1_ISR(void);
 static void       uart1_Init(byte baudrate, parity);
 static uint       uart1_PutChar(char c);
 static uint       uart1_GetKey(void);
 char       uart1_NoBlockGetkey(void);
 
 void              uart1_PutStr(byte* pData, byte cnt);
 void              uart1_GetBuf(byte* pData, byte cnt);
 void              uart1_RxBufUpdate(byte cnt);
 byte              uart1_RxPtrSet(byte c);
 void              uart1_RxBufSet(byte c, uint len);
 byte              uart1_RxBufCmp(byte *pData,byte len);
 uint              uart1_GetByteCount(void);
 void              uart1_DisplayRxPointers(byte crlf);
 byte              uart1_TxChk(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 static void uart0_ISR(void) interrupt 4
 {
 
 byte  tmp    = 0;                                                                    
 
 if (RI0)
 {
 EA = 0;                                                                            
 if (uart0_RxCount != 256)                                        
 {
 tmp           = SBUF0;                                                           
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 uart0_RxBuf[uart0_RxHead] = tmp;                                               
 uart0_RxCount++;                                                               
 uart0_RxHead++;                                                                
 uart0_RxHead &= (256 - 1);                                             
 
 }
 RI0 = 0;
 EA = 1;
 }  
 if (TI0)                                                                             
 {
 EA = 0;                                                                            
 uart0_TxTail++;                                                                    
 uart0_TxTail &= (256 - 1);                                                 
 uart0_TxCount--;                                                                   
 if (uart0_TxCount > 0)                                                             
 {
 SBUF0 = uart0_TxBuf[uart0_TxTail];                                               
 
 
 
 
 
 
 
 
 }
 else
 {
 uart0_TxFlag = 0;                                                                
 }
 TI0 = 0;
 EA = 1;
 }  
 }  
 
 
 
 
 
 
 
 
 byte  uart0_setBaudRate(byte baudrate)                                                     
 {
 byte     t;                                                                          
 byte     sysClk;                                                                     
 uint     xcap;                                                                       
 
 sysClk = CSREPR & 0xC0;                                                              
 t = sysClk | baudrate;                                                               
 switch (t)                                                                           
 {
 case 0x00 | 0x00 : printd("1200@25MHz");    xcap = 0xFD75;  break;               
 case 0x01 | 0x00 : printd("2400@25MHz");    xcap = 0xFEBA;  break;               
 case 0x02 | 0x00 : printd("4800@25MHz");    xcap = 0xFF5D;  break;               
 case 0x03 | 0x00 : printd("9600@25MHz");    xcap = 0xFFAF;  break;               
 case 0x04 | 0x00 : printd("19200@25MHz");   xcap = 0xFFD7;  break;               
 case 0x05 | 0x00 : printd("28800@25MHz");   xcap = 0xFFE5;  break;               
 case 0x06 | 0x00 : printd("38400@25MHz");   xcap = 0xFFEC;  break;               
 case 0x07 | 0x00 : printd("57600@25MHz");   xcap = 0xFFF2;  break;               
 case 0x08 | 0x00 : printd("76800@25MHz");   xcap = 0xFFF6;  break;               
 case 0x09 | 0x00 : printd("94750@25MHz");   xcap = 0xFFF8;  break;               
 case 0x0A | 0x00 : printd("115200@25MHz");  xcap = 0xFFF9;  break;               
 
 case 0x00 | 0x40 : printd("1200@50MHz");    xcap = 0xFAEA;  break;               
 case 0x01 | 0x40 : printd("2400@50MHz");    xcap = 0xFD75;  break;               
 case 0x02 | 0x40 : printd("4800@50MHz");    xcap = 0xFEBA;  break;               
 case 0x03 | 0x40 : printd("9600@50MHz");    xcap = 0xFF5D;  break;               
 case 0x04 | 0x40 : printd("19200@50MHz");   xcap = 0xFFAF;  break;               
 case 0x05 | 0x40 : printd("28800@50MHz");   xcap = 0xFFCA;  break;               
 case 0x06 | 0x40 : printd("38400@50MHz");   xcap = 0xFFD7;  break;               
 case 0x07 | 0x40 : printd("57600@50MHz");   xcap = 0xFFE5;  break;               
 case 0x08 | 0x40 : printd("76800@50MHz");   xcap = 0xFFEC;  break;               
 case 0x09 | 0x40 : printd("94750@50MHz");   xcap = 0xFFF0;  break;               
 case 0x0A | 0x40 : printd("115200@50MHz");  xcap = 0xFFF2;  break;               
 
 case 0x00 | 0xC0 : printd("1200@100MHz");   xcap = 0xF5D4;  break;               
 case 0x01 | 0xC0 : printd("2400@100MHz");   xcap = 0xFAEA;  break;               
 case 0x02 | 0xC0 : printd("4800@100MHz");   xcap = 0xFD75;  break;               
 case 0x03 | 0xC0 : printd("9600@100MHz");   xcap = 0xFEBA;  break;               
 case 0x04 | 0xC0 : printd("19200@100MHz");  xcap = 0xFF5D;  break;               
 case 0x05 | 0xC0 : printd("28800@100MHz");  xcap = 0xFF93;  break;               
 case 0x06 | 0xC0 : printd("38400@100MHz");  xcap = 0xFFAF;  break;               
 case 0x07 | 0xC0 : printd("57600@100MHz");  xcap = 0xFFCA;  break;               
 case 0x08 | 0xC0 : printd("76800@100MHz");  xcap = 0xFFD7;  break;               
 case 0x09 | 0xC0 : printd("94750@100MHz");  xcap = 0xFFDF;  break;               
 case 0x0A | 0xC0 : printd("115200@100MHz"); xcap = 0xFFE5;  break;               
 
 default            : printd("  1200@25MHz");  xcap = 0xFD75;  break;               
 }
 printd("\n\r");
 
 
 
 
 
 
 
 
 
 
 sysClk = (byte)((xcap & 0xFF00) >> 8);                                                            
 
 RLDH   = sysClk;                                                                     
 sysClk = (byte) (xcap & 0x00FF);                                                             
 
 RLDL   = sysClk;                                                                     
 
 return t;                                                                            
 }
 
 
 
 
 
 
 
 
 static void uart0_Init(byte baudrate, parity)
 {
 byte  sysClk  = 0;
 
 uart0_TxHead  = 0;                                                                   
 uart0_TxTail  = 0;                                                                   
 uart0_TxCount = 0;                                                                   
 uart0_TxFlag  = 0;                                                                   
 uart0_RxHead  = 0;                                                                   
 uart0_RxTail  = 0;                                                                   
 uart0_RxCount = 0;                                                                   
 memset(&uart0_TxBuf[0],0,256);                                     
 memset(&uart0_RxBuf[0],0,256);                                     
 
 
 PCON          = PCON | 0x80;                                                       
 SM00          = 0;                                                                   
 SM01          = 1;                                                                   
 REN0          = 1;                                                                   
 TMOD          = 0x20;		                                                       
 uart0_setBaudRate(baudrate);                                                         
 TH2           = RLDH;                                                                
 TL2           = RLDL;                                                                
 ES0           = 1;                                                                   
 T2CON         = 0x30;                                                                
 TR2           = 1;                                                                   
 }  
 
 
 
 
 
 
 
 
 
 uint uart0_PutChar(char c)
 {
 uint count = 0;
 do
 {
 EA = 0;
 count = uart0_TxCount; 
 EA = 1;
 } 
 while (count == 256);
 uart0_TxBuf[uart0_TxHead] = c;
 EA = 0;
 uart0_TxCount++;
 EA = 1;
 uart0_TxHead++;
 uart0_TxHead &= (256 - 1);
 if (!uart0_TxFlag)
 {
 uart0_TxFlag = 1;
 SBUF0 = uart0_TxBuf[uart0_TxTail];
 }
 return c;
 }
 
 
 
 
 
 
 
 
 
 uint uart0_GetKey (void)
 {
 byte c;
 
 if (uart0_RxCount == 0) return 0x100;
 
 EA = 0;
 uart0_RxCount--;
 EA = 1;
 c = uart0_RxBuf[uart0_RxTail];
 uart0_RxTail++;
 uart0_RxTail &= (256 - 1);
 return c;
 }
 
 
 
 
 
 
 
 
 
 
 byte  uart0_TxChk(void)
 {
 return(uart0_TxFlag);
 }
 
 
 
 
 
 
 
 
 
 void uart0_PutStr(byte* pData, byte cnt)
 {
 uint count = 0;
 uint offset;
 
 
 
 do
 {
 EA = 0;
 count = uart0_TxCount; 
 EA = 1;
 } 
 while ((count + cnt) == 256);
 if((uart0_TxHead + cnt) > 256)
 {
 offset = 256 - uart0_TxHead;
 memmove(&uart0_TxBuf[uart0_TxHead], pData, offset);
 memmove(&uart0_TxBuf[0], pData+offset, cnt - offset);
 }
 else
 memmove(&uart0_TxBuf[uart0_TxHead], pData, cnt);
 
 EA = 0;
 uart0_TxCount += cnt;
 EA = 1;
 uart0_TxHead += cnt;
 uart0_TxHead &= (256 - 1);
 if (!uart0_TxFlag)
 {
 uart0_TxFlag = 1;
 SBUF0 = uart0_TxBuf[uart0_TxTail];
 
 }
 }
 
 
 
 
 
 
 
 
 
 void uart0_GetBuf(byte* pData, byte cnt)
 {
 uint offset;
 
 if((uart0_RxTail + cnt) > 256)
 {
 offset = 256 - uart0_RxTail;
 memmove(pData, &uart0_RxBuf[uart0_RxTail], offset);
 memmove(pData+offset, &uart0_RxBuf[0], cnt - offset);
 }
 else
 memmove(pData, &uart0_RxBuf[uart0_RxTail], cnt);
 }
 
 uint UA0_GetCount(void)
 {
 return(uart0_RxCount);
 }
 
 
 
 
 
 
 
 
 void uart0_RxBufUpdate(byte cnt)
 {
 uart0_RxTail = uart0_RxTail + cnt;
 uart0_RxTail &= (256 - 1);
 EA = 0;
 uart0_RxCount = uart0_RxCount - cnt;      
 EA = 1;
 }
 
 
 
 
 
 
 
 
 byte uart0_RxPtrSet(byte c)
 {
 uint length;
 byte *pData1, *pData2;
 
 length       = 256 - uart0_RxTail;
 pData1       = memchr(&uart0_RxBuf[uart0_RxTail], c, length);
 pData2       = &uart0_RxBuf[256];
 length       = *(pData1) - *(pData2);
 uart0_RxTail = length;
 return uart0_RxBuf[uart0_RxTail];
 }
 
 
 
 
 
 
 
 
 void uart0_RxBufSet(byte c, uint len)
 {
 uint offset;
 
 if((uart0_RxTail + len) > 256)
 {
 offset = 256 - uart0_RxTail;
 memset(&uart0_RxBuf[uart0_RxTail], c, offset);
 memset(&uart0_RxBuf[0], c, len - offset);
 }
 else
 memset(&uart0_RxBuf[uart0_RxTail], c, len);
 }
 
 
 
 
 
 
 
 
 byte uart0_RxBufCmp(byte *pData,byte len)
 {
 uint offset;
 byte result;
 
 if((uart0_RxTail + len) > 256)
 {
 offset  = 256 - uart0_RxTail;
 result  = memcmp(&uart0_RxBuf[uart0_RxTail], pData, offset);
 result |= memcmp(&uart0_RxBuf[0], pData+offset, len - offset);
 }
 else
 result  = memcmp(&uart0_RxBuf[uart0_RxTail], pData, len);
 
 return result;
 }
 
 
 
 
 
 
 
 
 uint uart0_GetByteCount(void)
 {
 return uart0_RxCount;
 }
 
 
 
 
 
 
 
 
 void uart0_DisplayRxPointers(void)
 {
 printd("--RxHead %du, RxTail %du, RxCnt %du--\n\r",uart0_RxHead ,uart0_RxTail ,uart0_RxCount);
 }
 
 
 
 
 
 
 
 
 void uart0_ShowRxBuffer(void)
 {
 uint i;
 
 for(i = 0;i < 256;i++)
 {
 if((i % 16) == 0) printd("\n\r%04dx :",i);
 printd(" %02bx",uart0_RxBuf[i]);
 }
 printd("\n\r");
 }
 
 
 
 
 
 
 
 
 
 
 char uart0_NoBlockGetkey (void)
 {
 char c = 0;
 
 if (uart0_RxCount !=0 )
 {
 EA   = 0;
 uart0_RxCount--;
 EA   = 1;
 c    = uart0_RxBuf[uart0_RxTail];
 uart0_RxTail++;
 uart0_RxTail &= (256 - 1);
 return c;
 }
 return 0;
 }
 
 
 
 
 
 
 
 
 
 
 
 static void uart1_ISR(void) interrupt 6
 {
 
 byte  tmp    = 0;                                                                    
 
 if (RI1)                                                                             
 {
 EA               = 0;                                                              
 if (uart1_RxCount != 256)                                        
 {
 tmp            = SBUF1;                                                          
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 {
 uart1_RxBuf[uart1_RxHead] = tmp;                                               
 uart1_RxCount++;                                                               
 uart1_RxHead++;                                                                
 uart1_RxHead &= (256 - 1);                                             
 }  
 }
 RI1             = 0;
 EA              = 1;
 }  
 
 if (TI1)
 {
 EA              = 0;                                                               
 uart1_TxTail++;                                                                    
 uart1_TxTail   &= (256 - 1);                                               
 uart1_TxCount--;                                                                   
 if (uart1_TxCount > 0)                                                             
 {
 SBUF1         = uart1_TxBuf[uart1_TxTail];                                       
 
 
 
 
 
 
 
 
 }
 else
 uart1_TxFlag  = 0;                                                               
 TI1             = 0;                                                               
 EA              = 1;                                                               
 }  
 }
 
 
 
 
 
 
 
 
 static void uart1_Init(byte baudrate, parity)
 {
 byte  sysClk  = 0;
 
 uart1_TxHead  = 0;  uart1_TxTail = 0;  uart1_TxCount = 0;  uart1_TxFlag  = 0;        
 uart1_RxHead  = 0;  uart1_RxTail = 0;  uart1_RxCount = 0;                            
 memset(&uart1_TxBuf[0],0,256);                                     
 memset(&uart1_RxBuf[0],0,256);                                     
 
 baudrate      = baudrate;
 
 
 PCON       = PCON; 
 SM10       = 0;                    
 
 
 SM11       = 1;                    
 REN1       = 1;                    
 TMOD       = 0x20;                 
 
 sysClk     = CSREPR & 0xC0;        
 switch (sysClk)                    
 {
 case 0xC0 : 
 switch(baudrate)
 {
 case 0x03 : TH1 = 0xE5; break;   
 case 0x04 : TH1 = 0xF2; break;   
 case 0x06 : TH1 = 0xF9; break;   
 default          : TH1 = 0xE5; break;                                         
 }
 break;        
 case 0x40  : 
 switch(baudrate)
 {
 case 0x03 : TH1 = 0xF2; break;                                         
 case 0x04 : TH1 = 0xF9; break;                                         
 default          : TH1 = 0xF2; break;                                         
 }
 break;        
 case 0x00  :         TH1 = 0xF9; break;                                         
 default       :         TH1 = 0xF9; break;                                         
 }
 ES1        = 1;                                                                      
 TR1        = 1;                                                                      
 TI1        = 0;                                                                      
 }
 
 
 
 
 
 
 
 
 
 uint uart1_PutChar(char c)
 {
 uint count                = 0;
 
 do
 {
 EA                      = 0;
 count                   = uart1_TxCount; 
 EA                      = 1;
 }
 while (count == 256);
 uart1_TxBuf[uart1_TxHead] = c;
 EA                        = 0;
 uart1_TxCount++;
 EA                        = 1;
 uart1_TxHead++;
 uart1_TxHead             &= (256 - 1);
 if (!uart1_TxFlag)
 {
 uart1_TxFlag            = 1;
 SBUF1                   = uart1_TxBuf[uart1_TxTail];
 }
 return c;
 }
 
 
 
 
 
 
 
 
 
 uint uart1_GetKey (void)
 {
 byte c;
 
 if (uart1_RxCount==0) return 0x100;
 EA            = 0;
 uart1_RxCount--;
 EA            = 1;
 c             = uart1_RxBuf[uart1_RxTail];
 uart1_RxTail++;
 uart1_RxTail &= (256 - 1);
 return c;
 }
 
 
 
 
 
 
 
 
 
 void uart1_PutStr(byte* pData, byte cnt)
 {
 uint count = 0;
 uint offset;
 
 do
 {
 EA = 0;
 count = uart1_TxCount; 
 EA = 1;
 } 
 while ((count + cnt) == 256);
 if((uart1_TxHead + cnt) > 256)
 {
 offset = 256 - uart1_TxHead;
 memmove(&uart1_TxBuf[uart1_TxHead], pData, offset);
 memmove(&uart1_TxBuf[0], pData+offset, cnt - offset);
 }
 else
 memmove(&uart1_TxBuf[uart1_TxHead], pData, cnt);
 EA = 0;
 uart1_TxCount += cnt;
 EA = 1;
 uart1_TxHead += cnt;
 uart1_TxHead &= (256 - 1);
 if (!uart1_TxFlag)
 {
 uart1_TxFlag = 1;
 SBUF1 = uart1_TxBuf[uart1_TxTail];
 }
 }
 
 
 
 
 
 
 
 
 
 void uart1_GetBuf(byte* pData, byte cnt)
 {
 uint offset;
 
 if((uart1_RxTail + cnt) > 256)
 {
 offset = 256 - uart1_RxTail;
 memmove(pData, &uart1_RxBuf[uart1_RxTail], offset);
 memmove(pData+offset, &uart1_RxBuf[0], cnt - offset);
 }
 else
 memmove(pData, &uart1_RxBuf[uart1_RxTail], cnt);
 }
 
 
 
 
 
 
 
 
 void uart1_RxBufUpdate(byte cnt)
 {
 
 uart1_RxTail = uart1_RxTail + cnt;
 uart1_RxTail &= (256 - 1);
 EA = 0;
 uart1_RxCount = uart1_RxCount - cnt;      
 EA = 1;
 
 }
 
 
 
 
 
 
 
 
 byte uart1_RxPtrSet(byte c)
 {
 uint length;
 byte *pData1, *pData2;
 
 length = 256 - uart1_RxTail;
 pData1 = memchr(&uart1_RxBuf[uart1_RxTail], c, length);
 pData2 = &uart1_RxBuf[256];
 length = *(pData1) - *(pData2);
 uart1_RxTail = length;
 return uart1_RxBuf[uart1_RxTail];
 }
 
 
 
 
 
 
 
 
 void uart1_RxBufSet(byte c, uint len)
 {
 uint offset;
 
 if((uart1_RxTail + len) > 256)
 {
 offset = 256 - uart1_RxTail;
 memset(&uart1_RxBuf[uart1_RxTail], c, offset);
 memset(&uart1_RxBuf[0], c, len - offset);
 }
 else
 memset(&uart1_RxBuf[uart1_RxTail], c, len);
 
 }
 
 
 
 
 
 
 
 
 byte uart1_RxBufCmp(byte *pData,byte len)
 {
 uint offset;
 byte result;
 
 if((uart1_RxTail + len) > 256)
 {
 offset = 256 - uart1_RxTail;
 result = memcmp(&uart1_RxBuf[uart1_RxTail], pData, offset);
 result |= memcmp(&uart1_RxBuf[0], pData+offset, len - offset);
 }
 else
 result = memcmp(&uart1_RxBuf[uart1_RxTail], pData, len);
 
 return result;
 }
 
 
 
 
 
 
 
 
 uint uart1_GetByteCount(void)
 {
 return uart1_RxCount;
 }
 
 
 
 
 
 
 
 
 void uart1_DisplayRxPointers(byte crlf)
 {
 printd("--RxHead %04dx, RxTail %04dx, RxCnt %du-- ",uart1_RxHead ,uart1_RxTail ,uart1_RxCount);
 if(crlf == 0)printd("\n\r");
 }
 
 
 
 
 
 
 
 
 void uart_ShowBuffer(byte* pd, byte eol)
 {
 uint i;
 
 for(i = 0;i < eol;i++)
 {
 if((i % 16) == 0) printd("\n\r%04dx :",i);
 printd(" %02bx",*(pd+i));
 }
 printd("\n\r************************************************************************\n\r");
 }
 
 
 
 
 
 
 
 
 
 
 char uart1_NoBlockGetkey (void)
 {
 char c = 0;
 
 if (uart1_RxCount !=0 )
 {
 EA = 0;
 uart1_RxCount--;
 EA = 1;
 c = uart1_RxBuf[uart1_RxTail];
 uart1_RxTail++;
 uart1_RxTail &= (256 - 1);
 return c;
 }
 else
 {
 return 0;
 }
 }
 
 
 
 
 
 
 
 
 byte  uart1_TxChk(void)
 {
 return(uart1_TxFlag);
 }
 
 uint UA1_GetCount(void)
 {
 return(uart1_RxCount);
 }
 
 
 
 
 
 
 
 
 
 
 
 
 void uart_Init(byte port, baudrate, parity)
 {
 if (port == 0)
 {
 uart0_Init(baudrate, parity);
 }
 else if (port == 1)
 {
 uart1_Init(baudrate, parity);
 }
 }
 
 
 
 
 
 
 
 
 bool UART_ParityChk(char checkByte)
 {
 byte  bitSum;
 uint  i;
 
 bitSum = 0;                                                                          
 for (i = 0; i <= 7; i++)                                                             
 {
 if (checkByte & (0x01 << i))                                                       
 {
 bitSum ++;                                                                       
 }
 }
 if ((bitSum % 2) == 0)                                                               
 return 0;                                                                      
 return 1;                                                                         
 }
 
 
 
 
 
 
 
 
 bool UART_SetPort(byte portNum)
 {
 uart_Init((portNum & 0x03),0x03, 0);
 return 1;
 }
 
 
