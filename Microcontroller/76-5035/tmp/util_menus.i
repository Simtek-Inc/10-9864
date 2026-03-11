
#line 1 "src\menu\util_menus.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "C:\KEIL\C51\INC\STDIO.H" /0






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned int size_t;
 
 
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
 
 
 
#line 20 "src\menu\util_menus.c" /0
 
  
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
 
 
 
 
 
 
 
 
 
#line 21 "src\menu\util_menus.c" /0
 
  
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
 
 
 
#line 22 "src\menu\util_menus.c" /0
 
  
#line 1 "SRC\MENU\UTIL_MENUS.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 







 
 
 typedef void (*MENU_FUNC)(void *CmdLine);
 
 typedef struct    menu_opt                                                                 
 {
 char              *OptName;                                                          
 MENU_FUNC         OptFunc;                                                           
 char              *OptDesc;                                                          
 }     MENU_OPT;
 
 typedef struct    cmd_menu                                                                 
 {
 char              *Command;                                                          
 char              *Shortcut;                                                         
 MENU_FUNC          Exe;                                                              
 char              *Description;                                                      
 }     CMD_MENU;
 
 
 static byte idata upgradestring[7] _at_ 0x32;
 
 
 bool  UTIL_MenuInit(void);
 void  UTIL_MenuExecute(void);
 bool  UTIL_MenuSetup(CMD_MENU *NewItem);                                                   
 
 void  UTIL_Stooges(void);                                                                  
 char  *UTIL_NextArg(char *Argp);
 
 int   UTIL_WaitKey(void);
 bool  UTIL_StrToByte(byte *ConStr, byte *ConRes);
 bool  UTIL_StrToWord(byte *ConStr, uint *ConRes);
 bool  UTIL_StrToULong(byte *ConStr, ulong *ConRes);
 
 int   UTIL_StrCmp(char *Str1, char *Str2);
 
 
#line 23 "src\menu\util_menus.c" /0
 
 
  
#line 1 ".\SRC\CPU\AX11000.H" /0









 



















 
 
 
 
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\CPU\AX11000_CFG.H" /0









 














 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 35 ".\SRC\CPU\AX11000.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void	AX11000_Init(void);
 byte	AX11000_GetSysClk(void);
 byte	AX11000_GetMemSdw(void);
 byte	AX11000_GetProgWst(void);
 byte	AX11000_GetDataSth(void);
 
 void	AX11000_SoftReset(void);
 
 
 void	AX11000_SoftReboot(void);
 
 
 void	AX11000_WatchDogSetting(byte wdIntrEnb, byte wdRstEnb, byte wdPrty, byte wdTime);
 
 
 
 
#line 25 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\MSTIMER\DELAY.H" /0









 














 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
 
 
 
 
 
 
 
 void DELAY_Init(void);
 void DELAY_Ms(uint);
 void DELAY_Us(uint);
 
 
 
 
 
 
#line 26 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\SI2C\SI2C.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\SI2C\SI2C.H" /0
#line 21 ".\SRC\SI2C\SI2C.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef enum _I2C_STATUS
 {
 I2C_OK = 0,
 I2C_NACK_ERR,
 } teI2C_STATUS;
 
 
 
 
 void I2C_Setup(byte Mode, uint PreClk, uint SlavDevAddr);
 teI2C_STATUS I2C_Read(byte DevAddr, byte RegAddr, byte *pBuf, byte Len);
 teI2C_STATUS I2C_Write(byte DevAddr, byte RegAddr, byte *pBuf, byte Len);
 
 
 
 
#line 27 "src\menu\util_menus.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\STRING.H" /0






 
 
 
 
 
 
#line 13 "C:\KEIL\C51\INC\STRING.H" /1
  
 
 
#line 16 "C:\KEIL\C51\INC\STRING.H" /0
 
 
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
 
 
#line 28 "src\menu\util_menus.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\STDLIB.H" /0






 
 
 
 
 
 
#line 13 "C:\KEIL\C51\INC\STDLIB.H" /1
  
 
 
#line 16 "C:\KEIL\C51\INC\STDLIB.H" /0
 
 
#line 18 "C:\KEIL\C51\INC\STDLIB.H" /1
  
 
#line 20 "C:\KEIL\C51\INC\STDLIB.H" /0
 
 
 
 typedef char wchar_t;
 
 
 
 #pragma SAVE
 #pragma REGPARMS
 
 extern int    abs  (int   val);
 extern long  labs  (long  val);
 
 extern float atof (char *s1);
 extern long  atol (char *s1);
 extern int   atoi (char *s1);
 extern int   rand ();
 extern void  srand (int);
 
 extern float         strtod  (char *, char **);
 extern long          strtol  (char *, char **, unsigned char);
 extern unsigned long strtoul (char *, char **, unsigned char);
 
 
 
 extern void init_mempool          (void xdata *p, unsigned int size);
 extern void xdata *malloc  (unsigned int size);
 extern void free                  (void xdata *p);
 extern void xdata *realloc (void xdata *p, unsigned int size);
 extern void xdata *calloc  (unsigned int size, unsigned int len);
 
 #pragma RESTORE
 
 
