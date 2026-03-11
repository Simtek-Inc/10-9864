
#line 1 "src\ethernet\stoe.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
#line 21 "src\ethernet\stoe.c" /0
 
  
#line 1 "SRC\ETHERNET\STOE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 24 "SRC\ETHERNET\STOE.H" /0
 
  
#line 1 "SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "SRC\ETHERNET\STOE.H" /0
 
  
#line 1 "SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 24 "SRC\ETHERNET\MAC.H" /0
#line 24 "SRC\ETHERNET\MAC.H" /0
 
  
#line 1 "SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "SRC\ETHERNET\STOE_CFG.H" /1
  
 
 
  
  
 
  
 
 
 
  
  
  
 
 
#line 40 "SRC\ETHERNET\STOE_CFG.H" /0
 
#line 25 "SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
#line 26 "SRC\ETHERNET\STOE.H" /0
 
  
#line 1 "SRC\ETHERNET\PHY.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 25 "SRC\ETHERNET\PHY.H" /0
#line 25 "SRC\ETHERNET\PHY.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 27 "SRC\ETHERNET\STOE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 22 "src\ethernet\stoe.c" /0
 
  
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
 
 
 
 
 
 
 
#line 23 "src\ethernet\stoe.c" /0
 
  
#line 1 ".\SRC\MSTIMER\DELAY.H" /0









 














 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
 
 
 
 
 
 
 
 void DELAY_Init(void);
 void DELAY_Ms(uint);
 void DELAY_Us(uint);
 
 
 
 
 
 
#line 24 "src\ethernet\stoe.c" /0
 
  
#line 1 ".\SRC\CPU\INTERRUPT.H" /0









 

















 
 
 
 
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\CPU\INTERRUPT_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte		ax11000WakeupEvent;
 
 
 
 
#line 33 ".\SRC\CPU\INTERRUPT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "src\ethernet\stoe.c" /0
 
 
  
#line 1 ".\SRC\ADAPTER\ADAPTER.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\ADAPTER\ADAPTER.H" /0
#line 21 ".\SRC\ADAPTER\ADAPTER.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ADAPTER\ADAPTER_CFG.H" /0









 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 ".\SRC\ADAPTER\ADAPTER.H" /0
 
  
#line 1 "SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "SRC\ETHERNET\STOE_CFG.H" /1
  
 
 
  
  
 
  
 
 
 
  
  
  
 
 
#line 40 "SRC\ETHERNET\STOE_CFG.H" /0
 
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
 
 
 
#line 27 "src\ethernet\stoe.c" /0
 
 
  
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
 
 
 
