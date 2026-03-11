
#line 1 "src\main\main.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
#line 26 "src\main\main.c" /0
 
  
#line 1 "SRC\MAIN\MAIN.H" /0









 








 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 25 "SRC\MAIN\MAIN.H" /0
 
  
#line 1 "SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
 
#line 26 "SRC\MAIN\MAIN.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte                   EthTxBuffer[1024];
 extern uint                   EthTxBufHead;                        
 extern uint                   EthTxBufTail;                        
 extern uint                   EthTxCount;
 
 
 
 uint writeEthTxBuffer(byte ch, uint Count);
 void WriteEthTxCount(uint TempCount);
 uint readEthTxBufCount(void);
 uint main_readEthChar(byte* pDat);
 void NOP(uint loop);
 void fpgaWrite(byte addr, byte dat);
 byte fpgaRead(byte addr);
 
 
 
 
 
#line 27 "src\main\main.c" /0
 
  
#line 1 ".\SRC\FPGA\FPGA.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void writeFpgaData(byte adrs, uint dat, byte numofbits);                            
 void writeFpgaDataL(byte adrs, byte *pdat, byte numofbits);                         
 uint readFpgaData(byte adrs, numofbits);                                            
#line 28 "src\main\main.c" /0
 
  
#line 1 ".\SRC\ADAPTER\ADAPTER.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\ADAPTER\ADAPTER.H" /0
#line 21 ".\SRC\ADAPTER\ADAPTER.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ADAPTER\ADAPTER_CFG.H" /0









 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 ".\SRC\ADAPTER\ADAPTER.H" /0
 
  
#line 1 ".\SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 23 ".\SRC\ADAPTER\ADAPTER.H" /0
 
 
 
 
 
 
 
 extern byte ETH_IsPppoe;
 extern byte ETH_DoDhcp;
 extern byte ETH_PppoeHeaderLen;
 extern byte ETH_DhcpArpReply;
 
 
 
 
 
 
 
 
 
 
 
 void ETH_Init(void);
 void ETH_Start(void);
 void ETH_Send(uint);
 void ETH_SendPkt(byte xdata*, uint);
 void ETH_SendArpToGateway(bool);
 void ETH_SendArpRequest(ulong dstIp);
 void ETH_RestartSendArpToGateway(void);
 void ETH_SendDhcpArpRequest(void);
 
 
 
#line 29 "src\main\main.c" /0
 
  
#line 1 ".\SRC\MSTIMER\MSTIMER.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 27 ".\SRC\MSTIMER\MSTIMER.H" /0
#line 27 ".\SRC\MSTIMER\MSTIMER.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\MSTIMER\MSTIMER_CFG.H" /0









 














 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
#line 28 ".\SRC\MSTIMER\MSTIMER.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte idata ExecuteRuntimeFlag;
 
 
 
 void SWTIMER_Init(void);
 void SWTIMER_Start(void);
 ulong SWTIMER_Tick(void);
 
#line 53 ".\SRC\MSTIMER\MSTIMER.H" /1
 
 
#line 55 ".\SRC\MSTIMER\MSTIMER.H" /0
 
 
 
 
#line 30 "src\main\main.c" /0
 
  
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
 
 
 
 
#line 31 "src\main\main.c" /0
 
  
#line 1 ".\SRC\CPU\INTERRUPT.H" /0









 

















 
 
 
 
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\CPU\INTERRUPT_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte		ax11000WakeupEvent;
 
 
 
 
#line 33 ".\SRC\CPU\INTERRUPT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 32 "src\main\main.c" /0
 
  
#line 1 ".\SRC\ETHERNET\STOE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 24 ".\SRC\ETHERNET\STOE.H" /0
#line 24 ".\SRC\ETHERNET\STOE.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /1
  
 
 
  
  
 
  
 
 
 
  
  
  
 
 
#line 40 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /0
 
#line 25 ".\SRC\ETHERNET\STOE.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 24 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\MAC.H" /0
#line 24 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\MAC.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /1
  
 
 
  
  
 
  
 
 
 
  
  
  
 
 
#line 40 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /0
 
#line 25 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _MAC_INFORMATION
 {
 
 
 
 
 
 
 
 byte	LinkSpeed;
 byte	FullDuplex;
 byte  MediumLinkType;    
 byte	NetworkType;
 byte	InterruptMask;
 
 } MAC_INFO;
 
 
 typedef struct _MAC_WAKEUP_FRAME
 {
 byte  Mode;        
 byte  Offset0;     
 byte  Offset1;     
 ulong Mask0;       
 ulong Mask1;       
 byte* Pframe;      
 byte	Length;
 
 } MAC_WUF;
 
 
 
 
 
 void MAC_Init(byte);
 void MAC_Start(void);
 void mac_StopOperate(void);
 void mac_InterruptDisable(void);
 byte* MAC_GetMacAddr(void);
 void MAC_SetMacAddr(byte*);
 void MAC_SetRxFilter(byte);
 void  MAC_SetInterruptFlag(void);
 byte  MAC_GetInterruptFlag(void);
 void  MAC_ProcessInterrupt(void);
 byte  MAC_ProcessInterruptExt(void);
 void  MAC_MultiFilter(byte*, byte);
 
 
 
 
#line 26 ".\SRC\ETHERNET\STOE.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\PHY.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 25 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\PHY.H" /0
#line 25 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\PHY.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _PHY_INFORMATION
 {
 byte	PhyAddr;
 byte	PhyType;
 
 } PHY_INFO;
 
 
 
 void PHY_Init(byte);
 uint PHY_CheckMediaType(void);
 void PHY_PowerUp(void);
 void PHY_WatchDog(void);
 void phy_WriteReg(byte regaddr, uint value);
 
 
 