#line 29 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\GS2E\GCONFIG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 23 ".\SRC\GS2E\GCONFIG.H" /0
#line 23 ".\SRC\GS2E\GCONFIG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _GCONFIG_GID                                                                
 {
 byte                    id[8];                                                       
 } GCONFIG_GID;                                                                             
 
 typedef struct _GCONFIG_DEV_NAME                                                           
 {
 byte				DevName[16];                                                 
 } GCONFIG_DEV_NAME;                                                                        
 
 typedef struct _GCONFIG_MAC_ADDR                                                           
 {
 byte				MacAddr[6];                                                  
 } GCONFIG_MAC_ADDR;                                                                        
 
 
 extern  byte DefaultPassword[11];                                                          
 
 typedef struct _GCONFIG_PASSWORD                                                           
 {
 byte				pw[11];                                                      
 } GCONFIG_PASSWORD;
 
 typedef struct _GCONFIG_LTG_TABLE                                                          
 {
 word				point[256];                                                  
 } GCONFIG_LTG_TABLE;                                                                         
 
 typedef struct _GCONFIG_SMTP_CONFIG                                                        
 {
 byte                    DomainName[36];                                              
 byte                    FromAddr[36];                                                
 byte                    ToAddr1[36];                                                 
 byte                    ToAddr2[36];                                                 
 byte                    ToAddr3[36];                                                 
 uint                    EventEnableBits;                                             
 } GCONFIG_SMTP_CONFIG;                                                                     
 
 typedef struct                                                                             
 {
 byte                    Username[16];                                                
 byte                    Passwd[16];                                                  
 byte                    Level;                                                       
 byte                    Rsvd;                                                        
 } GCONFIG_ADMIN;                                                                           
 
 typedef struct _GCONFIG_CFG_PKT                                                            
 {
 GCONFIG_GID             Gid;                                                         
 
 byte                    Opcode;                                                      
 byte                    Option;                                                      
 GCONFIG_DEV_NAME        DevName;                                                     
 GCONFIG_MAC_ADDR        MacAddr;                                                     
 uint                    Network;                                                     
 ulong                   ServerDynamicIP;                                             
 ulong                   ServerStaticIP;                                              
 uint                    ServerDataPktListenPort;                                     
 byte                    MasterAddress;                                               
 byte                    t5;                                                          
 uint                    ServerBroadcastListenPort;                                   
 ulong                   ClientDestIP;                                                
 uint                    ClientDestPort;                                              
 ulong                   Netmask;                                                     
 GCONFIG_PASSWORD        pw;                                                          
 byte                    DeviceStatus;                                                
 uint                    EthernetTxTimer;                                             
 } GCONFIG_CFG_PKT;
 
 typedef struct _GCONFIG_CFG_DATA
 {
 uint                    CheckSum;
 uint                    CfgLength;
 
 ulong                   DeviceIp;
 ulong                   DeviceNetmask;
 ulong                   t6;                                                          
 ulong                   UdpAutoConnectClientIp;
 uint                    UdpAutoConnectClientPort;
 GCONFIG_DEV_NAME        DevName;
 uint                    Network;
 ulong                   ServerStaticIP;
 uint                    ServerDataPktListenPort;
 byte                    MasterAddress;                                               
 byte                    t5;                                                          
 uint                    ServerBroadcastListenPort;
 ulong                   ClientDestIP;
 uint                    ClientDestPort;
 ulong                   Netmask;
 GCONFIG_PASSWORD        pw;                                                          
 byte                    Option;
 uint                    EthernetTxTimer;
 GCONFIG_LTG_TABLE       lt;
 } GCONFIG_CFG_DATA;
 
 typedef struct _GCONFIG_MONITOR_PKT
 {
 GCONFIG_GID 		Gid;
 byte				Opcode;
 byte				ModemStatus;
 byte				VerStr[12];
 ulong				TxBytes;
 ulong				RxBytes;
 } GCONFIG_MONITOR_PKT;
 
 typedef struct _GCONFIG_CONN_CLOSE_PKT
 {
 GCONFIG_GID 		Gid;
 byte				Opcode;
 byte				Option;
 ulong				RemoteIp;
 uint 				Port;
 } GCONFIG_CONN_CLOSE_PKT;
 
 
 extern GCONFIG_GID xdata GCONFIG_Gid;
 
 
 void GCONFIG_Task(void);
 void GCONFIG_Init(void);
 void GCONFIG_SetConfigPacket(GCONFIG_CFG_PKT*);
 void GCONFIG_GetConfigPacket(GCONFIG_CFG_PKT*);
 void GCONFIG_ReadConfigData(void);
 void GCONFIG_WriteConfigData(void);
 void GCONFIG_ReadDefaultConfigData(void);
 void gconfig_ExDisplayConfigData(void);
 
 ulong GCONFIG_IpAddr2Ulong(byte*, byte);
 
 byte GCONFIG_EnableUdpAutoConnectAfterReboot(void);
 void GCONFIG_EnableFirmwareUpgrade(void);
 byte Simtek_Modes_Enable(byte);
 
 void GCONFIG_SetDeviceName(GCONFIG_DEV_NAME*);
 void GCONFIG_SetPassword(void* pNewPassword);
 void GCONFIG_SetNetwork(uint);
 void GCONFIG_SetServerStaticIP(ulong);
 void GCONFIG_SetHostMasterAddress(byte adrs);
 void GCONFIG_SetServerDataPktListenPort(uint );
 void GCONFIG_SetServerBroadcastListenPort(uint );
 void GCONFIG_SetClientDestIP(ulong);
 void GCONFIG_SetClientDestPort(uint );
 void GCONFIG_SetNetmask(ulong);
 
 void GCONFIG_SetEthernetTxTimer(uint );
 void GCONFIG_SetUdpAutoConnectClientIp(ulong);
 void GCONFIG_SetUdpAutoConnectClientPort(uint );
 
 GCONFIG_DEV_NAME* GCONFIG_GetDeviceName(void);
 GCONFIG_MAC_ADDR GCONFIG_GetMacAddress(void);
 void* GCONFIG_GetPassword(void);
 uint  GCONFIG_GetNetwork(void);
 ulong GCONFIG_GetServerStaticIP(void);
 byte  GCONFIG_GetHostMasterAddress(void);
 uint  GCONFIG_GetServerDataPktListenPort(void);
 uint  GCONFIG_GetServerBroadcastListenPort(void);
 ulong GCONFIG_GetClientDestIP(void);
 uint  GCONFIG_GetClientDestPort(void);
 ulong GCONFIG_GetNetmask(void);
 uint  GCONFIG_GetEthernetTxTimer(void);
 
 void  GCONFIG_WrValuesToLightingTable(word* pLTable);
 void  GCONFIG_SetLightingTable(word* pLTable);
 void  GCONFIG_DefaultLightingTable(void);
 void  GCONFIG_DisplayLightingTable(void);
 
 byte* GCONFIG_GetMacAddressP(void);
 
 
 
#line 30 "src\menu\util_menus.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\STDIO.H" /0






 
 
 
#line 10 "C:\KEIL\C51\INC\STDIO.H" /1
  
 
 
  
 
 
 
  
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 43 "C:\KEIL\C51\INC\STDIO.H" /0
 
#line 31 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\EEPROM\EEPROM.H" /0









 









 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 26 ".\SRC\EEPROM\EEPROM.H" /0
#line 26 ".\SRC\EEPROM\EEPROM.H" /0
 
  
#line 1 ".\SRC\SI2C\SI2C.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 18 ".\SRC\SI2C\SI2C.H" /1
  
 
 
  
 
 
 
 
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
 
  
  
  
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 120 ".\SRC\SI2C\SI2C.H" /0
 
 
#line 27 ".\SRC\EEPROM\EEPROM.H" /0
 
 
 
 
 
 
 
 
 
 
 void EEPROM_Init(void);
 teI2C_STATUS EEPROM_Read(byte DevAddr, byte RegAddr, byte *pBuf, byte Len);
 teI2C_STATUS EEPROM_Write(byte DevAddr, byte RegAddr, byte *pBuf, byte Len);
 
 
 
 
#line 32 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 33 "src\menu\util_menus.c" /0
 
  
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
 
 
 
#line 34 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\CPU\AX11000_CFG.H" /0









 














 
 
#line 27 ".\SRC\CPU\AX11000_CFG.H" /1
  
 
 
 
 
 
  
  
  
  
  
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
#line 35 "src\menu\util_menus.c" /0
#line 35 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern  byte DefaultDevName[16];                                                           
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern  uint                  PortLeaseTimeoutVal;                                         
 
 
 
 extern byte  lightingcal;
 extern byte  acLightTableReadBack;
 extern byte  arp_flag;
 extern word* addresslookup(byte index);                                                         
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 static byte oP0;                                                                           
 static byte oP1;                                                                           
 static byte oP2;                                                                           
 static byte oP3;                                                                           
 
 
 
 
 
#line 36 "src\menu\util_menus.c" /0
 
  
#line 1 ".\SRC\MAIN\HARDWARE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\MAIN\INSTRUMENT.H" /1
  
 
 
 
  
  
  
 
  
 
  
  
  
  
  
 
  
  
 
  
  
  
  
  
  
 
  
 
  
 
  
 
 
 
 
 
 
 
  
  
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
  
  
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
#line 20 ".\SRC\MAIN\HARDWARE.H" /0
#line 20 ".\SRC\MAIN\HARDWARE.H" /0
 
 
 
 
 
 
 
 
 extern uint  acReadP0;                                                                     
 extern uint  acReadP1;                                                                     
 extern uint  acReadP2;                                                                     
 extern uint  acReadP3;                                                                     
 extern uint  acRDFU;                                                                       
 extern uint  acAPF;                                                                        
 extern bool  fDebugPin;                                                                    
 extern bool  fNormalRun;                                                                   
 extern byte  HalfDuplex;                                                                   
 
 
 
 
 extern uint  acResetRequest;                                                               
 extern uint  acStatusRequest;                                                              
 extern uint  acDimmingRequest;		 
 extern uint  acMeterRequest;                                                          
 extern uint  acIndicatorRequest;
 extern uint  acDisplayRequest;
 extern uint  acDisplayDimmingRequest;
 extern uint  acDisplayContrastRequest;
 
 extern uint  acFirmwareRequest;                                                            
 extern uint  acPointerRequest;                                                             
 extern byte  bufDisplayReq[];
 extern byte  tmpDisplayReq[];
 extern byte  bufDimmingReq[];
 
 extern bool fDebugMode;                                                                    
 extern bool fTransmitMode;                                                                 
 
 
 extern byte  bufDimmingData[sizeof("\xF4\xFF\xFF") -1];
 
 extern byte  bufIndicatorData[sizeof("\xF3\x00") -1];
 extern byte  bufResetReq[sizeof("\xF0") -1];                                               
 extern byte  bufStatusRsp[sizeof("\xF1\x00\x00\x00\x00\x00\x00") -1];                                             
 extern byte  bufFirmwareRsp[sizeof("\xFE\x76\x50\x35\x2d\x76\x50\x36\x2d") -1];                                         
 extern byte  bufDisplayData[sizeof("\xF5\x00\x00\x00\x00\x00\x00\x00") -1];
 extern byte  bufDisplayDimmingData[sizeof("\xF8\x00") -1];
 extern byte  bufDisplayContrastData[sizeof("\xF9\x00")-1];
 
 extern uint main_readEthChar(byte* pDat);                                                  