#line 29 "src\ethernet\stoe.c" /0
 
 
 
 
 
 LOCAL_STATION xdata* PNetStation = {0};
 BUF_DESC_PAGE xdata* PBDP = 0;
 void (*STOE_RcvCallback)(byte xdata*, uint, byte);  
 
 
 static byte xdata stoe_BufferSize[((8 + 16 + 1) * 256)] _at_ (0x8000 - ((8 + 16 + 1) * 256));
 static byte xdata stoe_InterruptStatus = 0;
 
 
 static void stoe_BdpInit(void);
 static void stoe_StartOperate(void);
 static void stoe_RcvHandle(void);
 
 void stoe_StopOperate(void);
 
 
 
 byte xdata xStackBuf[64] _at_ (0x5700-(4*256)- 64);
 
 
 
 
 
 
 
 
 void stoe_ReadReg(byte regaddr, byte xdata* pbuf, byte length)
 {
 byte	isr;
 
 isr = EA;
 EA = 0;
 _nop_();
 TCIR = regaddr;
 while (length--)
 pbuf[length] = TDR;
 EA = isr;
 
 }  
 
 
 
 
 
 
 
 
 void stoe_WriteReg(byte regaddr, byte xdata* pbuf, byte length)
 {
 byte	isr;
 
 isr = EA;
 EA = 0;
 while (length--)
 TDR = pbuf[length];
 TCIR = regaddr;
 EA = isr;
 
 }  
 
 
 
 
 
 
 
 
 
 
 
 
 void STOE_Init(byte network_type)
 {
 byte xdata	temp[2];
 byte xdata	value[6] = {0,0,0,0,0,0};
 
 
 stoe_BdpInit();
 
 PNetStation = &PBDP->NetStation;
 
 
 stoe_ReadReg(0x10, (byte xdata*)&PNetStation->DefaultIP, 4);
 PNetStation->StationIP = PNetStation->DefaultIP;
 
 
 stoe_ReadReg(0x14, (byte xdata*)&PNetStation->DefaultMask, 4);
 PNetStation->SubnetMask = PNetStation->DefaultMask;
 
 
 PNetStation->DefaultGateway = ((PNetStation->StationIP & PNetStation->SubnetMask) | 1);
 if (PNetStation->StationIP == PNetStation->DefaultGateway)
 {
 PNetStation->DefaultGateway |= (~PNetStation->SubnetMask);
 PNetStation->DefaultGateway &= 0xfffffffe;
 }
 
 
 temp[0] = (0x02 | 0x20);
 
 stoe_WriteReg(0x00, temp, 1);
 
 
 temp[0] = 16;
 stoe_WriteReg(0x0E, temp, 1);
 
 
 temp[0] = (0x01 | 0x02 | 0x08);
 
 stoe_WriteReg(0x20, temp, 1);
 
 
 temp[0] = ((0x8000 - ((8 + 16 + 1) * 256)) >> 16);
 temp[1] = ((0x8000 - ((8 + 16 + 1) * 256)) >> 8);
 stoe_WriteReg(0x22, temp, 2);
 
 
 STOE_RcvCallback = 0;
 
 DMA_Init();
 DELAY_Init();
 MAC_Init(network_type);
 
 STOE_SetGateway(PNetStation->DefaultGateway);
 
 }  
 
 
 
 
 
 
 
 
 void stoe_BdpInit(void)
 {
 uint	page = ((0x8000 - ((8 + 16 + 1) * 256)) >> 8);
 
 PBDP = (0x8000 - ((8 + 16 + 1) * 256));
 
 
 PBDP->BDP_ID = 0;
 
 
 PBDP->RSPP = page + 1;
 PBDP->REPP = page + 16;
 PBDP->RHPR = PBDP->RSPP;
 PBDP->RTPR = PBDP->RSPP;
 PBDP->RFP = 16;
 
 
 PBDP->TSPP = page + 1 + 16;
 PBDP->TEPP = page + 16 + 8;
 PBDP->THPR = PBDP->TSPP;
 PBDP->TTPR = PBDP->TSPP;
 PBDP->TFP = 8;
 
 
 PBDP->RcvStartAddr = (0x8000 - ((8 + 16 + 1) * 256)) + 256;
 PBDP->XmtStartAddr = PBDP->RcvStartAddr + (16 * 256);
 PBDP->RcvEndAddr = PBDP->XmtStartAddr - 1;
 PBDP->XmtEndAddr = PBDP->XmtStartAddr + (8 * 256) - 1;
 
 }  
 
 
 
 
 
 
 
 
 
 
 void STOE_SetIPAddr(ulong ip)
 {
 if (ip != PNetStation->StationIP)
 {
 PNetStation->StationIP = ip;
 stoe_WriteReg(0x10, (byte xdata*)&PNetStation->StationIP, 4);
 }
 
 }  
 
 
 
 
 
 
 
 
 void STOE_SetSubnetMask(ulong subnet)
 {
 if (subnet != PNetStation->SubnetMask)
 {
 PNetStation->SubnetMask = subnet;
 stoe_WriteReg(0x14, (byte xdata*)&PNetStation->SubnetMask, 4);
 }
 
 }  
 
 
 
 
 
 
 
 
 void STOE_SetGateway(ulong xdata gateway)
 {
 if (gateway != PNetStation->Gateway)
 {
 PNetStation->Gateway = gateway;
 
 stoe_WriteReg(0x18, (byte xdata*)&PNetStation->Gateway, 4);
 ETH_RestartSendArpToGateway();
 }
 
 }  
 
 
 
 
 
 
 
 
 
 
 void STOE_Start(void)
 {
 byte xdata	temp;
 
 
 stoe_ReadReg(0x30, &temp, 1);
 
 stoe_StartOperate();
 
 DMA_Start();
 
 MAC_Start();
  {EINT4 = 1;};	 
 }  
 
 
 
 
 
 
 
 
 
 void STOE_ProcessInterrupt(void)
 {
 static byte xdata	int_status;
 byte xdata			temp;
 
 while (1)
 {
 
 stoe_ReadReg(0x30, &int_status, 1);
 int_status &= (0x04 | 0x02);
 
 if (!int_status)
 break;
 
 if (int_status & 0x02)
 {
 while (PBDP->RFP < 16)
 stoe_RcvHandle();
 }
 if (int_status & 0x04)
 {
 
 temp = 0x01;
 stoe_WriteReg(0x21, &temp, 1);
 }
 }
 }
 
 
 
 
 
 
 
 
 void STOE_WaitHwReleaseRcvBuf(void)
 {
 byte xdata	temp;
 byte		isr;
 
 isr = EA;
 EA = 0;
 if (PBDP->RFP < 16)
 {
 PBDP->RHPR = PBDP->RTPR;
 PBDP->RFP = 16;
 }
 EA = isr;
 
 temp = 0x01;
 stoe_WriteReg(0x21, &temp, 1);
 
 DELAY_Us(1000);
 
 isr = EA;
 EA = 0;
 while (PBDP->RFP < 16)
 {
 PBDP->RHPR = PBDP->RTPR;
 PBDP->RFP = 16;
 EA = isr;
 
 DELAY_Us(1000);
 
 isr = EA;
 EA = 0;
 }
 EA = isr;
 
 }  
 
 
 
 
 
 
 
 
 void stoe_StartOperate(void)
 {
 byte xdata	temp;
 
 stoe_ReadReg(0x00, &temp, 1);
 
 temp |= (0x08 | 0x80);
 stoe_WriteReg(0x00, &temp, 1);
 
 }  
 
 
 
 
 
 
 
 
 
 
 void stoe_StopOperate(void)
 {
 byte xdata	temp;
 
 stoe_ReadReg(0x00, &temp, 1);
 
 temp &= ~(0x08 | 0x80);
 stoe_WriteReg(0x00, &temp, 1);
 
 }  
 
 
 
 
 
 
 
 
 
 void stoe_RcvHandle(void)
 {
 static STOE_FRAME_HEADER xdata*	pframe;
 uint	length;
 byte	pages, isr;
 
 pframe = ((PBDP->RHPR) << 8);
 length = (pframe->Length & 0xfff);
 
 PBDP->STOE_RxInform.Protocol = pframe->Protocol;
 PBDP->STOE_RxInform.TotalLen = length;
 PBDP->STOE_RxInform.PBuf = &pframe->Packet; 
 
 if (length && STOE_RcvCallback)
 STOE_RcvCallback(&pframe->Packet, length, pframe->Protocol);
 
 if (PBDP->RHPR > pframe->NPR)
 pages = (PBDP->TSPP - PBDP->RHPR) + (pframe->NPR - PBDP->RSPP);
 else
 pages = pframe->NPR - PBDP->RHPR;
 
 isr = EA;
 EA = 0;
 PBDP->RHPR = pframe->NPR;
 PBDP->RFP += pages;
 EA = isr;
 
 }  
 
 
 
 
 
 
 
 
 void stoe_XmitHandle(void)
 {
 byte xdata temp;
 
 stoe_ReadReg(0x21, &temp, 1);
 while (temp & 0x10)
 stoe_ReadReg(0x21, &temp, 1);
 
 temp = 0x10;
 stoe_WriteReg(0x21, &temp, 1);
 
 }  
 
 
 
 
 
 
 
 
 
 
 
 void STOE_Send(byte xdata* pbuf, uint length, byte protocol)
 {
 STOE_FRAME_HEADER xdata*	pframe =	(STOE_FRAME_HEADER xdata*)pbuf;
 byte	occupypages = PBDP->STOE_TxInform.Pages;
 byte	isr;
 
 pframe->Length = length;
 pframe->Protocol = protocol;
 
 isr = EA;
 EA = 0;
 PBDP->TFP -= occupypages;
 EA = isr;
 
 PBDP->TTPR += occupypages;
 if (PBDP->TTPR > PBDP->TEPP)
 PBDP->TTPR = PBDP->TSPP + PBDP->TTPR - PBDP->TEPP - 1;
 
 pframe->NPR = PBDP->TTPR;
 
 stoe_XmitHandle();
 
 }  
 
 
 
 
 
 
 
 
 
 
 byte xdata* STOE_AssignSendBuf(uint length)
 {
 byte xdata*	pframe;
 byte		occupypages;
 
 occupypages = ((length + 256 - 1)/256);
 
 if (PBDP->TFP <= occupypages)
 return (byte xdata*)0;
 
 pframe = ((PBDP->TTPR) << 8);
 PBDP->STOE_TxInform.Pages = occupypages;
 
 return pframe;
 
 }  
 


 
 
 
 
 
 
 
 
 byte xdata* STOE_CopyCode2TPBR(byte xdata* pdest, byte* psour, uint length)
 {
 uint	space, leftlen;
 
 
 if ((pdest > PBDP->XmtEndAddr) || (pdest < PBDP->XmtStartAddr))
 return 0;
 
 space = (uint)PBDP->XmtEndAddr - (uint)pdest + 1;
 if (space > length)
 {
 while (length--)
 *pdest++ = *psour++;
 }
 else
 {
 leftlen = length - space;
 
 while (space--)
 *pdest++ = *psour++;
 
 pdest = PBDP->XmtStartAddr;
 
 while (leftlen--)
 *pdest++ = *psour++;
 }
 
 return pdest;
 
 }  


 
 
 
 
 
 
 
 
 
 byte STOE_CHECK_MAC(ulong *ip_addr)
 {
 byte entry_addr, result[6] = {0};
 
 entry_addr = (byte)(*ip_addr & 0x7F) * 2;
 
 stoe_WriteReg(0x07, &entry_addr, 1);
 
 entry_addr = 0x01 | 0x02;
 stoe_WriteReg(0x06, &entry_addr, 1);
 
 stoe_ReadReg(0x08, result, 6);
 
 if (result[0]& 0x80)
 return 1;
 
 return 0;
 
 }  
 
 