#line 27 ".\SRC\ETHERNET\STOE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _LOCAL_STATION
 {
 
 byte	PermStaAddr[6];
 byte	CurrStaAddr[6];
 
 
 ulong	StationIP;
 ulong	SubnetMask;
 ulong	Gateway;
 ulong	DefaultIP;
 ulong	DefaultMask;
 ulong	DefaultGateway;
 
 } LOCAL_STATION;
 
 
 typedef struct _PACKET_INFORMATION
 {
 byte xdata*	PBuf;
 byte xdata*	PIpHeader;
 byte xdata*	PTUIHeader;	 
 byte xdata*	PData;
 
 uint		TotalLen;
 uint		IpTotalLen;
 uint		TUITotalLen;
 uint		DataLen;
 byte		Protocol;
 byte		IpHeaderLen;
 byte		TcpHeaderLen;
 byte		SocketId;
 byte		Pages;
 
 } PACKET_INFORMATION;
 
 
 typedef struct _BUF_DESC_PAGE
 {
 
 
 


 
 
 byte	BDP_ID;
 byte	Pad0;
 uint	RSPP;
 uint	REPP;
 uint	RHPR;
 uint	RTPR;
 byte	RFP;
 byte	Pad1;
 
 LOCAL_STATION 	NetStation;
 PHY_INFO		PhyInfo;
 MAC_INFO		MacInfo;
 
 byte	RcvReserved[(128 - 12 -	sizeof (LOCAL_STATION) - sizeof (PHY_INFO) -	sizeof (MAC_INFO))];
 
 
 uint	TSPP;
 uint	TEPP;
 uint	THPR;
 uint	TTPR;
 byte	TFP;
 byte	Pad2;
 
 uint	VSPP;
 
 byte xdata*	RcvStartAddr;
 byte xdata*	RcvEndAddr;
 byte xdata*	XmtStartAddr;
 byte xdata*	XmtEndAddr;
 
 PACKET_INFORMATION	STOE_TxInform;
 PACKET_INFORMATION	STOE_RxInform;
 
 } BUF_DESC_PAGE;
 
 
 typedef struct _STOE_FRAME_HEADER
 {
 uint	NPR;
 uint	Length;
 byte	Protocol;
 byte	DataOffset;
 byte	Packet;
 
 } STOE_FRAME_HEADER;
 
 
 extern LOCAL_STATION xdata*	PNetStation;
 extern BUF_DESC_PAGE xdata* PBDP;
 extern void (*STOE_RcvCallback)(byte xdata*, uint, byte);
 
 
 
 void STOE_Init(byte);
 void STOE_Start(void);
 void stoe_StopOperate(void);
 
 
 
 
 
 
 void STOE_SetIPAddr(ulong);
 void STOE_SetSubnetMask(ulong);
 void STOE_SetGateway(ulong);
 void STOE_WaitHwReleaseRcvBuf(void);
 void STOE_ProcessInterrupt(void);
 void STOE_Send(byte xdata*, uint, byte);
 byte xdata* STOE_AssignSendBuf(uint);
 byte xdata* STOE_CopyCode2TPBR(byte xdata*, byte*, uint);
 byte STOE_CHECK_MAC(ulong *ip_addr);
 
 
 
#line 33 "src\main\main.c" /0
 
  
#line 1 ".\SRC\SWDMA\DMA.H" /0









 














 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 32 ".\SRC\SWDMA\DMA.H" /0
#line 32 ".\SRC\SWDMA\DMA.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\SWDMA\DMA_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 33 ".\SRC\SWDMA\DMA.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void DMA_ReadReg(byte, byte xdata*, byte);
 void DMA_WriteReg(byte, byte xdata*, byte);
 void DMA_Init(void);
 void DMA_Start(void);
 byte xdata* DMA_GrantXdata(byte xdata*, byte xdata*, uint);
 
 byte* DMA_Grant(byte*, byte*, uint);
 
 
 
 
 
 
 
#line 34 "src\main\main.c" /0
 
  
#line 1 ".\SRC\TCPIP\TCPIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\TCPIP\TCPIP.H" /0
#line 21 ".\SRC\TCPIP\TCPIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte xdata uip_buf[];
 extern volatile uint idata uip_len;
 extern volatile byte *uip_appdata;
 extern byte xdata uip_getgatewaymacaddrflag;
 
 
 
 
 
 
 
 
 
 
 
 void TCPIP_Init(byte);
 byte TCPIP_Bind(byte (* )(ulong xdata*, uint, byte), void (* )(byte, byte), void (* )(byte xdata*, uint, byte));
 void TCPIP_Unbind(byte);
 
 
 byte TCPIP_TcpListen(uint, byte);
 void TCPIP_TcpUnlisten(uint);
 byte TCPIP_TcpNew(byte, byte, ulong, uint, uint);
 void TCPIP_TcpConnect(byte);
 void TCPIP_TcpKeepAlive(byte, byte);
 void TCPIP_TcpClose(byte);
 uint TCPIP_QueryTcpLocalPort(byte);
 void TCPIP_TcpSend(byte, byte*, uint, byte);
 
 
 byte TCPIP_UdpListen(uint, byte);
 void TCPIP_UdpUnlisten(uint);
 byte TCPIP_UdpNew(byte, byte, ulong, uint, uint);
 void TCPIP_UdpClose(byte);
 uint TCPIP_QueryUdpLocalPort(byte);
 void TCPIP_UdpSend(byte, byte*,byte, byte*, uint);
 
 
 void TCPIP_AssignLowlayerXmitFunc(void (* )(uint));
 void TCPIP_AssignPingRespFunc(void (* )(void));
 void TCPIP_PeriodicCheck(void);
 void TCPIP_SetPppoeMode(byte);
 ulong TCPIP_GetIPAddr(void);
 ulong TCPIP_GetSubnetMask(void);
 ulong TCPIP_GetGateway(void);
 void TCPIP_SetIPAddr(ulong);
 void TCPIP_SetSubnetMask(ulong);
 void TCPIP_SetGateway(ulong);
 void TCPIP_SetMacAddr(byte*);
 void TCPIP_Receive(void);
 void TCPIP_DontFragment(byte);
 
 
 uint htons(uint);
 
 
 void uip_arp_ipin(void);
 void uip_arp_arpin(void);
 void uip_arp_out(void);
 
 
 
 
 
 
 
 
#line 35 "src\main\main.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 36 "src\main\main.c" /0
 
  
#line 1 ".\SRC\MSTIMER\DELAY.H" /0









 














 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
 
 
 
 
 
 
 
 void DELAY_Init(void);
 void DELAY_Ms(uint);
 void DELAY_Us(uint);
 
 
 
 
 
 
#line 37 "src\main\main.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\INTRINS.H" /0






 
 
 
 
 
 extern void          _nop_     (void);
 extern bit           _testbit_ (bit);
 extern unsigned char _cror_    (unsigned char, unsigned char);
 extern unsigned int  _iror_    (unsigned int,  unsigned char);
 extern unsigned long _lror_    (unsigned long, unsigned char);
 extern unsigned char _crol_    (unsigned char, unsigned char);
 extern unsigned int  _irol_    (unsigned int,  unsigned char);
 extern unsigned long _lrol_    (unsigned long, unsigned char);
 extern unsigned char _chkfloat_(float);
 extern void          _push_    (unsigned char _sfr);
 extern void          _pop_     (unsigned char _sfr);
 
 
 
