
#line 1 "src\gs2e\gconfig.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
#line 20 "src\gs2e\gconfig.c" /0
 
  
#line 1 ".\SRC\ADAPTER\ADAPTER.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 21 "src\gs2e\gconfig.c" /0
 
  
#line 1 "SRC\GS2E\GCONFIG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 23 "SRC\GS2E\GCONFIG.H" /0
#line 23 "SRC\GS2E\GCONFIG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 22 "src\gs2e\gconfig.c" /0
 
 
  
#line 1 "SRC\GS2E\GS2E.H" /0









 









 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 26 "SRC\GS2E\GS2E.H" /0
#line 26 "SRC\GS2E\GS2E.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void GS2E_Task(void);
 void GS2E_Init(void);
 byte GS2E_GetTaskState(void);
 void GS2E_SetTaskState(byte); 
 byte GS2E_GetConnType(void);
 void gs2e_EEPROM_Init(void);
 
 
 
 
#line 24 "src\gs2e\gconfig.c" /0
 
  
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
 
 
 
 
 
 
 
 
#line 25 "src\gs2e\gconfig.c" /0
 
  
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
 
 
 
 
#line 26 "src\gs2e\gconfig.c" /0
 
  
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
 
 
 
#line 27 "src\gs2e\gconfig.c" /0
 
  
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
 
 
 
#line 28 "src\gs2e\gconfig.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 29 "src\gs2e\gconfig.c" /0
 
  
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
 
 
 
 
#line 30 "src\gs2e\gconfig.c" /0
 
  
#line 1 "C:\KEIL\C51\INC\ABSACC.H" /0






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 "C:\KEIL\C51\INC\ABSACC.H" /1
  
  
  
  
 
#line 29 "C:\KEIL\C51\INC\ABSACC.H" /0
 
 
 
 
 
 
 
#line 31 "src\gs2e\gconfig.c" /0
 
  
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
 
 
#line 32 "src\gs2e\gconfig.c" /0
 
  
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
 
 
 
 
 