#line 37 "src\menu\util_menus.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 const byte                          Check_Value = 0x5A;
 
 static      char              *Prompt    = ">> ";
 static      CMD_MENU          *Menus[50];                                           
 static      char              *NextCbuf = ((void *) 0);                                            
 static      char              CmdBuf[128];                                             
 static      int               MenuNum = 0;                                                 
 
 static      char              *pwPrompt  = "Enter Password ";
 static      char              *pwaPrompt = " !!UNSECURE!! ";
 static      byte              enterpw = 0;
 long              pwcnt = 0;
 byte        idata             fwAutoUpdated _at_ 0x31;
 
 
 static      int               UTIL_DoCmd(void *CmdLine);
 static      void              UTIL_MenuShow(CMD_MENU *ptMenu);
 static      void              UTIL_MenuHelp(void *CmdLine);
 static      void              Simtek_New(void *CmdLine);
 static      void              UTIL_FwUpdate(void);
 static      int               UTIL_StrCmp(char *Str1, char *Str2);
 static      int               UTIL_StrLen(char *Str);
 bool                          UTIL_StrToIPv4Num(void *cmdLine, byte *num);
 bool                          UTIL_StrToPortNum(void *cmdLine, byte *num);
 static      void              UTIL_Checksum(void);
 static      void              UTIL_CfgLen(void *cmdLine);
 
 static      void              UTIL_EraseEEPROM(void);
 
 
 
 
 static      void              UTIL_WriteI2C(void *cmdLine);
 static      void              UTIL_ReadI2C(void *cmdLine);
 static      void              UTIL_Fill(void *cmdLine);
 static      void              UTIL_Reset(void);
 static      void              UTIL_Reboot(void);
 static      void              Show_DCB(void);
 
 void              PortNumber(byte portlen,byte portaddr,char *title, void *cmdLine);
 void              binaryflagcontrol(byte celladdr, uint mask, char *title, char *defalt, char *nondefault, byte len, void *cmdLine);
 void              IPv4Address(byte epromaddr,char *Title,void *cmdLine);
 
 static      void              MACAddress(void *cmdLine);
 static      void              SubnetMask(void *cmdLine);
 static      void              DeviceName(void *cmdLine);
 static      void              DHCPClientCtrl(void *cmdLine);
 static      void              UDPProtoCtrl(void *cmdLine);
 static      void              TCPProtoCtrl(void *cmdLine);
 static      void              BroadcastCtrl(void *cmdLine);
 static      void              TrxModeCtrl(void *cmdLine);
 static      void              ReportMethodCtrl(void *cmdLine);
 static      void              UTIL_Rst_EEPROM(void);
 static      void              DebugModeCtrl(void *cmdLine);
 
 static      void              MessageFrames(void);
 
 static      void              Com1RxBuf(void);
 
 static      void              slavestatus1(void);
 static      void              slavestatus2(void);
 static      void              firmware1(void);
 static      void              firmware2(void);
 
 static      void              DeviceIP(void *cmdLine);
 static      void              HostIP(void *cmdLine);
 
 static      void              DeviceSIP(void *cmdLine);
 static      void              DeviceCIP(void *cmdLine);
 static      void              HostCIP(void *cmdLine);
 static      void              HostSIP(void *cmdLine);
 
 static      void              DevServerPort(void *cmdLine);
 static      void              DevClientPort(void *cmdLine);
 static      void              DevUnicastPort(void *cmdLine);
 static      void              DevBroadcastPort(void *cmdLine);
 static      void              HostServerPort(void *cmdLine);
 static      void              HostClientPort(void *cmdLine);
 
 uint              gconfig_Checksum(uint *pBuf, ulong length);
 
 static      void              UTIL_Set(void);
 static      void              UTIL_PWPrompt(void);
 static      void              UTIL_defaults(void);
 static      void              UTIL_Password(void *cmd);
 static      void              UTIL_ChangePW(void *cmd);
 static      void              UTIL_pwExit(void);
 
 static      void              UTIL_LtgCal(void);
 static  	void			  UTIL_LtgShw(void);
 
 static      CMD_MENU          MainMenu[] = 
 {
 {"command",               "shortcut", ((void *) 0),        "command functional description"},
 
 {"help",                  "?",   UTIL_MenuHelp,    "display help messages for menus"},
 {"reboot",                "rb",  UTIL_Reboot,      "Reboot the device without changing settings"},
 {"message_frames",        "mf",  MessageFrames,    "output the data arrays holding the host data"},
 {"lightingcal",           "lcal",UTIL_LtgCal,      "Turn on the lighting calibration feedback"},
 {"lightingshow",          "lshw",UTIL_LtgShw,      "Display the current lighting table in memory (LCAL must be enabled)"},
 
 
 
 
 
 
 {((void *) 0),                    ((void *) 0),  ((void *) 0),             ((void *) 0)},
 {"mask",                  ((void *) 0),  SubnetMask,       "read or set the IP subnet mask"},
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 {"write",                 "wr",  UTIL_WriteI2C,    "write data to the I2C EEPROM"}
 };
 
 
 
 static      void              slavestatus1(void)
 {
 printd("slavestatus1\n\r");
 
 }
 
 static      void              slavestatus2(void)
 {
 printd("slavestatus2\n\r");
 
 }
 
 static      void              firmware1(void)
 {
 printd("firmware 1\n\r");
 
 }
 
 static      void              firmware2(void)
 {
 printd("firmware 2\n\r");
 
 }
 
 
 
 
 
 
 
 
 static int   UTIL_DoCmd(void *CmdLine)
 {
 CMD_MENU    *ptMenuCur = ((void *) 0);
 CMD_MENU    *ptMenuTmp = ((void *) 0);
 char        *InBuf     = ((void *) 0);
 uint         Len       = 0;
 uint         i;
 
 ptMenuCur = ((void *) 0);                                                                    
 
 InBuf     = (char *)CmdLine;                                                         
 if (InBuf[0] == '?')                                                                 
 {
 UTIL_MenuHelp(CmdLine);                                                            
 return 0;                                                                          
 }
 if(enterpw == 1)                                                                  
 {
 UTIL_Password(CmdLine);                                                            
 return 0;                                                                          
 }
 
 for (i = 0; i < MenuNum; i ++)                                                       
 {
 ptMenuTmp = Menus[i];                                                              
 if (!ptMenuTmp)                                                                    
 {    break;    }                                                                 
 ptMenuTmp ++;                                                                      
 
 while ((ptMenuTmp->Command))                                                       
 {      
 if((pwcnt == 0) && (ptMenuTmp->Command == "show_device_config"))                 
 {    break;        }                                                           
 Len = UTIL_StrCmp(ptMenuTmp->Command, InBuf);                                    
 if ((Len == 0) || (Len > UTIL_StrLen(InBuf)))                                    
 {
 if (ptMenuCur)                                                                 
 {
 printd("1Ambiguous command: %s %du\n\r", InBuf, Len);                                 
 return -1;                                                                   
 }
 ptMenuCur = ptMenuTmp;                                                         
 }
 else                                                                             
 {
 Len = UTIL_StrCmp(ptMenuTmp->Shortcut, InBuf);                                 
 if ((Len == 0) || (Len > UTIL_StrLen(InBuf)))                                  
 {
 if (ptMenuCur)                                                               
 {
 printd("2Ambiguous command: %s %du\n\r", InBuf, Len);                               
 return -1;                                                                 
 }
 ptMenuCur = ptMenuTmp;                                                       
 }
 }
 ptMenuTmp ++;                                                                    
 }
 }
 if (!ptMenuCur)                                                                      
 {
 printd("Unknown command: %s\n\r", InBuf);                                          
 return -1;                                                                         
 }
 if (ptMenuCur->Exe)                                                                  
 {   (ptMenuCur->Exe)(CmdLine);   }                                                 
 return 0;                                                                            
 }
 
 
 
 
 
 
 
 
 static void UTIL_MenuShow(CMD_MENU *ptMenu)                                                  
 {
 char  str[30];
 byte  len; 
 
 printd("\nSIMTEK INC. device configuration menu (%s %s)\n\r", "03/10/26", "15:31:01"); 
 ptMenu ++;
 strcpy(str, ptMenu->Command);
 strcat(str, " (");
 strcat(str, ptMenu->Shortcut);
 strcat(str, ")             ");
 strcat(str, ptMenu->Description);
 strcat(str, "\0");
 
 
 printd("\r ----------------------------   -------------------------------------------\n\r");
 
 while ((ptMenu->Command)) 
 {
 
 strcpy(str, ptMenu->Command);
 if(ptMenu->Shortcut)
 {
 strcat(str, " (");
 strcat(str, ptMenu->Shortcut);
 strcat(str, ")");
 }
 strcat(str, "\0");
 len = strlen(str);  
 printd("  %-27s - %s\n\r", str, ptMenu->Description);
 ptMenu ++;
 
 }
 printd("\n\r");
 }
 
 
 
 
 
 
 
 
 static void UTIL_MenuHelp(void *CmdLine)
 {
 char        *Argp = ((void *) 0);
 uint        Len   = 0;
 uint        i;
 
 
 Argp = UTIL_NextArg((char *)CmdLine);                                                
 
 if (!*Argp)                                                                          
 {
 UTIL_MenuShow(Menus[0]);
 for (i = 0; i < MenuNum; i++)                                                      
 {
 if (!Menus[i])
 {            break;            }
 }
 return;
 }
 
 for (i = 0; i < MenuNum; i++)                                                        
 {
 if (!Menus[i])
 {
 break;
 }
 Len = UTIL_StrCmp(Argp, Menus[i]->Command);
 
 if ((Len == 0) || (Len > UTIL_StrLen(Argp)))                                   
 {
 UTIL_MenuShow(Menus[i]);
 return;
 }
 }
 printd("Unknown help parameter %s\n\r", Argp);
 
 return;
 }
 
 
 
 
 
 
 
 static void Simtek_New(void *CmdLine)
 {
 CmdLine = CmdLine;
 }
 
 
 
 
 
 
 
 
 static void UTIL_ReadI2C(void *cmdLine)
 {
 byte *cmd    = ((void *) 0);
 ulong device = 0;
 ulong addr   = 0;
 ulong len    = 0;
 ulong i;
 char  memdata[256];
 
 cmd = UTIL_NextArg(cmdLine);
 if (*cmd == 0)
 {
 printd("Usage : read <device address> <memory address> <memory length>\n\r");
 return;
 }
 if (UTIL_StrToULong(cmd, &device) == 0)
 {
 printd("Device address error.\n\r");
 return;
 }
  { if ((device < 0) || (device > 0x07)) { printf("%s\n", "The device address is out of range.\n\r"); return; } };
 cmd = UTIL_NextArg(cmd);
 if (*cmd == 0)
 {
 printd("No memory address specified\n\r");
 printd("Usage : read <device address> <memory address> <memory length>\n\r");
 return;
 }
 if (UTIL_StrToULong(cmd, &addr) == 0)
 {
 printd("Memory address error.\n\r");
 return;
 }
  { if ((addr < 0) || (addr > 0x07FF)) { printf("%s\n", "The memory address is out of range.\n\r"); return; } };
 cmd = UTIL_NextArg(cmd);
 if (*cmd == 0)
 {
 printd("No read length specified\n\r");
 printd("Usage : read <device address> <memory address> <memory length>\n\r");
 return;
 }
 if (UTIL_StrToULong(cmd, &len) == 0)
 {
 printd("Memory length error.\n\r");
 printd("length = %lu\n\r",len);
 return;
 }
  { if ((len < 1) || (len > 0x07FF)) { printf("%s\n", "The length is out of range.\n\r"); return; } };
 if((len / 16) > 0)
 { 
 printd(" Address    00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F\n\r");
 printd("         |--------------------------------------------------\n\r");
 }
 else
 {
 printd(" Address    ");
 for(i = 0; i < len;i++)
 printd("%02bx ",(byte)i);
 printd("\n\r");  
 printd("         |--");
 for(i = 0; i < len;i++)
 printd("---");
 printd("\n\r");  
 }
 if (EEPROM_Read((byte)(device|0xA0), (byte)addr, &memdata, (uint)len) == I2C_OK)
 {
 for (i = 0 ; i < len ; i ++)
 {
 if (((i) % 16) == 0)                    printd(" 0x%04dx  |  ",(uint)(addr+i));  
 printd("%02bx ", (byte)(memdata[i]));                                           
 if (((i+1) % 16) == 0)                  printd("\n\r");                          
 }
 printd("\n\r");
 }
 else
 {        printd("Read Error.\n");        }
 }  
 
 
 
 
 
 
 
 
 static void UTIL_WriteI2C(void *cmdLine)
 {
 
 
 
 byte *cmd = 0;
 ulong device = 0;
 ulong Addr = 0;
 ulong datatemp = 0;
 byte  memdata[64];
 uint  len = 0;
 byte  i;
 
 memset(&memdata[0],0,64);
 
 
 cmd = UTIL_NextArg(cmdLine);
 
 if (*cmd == 0)
 { printd("Usage : pwr <device address> <memory address> <memory data>\n\r"); return;}
 
 if (UTIL_StrToULong(cmd, &device) == 0)
 { printd("Device address error.\n\r"); return;}
  { if ((device < 0) || (device > 0x07)) { printf("%s\n", "The device address is out of range.\n\r"); return; } };
 
 cmd = UTIL_NextArg(cmd);
 
 if (*cmd == 0)
 {
 printd("No memory address specified\n\r");
 printd("Usage : pwr <device address> <memory address> <memory data>\n\r");
 return;
 }
 if (UTIL_StrToULong(cmd, &Addr) == 0)
 { printd("Memory address error.\n\r"); return;}
 
  { if ((Addr < 0) || (Addr > 0x07FF)) { printf("%s\n", "The memory address is out of range.\n\r"); return; } };
 
 
 cmd = UTIL_NextArg(cmd);
 
 if (*cmd == 0)
 {
 printd("No memory data specified\n\r");
 printd("Usage : pwr <device address> <memory address> <memory data>\n\r");
 return;
 }
 
 for (len = 0 ; len < 64 ; )
 {
 if (UTIL_StrToULong(cmd, &datatemp) == 0)
 { printd("Memory data error.\n\r"); return; }
  { if ((datatemp < 0) || (datatemp > 255)) { printf("%s\n", "The data is out of range.\n\r"); return; } };
 
 memdata[len] = datatemp;
 len ++;
 cmd = UTIL_NextArg(cmd);
 if (*cmd == 0)
 { break; }
 }
 if(EEPROM_Write((0xA0 | (byte)device), (byte)Addr, &memdata, (uint)len) == I2C_OK)
 {
 printd("Write Address : %lx\n\r", Addr);
 printd("Write Data : ");
 for (i = 0 ; i < len ; i ++)
 {
 printd("%02bx ", (byte)memdata[i]);
 }
 printd("\n\r");
 }
 else
 {
 printd("Write Error");
 }
 
 }  
 
 
 
 
 
 
 
 
 static void UTIL_Fill(void *cmdLine)
 {
 char *cmd;
 int   len   = 0;
 byte  start = 0;
 uint  end   = 0;
 byte  ch    = 0;
 
 
 cmd = UTIL_NextArg(cmdLine);                                                        
 if ((char *)cmd[0] == '?')                                                                  
 {
 len = UTIL_StrLen(cmdLine);                                                        
 cmd = malloc(len+1);                                                              
 strncpy(cmd, cmdLine, len);                                                       
 printd("Usage          :\n\r");                                                    
 printd("write to prom  : %s <start_addr> <end_addr> <data>",cmd);                 
 }
 else
 {
 if (UTIL_StrToByte(cmd, &start) == 0)                                         
 {  printd("bad argument 1\n\r");   return;   }                                   
 cmd = UTIL_NextArg(cmd);                                                         
 if (UTIL_StrToWord(cmd, &end)   == 0)                                         
 {  printd("bad argument 2\n\r");   return;   }                                   
 cmd = UTIL_NextArg(cmd);                                                         
 
 if (UTIL_StrToByte(cmd, &ch)    == 0)                                         
 {  printd("bad argument 3\n\r");   return;   }                                   
 printd("character : %02bx\n\r",ch);
 len = (end - (uint)start) + 1;                                                     
 printd("start     : %02bx\n\r",start);
 printd("end       : %02dx\n\r",end);
 printd("length    : %du\n\r",len);
 if(len < 0)                                                                        
 {  printd("range error\n\r");      return;   }                                   
 cmd = malloc(len);                                                                
 if(cmd == ((void *) 0))                                                                   
 { printd("unable to allocate required memory size");  }                          
 else
 { 
 memset(cmd,ch,len);                                                             
 printd("len       : %dd\n\r%s",len,cmd);
 if(EEPROM_Write(0xA0, start, cmd, len) != I2C_OK)                               
 {   printd("Write Error");   }                                                 
 }
 }
 printd("\n\r");
 free(cmd);
 }
 
 
 
 
 
 
 
 
 
 static void UTIL_FwUpdate(void)
 {
 strncpy(&upgradestring[0], "Simtek", 6);
 
 
 
 
 
 while(uart1_TxChk());                                                                
 
 AX11000_SoftReboot();
 }
 
 
 
 
 
 
 
 
 
 static int  UTIL_StrLen(char *Str)
 {
 int   StrLen = 0;
 
 while (*Str && (*Str != ' '))                                                        
 {
 Str ++;
 StrLen ++;
 }
 return (StrLen);
 }
 
 
 
 
 
 
 
 
 
 
 
 bool UTIL_MenuInit(void)
 {
 uint      MenuItem = 0;
 
 strncpy(&upgradestring[0], "******", 6);
 enterpw = 0;
 pwcnt   = 0;
 for (MenuItem = 0; MenuItem < 50; MenuItem++)
 {
 Menus[MenuItem] = ((void *) 0);
 }
 MenuNum  = 0;
 NextCbuf = &CmdBuf[0];
 return (UTIL_MenuSetup(MainMenu));
 }
 
 
 
 
 
 
 
 
 
 
 
 void UTIL_MenuExecute(void)
 {
 uint      Key = 0;
 
 
 Key = uart1_NoBlockGetkey();
 
 
 if (!Key)
 {  return;    }
 
 
 
 
 if ((Key == 0x0D) || (Key == 0x0A))
 {
 if (NextCbuf == CmdBuf)                                                            
 
 {
 printd("\n\r");
 
 
 
 
 }
 
 *NextCbuf = 0;                                                                     
 printd("\n\r");
 UTIL_DoCmd((void *) &CmdBuf[0]);                                                   
 NextCbuf = CmdBuf;                                                                 
 printd("\r");
 if(enterpw == 1) {                         printd(pwPrompt);    }               
 
 printd(Prompt);
 }
 
 
 
 if ((Key  >= ' ') && (Key < 123))                                                    
 {
 
 if(((Key  >= 'A') && (Key <= 'Z')))        
 Key |= 0x20;                                                                     
 if (NextCbuf >= &CmdBuf[128-1])                                                
 {    return;    }                                                                
 *NextCbuf = (char)Key;                                                             
 NextCbuf ++;                                                                       
 printd("%c",(char)Key); 
 }
 
 
 
 else if (Key == 0x007f)                                                              
 {
 if (NextCbuf > CmdBuf)                                                             
 {
 *NextCbuf = '\0';                                                                
 NextCbuf --;
 *NextCbuf = '\0';                                                                
 printd("\b \b");                                                                 
 }
 Key = '\0';
 }
 
 
 
 else if (Key == 0x1B)                                                                
 {
 while (NextCbuf > CmdBuf)                                                          
 {
 NextCbuf --;
 printd("\b \b");                                                                 
 }
 CmdBuf[0] = 0x1B;                                                                  
 CmdBuf[1] = 0;                                                                     
 
 }
 
 
 
 
 
 return;            
 }
 
 
 
 
 
 
 
 
 bool UTIL_MenuSetup(CMD_MENU *NewItem)
 {
 if (MenuNum < 50)
 {
 Menus[MenuNum] = NewItem;
 MenuNum ++;
 return (1);
 }
 else
 {
 printd("No more room for menu adding\n");
 return (0);
 }
 }
 
 
 
 
 
 
 
 
 
 void UTIL_Stooges(void)
 {
 printd("System error, function <UTIL_Stooges> should not be called\n");
 return;
 }
 
 
 
 
 
 
 
 
 
 
 
 char *UTIL_NextArg(char *Argp)
 {
 char *ss;      
 
 ss = Argp;
 ss = strchr(Argp,' ');
 while (*ss == ' ')
 {    ss ++;    }                                                                   
 return (ss);
 }
 
 
 
 
 
 
 
 
 
 
 int   UTIL_WaitKey(void)
 {
 while (!_getkey()) { }
 return (getchar());
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 bool                          UTIL_ByteAryToStr(char *hdr, byte *num, uint len)
 {
 uint a;
 
 printd("%-24s:",hdr);
 for(a = 1; a < (len + 1); a++)
 {
 printd(" %02bx", (byte)(*num++));
 if((a % 16) == 0) printd("\n\r%-24s:","");
 }
 printd("\n\r");
 return 1;
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_Checksum(void)
 {
 GCONFIG_CFG_DATA block;
 GCONFIG_CFG_DATA *dcb;
 
 dcb   = &block;
 if (EEPROM_Read(0xA0, 0x30, (byte *)dcb, sizeof(block)) == I2C_OK)        
 
 
 if (EEPROM_Write(0xA0, 0x30, (byte *)dcb, sizeof(dcb->CheckSum)) == I2C_OK)    
 {
 printd("checksum updated\n\r");
 }
 
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_CfgLen(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2, "DCB Length", cmdLine);                
 }
 
 
 
 
 
 
 
 
 
 
 bool                          UTIL_StrToIPv4Num(void *cmdLine, byte *num)
 {
 byte  *cmd;
 int   i;
 byte  x;
 
 cmd  = UTIL_NextArg(cmdLine);                                                        
 do
 {
 cmd = strchr(cmdLine,'.');                                                         
 if(*cmd != 0)   *cmd = ' ';                                                        
 }
 while(*cmd != 0);                                                                    
 cmd  = UTIL_NextArg(cmdLine);                                                        
 i    = strlen(cmd);                                                                  
 if(i == strspn(cmd, "0123456789 "))                                                  
 {
 for(i = 0;i != 4;i++)                                                              
 {
 x = strtoul(cmd, &cmd, 10);                                                      
 *num = x;                                                                        
 num++;                                                                           
 cmd = UTIL_NextArg(cmd);                                                         
 }
 }
 else { printd("\n\rInvalid character in IP address. The valid character set is '0123456789 .'\n\r"); return 0; }
 return 1;                                                                         
 }
 
 
 
 
 
 
 
 
 
 
 bool                          UTIL_StrToPortNum(void *cmdLine, byte *num)
 {
 byte  *cmd;
 int   i;
 uint  x;
 
 cmd  = UTIL_NextArg(cmdLine);                                                        
 i    = strlen(cmd);                                                                  
 
 if(i == strspn(cmd, "0123456789 "))                                                  
 {
 x = strtoul(cmd, &cmd, 10);                                                        
 *num = (byte)(x << 8);                                                             
 num++;                                                                             
 *num = (byte)x;                                                                    
 }
 else 
 { 
 printd("\n\rInvalid character in port number\n\r");                                
 printd("The valid character set is '0123456789 '\n\r");                            
 return 0;                                                                      
 }
 return 1;                                                                         
 }
 
 
 
 
 
 
 
 
 
 
 
 bool UTIL_StrToByte(byte *ConStr, byte *ConRes)
 {
 byte TmpStr[64];
 byte BufIndex, Len, ShiftIdx;
 byte *ConStart;
 byte TmpRes;
 
 for (BufIndex = 0; BufIndex < 64; BufIndex ++)
 {
 TmpStr[BufIndex] = ConStr[BufIndex];
 if ((TmpStr[BufIndex] == 0) || (TmpStr[BufIndex] == ' ') || (TmpStr[BufIndex] == '-') || (TmpStr[BufIndex] == '.'))
 {
 break;
 }
 }
 if (BufIndex == 64)
 {
 return (0);
 }
 
 TmpStr[BufIndex] = 0;
 Len = UTIL_StrLen(TmpStr);
 
 
 ConStart = TmpStr;
 for (BufIndex = 0; BufIndex < Len; BufIndex ++)
 {
 if (TmpStr[BufIndex] == '0')
 {
 ConStart ++;
 }
 else
 {
 break;
 }
 }
 if (*ConStart == 'x')
 {
 ConStart++;
 }
 
 
 Len = UTIL_StrLen(ConStart);
 if (Len > (sizeof(byte) * 2))
 {
 return (0);
 }
 
 *ConRes = 0;
 for (ShiftIdx = 0; Len != 0; ShiftIdx ++, Len --)
 {
 TmpRes = *(ConStart + Len - 1);
 
 if ((TmpRes >= '0') && (TmpRes <= '9'))
 TmpRes -= '0';
 else if ((TmpRes >= 'a') && (TmpRes <= 'f'))
 TmpRes = (TmpRes - 'a') + 10;
 else if ((TmpRes >= 'A') && (TmpRes <= 'F'))
 TmpRes = (TmpRes - 'A') + 10;
 else
 return (0);
 *ConRes |= (TmpRes << (ShiftIdx * 4));
 }
 return (1);
 }
 
 
 
 
 
 
 
 
 
 
 
 bool UTIL_StrToWord(byte *ConStr, uint *ConRes)
 {
 byte  TmpStr[64];
 byte  BufIndex, Len, ShiftIdx;
 byte *ConStart;
 uint  TmpRes;
 
 printd("");   
 for (BufIndex = 0; BufIndex < 64; BufIndex ++)
 {
 TmpStr[BufIndex] = ConStr[BufIndex];
 if ((TmpStr[BufIndex] == 0) || (TmpStr[BufIndex] == ' '))
 {
 break;
 }
 }
 
 if (BufIndex == 64)
 {            return (0);      }
 
 TmpStr[BufIndex] = 0;
 Len = UTIL_StrLen(TmpStr);
 
 
 ConStart = TmpStr;
 for (BufIndex = 0; BufIndex < Len; BufIndex ++)
 {
 if (TmpStr[BufIndex] == '0')
 {    ConStart ++;            }
 else
 {    break;                  }
 }
 if (*ConStart == 'x')
 {  ConStart ++;      }
 
 
 Len = UTIL_StrLen(ConStart);
 if (Len > (sizeof(uint) * 2))
 {
 return (0);
 }
 
 
 
 *ConRes = 0;
 for (ShiftIdx = 0; Len != 0; ShiftIdx ++, Len --)
 {
 TmpRes = *(ConStart + Len - 1);
 
 if ((TmpRes >= '0') && (TmpRes <= '9'))
 TmpRes -= '0';
 else if ((TmpRes >= 'a') && (TmpRes <= 'f'))
 TmpRes = (TmpRes - 'a') + 10;
 else if ((TmpRes >= 'A') && (TmpRes <= 'F'))
 TmpRes = (TmpRes - 'A') + 10;
 else
 return (0);
 *ConRes |= (TmpRes << (ShiftIdx * 4));
 }
 
 return (1);
 }
 
 
 
 
 
 
 
 
 
 
 
 bool         UTIL_StrToULong(byte *ConStr, ulong *ConRes)
 {
 byte  TmpStr[64];
 byte  BufIndex, Len, ShiftIdx;
 byte  *ConStart;
 ulong TmpRes;
 
 for (BufIndex = 0; BufIndex < 64; BufIndex ++)   
 {
 TmpStr[BufIndex] = ConStr[BufIndex];                                   
 if ((TmpStr[BufIndex] == 0) || (TmpStr[BufIndex] == ' '))              
 {     break;          }                                              
 }
 if (BufIndex == 64)
 {       return (0); }
 TmpStr[BufIndex] = 0;                                                    
 
 Len = UTIL_StrLen(TmpStr);                                               
 
 ConStart = TmpStr;                                                       
 for (BufIndex = 0; BufIndex < Len; BufIndex ++)                          
 {
 if (TmpStr[BufIndex] == '0')                                           
 {     ConStart ++;    }                                              
 else
 {     break;          }                                              
 }
 if (*ConStart == 'x')                                                    
 {
 ConStart++;                                                            
 }
 
 
 Len = UTIL_StrLen(ConStart);                                             
 if (Len > (sizeof(ulong) * 2))                                           
 {       return (0); }                                              
 
 
 *ConRes = 0;                                                             
 for (ShiftIdx = 0; Len != 0; ShiftIdx ++, Len --)                        
 {
 TmpRes = *(ConStart + Len - 1);                                        
 if ((TmpRes >= '0') && (TmpRes <= '9'))                                
 TmpRes -= '0';                                                       
 else if ((TmpRes >= 'a') && (TmpRes <= 'f'))                           
 TmpRes = (TmpRes - 'a') + 10;                                        
 else if ((TmpRes >= 'A') && (TmpRes <= 'F'))                           
 TmpRes = (TmpRes - 'A') + 10;                                        
 else                                                                   
 return (0);                                                      
 *ConRes |= (TmpRes << (ShiftIdx * 4));                                 
 }
 return (1);                                                           
 }
 
 
 
 
 
 
 
 
 
 
 
 int          UTIL_StrCmp(char *Str1, char *Str2)
 {
 int   Posi = 1;                                                                      
 
 while (*Str1 && *Str1 != ' ')                                                        
 {
 if ((*Str1 ++) != (*Str2 ++))                                                      
 {     return (Posi);      }                                                      
 Posi ++;                                                                           
 }
 if (*Str2)                                                                           
 {       return(Posi);       }                                                      
 return(0);                                                                           
 }
 
 
 
 
 
 
 
 
 
 
 static void  MACAddress(void *cmdLine)
 {
 char        memdata[20];
 byte       *cmd;
 
 byte        tmp;   
 short       i = 0;
 
 memset(&memdata[0],0,20);                                                            
 
 cmd = UTIL_NextArg(cmdLine);                                                         
 
 i = strlen(cmd);                                                                     
 if(i == 0)                                                                           
 {
 if (EEPROM_Read(0xA0, 0x30 + 2 + 2 + 16, &memdata[0], 6) == I2C_OK)                     
 {
 printd("mac : ");                                                                
 for (i = 0 ; i != 6 ; i++)                                            
 {   printd("%02bx ", (byte)memdata[i]);   }                                
 }
 else
 {   printd("Read Error.");   }                                                   
 }
 else if ((char *)cmd[0] == '?')
 {
 printd("Usage          :\n\r");
 printd("read from prom : mac\n\r");
 printd("write to prom  : mac <octet1> <octet2> <octet3> <octet4> <octet5> <octet6>");
 }
 else
 {
 for (i = 0 ; i < 20 ; i++)                                                         
 {
 if (*cmd == 0)          { break; }                                               
 if (UTIL_StrToByte(cmd, &tmp) == 0)                                          
 {   printd("Memory data error.\n\r"); return;   }                              
 memdata[i] = tmp;                                                                
 cmd = UTIL_NextArg(cmd);                                                         
 }
 if(i >= 5)
 {
 if(EEPROM_Write(0xA0, 0x30 + 2 + 2 + 16, &memdata, 6) == I2C_OK)                      
 {
 memset(&memdata[0],1,20);                                                      
 if (EEPROM_Read(0xA0, 0x30 + 2 + 2 + 16, &memdata, 6) == I2C_OK)                    
 {
 printd("mac : ");                                                            
 for (i = 0 ; i != 6 ; i++)                                            
 {   printd("%02bx ", (byte)memdata[i]);   }                                
 }
 else
 {   printd("Read-Back Error");   }                                           
 }
 else
 {   printd("Write Error");   }                                                 
 }
 else
 {
 printd("Incomplete MAC address?\n\r");                                           
 printd("Usage : mac <octet1> <octet2> <octet3> <octet4> <octet5> <octet6>");     
 }                       
 }
 printd("\n\r");
 }
 
 
 
 
 
 
 
 
 static void  binaryflagcontrol(byte celladdr, uint mask, char *title, char *defalt, char *nondefault, byte len, void *cmdLine)
 {
 char  memdata[5];
 byte *cmd;
 uint  i = 0;
 char *command;
 uint *dat;
 
 dat = (uint *)&memdata[0];
 i       = UTIL_StrLen(cmdLine);                                                      
 command = malloc(i+1);                                                               
 strncpy(command, cmdLine, i);                                                        
 
 *dat = 0;                                                                            
 cmd  = UTIL_NextArg(cmdLine);                                                        
 i    = strlen(cmd);                                                                  
 if(i == 0)
 {
 if (EEPROM_Read(0xA0, celladdr, &memdata[0], len) == I2C_OK)                       
 {
 if((*dat & mask) == 0)                                                           
 printd("%s : %s (%04dx)",title,defalt,*dat);                                               
 else
 printd("%s : %s (%04dx)",title,nondefault,*dat);                                           
 }
 else
 {   printd("Read Error.");   }                                                   
 }
 else if ((char *)cmd[0] == '?')                                                             
 {
 printd("Usage          :\n\r");                                                    
 printd("read from prom : %s\n\r",command,defalt,nondefault);                       
 printd("write to prom  : %s <%s/%s>",command,defalt,nondefault);                   
 free(command);
 }
 else
 {
 if (EEPROM_Read(0xA0, celladdr, &memdata[0], len) != I2C_OK)                       
 {   printd("Read Error");   }                                                    
 if(strstr(cmd, nondefault) == '\0')                                                
 *dat &= (~mask);                                                                 
 else
 *dat |= mask;                                                                    
 
 if((EEPROM_Write(0xA0, celladdr, &memdata[0], len)) == I2C_OK)                     
 {
 if (EEPROM_Read(0xA0, celladdr, &memdata[0], len) != I2C_OK)                     
 {   printd("Read Error.");   }                                                 
 if((*dat & mask) == 0)                                                           
 printd("%s : %s (%04dx)",title,defalt,*dat);                                                
 else
 printd("%s : %s (%04dx)",title,nondefault,*dat);                                            
 }
 else
 {   printd("Write Error");   }                                                   
 }
 printd("\n\r");
 }
 
 
 
 
 
 
 
 
 
 static      void              DHCPClientCtrl(void *cmdLine)
 {
 binaryflagcontrol(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 1, 0x4000, "DHCP Client", "disable", "enable", sizeof(0x4000), cmdLine);
 }
 
 
 
 
 
 
 
 
 
 static      void              UDPProtoCtrl(void *cmdLine)
 {
 binaryflagcontrol(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 1, 0x0800, "UDP Protocol", "off", "on", sizeof(0x0800), cmdLine);
 }
 
 
 
 
 
 
 
 
 
 static      void              TCPProtoCtrl(void *cmdLine)
 {
 binaryflagcontrol(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 1, 0x0400, "TCP Protocol", "off", "on", sizeof(0x0400), cmdLine);
 }
 
 
 
 
 
 
 
 
 
 static      void              BroadcastCtrl(void *cmdLine)
 {
 binaryflagcontrol(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 1, 0x0100, "UDP Brodacasts Recieved", "off", "on", sizeof(0x0100), cmdLine);
 }
 
 
 
 
 
 
 
 
 
 static      void              TrxModeCtrl(void *cmdLine)
 {
 binaryflagcontrol(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 1, 0x8000, "Transmit Mode", "server", "client", sizeof(0x8000), cmdLine);
 }
 
 
 
 
 
 
 
 
 
 static      void              ReportMethodCtrl(void *cmdLine)
 {
 binaryflagcontrol(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 1, 0x0020, "Report Method", "polled", "realtime", sizeof(0x0020), cmdLine);
 }
 
 
 
 
 
 
 
 
 
 static      void              DebugModeCtrl(void *cmdLine)
 {
 cmdLine = cmdLine;
 
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 static      void              MessageFrames(void)
 {
 UTIL_ByteAryToStr("Status Buf",   (byte *)&bufStatusRsp[0], sizeof("\xF1\x00\x00\x00\x00\x00\x00") -1);      
 }
 
 
 
 
 
 
 
 
 static      void              ComRxPtr(void)
 {
  uart1_DisplayRxPointers(0);
 }
 
 
 
 
 
 
 
 
 static      void              Com1RxBuf(void)
 {
 
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_EraseEEPROM(void)
 {
 char *cmd;
 
 cmd = malloc(0x100);                                                                 
 if(cmd == ((void *) 0))                                                                      
 { printd("unable to allocate required memory size");  }                            
 else
 { 
 memset(cmd,0xff,0x100);                                                            
 if(EEPROM_Write(0xA0, 0, cmd, 0x100) != I2C_OK)                                    
 {   printd("Write Error");   }                                                   
 }
 }
 
 
 
 
 
 
 
 
 static      void              DeviceName(void *cmdLine)
 {
 char  memdata[16];
 byte *cmd;
 uint  i = 0;
 
 memset(&memdata[0],0,16);                                                       
 cmd = UTIL_NextArg(cmdLine);                                                         
 i = strlen(cmd);                                                                     
 if(i == 0)
 {
 if (EEPROM_Read(0xA0, 0x30 + 2 + 2, &memdata[0], 16) == I2C_OK)
 {
 cmd = &memdata[0];
 printd("name : %s",cmd);
 }
 else
 {   printd("Read Error.");   }                                                   
 printd("\n\r");
 }
 else if ((char *)cmd[0] == '?')
 {
 printd("Usage          :\n\r");
 printd("read from prom : name\n\r");
 printd("write to prom  : name <char1> ... <char15>\n\r");
 }
 else
 {
 if(i > 15)i = 15;                                                                  
 memcpy(&memdata[0],cmd, i);                                                        
 if(EEPROM_Write(0xA0, 0x30 + 2 + 2, &memdata, (16)) == I2C_OK)                  
 {
 cmd = &memdata[0];
 printd("name : %s",cmd);
 }
 else
 {   printd("Write Error");   }                                                   
 printd("\n\r");
 }
 }
 
 
 
 
 
 
 
 
 static      void              IPv4Address(byte epromaddr,char *Title,void *cmdLine)
 {
 char *cmd;
 int   len   = 0;
 long  x;
 byte  *pbx;
 
 x    = 0;
 pbx  = (byte *)&x;
 cmd  = UTIL_NextArg(cmdLine);                                                        
 if((strlen(cmd)) == 0)                                                               
 {
 if (EEPROM_Read(0xA0, epromaddr, pbx, 4) == I2C_OK)                      
 {
 printd("%s : %ip",Title,x);                                                      
 }
 else
 {   printd("Read Error.");   }                                                   
 }
 else if ((char *)cmd[0] == '?')                                                             
 {
 len = UTIL_StrLen(cmdLine);                                                        
 cmd = malloc(len+1);                                                               
 strncpy(cmd, cmdLine, len);                                                        
 printd("Usage          :\n\r");                                                    
 printd("read from prom : %s\n\r",cmd);                                             
 printd("write to prom  : %s <octet1>.<octet2>.<octet3>.<octet4>",cmd);             
 }
 else
 {
 if(UTIL_StrToIPv4Num(cmdLine, pbx) == 1)                                        
 {
 if(EEPROM_Write(0xA0, epromaddr, pbx, 4) == I2C_OK)                    
 {
 memset(pbx,0,4);                                                   
 if (EEPROM_Read(0xA0, epromaddr, pbx, 4) == I2C_OK)                  
 {
 printd("%s : %ip",Title,x);                                                  
 }
 }
 else
 {   printd("Write Error");   }                                                 
 }
 else
 {
 printd("Incomplete IPv4 address?\n\r");                                          
 printd("Usage : host_ip <octet1>.<octet2>.<octet3>.<octet4>");                   
 }
 }
 printd("\n\r");
 }
 
 
 
 
 
 
 
 
 
 static      void              DeviceSIP(void *cmdLine)
 {
 IPv4Address(0x30 + 2 + 2 + 16 + 6, "Device Server IP", cmdLine);
 }
 
 
 
 
 
 
 
 
 static      void              DeviceCIP(void *cmdLine)
 {
 IPv4Address(0x30 + 2 + 2 + 16 + 6 + 4, "Device Client IP", cmdLine);
 }
 
 
 
 
 
 
 
 
 static      void              HostCIP(void *cmdLine)
 {
 IPv4Address(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4, "Host Client IP", cmdLine);
 }
 
 
 
 
 
 
 
 
 static      void              HostSIP(void *cmdLine)
 {
 IPv4Address(0x30 + 2 + 2 + 16 + 6 + 4 + 4, "Host Server IP", cmdLine);
 }
 
 
 
 
 
 
 
 
 static      void              SubnetMask(void *cmdLine)
 {
 IPv4Address(0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4, "Subnet Mask", cmdLine);
 }
 
 
 
 
 
 
 
 
 static      void              PortNumber(byte portlen,byte portaddr,char *title, void *cmdLine)
 {
 byte *cmd;
 char *command;
 byte *x;
 byte  i = 0;
 uint  n = 0;
 
 i       = UTIL_StrLen(cmdLine);                                                      
 command = malloc(i+1);                                                               
 strncpy(command, cmdLine, i);                                                        
 
 x    = malloc(portlen);                                                              
 memset(x,0,portlen);                                                                 
 cmd  = UTIL_NextArg(cmdLine);                                                        
 
 if((char *)cmd == ((void *) 0))                                                              
 {
 if (EEPROM_Read(0xA0, portaddr, x, portlen) == I2C_OK)                             
 {
 printd("%s : ", title);                                                          
 n = 0;                                                                           
 for(i = 0; i != portlen; i++)                                                    
 {
 n  = n << 8;                                                                   
 n |= *(x+i);                                                                   
 }
 printd("%du",n);                                                                 
 }
 else
 {   printd("Read Error.");   }                                                   
 }
 else if ((char *)cmd[0] == '?')                                                             
 {
 printd("Usage          :\n\r");                                                    
 printd("read from prom : %s\n\r",command);                                         
 printd("write to prom  : %s <word>",command);                                      
 free(command);
 }
 else
 {
 if((UTIL_StrToPortNum(cmdLine, x)) == 1)                                        
 {
 if(EEPROM_Write(0xA0, portaddr, x, portlen) == I2C_OK)                           
 {
 memset(x,0,portlen);                                                           
 if (EEPROM_Read(0xA0, portaddr, x, portlen) == I2C_OK)                         
 {
 printd("%s : ", title);                                                      
 n = 0;                                                                       
 for(i = 0; i != portlen; i++)                                                
 {
 n  = n << 8;                                                               
 n |= *(x+i);                                                               
 }
 printd("%du",n);                                                             
 }
 
 }
 else
 {   printd("Write Error");   }                                                 
 }
 else
 {
 printd("Invalid character in port number?\n\r");                                 
 printd("Usage : %s <word>", command);                                            
 }
 }
 printd("\n\r");
 free(x);
 }
 
 
 
 
 
 
 
 
 static      void              DevServerPort(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4, "Device Server Port", cmdLine);                            
 }
 
 
 
 
 
 
 
 
 static      void              DevClientPort(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2, "Device Client Port", cmdLine);                          
 }
 
 
 
 
 
 
 
 
 static      void              DevUnicastPort(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2, "Device Unicast Port", cmdLine);                         
 }
 
 
 
 
 
 
 
 
 
 
 static      void              UTIL_pwExit(void)
 {
 enterpw = 0;
 pwcnt   = 0;
 }
 
 
 
 
 
 
 
 
 static      void              DevBroadcastPort(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2, "Device Broadcast Port", cmdLine);                       
 }
 
 
 
 
 
 
 
 
 static      void              HostServerPort(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2, "Host Server Port", cmdLine);                         
 }
 
 
 
 
 
 
 
 
 static      void              HostClientPort(void *cmdLine)
 {
 PortNumber(2, 0x30 + 2 + 2 + 16 + 6 + 4 + 4 + 4 + 4 + 4 + 4 + 4 + 2 + 2 + 2 + 2 + 2, "Host Client Port", cmdLine);                         
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_Set(void)
 {
 byte  x[(4*9)+(2*11)+(1*4)+16+6];
 byte *px;
 uint  i;
 
 px = &x[0];
 
 if(EEPROM_Read(0xA0, 0x30, px, (4*9)+(2*11)+(1*4)+16+6) == I2C_OK)                       
 {
 
 for (i = 0 ; i < (4*9)+(2*11)+(1*4)+16+6 ; i ++)
 {
 printd("%02bx ", *(px+i));                                                       
 if (((i+1) % 16) == 0)                  printd("\n\r");                          
 }
 
 if (EEPROM_Write(0xA0, 0x80, px, (4*9)+(2*11)+(1*4)+16+6) == I2C_OK)                   
 {
 printd("defaults updated sucessfully");                                          
 }
 else
 {   printd("Default DCB Write Error");   }                                       
 }
 else
 {   printd("DCB Read Error");   }                                                  
 printd("\n\r");                                                                       
 while(uart1_TxChk());                                                                
 
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_Reset(void)
 {
 printd("Reset the device to the default settings\n\r");
 while(uart1_TxChk());
 AX11000_SoftReboot();                
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_Reboot(void)
 {
 printd("Reboot the device without saving changes\n\r");
 while(uart1_TxChk());
 AX11000_SoftReboot();
 }
 
 
 
 
 
 
 
 
 static      void              Show_DCB(void)                                               
 {
 GCONFIG_CFG_PKT block;                                                               
 GCONFIG_CFG_PKT *dcb;                                                                
 
 GCONFIG_GetConfigPacket(&block);                                                     
 printd("**************************************************************\n\r");        
 gconfig_ExDisplayConfigData();                                                       
 dcb = &block;                                                                        
 printd("%-24s: %02bx\n\r","  Op Code",   dcb->Opcode);                               
 printd("%-24s: %02bx\n\r","  Option",    dcb->Option);                               
 UTIL_ByteAryToStr("  Network", (byte *)&dcb->Network, 2);                            
 printd("%-24s: %du\n\r","  Broadcast Port", dcb->ServerBroadcastListenPort);         
 printd("%-24s: %lx\n\r","  ServerIP",       dcb->Netmask);                           
 printd("**************************************************************\n\r");        
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_PWPrompt(void)
 {
 printd("%s%s",Prompt,pwPrompt);
 enterpw = 1;
 }
 
 
 
 
 
 
 
 
 static  void UTIL_defaults(void)
 {
 GCONFIG_ReadDefaultConfigData();                     
 GCONFIG_WriteConfigData();                           
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_ChangePW(void *cmd)
 {
 void        *gpw = ((void *) 0);                                                             
 char acceptchar[] = "0123456789abcdefghijklmnopqrstuvwxyABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-_=+[]:;<>/";       
 int  len;
 int  pos;
 
 gpw = UTIL_NextArg(cmd);                                                             
 
 if (gpw != 0)                                                                        
 {
 len = strlen(gpw);                                                                 
 pos = strspn(gpw,acceptchar);                                                      
 printd("given password = %s l=%du p=%du\n\r",gpw,len,pos);                         
 if(len > 10)                                                                       
 {
 printd("!Error! : too many characters entered\n\r");                             
 printd("          password can be between 1 and 10 characters\n\r");             
 printd("          acceptable characters are %s\n\r",&acceptchar);                
 }
 else if(pos != len)                                                                     
 {
 printd("!Error! : invalid characters in new password\n\r");                      
 printd("          password can be between 1 and 10 characters\n\r");             
 printd("          acceptable characters are %s\n\r",&acceptchar);                
 }
 else  
 {
 
 
 }
 }
 else                                                                                 
 {
 printd("!Error! : no new password given.\n\r");                                    
 printd(" Usage  : change_password <new password>\n\r");                            
 printd("          password can be between 1 and 10 characters\n\r");               
 printd("          acceptable characters are %s\n\r",&acceptchar);                  
 }
 }
 
 
 
 
 
 
 
 
 static      void              UTIL_Password(void *cmd)
 {
 void        *Argp = ((void *) 0);
 char acceptchar[] = "0123456789abcdefghijklmnopqrstuvwxyABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-_=+[]:;<>/";       
 int  err;
 int  pos;
 char *spw;                                                                           
 
 cmd = cmd;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 {
 err = strlen(spw);                                                                 
 pos = strspn(spw,acceptchar);                                                      
 if((err > 10)||(pos != err))                                                       
 {
 if(pos != err)                                                                   
 {
 printd("!Error! : invalid password stored\n\r");                               
 printd("stored password reset to defualt\n\r");                                
 
 
 }
 else                                                                             
 {
 printd("all chars found p=%du e%du\n\r",pos,err);                              
 printd("stored password valid\n\r");                                           
 }
 }          
 printd("no match\n\r");
 pwcnt = 0;
 }          
 enterpw = 0;
 }
 
 static  void UTIL_LtgShw(void)
 {
 acLightTableReadBack = 1;
 }
 
 static      void              UTIL_LtgCal(void)
 {
 if(lightingcal == 0)
 {  lightingcal  =  1;   printd("LCAL = ENABLED\n\r");  }
 else
 {  lightingcal  =  0;  printd("LCAL = DISABLED\n\r");  }
 }
 
 