#line 38 "src\main\main.c" /0
 
  
#line 1 "SRC\MAIN\HARDWARE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 "SRC\MAIN\INSTRUMENT.H" /1
  
 
 
 
  
  
  
 
  
 
  
  
  
  
  
 
  
  
 
  
  
  
  
  
  
 
  
 
  
 
  
 
 
 
 
 
 
 
  
  
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
  
  
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
#line 20 "SRC\MAIN\HARDWARE.H" /0
#line 20 "SRC\MAIN\HARDWARE.H" /0
 
 
 
 
 
 
 
 
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
#line 39 "src\main\main.c" /0
 
  
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
 
 
 
#line 40 "src\main\main.c" /0
 
  
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
 
 
 
#line 41 "src\main\main.c" /0
 
  
#line 1 ".\SRC\ETHERNET\PHY.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 21 ".\SRC\ETHERNET\PHY.H" /1
  
 
 
 
  
 
 
  
  
  
 
 
  
  
  
  
  
  
 
 
 
  
  
  
 
 
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 102 ".\SRC\ETHERNET\PHY.H" /0
 
#line 42 "src\main\main.c" /0
 
  
#line 1 ".\SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 21 ".\SRC\ETHERNET\MAC.H" /1
  
 
 
  
  
 
 
  
  
  
  
 
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
  
  
  
  
 
 
  
  
  
  
  
 
 
  
  
 
 
  
  
  
  
  
  
  
 
 
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 174 ".\SRC\ETHERNET\MAC.H" /0
 
 
#line 43 "src\main\main.c" /0
 
  
#line 1 ".\SRC\GS2E\GUDPDAT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\GS2E\GUDPDAT.H" /0
#line 21 ".\SRC\GS2E\GUDPDAT.H" /0
 
 
 
 
 
 
 
 typedef struct _GUDPDAT_CONN
 {
 ulong Ip;
 uint Port;
 byte  State;
 byte  UdpSocket;
 ulong Timer;
 ulong UrRxBytes;
 ulong UrTxBytes;
 } GUDPDAT_CONN;
 
 
 
 
 
 void GUDPDAT_Task(void);
 void GUDPDAT_Init(uint);
 byte GUDPDAT_NewConn(ulong xdata*, uint, byte);
 void GUDPDAT_Event(byte, byte);
 void GUDPDAT_Receive(byte xdata*, uint, byte);
 
 
 void GUDPDAT_ConnClose(ulong remoteIp, uint port);
 void gudpdat_ClientOpen(byte id);
 
 
 
 
#line 44 "src\main\main.c" /0
 
  
#line 1 ".\SRC\UART\UART.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 33 ".\SRC\UART\UART.H" /1
  
 
 
  
 
 
  
  
  
  
 
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 156 ".\SRC\UART\UART.H" /0
 
#line 45 "src\main\main.c" /0
 
  
#line 1 ".\SRC\GS2E\GS2E.H" /0









 









 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 26 ".\SRC\GS2E\GS2E.H" /0
#line 26 ".\SRC\GS2E\GS2E.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void GS2E_Task(void);
 void GS2E_Init(void);
 byte GS2E_GetTaskState(void);
 void GS2E_SetTaskState(byte); 
 byte GS2E_GetConnType(void);
 void gs2e_EEPROM_Init(void);
 
 
 
 
#line 46 "src\main\main.c" /0
 
  
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
 
 
#line 47 "src\main\main.c" /0
 
  
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
 
 
 
#line 48 "src\main\main.c" /0
 
  
#line 1 "SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 17 "SRC\MAIN\CIRCUIT.H" /0
#line 17 "SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern  byte idata AssyVarPass1 _at_ 0x35;                                              
 
 
 
 
 
 
 
 
 
 
 
 sbit HI8150CS                = 0x84;                                                     
 
 sbit HI8150CLK               = 0x85;                                                     
 
 sbit HI8150LD                = 0x86;                                                     
 
 sbit HI8150DIN                = 0x87;                                                      
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit fpgaserialclock        = 0xA0;                                                      
 
 sbit fpgadataout            = 0xA1;                                                      
 
 sbit fpgaserialload         = 0xA2;                                                      
 
 sbit fpgadatain             = 0xA3;                                                      
 
 sbit fpgaserialale          = 0xA4;                                                      
 
 sbit LogicRst               = 0xA5;                                                      
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 49 "src\main\main.c" /0
 
  
#line 1 "SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 "SRC\MAIN\INSTRUMENT.H" /1
  
 
 
 
  
  
  
 
  
 
  
  
  
  
  
 
  
  
 
  
  
  
  
  
  
 
  
 
  
 
  
 
 
 
 
 
 
 
  
  
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
  
  
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
#line 50 "src\main\main.c" /0
#line 50 "src\main\main.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\MATH.H" /0






 
 
 
 
 
 #pragma SAVE
 #pragma REGPARMS
 extern char  cabs  (char  val);
 extern int    abs  (int   val);
 extern long  labs  (long  val);
 extern float fabs  (float val);
 extern float sqrt  (float val);
 extern float exp   (float val);
 extern float log   (float val);
 extern float log10 (float val);
 extern float sin   (float val);
 extern float cos   (float val);
 extern float tan   (float val);
 extern float asin  (float val);
 extern float acos  (float val);
 extern float atan  (float val);
 extern float sinh  (float val);
 extern float cosh  (float val);
 extern float tanh  (float val);
 extern float atan2 (float y, float x);
 
 extern float ceil  (float val);
 extern float floor (float val);
 extern float modf  (float val, float *n);
 extern float fmod  (float x, float y);
 extern float pow   (float x, float y);
 
 #pragma RESTORE
 
 
#line 51 "src\main\main.c" /0
 
  
#line 1 ".\SRC\DHCP\DHCPC.H" /0









 














 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 30 ".\SRC\DHCP\DHCPC.H" /0