#line 33 "src\gs2e\gconfig.c" /0
 
  
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
#line 34 "src\gs2e\gconfig.c" /0
 
  
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
 
 
#line 35 "src\gs2e\gconfig.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef byte (*pFlashParaData)(byte * addr, uint  len);
 
 
 
 
 GCONFIG_GID xdata GCONFIG_Gid = {'A','S','I','X','X','I','S','A'};
 
 
 
 byte xdata gconfig_SysClock;
 GCONFIG_CFG_DATA xdata gconfig_ConfigData;
 byte idata FirmwareUpgradeFlag _at_ 0x31;
 static GCONFIG_MAC_ADDR macAddr;
 byte DefaultPassword[11];                                                                
 byte DefaultDevName[16];                                                           
 
 
 
 static bool gconfig_ReStoreParameter(ulong addr, GCONFIG_CFG_DATA *pConfig, uint  len);
 static bool gconfig_StoreParameter(GCONFIG_CFG_DATA *pSramBase, uint  len);
 static uint  gconfig_Checksum(uint  *pBuf, ulong length);
 static void gconfig_InDisplayConfigData(GCONFIG_CFG_DATA *pConfig);
 static void	gconfig_DisplayConfigData(GCONFIG_CFG_DATA *pConfig);
 
 
 
 
 
 
 
 
 void GCONFIG_Task(void)
 {
 
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_Init(void)
 {
 byte  dataStopParityBits = 0;
 
 GS2E_SetTaskState(0);
 
 memcpy((char *)&macAddr, PNetStation->CurrStaAddr, 6);
 
 GCONFIG_ReadConfigData();
 
 
 
 fTransmitMode = 1;                                                              
 
 gconfig_SysClock = AX11000_GetSysClk();
 }  
 
 
 
 
 
 
 
 
 
 
 void GCONFIG_SetConfigPacket(GCONFIG_CFG_PKT* pCfgPkt)
 { 
 gconfig_ConfigData.Option                       = pCfgPkt->Option;
 gconfig_ConfigData.DevName                      = pCfgPkt->DevName;
 gconfig_ConfigData.Network                      = pCfgPkt->Network;
 gconfig_ConfigData.ServerStaticIP               = pCfgPkt->ServerStaticIP;
 gconfig_ConfigData.ServerDataPktListenPort      = pCfgPkt->ServerDataPktListenPort;
 gconfig_ConfigData.MasterAddress                = pCfgPkt->MasterAddress;
 gconfig_ConfigData.ServerBroadcastListenPort    = pCfgPkt->ServerBroadcastListenPort;
 gconfig_ConfigData.ClientDestIP                 = pCfgPkt->ClientDestIP;
 gconfig_ConfigData.ClientDestPort               = pCfgPkt->ClientDestPort; 
 gconfig_ConfigData.Netmask                      = pCfgPkt->Netmask;
 gconfig_ConfigData.EthernetTxTimer              = pCfgPkt->EthernetTxTimer;
 GCONFIG_WriteConfigData();
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_GetConfigPacket(GCONFIG_CFG_PKT* pCfgPkt)
 {
 memcpy((char *)&pCfgPkt->Gid, (char *)&GCONFIG_Gid, sizeof(GCONFIG_Gid));
 pCfgPkt->Option                    = gconfig_ConfigData.Option;
 pCfgPkt->DevName                   = gconfig_ConfigData.DevName;
 pCfgPkt->MacAddr                   = macAddr;
 pCfgPkt->Network                   = gconfig_ConfigData.Network;
 pCfgPkt->ServerDynamicIP           = (PNetStation->StationIP);
 pCfgPkt->ServerStaticIP            = gconfig_ConfigData.ServerStaticIP;
 pCfgPkt->ServerDataPktListenPort   = gconfig_ConfigData.ServerDataPktListenPort;
 pCfgPkt->MasterAddress             = gconfig_ConfigData.MasterAddress;
 pCfgPkt->ServerBroadcastListenPort = gconfig_ConfigData.ServerBroadcastListenPort;
 pCfgPkt->ClientDestIP              = gconfig_ConfigData.ClientDestIP;
 pCfgPkt->ClientDestPort            = gconfig_ConfigData.ClientDestPort; 
 pCfgPkt->Netmask                   = gconfig_ConfigData.Netmask;
 pCfgPkt->EthernetTxTimer           = gconfig_ConfigData.EthernetTxTimer;
 pCfgPkt->pw                        = gconfig_ConfigData.pw;
 
 if (GS2E_GetTaskState() == 0)
 pCfgPkt->DeviceStatus            = 0;
 else
 pCfgPkt->DeviceStatus            = 1;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_ReadConfigData(void)
 {
 
 bool bRet;
 
 printd("Read configuration data : ");
 
 bRet = gconfig_ReStoreParameter(0, &gconfig_ConfigData, sizeof(gconfig_ConfigData));
 
 if (bRet == 0 || (gconfig_ConfigData.ServerStaticIP & 0x000000FF) == 0)          
 {
 GCONFIG_ReadDefaultConfigData();                                                   
 
 }
 
#line 187 "src\gs2e\gconfig.c" /1
 
 
 
#line 190 "src\gs2e\gconfig.c" /0
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_WriteConfigData(void)
 {
 
 gconfig_StoreParameter(&gconfig_ConfigData, (uint)sizeof(gconfig_ConfigData));
 
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_ReadDefaultConfigData(void)
 {
 printd("Read default configuration data. \n\r");                                     
 
 gconfig_ConfigData.CheckSum                  = 0x00;                                 
 gconfig_ConfigData.CfgLength                 = sizeof(gconfig_ConfigData);           
 gconfig_ConfigData.UdpAutoConnectClientIp    = 0x00000000;                           
 gconfig_ConfigData.UdpAutoConnectClientPort  = 0x0000;                               
 
 strncpy(&DefaultDevName,  "10-9802-01_1XX",  sizeof("10-9802-01_1XX"));            
 gconfig_ConfigData.Option                    = 0;                                    
 memcpy(&gconfig_ConfigData.DevName, &DefaultDevName, sizeof(GCONFIG_DEV_NAME));      
 gconfig_ConfigData.Network                   = (0x0000 |             
  0x0000 |       
  0x0800 |          
  0x0100);    
 gconfig_ConfigData.ServerStaticIP            = 0xC0A8885A;                
 gconfig_ConfigData.ServerDataPktListenPort   = 51020;                      
 gconfig_ConfigData.MasterAddress             = 0;                                    
 gconfig_ConfigData.ServerBroadcastListenPort = 25122;        
 gconfig_ConfigData.ClientDestIP              = 0xC0A88801;                  
 gconfig_ConfigData.ClientDestPort            = 51021;                      
 gconfig_ConfigData.Netmask                   = 0xFFFFFF00;                    
 
 strncpy(&DefaultPassword, "1234", sizeof("1234"));                 
 memcpy(&gconfig_ConfigData.pw   ,    &DefaultPassword, sizeof("1234"));              
 
 GCONFIG_DefaultLightingTable();
 
 gconfig_ConfigData.EthernetTxTimer           = 1;                                    
 }  
 
 
 
 
 
 
 
 
 
 
 
 byte Simtek_Modes_Enable(byte mask)
 {
 if ((gconfig_ConfigData.Option & mask) == 0)                                         
 return 0;                                                                        
 return 1;                                                                           
 }  
 
 
 
 
 
 
 
 
 ulong GCONFIG_IpAddr2Ulong(byte* pBuf, byte len)
 {
 ulong ip     = 0;
 byte* point  = (byte*)&ip;
 byte  count  = 0;
 byte  count2 = 0;
 
 while (1)
 {
 count2 = 0;
 while ((*pBuf != '.') && len)
 {
 count2++;
 if (count2 > 3) return 0xffffffff;
 
 *point *= 10;
 
 if ((*pBuf < 0x3a) && (*pBuf > 0x2f))
 *point += (*pBuf - 0x30);
 else
 return 0xffffffff;
 
 pBuf++;
 len--;
 }
 
 if (len == 0) break;
 
 pBuf++;
 len--;
 count++;
 point++;
 
 if (count > 3) return 0xffffffff;
 }
 
 if (count != 3) return 0xffffffff;
 
 return ip;
 }  
 
 
 
 
 
 
 
 
 
 
 void GCONFIG_SetDeviceName(GCONFIG_DEV_NAME* pDevName)
 {
 memcpy(&gconfig_ConfigData.DevName, pDevName, sizeof(GCONFIG_DEV_NAME)); 
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetPassword(void* pNewPassword)
 {
 memcpy(&gconfig_ConfigData.pw, pNewPassword, sizeof(GCONFIG_PASSWORD)); 
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetNetwork(uint  val)
 {
 gconfig_ConfigData.Network = val;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetServerStaticIP(ulong ip)
 {
 gconfig_ConfigData.ServerStaticIP = ip;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetServerDataPktListenPort(uint  port)
 {
 gconfig_ConfigData.ServerDataPktListenPort = port;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetHostMasterAddress(byte adrs)
 {
 gconfig_ConfigData.MasterAddress = adrs;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetServerBroadcastListenPort(uint  port)
 {
 gconfig_ConfigData.ServerBroadcastListenPort = port;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetClientDestIP(ulong ip)
 {
 gconfig_ConfigData.ClientDestIP = ip;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetClientDestPort(uint  port)
 {
 gconfig_ConfigData.ClientDestPort = port;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetNetmask(ulong netmask)
 {
 gconfig_ConfigData.Netmask = netmask;
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetEthernetTxTimer(uint  timer)
 {
 gconfig_ConfigData.EthernetTxTimer = timer;
 }  
 
 
 
 
 
 
 
 
 GCONFIG_DEV_NAME* GCONFIG_GetDeviceName(void)
 {
 return &gconfig_ConfigData.DevName;
 }  
 
 
 
 
 
 
 
 
 GCONFIG_MAC_ADDR GCONFIG_GetMacAddress(void)
 {
 return macAddr;
 }  
 
 byte* GCONFIG_GetMacAddressP(void)
 {
 return &macAddr;
 }  
 
 
 
 
 
 
 
 
 void* GCONFIG_GetPassword(void)
 {
 return &gconfig_ConfigData.pw;
 }  
 
 
 
 
 
 
 
 
 uint  GCONFIG_GetNetwork(void)
 {
 return gconfig_ConfigData.Network;
 }  
 
 
 
 
 
 
 
 
 ulong GCONFIG_GetServerStaticIP(void)
 {
 return gconfig_ConfigData.ServerStaticIP;
 }  
 
 
 
 
 
 
 
 
 byte  GCONFIG_GetHostMasterAddress(void)
 {
 return gconfig_ConfigData.MasterAddress;
 }  
 
 
 
 
 
 
 
 
 uint  GCONFIG_GetServerDataPktListenPort(void)
 {
 return gconfig_ConfigData.ServerDataPktListenPort;
 }  
 
 
 
 
 
 
 
 
 uint  GCONFIG_GetServerBroadcastListenPort(void)
 {
 return gconfig_ConfigData.ServerBroadcastListenPort;
 }  
 
 
 
 
 
 
 
 
 ulong GCONFIG_GetClientDestIP(void)
 {
 return gconfig_ConfigData.ClientDestIP;
 }  
 
 
 
 
 
 
 
 
 uint  GCONFIG_GetClientDestPort(void)
 {
 return gconfig_ConfigData.ClientDestPort;
 }  
 
 
 
 
 
 
 
 
 ulong GCONFIG_GetNetmask(void)
 {
 return gconfig_ConfigData.Netmask;
 }  
 
 
 
 
 
 
 
 
 uint  GCONFIG_GetEthernetTxTimer(void)
 {
 return gconfig_ConfigData.EthernetTxTimer;
 }  
 
 
 
 
 
 
 
 
 
 
 
 
 static bool gconfig_ReStoreParameter(ulong addr, GCONFIG_CFG_DATA *pConfig, uint  len)
 {
 uint 	i;
 byte	*pParaBaseByte;
 byte	lastWtst = 0;
 
 pParaBaseByte = (byte *)pConfig;
 
 lastWtst = WTST;
 WTST = 7;
 if (CSREPR & 0x10)  
 {
 CSREPR |= 0x08;
 for (i = 0 ; i < len ; i++)
 {
 *(pParaBaseByte + i) = (*((byte const far *) ((0x4000 + addr + i)+0x810000L)));
 }
 CSREPR &= ~0x08;
 }
 else
 {
 CSREPR &= ~0x08;
 for (i = 0 ; i < len ; i++)
 {
 *(pParaBaseByte + i) = (*((byte const far *) ((0x4000 + addr + i)+0x810000L)));
 }
 }
 WTST = lastWtst;
 
 if (0xffff != gconfig_Checksum((uint  *)pConfig, len))
 {
 printd("failed! (wrong checksum)\n\r");
 return 0;
 }
 else if (pConfig->CfgLength != len)
 {
 printd("Invalid configuration data!\n\r");
 return 0;
 }
 printd("pass\n\r");
 return 1;
 }  
 
 
 
 
 
 
 
 
 static bool gconfig_StoreParameter(GCONFIG_CFG_DATA *pConfigData, uint  len)
 {
 byte			ret = 0;
 pFlashParaData  ptrFlashWrite = (void code*)0x003F00;
 
 pConfigData->CheckSum = 0;
 pConfigData->CfgLength = len;
 pConfigData->CheckSum = ~gconfig_Checksum((uint  *)pConfigData, len);
 
 ret = (*ptrFlashWrite)((byte *)pConfigData, len);	
 printd("data saved\n\r");
 if (ret == 0)
 printd("Failed to program Configration Data!!\n\r");
 return ret;
 }  
 
 
 
 
 
 
 
 
 static uint  gconfig_Checksum(uint  *pBuf, ulong length)
 {
 ulong	cksum = 0;
 ulong	i, count;
 byte*	inChar = &pBuf;
 uint *	point;
 
 count = length/2;
 
 for (i = 0; i < count; i++)
 {
 point = pBuf;
 cksum += *pBuf++;
 if (point > pBuf)
 (*inChar) = *inChar + 1;
 
 if (!(i % 0x8000))
 {
 cksum = (cksum >> 16) + (cksum & 0xffff);
 cksum += (cksum >> 16);
 cksum &= 0xffff;
 }
 }
 
 if (length % 2)
 cksum += (*pBuf & 0xff00);
 
 cksum  = (cksum >> 16) + (cksum & 0xffff);
 cksum += (cksum >> 16);
 cksum &= 0xffff;
 
 return ((uint)cksum);
 }  
 
 
 
 
 
 
 
 
 static void gconfig_DisplayConfigData(GCONFIG_CFG_DATA *pConfigData)
 {
 byte  i, tmp, *pData;
 uint  val;
 
 if (GS2E_GetTaskState() == 0)
 {
 printd("  Device Name           : ");
 for (i = 0; i < 16; i++)
 printd ("%c", pConfigData->DevName.DevName[i]);
 
 printd("\n\r");
 printd("  MAC Address           : ");
 for (i = 0; i < 6; i++)
 printd ("%02bx ", macAddr.MacAddr[i]);
 printd("\n\r");
 printd("  Network Settings      : ");
 printd ("%04dx\r\n", pConfigData->Network);
 val = pConfigData->Network;
 if (val & 0x8000)
 printd("    Server/Client       : Client");
 else
 printd("    Server/Client       : Server");
 printd("\n\r");
 if (val & 0x4000)
 printd("    DHCP                : Enabled");
 else
 printd("    DHCP                : Disabled");
 printd("\n\r");
 if (val & 0x0800)
 printd("    UDP                 : On");
 else
 printd("    UDP                 : Off");
 if (val & 0x0400)
 printd("          TCP         : On");
 else
 printd("               TCP   : Off");
 printd("\n\r");
 if (val & 0x0100)
 printd("    BroadCast           : On");
 else
 printd("    BroadCast           : Off");
 printd("\n\r");
 printd("  Device Server IP      : ");
 tmp    = 0;
 pData  = (byte *)&pConfigData->ServerStaticIP;
 for (i = 0; i < 3; i++)
 tmp += printd ("%bu.", *(pData + i));
 tmp   += printd ("%bu", *(pData + i));
 tmp    = 17 - tmp;                                                                      
 if (tmp < 0) tmp = 0;
 for(i  = 0; i < tmp; i++)
 printd(" ");
 printd("Port  : ");
 printd("%du(%04dx)", pConfigData->ServerDataPktListenPort, pConfigData->ServerDataPktListenPort);
 printd("\n\r");
 
 tmp    = 0;
 printd("  Host Server IP        : ");
 pData  = (byte *)&pConfigData->ClientDestIP;
 for (i = 0; i < 3; i++)
 tmp += printd ("%bu.", *(pData + i));
 tmp   += printd ("%bu", *(pData + i));
 tmp    = 17 - tmp;                                                                      
 if (tmp < 0) tmp = 0;
 for(i  = 0; i < tmp; i++)
 printd(" ");
 printd("Port  : ");
 printd("%du(%04dx)", pConfigData->ClientDestPort, pConfigData->ClientDestPort);
 printd("\n\r");
 }
 }  
 
 
 
 
 
 
 
 
 void gconfig_ExDisplayConfigData(void) 
 {
 gconfig_DisplayConfigData(&gconfig_ConfigData);                                      
 }
 
 
 
 
 
 
 
 
 void gconfig_InDisplayConfigData(GCONFIG_CFG_DATA *pConfig) 
 {
 if (GS2E_GetTaskState() == 0)
 gconfig_DisplayConfigData(pConfig);                                                
 }
 
 
 
 
 
 
 
 
 void GCONFIG_EnableFirmwareUpgrade(void)
 {
 FirmwareUpgradeFlag = 0x5A;
 }  
 
 void GCONFIG_DisplayLightingTable(void)
 {
 word  pnt;
 
 printd("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\r     |");      
 for(pnt = 0;pnt < 16;pnt++)
 {
 printd("%4dx ", pnt);
 }
 printd("\n\r      ----------------------------------------------------------------------------------");      
 for(pnt = 0;pnt < 256;pnt++)
 {
 if((pnt % 16)==0)
 printd("\n\r%4dx : ",(pnt/16));
 printd("%04dx ", gconfig_ConfigData.lt.point[pnt]);
 }
 printd("\n\r");                                                                  
 printd("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\r     ");      
 printd("\n\r");
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_WrValuesToLightingTable(word* pLTable)
 {
 memcpy(pLTable, &gconfig_ConfigData.lt, sizeof(GCONFIG_LTG_TABLE));
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_SetLightingTable(word* pLTable)
 {
 memcpy(&gconfig_ConfigData.lt, pLTable, sizeof(GCONFIG_LTG_TABLE));
 }  
 
 
 
 
 
 
 
 
 void GCONFIG_DefaultLightingTable(void)
 {
 word  pnt;
 word  *wptr;
 
 word xdata Default_DimCurve[256] = {	0x0000,	0x0040,	0x0080,	0x00C0,	0x0100,	0x0141,	0x0181,	0x01C1,	0x0201,	0x0242,	0x0282,	0x02C2,	0x0302,	0x0343,	0x0383,	0x03C3,    
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
 
 
 
 
 for(pnt = 0;pnt < 256;pnt++)
 {
 gconfig_ConfigData.lt.point[pnt] = Default_DimCurve[pnt];
 
 
 
 }
 
 wptr = addresslookup(0);                                                           
 GCONFIG_WrValuesToLightingTable(wptr);                                             
 
 
 }  
 
 
