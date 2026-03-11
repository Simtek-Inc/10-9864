
#line 1 "src\cpu\ax11000.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\CPU\REG80390.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 30 "src\cpu\ax11000.c" /0
 
  
#line 1 "SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 "SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 "SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 31 "src\cpu\ax11000.c" /0
 
  
#line 1 "SRC\CPU\INTERRUPT.H" /0









 

















 
 
 
 
 
  
#line 1 "SRC\CPU\INTERRUPT_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte		ax11000WakeupEvent;
 
 
 
 
#line 33 "SRC\CPU\INTERRUPT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 32 "src\cpu\ax11000.c" /0
 
  
#line 1 "SRC\CPU\AX11000.H" /0









 



















 
 
 
 
 
  
#line 1 "SRC\CPU\AX11000_CFG.H" /0









 














 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 35 "SRC\CPU\AX11000.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void	AX11000_Init(void);
 byte	AX11000_GetSysClk(void);
 byte	AX11000_GetMemSdw(void);
 byte	AX11000_GetProgWst(void);
 byte	AX11000_GetDataSth(void);
 
 void	AX11000_SoftReset(void);
 
 
 void	AX11000_SoftReboot(void);
 
 
 void	AX11000_WatchDogSetting(byte wdIntrEnb, byte wdRstEnb, byte wdPrty, byte wdTime);
 
 
 
 
#line 33 "src\cpu\ax11000.c" /0
 
 
 
 
 static byte data AX11000_XBP[2] _at_ 0x0D;
 
 
 static byte 	swResetOn = 0;
 static byte		globeInt = 0;
 static byte		cpuSysClk = 0;
 static byte		memShadow = 0;
 static byte		progWtst = 0;
 static byte		dataStretch = 0;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void AX11000_Init(void)
 {
 EA = 0;  
 
 P0 = 0xFF;
 P1 = 0xFF;
 P2 = 0xFF;
 P3 = 0xFF;
 
 
 if (CSREPR & 0x10)
 {
 memShadow = 1;
 
 
 switch (CSREPR & (0x40|0x80))
 {
 case 0xC0 :
 cpuSysClk = 0xC0;
 WTST = 0x01;
 CKCON = 0x01;
 break;
 case 0x40 :
 cpuSysClk = 0x40;
 WTST = 0x00;
 CKCON = 0x01;
 break;
 case 0x00 :
 cpuSysClk = 0x00;
 WTST = 0x00;
 CKCON = 0x01;
 break;
 }
 }
 else
 {
 memShadow = 0;
 
 switch (CSREPR & (0x40|0x80))
 {
 case 0xC0 :
 cpuSysClk = 0xC0;
 WTST = 0x07;
 CKCON = 0x01;
 break;
 case 0x40 :
 cpuSysClk = 0x40;
 WTST = 0x03;
 CKCON = 0x01;
 break;
 case 0x00 :
 cpuSysClk = 0x00;
 WTST = 0x01;
 CKCON = 0x01;
 break;
 }
 }
 
 progWtst = WTST & 0x07;
 dataStretch = CKCON & 0x07;
 
 PCON	&= ~0x04;	 
 
 EIF		&= ~0x08;	 
 EIF		&= ~0x10;	 
 if (WTRF)
 {
 CSREPR |= 0x02;
 WTRF	= 0;		 
 }
 
 if (swResetOn == 1)
 {
 I2CDR = 0x10;
 I2CCIR = 0x04;
 do
 {
 I2CCIR =0x06;
 swResetOn = I2CDR;
 } 
 while (swResetOn & 0x08);
 
 swResetOn = 0;
 }
 
 PINT2	= 1;		 
 
  {EX0 = 0;};		 
  {EX1 = 0;};		 
  {EINT2 = 0;};		 
  {EINT3 = 0;};		 
  {EINT4 = 1;};		 
  {EINT5 = 0;};		 
  {EINT6 = 1;};		 
 
 if (globeInt & 0x80)
 EA = globeInt & 0x01;
 else
 EA = 1;		 
 }
 
 
 
 
 
 
 
 
 
 byte AX11000_GetSysClk(void)
 {
 return cpuSysClk;
 }
 
 
 
 
 
 
 
 
 
 
 byte AX11000_GetMemSdw(void)
 {
 return memShadow;
 }
 
 
 
 
 
 
 
 
 
 
 byte AX11000_GetProgWst(void)
 {
 return progWtst;
 }
 
 
 
 
 
 
 
 
 
 
 byte AX11000_GetDataSth(void)
 {
 return dataStretch;
 }
 
 
 
 
 
 
 
 
 
 
 void AX11000_SoftReset(void)
 {
 if (EA)
 globeInt = 0x01 | 0x80;  
 else
 globeInt = 0x80;
 EA = 0;
 swResetOn = 1;
 CSREPR |= 0x01;
 }
 
 
 
 
 
 
 
 
 
 
 void AX11000_SoftReboot(void)
 {
 CSREPR |= 0x02;
 }
 
 
 
 
 
 
 
 
 
 
 void AX11000_WatchDogSetting(byte wdIntrEnb, byte wdRstEnb, byte wdPrty, byte wdTime)
 {
 CKCON |= wdTime;
 
 if (wdIntrEnb & 1)
 {
 EWDI = 1;
 }
 else
 {
 EWDI = 0;
 }
 
 if (wdRstEnb & 1)
 {
 TA = 0xAA;
 TA = 0x55;
 EWT = 1;
 }
 else
 {
 TA = 0xAA;
 TA = 0x55;
 EWT = 0;
 }
 
 if (wdPrty & 1)
 {
 PWDI = 1;
 }
 else
 {
 PWDI = 0;
 }
 
 TA = 0xAA;
 TA = 0x55;
 RWT = 1;
 WTRF = 0;
 WDIF = 0;
 }
 
 
 