#line 30 ".\SRC\DHCP\DHCPC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _dhcp_header {
 byte	Op;
 byte	Htype;
 byte	Hlen;
 byte	Hops;
 ulong	Xid;
 uint	Seconds;
 uint	Flags;
 ulong	CiAddr;
 ulong	YiAddr;
 ulong	SiAddr;
 ulong	GiAddr;
 byte	ChAddr[16];
 byte	Sname[64];
 byte	File[128];
 byte	Options[312];
 }	DHCP_HEADER;
 
 typedef struct _dhcp_info{
 char		State;
 byte		AppId;
 byte		SocketId;
 DHCP_HEADER	*dhcpPktPtr;
 byte		*pOpt;
 uint		OptionsCounter;
 uint		Secs;
 uint		TimeoutInterval;  
 byte		ServerId[4];
 byte		ClientOfferedIp[4];
 ulong		IpAddr;
 ulong		NetMask;
 ulong		DnsAddr;
 ulong		DefaultRouter;
 } DHCP_INFO;
 
 
 
 
 
 
 bool DHCP_Init(void);
 void DHCP_Start(void);
 void DHCP_Send(void);
 char DHCP_GetState(void);
 void DHCP_EventHandle(byte, byte);
 void DHCP_ReceiveHandle(byte xdata*, uint, byte);
 void DHCP_RejectOffer(void);
 ulong DHCP_GetOfferIp(void);
 
 
#line 52 "src\main\main.c" /0
 
  
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
 
 
#line 53 "src\main\main.c" /0
 
  
#line 1 ".\SRC\EEPROM\EEPROM.H" /0









 









 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 26 ".\SRC\EEPROM\EEPROM.H" /0
#line 26 ".\SRC\EEPROM\EEPROM.H" /0
 
  
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
 
 
 
 
#line 27 ".\SRC\EEPROM\EEPROM.H" /0
 
 
 
 
 
 
 
 
 
 
 void EEPROM_Init(void);
 teI2C_STATUS EEPROM_Read(byte DevAddr, byte RegAddr, byte *pBuf, byte Len);
 teI2C_STATUS EEPROM_Write(byte DevAddr, byte RegAddr, byte *pBuf, byte Len);
 
 
 
 
#line 54 "src\main\main.c" /0
 
  
#line 1 ".\SRC\MENU\UTIL_MENUS.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 







 
 
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
 
 
#line 55 "src\main\main.c" /0
 
  
#line 1 "SRC\MAIN\HI8150.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void formatDataHI8150(byte dat[6],byte *formattedData);                                                        
 void writeHI8150(byte din[5]);                                                            
 void setBPOSC(byte bposc_rate);                                                            
 
#line 56 "src\main\main.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 69 "src\main\main.c" /1
  
 
#line 71 "src\main\main.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 84 "src\main\main.c" /1
  
 
#line 86 "src\main\main.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct app_buf {                                                                   
 ulong ipaddr;                                                                        
 byte  buf[100];                                                                      
 uint  uip_len;                                                                       
 uint  PayLoadOffset;                                                                 
 byte  wait;                                                                          
 }APP_BUF;                                                                                  
 
 APP_BUF     app_arp_buf;                                                                   
 
 ulong  processEthernetTraffic(ulong ptc, dls);                                             
 
 
 
 byte  EthTxBuffer[1024];                                                           
 uint              EthTxBufHead            = 0;                                             
 uint              EthTxBufTail            = 0;                                             
 uint              EthTxCount              = 0;                                             
 uint              EthTxBufIndx            = 0;                                             
 uint              HrtBeatCnt              = 0x00;                                          
 static byte       MinMsgLen;                                                               
 byte       HardwareSettings;                                                        
 
 
 
 
 sbit A_0                      = 0xE0;                                                      
 sbit A_1                      = 0xE1;                                                      
 sbit A_2                      = 0xE2;                                                      
 sbit A_3                      = 0xE3;                                                      
 sbit A_4                      = 0xE4;                                                      
 sbit A_5                      = 0xE5;                                                      
 sbit A_6                      = 0xE6;                                                      
 sbit A_7                      = 0xE7;                                                      
 
 
 
 
 
 
 byte PinDefStr0[] = "P0_0,P0_1,P0_2,P0_3,P0_4,P0_5,P0_6,P0_7,";                                                       
 byte PinDefStr1[] = "P1_0,P1_1,P1_2,P1_3,P1_4,P1_5,P1_6,P1_7,";                                                       
 byte PinDefStr2[] = "P2_0,P2_1,P2_2,P2_3,P2_4,P2_5,P2_6,P2_7,";                                                       
 byte PinDefStr3[] = "P3_0,P3_1,P3_2,P3_3,P3_4,P3_5,P3_6,P3_7,\0";                                                       
 
 
 
 byte bufResetReq[sizeof("\xF0") -1];                                                       
 byte bufStatusRsp[sizeof("\xF1\x00\x00\x00\x00\x00\x00") -1];                                                     
 byte bufFirmwareRsp[sizeof("\xFE\x76\x50\x35\x2d\x76\x50\x36\x2d") -1];                                                 
 byte bufDimmingData[sizeof("\xF4\xFF\xFF") -1];
 byte bufIndicatorData[sizeof("\xF3\x00") -1];
 byte bufDisplayData[sizeof("\xF5\x00\x00\x00\x00\x00\x00\x00") -1];
 
 byte bufDisplayDimmingData[sizeof("\xF8\x00") -1]; 
 byte bufDisplayContrastData[sizeof("\xF9\x00")-1];                                                             
 
 
 
 
 byte   stage;                                                                              
 word   stagetimeout;                                                                       
 
 byte  mRxBuf[128];    
 static word  mRxCnt;
 
 byte    SwBank02Cnt;                                                                       
 
 byte    SwBank03Cnt;                                                                       
 
 byte    SwBank04Cnt;                                                                       
 
 
 
 
 byte fpgaOutputData[20];                                                          
 byte bitmap[3];                                                                
 uint ADCount;                                                                              
 bool fDebugMode;                                                                           
 bool fTransmitMode;                                                                        
 byte ChngCnt;                                                                              
 
 byte previousADC1;
 byte previousADC2;
 byte previousADC3;
 byte currentADC;
 
 
 word xdata DimCurve[256] = {	0x0000,	0x0040,	0x0080,	0x00C0,	0x0100,	0x0141,	0x0181,	0x01C1,	0x0201,	0x2042,	0x0282,	0x02C2,	0x0302,	0x0343,	0x0383,	0x03C3,    
 0x0403,	0x0444,	0x0484,	0x04C4,	0x0504,	0x0545,	0x0585,	0x05C5,	0x0605,	0x0646,	0x0686,	0x06C6,	0x0706,	0x0747,	0x0787,	0x07C7,    
 0x0807,	0x0848,	0x0888,	0x08C8,	0x0908,	0x0949,	0x0989,	0x09C9,	0x0A09,	0x0A4A,	0x0A8A,	0x0ACA,	0x0B0A,	0x0B4B,	0x0B8B,	0x0BCB,    
 0x0C0B,	0x0C4C,	0x0C8C,	0x0CCC,	0x0D0C,	0x0D4D,	0x0D8D,	0x0DCD,	0x0E0D,	0x0E4E,	0x0E8E,	0x0ECE,	0x0F0E,	0x0F4F,	0x0F8F,	0x0FCF,    
 0x100F,	0x1050,	0x1090,	0x10D0,	0x1110,	0x1151,	0x1191,	0x11D1,	0x1211,	0x1252,	0x1292,	0x12D2,	0x1312,	0x1353,	0x1393,	0x13D3,    
 0x1413,	0x1454,	0x1494,	0x14D4,	0x1514,	0x1555,	0x1595,	0x15D5,	0x1615,	0x1655,	0x1696,	0x16D6,	0x1716,	0x1756,	0x1797,	0x17D7,    
 0x1817,	0x1857,	0x1898,	0x18D8,	0x1918,	0x1958,	0x1999,	0x19D9,	0x1A19,	0x1A59,	0x1A9A,	0x1ADA,	0x1B1A,	0x1B5A,	0x1B9B,	0x1BDB,    
 0x1C1B,	0x1C5B,	0x1C9C,	0x1CDC,	0x1D1C,	0x1D5C,	0x1D9D,	0x1DDD,	0x1E1D,	0x1E5D,	0x1E9E,	0x1EDE,	0x1F1E,	0x1F5E,	0x1F9F,	0x1FDF,    
 0x201F,	0x205F,	0x20A0,	0x20E0,	0x2120,	0x2160,	0x21A1,	0x21E1,	0x2221,	0x2261,	0x22A2,	0x22E2,	0x2322,	0x2362,	0x23A3,	0x23E3,    
 0x2423,	0x2463,	0x24A4,	0x24E4,	0x2524,	0x2564,	0x25A5,	0x25E5,	0x2625,	0x2665,	0x26A6,	0x26E6,	0x2726,	0x2766,	0x27A7,	0x27E7,    
 0x2827,	0x2867,	0x28A8,	0x28E8,	0x2928,	0x2968,	0x29A9,	0x29E9,	0x2A29,	0x2A69,	0x2AAA,	0x2AEA,	0x2B2A,	0x2B6A,	0x2BAA,	0x2BEB,    
 0x2C2B,	0x2C6B,	0x2CAB,	0x2CEC,	0x2D2C,	0x2D6C,	0x2DAC,	0x2DED,	0x2E2D,	0x2E6D,	0x2EAD,	0x2EEE,	0x2F2E,	0x2F6E,	0x2FAE,	0x2FEF,    
 0x302F,	0x306F,	0x30AF,	0x30F0,	0x3130,	0x3170,	0x31B0,	0x31F1,	0x3231,	0x3271,	0x32B1,	0x32F2,	0x3332,	0x3372,	0x33B2,	0x33F3,    
 0x3433,	0x3473,	0x34B3, 0x34F4,	0x3534,	0x3574,	0x35B4,	0x35F5,	0x3635,	0x3675,	0x36B5,	0x36F6,	0x3736,	0x3776,	0x37B6,	0x37F7,    
 0x3837,	0x3877,	0x38B7,	0x38F8,	0x3938,	0x3978,	0x39B8,	0x39F9,	0x3A39,	0x3A79,	0x3AB9,	0x3AFA,	0x3B3A,	0x3B7A,	0x3BBA,	0x3BFB,    
 0x3C3B,	0x3C7B,	0x3CBB,	0x3CFC,	0x3D3C,	0x3D7C,	0x3DBC,	0x3DFD,	0x3E3D,	0x3E7D,	0x3EBD, 0x3EFE,	0x3F3E,	0x3F7E,	0x3FBE,	0x3FFF};   
 
 byte  acLightTableReadBack       = 0;
 byte  acDim2SlaveDisplay       	 = 0;
 byte  lightingcal;
 
 byte  arp_flag = 0x00;
 byte instant_flag = 0x00;
 
 byte status_byte1 = 0x00;
 byte status_byte2 = 0x00;
 byte status_byte3 = 0x00;
 byte status_byte4 = 0x00;
 byte status_byte5 = 0x00;
 byte status_byte6 = 0x00;	
 byte status_byte_1_prev = 0;
 byte status_byte_2_prev = 0;
 byte status_byte_3_prev = 0;
 byte status_byte_4_prev = 0;
 byte status_byte_5_prev = 0;
 byte status_byte_6_prev = 0;
 
 long int start_up_delay = 0;                                                     
 
 
 
 
 word  idata Word1    _at_ 0x20;                                                     	   
 byte  bdata WByte1   _at_ 0x20;                                                     	   
 byte  bdata WByte0   _at_ 0x21;                                                      	   
 sbit          bits00      = WByte0^0;                                                      
 sbit          bits01      = WByte0^1;                                                      
 sbit          bits02      = WByte0^2;                                                      
 sbit          bits03      = WByte0^3;                                                      
 sbit          bits04      = WByte0^4;                                                      
 sbit          bits05      = WByte0^5;                                                      
 sbit          bits06      = WByte0^6;                                                      
 sbit          bits07      = WByte0^7;                                                      
 sbit          bits08      = WByte1^0;                                                      
 sbit          bits09      = WByte1^1;                                                      
 sbit          bits10      = WByte1^2;                                                      
 sbit          bits11      = WByte1^3;                                                      
 sbit          bits12      = WByte1^4;                                                      
 sbit          bits13      = WByte1^5;                                                      
 sbit          bits14      = WByte1^6;                                                      
 sbit          bits15      = WByte1^7;                                                 	   
 
 
 
 
 
 uint acResetRequest;                                   
 uint acFirmwareRequest;                                
 uint acStatusRequest;                                  
 uint acDimmingRequest;
 uint acMeterRequest;
 uint acIndicatorRequest;
 uint acDisplayRequest;
 uint acDisplayDimmingRequest;
 uint acDisplayContrastRequest;
 
 
 
 static void UpdateIpSettings(ulong);                                                       
 void  NOP(uint loop);                                                                      
 
 uint  wrChrEthTxBuffer(byte ch, uint Count);                                               
 uint  wrStrEthTxBuffer(byte* pData, uint cnt);                                             
 void  printFirmwareInformation();                                                          
 void  printDeviceConfigurationInformation();                                               
 void  printdHex2Bin(byte num);                                                             
 void  writeEthTxCount(uint TempCount);                                                     
 uint  readEthTxBufCount(void);                                                             
 
 void  processResetRsp(void);                                                               
 void  processFirmwareRsp(void);                                                            
 void  processStatusRsp(void); 
 void  processDimmingRsp(void);
 void  processIndicatorRsp(void);
 void  processDisplayRsp(void);
 
 
 
 
 
 void process_FPGA_data(void);															   
 
 word xlat2DimCurve(byte index);
 word* addresslookup(byte index);
 
 
 
 
 
 
 
 
 
 void NOP(uint loop)                                                                        
 {
 uint i;                                                                              
 
 for (i = 0; i < loop; i++)                                                           
 {    _nop_();    }                                                                  
 }
 
 
 
 
 
 
 
 word xlat2DimCurve(byte index)
 {
 
 return DimCurve[index];
 }
 
 
 
 
 
 
 
 word* addresslookup(byte index)                                                            
 {
 word *ptr;
 
 ptr = &DimCurve[index];
 
 
 
 
 
 
 
 
 return ptr;
 }
 
 
 
 
 
 
 
 
 uint wrChrEthTxBuffer(byte ch, uint Count)                                                 
 {
 EthTxBuffer[EthTxBufIndx] = ch;                                                      
 EthTxBufIndx++;                                                                      
 Count++;                                                                             
 if (EthTxBufIndx == 1024)                                                    
 EthTxBufIndx = 0;                                                                  
 return Count;                                                                        
 }
 
 
 
 
 
 
 
 
 uint wrStrEthTxBuffer(byte* pData, uint cnt)                                               
 {
 uint TmpCnt;                                                                         
 uint offset;                                                                         
 
 if((EthTxBufIndx + cnt) > 1024)                                              
 {                                                                                    
 offset = 1024 - EthTxBufIndx;                                              
 memmove(&EthTxBuffer[EthTxBufIndx], pData, offset);                                
 memmove(&EthTxBuffer[0], pData+offset, cnt - offset);                           
 }
 else                                                                                 
 {
 memmove(&EthTxBuffer[EthTxBufIndx], pData, cnt);                                   
 }
 EthTxBufIndx += cnt;                                                                 
 EthTxBufIndx &= 1024 - 1;                                                        
 TmpCnt = readEthTxBufCount() + cnt;                                                  
 writeEthTxCount(TmpCnt);
 return TmpCnt;                                                                       
 }
 
 
 
 
 
 
 
 
 void writeEthTxCount(uint TempCount)                                                       
 {
 EthTxCount = TempCount;                                                              
 }
 
 
 
 
 
 
 
 
 uint main_readEthChar(byte* pDat)                                                          
 {
 uint temp;                                                                           
 
 temp = readEthTxBufCount();                                                          
 if (temp > 0)                                                                        
 {
 *pDat = EthTxBuffer[EthTxBufTail];                                                 
 EthTxBufTail++;                                                                    
 if (EthTxBufTail == 1024)                                                  
 {  EthTxBufTail = 0;  }                                                          
 EthTxCount--;                                                                      
 return EthTxCount;                                                                 
 }
 return 0;                                                                            
 }
 
 
 
 
 
 
 
 
 uint readEthTxBufCount(void)                                                                
 {
 return EthTxCount;                                                                   
 }
 
 
 
 
 
 
 
 
 void  processResetRsp(void)                                                                
 {                                                                                          
 int   i     = 0;                                                                     
 byte  tmp   = 0;                                                                     
 char  ch    = ' ';                                                                   
 uint  port;                                                                          
 word  firmwaretimeout = 10;    													   
 
 if (acResetRequest != 0)                                                             
 {                                                                                  
 
 
 
 port = GCONFIG_GetServerDataPktListenPort();                                       
 
 
 
 strncpy(&bufResetReq[0],"\xF0",sizeof("\xF0"));                     
 strncpy(&bufFirmwareRsp[0],"\xFE\x76\x50\x35\x2d\x76\x50\x36\x2d",sizeof("\xFE\x76\x50\x35\x2d\x76\x50\x36\x2d"));            
 strncpy(&bufStatusRsp[0],"\xF1\x00\x00\x00\x00\x00\x00",sizeof("\xF1\x00\x00\x00\x00\x00\x00"));                  
 strncpy(&bufDimmingData[0],"\xF4\xFF\xFF",sizeof("\xF4\xFF\xFF"));
 strncpy(&bufIndicatorData[0],"\xF3\x00",sizeof("\xF3\x00"));
 strncpy(&bufDisplayData[0],"\xF5\x00\x00\x00\x00\x00\x00\x00",sizeof("\xF5\x00\x00\x00\x00\x00\x00\x00"));
 strncpy(&bufDisplayDimmingData[0],"\xF8\x00",sizeof("\xF8\x00"));
 strncpy(&bufDisplayContrastData[0],"\xF9\x00",sizeof("\xF9\x00"));
 
 
 
 LogicRst = 1;                                                                      
 DELAY_Ms(5);                                                                       
 LogicRst = 0;                                                                      
 DELAY_Ms(10);                                                                      
 writeFpgaData(0x80, 0x10, 5);                            
 
 
 
 acResetRequest           = 0;                                                      
 acStatusRequest          = 0;
 acFirmwareRequest        = 0;                                                      
 acDimmingRequest	     = 1;
 acIndicatorRequest	     = 1;
 acDisplayRequest         = 0;
 acDisplayDimmingRequest  = 1;
 acDisplayContrastRequest = 1;
 
 
 
 
 
 UTIL_MenuInit();                                                                   
 
 Word1   = readFpgaData(0x20,8);                                             
 bufFirmwareRsp[5] = WByte0;                                                         
 Word1   = readFpgaData(0x21,8);                                             
 bufFirmwareRsp[6] = WByte0;                                                         
 Word1   = readFpgaData(0x22,8);                                             
 bufFirmwareRsp[7] = WByte0;                                                         
 Word1   = readFpgaData(0x23,8);                                             
 bufFirmwareRsp[8] = WByte0;                                                         
 
 
 
 
 arp_flag = 0x00;
 instant_flag = 0x00;
 
 status_byte1 = 0x00;
 status_byte2 = 0x00;
 status_byte3 = 0x00;
 status_byte4 = 0x00;
 status_byte5 = 0x00;
 status_byte6 = 0x00;
 status_byte_1_prev = 0x00; 
 status_byte_2_prev = 0x00;
 status_byte_3_prev = 0x00;
 status_byte_4_prev = 0x00;
 status_byte_5_prev = 0x00;
 status_byte_6_prev = 0x00;
 
 printd("Hardware init           : pass\n\r");                                      
 HardwareSettings = 0;                                                              
 
 }                                                                           
 }                                                                                          
 
 
 
 
 
 
 
 
 void processFirmwareRsp(void)                                                              
 {                                                                                          
 if (acFirmwareRequest > 0)                                                           
 {                                                                                  
  wrStrEthTxBuffer(&bufFirmwareRsp[0],sizeof("\xFE\x76\x50\x35\x2d\x76\x50\x36\x2d") -1);                               
 acFirmwareRequest = 0;                                                             
 }                                                                                  
 }                                                                                          
 
 
 
 
 
 
 
 void processStatusRsp(void)                                                                
 {                                                                                          
 if (acStatusRequest > 0)                                                             
 {                                                                                  
  wrStrEthTxBuffer(&bufStatusRsp[0],sizeof("\xF1\x00\x00\x00\x00\x00\x00") -1);                                 
 acStatusRequest = 0;                                                             
 
 }                                                                                  
 }
 
 
 
 
 
 
 
 
 void process_FPGA_data(void) 															   
 {
 byte command 	  = 0xF1;	
 
 status_byte1 = readFpgaData(0x61,8);
 status_byte1 = ~status_byte1;
 bufStatusRsp[1] = status_byte1;
 if(status_byte1 != status_byte_1_prev) instant_flag++;
 
 status_byte2 = readFpgaData(0x62,8);	
 status_byte2 = ~status_byte2;
 bufStatusRsp[2] = status_byte2;
 if(status_byte2 != status_byte_2_prev) instant_flag++;
 
 status_byte3 = readFpgaData(0x63,8);	
 status_byte3 = ~status_byte3;	
 bufStatusRsp[3] = status_byte3;
 if(status_byte3 != status_byte_3_prev) instant_flag++;
 
 status_byte4 = readFpgaData(0x64,8);
 status_byte4 = ~status_byte4;	
 bufStatusRsp[4] = status_byte4;
 if(status_byte4 != status_byte_4_prev) instant_flag++;
 
 status_byte5 = readFpgaData(0x65,8);			
 bufStatusRsp[5] = status_byte5;	
 if(status_byte5 != status_byte_5_prev) instant_flag++;
 if(status_byte5 - status_byte_5_prev); 
 
 status_byte6 = readFpgaData(0x66,8);
 bufStatusRsp[6] = status_byte6;
 if( status_byte6 != status_byte_6_prev) instant_flag++;
 if(status_byte6 - status_byte_6_prev); 
 
 if(instant_flag > 0 || arp_flag > 0) 
 {
 
 
 
 
 
 
 
  wrStrEthTxBuffer(&command,1);
  wrStrEthTxBuffer(&status_byte1,1);
  wrStrEthTxBuffer(&status_byte2,1);
  wrStrEthTxBuffer(&status_byte3,1);
  wrStrEthTxBuffer(&status_byte4,1);
  wrStrEthTxBuffer(&status_byte5,1);
  wrStrEthTxBuffer(&status_byte6,1);
 instant_flag = 0;
 arp_flag = 0;
 }
 status_byte_1_prev = status_byte1; 
 status_byte_2_prev = status_byte2;
 status_byte_3_prev = status_byte3;
 status_byte_4_prev = status_byte4;
 status_byte_5_prev = status_byte5;
 status_byte_6_prev = status_byte6;                                 		
 }
 
 
 
 
 
 
 
 
 
 void processDimmingRsp(void)
 {
 char index_lcd;
 char index_ind;
 word dim_lcd;
 word dim_ind;
 
 if(acDimmingRequest > 0x00)
 {
 
 index_lcd = bufDimmingData[1];
 dim_lcd   = xlat2DimCurve(index_lcd);
 
 
 index_ind = bufDimmingData[2];
 dim_ind   = xlat2DimCurve(index_ind);
 
 
 writeFpgaData(0xC1, dim_lcd, 14);
 
 
 writeFpgaData(0xC2, dim_ind, 14);
 
 acDimmingRequest = 0;
 }
 }
 
 
 
 
 
 
 
 
 void  processIndicatorRsp(void)                                                            
 {
 char index; 
 
 
 if(acIndicatorRequest > 0x00)                                                          
 {
 index   = 0;                                                                          
 index   = bufIndicatorData[1];                                         
 
 
 writeFpgaData(0xC3, index, 8);		  
 
 acIndicatorRequest = 0;	  
 }
 }
 
 
 
 
 
 
 
 
 void processDisplayRsp(void)
 {
 byte dat[6];             
 byte formattedData[5];   
 byte i;
 
 if(acDisplayRequest > 0x00)
 {
 
 for(i = 0; i < 6; i++)
 {
 dat[i] = bufDisplayData[1 + i];
 }
 
 
 formatDataHI8150(dat, formattedData);
 
 
 writeHI8150(formattedData);
 
 acDisplayRequest = 0;
 }
 }
 
 
 
 
 
 
 
 
 


























































 
 
 
 
 
 
 
 
 






























































 
 
 
 
 
 
 
 
 
 void UpdateIpSettings(ulong ip)                                                            
 {                                                                                          
 if (ip > 0)                                                                          
 {                                                                                  
 printd("IP  : %bu.%bu.%bu.%bu\n\r", (byte) ((ip >> 24) & 0x000000FF),              
 (byte) ((ip >> 16) & 0x000000FF),              
 (byte) ((ip >> 8)  & 0x000000FF),              
 (byte) ( ip        & 0x000000FF));             
 }                                                                                  
 else                                                                                 
 if (ip == 0)                                                                       
 {                                                                                
 ulong mask = GCONFIG_GetNetmask();                                               
 ip = GCONFIG_GetServerStaticIP();                                                
 TCPIP_SetIPAddr(ip);                                                             
 STOE_SetIPAddr(ip);                                                              
 TCPIP_SetSubnetMask(mask);                                                       
 STOE_SetSubnetMask(mask);                                                        
 }                                                                                
 GS2E_Init();                                                                         
 }  
 
 
 
 
 
 
 
 void  printFirmwareInformation()                                                           
 {
 
 printd("uC Firmware PN          : ");                                                  
 printd("%02bx-",   bufFirmwareRsp[1]);                                              
 printd("%02bx",    bufFirmwareRsp[2]);                                              
 printd("%02bx",    bufFirmwareRsp[3]);                                              
 printd(" : %c\n\r",bufFirmwareRsp[4]);                                              
 
 printd("FPGA Firmware PN        : ");                                                  
 printd("%02bx-",   bufFirmwareRsp[5]);                                              
 printd("%02bx",    bufFirmwareRsp[6]);                                              
 printd("%02bx",    bufFirmwareRsp[7]);                                              
 printd(" : %c\n\r",bufFirmwareRsp[8]);                                              
 
 }
 
 
 
 
 
 
 
 
 void  printDeviceConfigurationInformation()                                                
 {
 printd("Debug Routines          : ");                                                  
 if(fDebugMode == 0)                                                                  
 printd("disabled\n\r");                                                              
 else                                                                                   
 printd("enabled\n\r");                                                               
 printd("Transmit Mode           : ");                                                  
 if(fDebugMode == 0)                                                                  
 {
 if(fTransmitMode == 0)                                                          
 printd("Server\n\r");                                                              
 else                                                                                 
 printd("Client\n\r");                                                              
 }
 else                                                                                   
 printd("Server\n\r");                                                                
 gconfig_ExDisplayConfigData();                                                         
 printd("*****************************************************\n\r");                   
 
 
 
 printFirmwareInformation();                                                            
 printd("*****************************************************\n\r");                   
 }
 
 
 
 
 
 
 
 
 ulong processEthernetTraffic(ulong ptc, dls)                                               
 {
 ulong tc;                                                                              
 byte  linkSpeed = 0;                                                                   
 
 tc              = (uint)SWTIMER_Tick();                                                
 if ((tc - ptc) >= (20/10))                                                    
 {
 ptc           = tc;                                                                  
 TCPIP_PeriodicCheck();                                                               
 }
 STOE_ProcessInterrupt();                                                               
 if (MAC_GetInterruptFlag())                                                            
 { linkSpeed   = MAC_ProcessInterruptExt(); }                                         
 if(dls == 1) printd("Ethernet Link Speed = bps\n\r", linkSpeed);                      
 return ptc;                                                                            
 }
 
 
 
 
 
 
 
 
 ulong setupEthernet(byte enabled)
 {
 ulong ip;                                                                              
 ulong mask;                                                                            
 byte  cmdDhcpFlag      = 0;                                                            
 ulong dhcpTimeStart    = 0;                                                            
 ulong swtc;                                                                            
 
 if(enabled == 1)                                                                    
 {
 
 
 
 ETH_Init();                                                                          
 
 
 
 GCONFIG_Init();                                                                      
 
 
 
 SWTIMER_Init();                                                                      
 
 
 
 gudpdat_ClientOpen(4);                                                       
 
 
 
 ETH_Start();                                                                         
 
 
 
 SWTIMER_Start();                                                                     
 
 
 
 mask    = GCONFIG_GetNetmask();                                                      
 ip      = GCONFIG_GetServerStaticIP();                                               
 TCPIP_SetIPAddr(ip);                                                                 
 STOE_SetIPAddr(ip);                                                                  
 TCPIP_SetSubnetMask(mask);                                                           
 STOE_SetSubnetMask(mask);                                                            
 
 
 if ((GCONFIG_GetNetwork() & 0x4000) == 0x4000)
 {
 
 
 
 printd("DHCP     init           : ");                                              
 if (DHCP_Init())                                                                   
 printd("pass\n\r");                                                              
 else
 printd("**ERROR**\n\r");                                                         
 printd("DHCP Assigned IP    : ");                                                  
 
 
 
 DHCP_Start();                                                                      
 cmdDhcpFlag   = 1;                                                                 
 dhcpTimeStart = SWTIMER_Tick();                                                    
 }
 else                                                                                 
 {
 ip            = 0;                                                                 
 cmdDhcpFlag   = 0;                                                                 
 }
 
 
 
 DELAY_Ms(1000);                                                                      
 while(cmdDhcpFlag == 1)                                                              
 {
 printd("DHCP response -- ");                                                       
 if (DHCP_GetState() > 0)                                             
 { DHCP_Send(); }                                                                 
 else                                                                               
 { 
 ulong ip = (PNetStation->StationIP);                                                     
 if (ip == 0)                                                                     
 printd(" fail!\n\r");                                                          
 cmdDhcpFlag = 0;                                                                 
 } 
 swtc = processEthernetTraffic(0, 1);                                              
 } 
 UpdateIpSettings(ip);                                                                
 printd("*****************************************************\n\r");                 
 }
 return swtc;                                                                         
 }
 
 
 
 
 
 
 
 
 void main(void)
 {
 uint  temp16 = 1;                                                                    
 byte  sysInitFlag = 1;                                                               
 
 byte  linkFlag = 0;                                                                  
 byte  cmdDhcpFlag = 0;                                                               
 ulong dhcpTimeStart = 0;                                                             
 
 ulong preTimeCount;                                                                  
 
 
 
 ExecuteRuntimeFlag     = 1;                                                          
 
 
 
 AX11000_Init();                                                                      
 
 
 
 uart_Init(0,0x03, 0);                                                     
 
 uart_Init(1,0x03, 0);                                                   
 
 
 
 printd("Instrument Part Number  : %s\n\r","10-9802");                       
 printd("Firmware Last Revised   : %s %s\n\r","Mar 10 2026","15:30:57");                     
 printd("Ethernet Library Ver.   : %s\n\r", "3.1.200");                  
 printd("*********************************************************\n\r");             
 
 
 
 printd("UART-0   init           : pass   ");                                         
 printd("baud : %02bx \n\r",0x03);                                             
 printd("UART-1   init           : pass\n\r");                                        
 printd("*****************************************************\n\r");                 
 MinMsgLen = 1;                                                         
 stagetimeout = 5000;
 
 
 
 preTimeCount = setupEthernet(1);                                                  
 
 
 
 LogicRst                = 1;                                                         
 DELAY_Ms(5);                                                                         
 LogicRst                = 0;                                                         
 acResetRequest          = 1;                                                         
 P0 = 0xFF;
 processResetRsp();                                                                   
 
 
 
 printDeviceConfigurationInformation();                                               
 lightingcal = 0;                                                                 
 GCONFIG_WrValuesToLightingTable(&DimCurve[0]);
 
 
 
 
 
 
 
 
 
 
 acResetRequest          = 1;
 while (1)                                                                            
 {
 
 
 
 UTIL_MenuExecute();                                                                
 processStatusRsp();                                                                
 processFirmwareRsp();                                                              
 processResetRsp();
 processDimmingRsp();
 processIndicatorRsp();                                                                
 
 
 process_FPGA_data();
 
 
 if (acLightTableReadBack != 0)                                                     
 {
 printd("Reading Lighting Lookup Table\n\r");                                   
 GCONFIG_DisplayLightingTable();                                                
 acLightTableReadBack = 0;                                                      
 }
 
 
 preTimeCount = processEthernetTraffic(preTimeCount, 0);                          
 GS2E_Task();  
 }
 }  
