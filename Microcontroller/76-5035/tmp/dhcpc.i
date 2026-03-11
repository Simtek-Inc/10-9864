
#line 1 "src\dhcp\dhcpc.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\GS2E\GCONFIG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
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
 
 
 
#line 31 "src\dhcp\dhcpc.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 32 "src\dhcp\dhcpc.c" /0
 
 
  
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
 
 
 
#line 34 "src\dhcp\dhcpc.c" /0
 
  
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
 
 
 
 
 
 
 
 
#line 35 "src\dhcp\dhcpc.c" /0
 
  
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
 
 
 
#line 36 "src\dhcp\dhcpc.c" /0
 
  
#line 1 ".\SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 21 ".\SRC\ETHERNET\MAC.H" /1
  
 
 
  
  
 
 
  
  
  
  
 
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
  
  
  
  
 
 
  
  
  
  
  
 
 
  
  
 
 
  
  
  
  
  
  
  
 
 
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 174 ".\SRC\ETHERNET\MAC.H" /0
 
 
#line 37 "src\dhcp\dhcpc.c" /0
 
  
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
 
 
 
 
#line 38 "src\dhcp\dhcpc.c" /0
 
  
#line 1 "SRC\DHCP\DHCPC.H" /0









 














 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 30 "SRC\DHCP\DHCPC.H" /0
#line 30 "SRC\DHCP\DHCPC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
#line 39 "src\dhcp\dhcpc.c" /0
 
  
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
 
 
#line 40 "src\dhcp\dhcpc.c" /0
 
  
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
 
 
 
#line 41 "src\dhcp\dhcpc.c" /0
 
  
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
 
 
 
#line 42 "src\dhcp\dhcpc.c" /0
 
 
 
 
 
 
 
 
 
 static DHCP_INFO	      dhcpInfo;
 static byte        dhcpConnID     =  0;
 static DHCP_HEADER	dhcpBuffer;
 static uint        dhcp_Time      =  0;
 static byte        dhcp_Retry     =  0;
 static ulong       dhcpXid        =  0;
 static byte        dhcpMacAddr[6] = {0};
 
 
 void dhcp_Discover(void);
 void dhcp_Request(void);
 void dhcp_OptMagicCookie(void);
 void dhcp_OptionsAppend(byte optCode, byte optLen, byte *optContent);
 byte dhcp_ReceiveMessage(uint);
 void dhcp_OptionCheck(byte msgType);
 byte *dhcp_GetOption(byte *optMsg, byte msgCode, byte *vLen, uint);
 
 
 
 
 
 
 
 
 bool DHCP_Init(void)
 {
 dhcpInfo.AppId = TCPIP_Bind(((void *) 0L), DHCP_EventHandle, DHCP_ReceiveHandle);  
 dhcpInfo.State = 0;
 
 if(dhcpInfo.AppId == 0xff)
 return 0;
 else
 return 1;
 
 }  
 
 
 
 
 
 
 
 
 void DHCP_Start(void)
 {
 uint	i;
 byte	*point;
 
 if (dhcpInfo.State > 0)
 return;
 
 
 TCPIP_SetIPAddr(0);
 
 
 STOE_SetIPAddr(0);
 
 dhcpInfo.pOpt                 = (byte *)(dhcpBuffer.Options);
 dhcpInfo.OptionsCounter = 0;
 dhcpInfo.Secs = 0;
 dhcpInfo.TimeoutInterval = (2 * (1000 / 10));
 for (i=0 ; i<4 ; i++)
 {
 dhcpInfo.ServerId[i] = 0;
 dhcpInfo.ClientOfferedIp[i] = 0;
 }
 dhcpInfo.IpAddr = 0;
 dhcpInfo.NetMask = 0;
 dhcpInfo.DnsAddr = 0;
 dhcpInfo.DefaultRouter = 0;
 
 dhcpInfo.State = 0x01;
 dhcp_Retry = 0;
 
 point = MAC_GetMacAddr();
 for (i=0 ; i<6 ; i++)
 dhcpMacAddr[i] = point[i];
 
 dhcpXid                       = 0x12340000 | ((ulong)dhcpMacAddr[4] << 8) | ((ulong)dhcpMacAddr[5]);
 
 }  
 
 
 
 
 
 
 
 
 void DHCP_Send(void)
 {
 if (dhcpInfo.State & 0x01)
 {
 dhcp_Discover();
 dhcp_Time = (uint)SWTIMER_Tick();
 }
 else if (dhcpInfo.State & 0x04)
 {
 dhcp_Request();
 dhcp_Time = (uint)SWTIMER_Tick();
 }
 
 }  
 
 
 
 
 
 
 
 
 void DHCP_EventHandle(byte connId, byte event)
 {
 if (connId != 0)
 return;
 
 if (event == 0)
 {
 dhcpInfo.State = 0;
 TCPIP_UdpClose(dhcpInfo.SocketId);
 }
 }
 
 
 
 
 
 
 
 
 void DHCP_ReceiveHandle(byte xdata *pData, uint length, byte connId)
 {
 byte	         tmp;
 GCONFIG_MAC_ADDR iMACAddr;
 bool fMACAddressCheck;
 DHCP_HEADER		*pDhcpMsg;
 
 if (connId != 0)
 return;
 
 
 fMACAddressCheck = 1;
 if (dhcpInfo.State & (0x02 | 0x08))
 {
 pDhcpMsg = (DHCP_HEADER *)pData;
 iMACAddr = GCONFIG_GetMacAddress();	
 if ((pDhcpMsg->ChAddr[0]) != iMACAddr.MacAddr[0]) fMACAddressCheck = 0;
 if ((pDhcpMsg->ChAddr[1]) != iMACAddr.MacAddr[1]) fMACAddressCheck = 0;
 if ((pDhcpMsg->ChAddr[2]) != iMACAddr.MacAddr[2]) fMACAddressCheck = 0;
 if ((pDhcpMsg->ChAddr[3]) != iMACAddr.MacAddr[3]) fMACAddressCheck = 0;
 if ((pDhcpMsg->ChAddr[4]) != iMACAddr.MacAddr[4]) fMACAddressCheck = 0;
 if ((pDhcpMsg->ChAddr[5]) != iMACAddr.MacAddr[5]) fMACAddressCheck = 0;
 }
 
 if(fMACAddressCheck == 0)
 {
 printd(" MAC BAD\n\r");
 printd(" %02bx",    pDhcpMsg->ChAddr[0]);
 printd(" %02bx",    pDhcpMsg->ChAddr[1]);
 printd(" %02bx",    pDhcpMsg->ChAddr[2]);
 printd(" %02bx",    pDhcpMsg->ChAddr[3]);
 printd(" %02bx",    pDhcpMsg->ChAddr[4]);
 printd(" %02bx\n\r",pDhcpMsg->ChAddr[5]);
 printd(" %02bx",    iMACAddr.MacAddr[0]);
 printd(" %02bx",    iMACAddr.MacAddr[1]);
 printd(" %02bx",    iMACAddr.MacAddr[2]);
 printd(" %02bx",    iMACAddr.MacAddr[3]);
 printd(" %02bx",    iMACAddr.MacAddr[4]);
 printd(" %02bx\n\r",iMACAddr.MacAddr[5]);
 return;
 }
 else if (dhcpInfo.State & 0x02)
 {
 printd(" MAC GOOD ");
 dhcpInfo.dhcpPktPtr = (DHCP_HEADER *)pData;
 
 tmp = dhcp_ReceiveMessage(length);
 if (tmp == 2)
 {
 dhcpInfo.State = 0x04;
 return;
 }
 else if (tmp == 0)
 return;
 else
 dhcpInfo.State = 0x01;
 }
 else if (dhcpInfo.State & 0x08)
 {
 dhcpInfo.dhcpPktPtr = (DHCP_HEADER *)pData;
 
 tmp = dhcp_ReceiveMessage(length);
 if (tmp == 2)
 dhcpInfo.State = 0;
 else if (tmp == 0)
 return;
 else
 dhcpInfo.State = 0x01;
 }
 else
 return;
 
 TCPIP_UdpClose(dhcpInfo.SocketId);
 }  
 
 
 
 
 
 
 
 
 char DHCP_GetState(void)
 {
 if (dhcpInfo.State & (0x02 | 0x08))
 {
 uint	curTime = (uint)SWTIMER_Tick();
 
 if ((curTime - dhcp_Time) >= (2 * (1000 / 10)))  
 {
 TCPIP_UdpClose(dhcpInfo.SocketId);
 if (dhcp_Retry < 6)
 dhcpInfo.State = 0x01;
 else
 dhcpInfo.State = 0;
 }
 }
 return dhcpInfo.State;
 }
 
 
 
 
 
 
 
 
 void dhcp_Discover(void)
 {
 DHCP_HEADER		*pDiscover;
 uint			addr[2] = {0, 0};
 byte			optItem[3] = {0, 0, 0};
 uint			i;
 
 
 dhcpInfo.SocketId = TCPIP_UdpNew(dhcpInfo.AppId, dhcpConnID, 0xFFFFFFFF, (uint)68,
 (uint)67);
 if (dhcpInfo.SocketId == 0xff)
 {
 return;
 }
 
 pDiscover = &dhcpBuffer;
 
 pDiscover->Op = 1;
 pDiscover->Htype = 1;
 pDiscover->Hlen = 6;
 pDiscover->Hops = 0;
 pDiscover->Xid = dhcpXid;
 pDiscover->Seconds = dhcpInfo.Secs;
 pDiscover->Flags = 0;
 pDiscover->CiAddr = 0;
 pDiscover->YiAddr = 0;
 pDiscover->SiAddr = 0;
 pDiscover->GiAddr = 0;
 
 for (i=0 ; i<16 ; i++)
 {
 if (i < 6)
 pDiscover->ChAddr[i] = dhcpMacAddr[i];
 else
 pDiscover->ChAddr[i] = 0;
 }
 for (i=0 ; i<64 ; i++)
 {
 pDiscover->Sname[i] = 0;
 }
 for (i=0 ; i<128 ; i++)
 {
 pDiscover->File[i] = 0;
 }
 
 dhcpInfo.OptionsCounter = 0;
 
 
 dhcpInfo.pOpt = &(pDiscover->Options);
 dhcp_OptMagicCookie();
 
 
 optItem[0] = 1;
 dhcp_OptionsAppend(53, 1, optItem);
 
 
 optItem[0] = 1;
 optItem[1] = 3;
 optItem[2] = 6;
 dhcp_OptionsAppend(55, 3, optItem);
 
 
 optItem[0] = 0;
 dhcp_OptionsAppend(255, 0, optItem);
 
 while (dhcpInfo.OptionsCounter < 64)
 {
 pDiscover->Options[dhcpInfo.OptionsCounter ++] = 0;
 }
 
 TCPIP_UdpSend((dhcpInfo.SocketId), ((void *) 0L), 0, (byte *)pDiscover, (uint)(236 + dhcpInfo.OptionsCounter));
 
 dhcpInfo.State = 0x02;
 }
 
 
 
 
 
 
 
 
 void dhcp_Request(void)
 {
 DHCP_HEADER		*pRequest;
 uint			uip_addr[2] = {0, 0};
 byte			optItem[3] = {0, 0, 0};
 uint			i;
 
 pRequest = &dhcpBuffer;
 
 pRequest->Op = 1;
 pRequest->Htype = 1;
 pRequest->Hlen = 6;
 pRequest->Hops = 0;
 pRequest->Xid = dhcpXid;
 pRequest->Seconds = 0;
 pRequest->Flags = 0;
 pRequest->CiAddr = dhcpInfo.IpAddr;
 pRequest->YiAddr = 0;
 pRequest->SiAddr = 0;
 pRequest->GiAddr = 0;
 
 for (i=0 ; i<16 ; i++)
 {
 if (i < 6)
 pRequest->ChAddr[i] = dhcpMacAddr[i];
 else
 pRequest->ChAddr[i] = 0;
 }
 for (i=0 ; i<64 ; i++)
 {
 pRequest->Sname[i] = 0;
 }
 for (i=0 ; i<128 ; i++)
 {
 pRequest->File[i] = 0;
 }
 
 dhcpInfo.OptionsCounter = 0;
 
 
 dhcpInfo.pOpt = &(pRequest->Options);
 dhcp_OptMagicCookie();
 
 
 optItem[0] = 3;
 dhcp_OptionsAppend(53, 1, optItem);
 
 
 dhcp_OptionsAppend(50, 4, &(dhcpInfo.ClientOfferedIp[0]));
 
 
 dhcp_OptionsAppend(54, 4, &(dhcpInfo.ServerId[0]));
 
 
 optItem[0] = 1;
 optItem[1] = 3;
 optItem[2] = 6;
 dhcp_OptionsAppend(55, 3, optItem);
 
 
 optItem[0] = 0;
 dhcp_OptionsAppend(255, 0, optItem);
 while ((dhcpInfo.OptionsCounter < 64))
 {
 pRequest->Options[dhcpInfo.OptionsCounter ++] = 0;
 }
 
 TCPIP_UdpSend((dhcpInfo.SocketId), ((void *) 0L), 0, (byte *)pRequest, (uint)(236 + dhcpInfo.OptionsCounter));
 
 dhcpInfo.State = 0x08;
 }
 
 
 
 
 
 
 
 
 
#line 450 "src\dhcp\dhcpc.c" /1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 508 "src\dhcp\dhcpc.c" /0
 
 
 
 
 
 
 
 
 
#line 517 "src\dhcp\dhcpc.c" /1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 576 "src\dhcp\dhcpc.c" /0
 
 
 
 
 
 
 
 
 byte dhcp_ReceiveMessage(uint length)
 {
 DHCP_HEADER		*pDhcpMsg;
 byte			*optMsg, dhcpMsgType = 0;
 byte			i, rcvChAddr[6], chkMac = 1;
 
 pDhcpMsg = (DHCP_HEADER *)dhcpInfo.dhcpPktPtr;
 
 
 length = length + 312 - sizeof(DHCP_HEADER);
 
 dhcpInfo.pOpt = &(pDhcpMsg->Options[0]);
 dhcpInfo.OptionsCounter = 0;
 for (i=0 ; i<6 ; i++)
 rcvChAddr[i] = pDhcpMsg->ChAddr[i];
 
 if (pDhcpMsg->Op == 2)
 {
 
 if ((rcvChAddr[0]==0 && rcvChAddr[1]==0 && rcvChAddr[2]==0 && rcvChAddr[3]==0 && rcvChAddr[4]==0 && rcvChAddr[5]==0)
 || (rcvChAddr[0]==0xFF && rcvChAddr[1]==0xFF && rcvChAddr[2]==0xFF && rcvChAddr[3]==0xFF && rcvChAddr[4]==0xFF && rcvChAddr[5]==0xFF))
 {
 chkMac = 0;
 }
 
 if (pDhcpMsg->Xid == dhcpXid)
 {
 if (chkMac)
 {
 for (i=0 ; i<6 ; i++)
 {
 if (rcvChAddr[i] != dhcpMacAddr[i])
 return 0;
 }
 }
 if ((*(dhcpInfo.pOpt + 0) == 0x63) && (*(dhcpInfo.pOpt + 1) == 0x82) && (*(dhcpInfo.pOpt + 2) == 0x53) && (*(dhcpInfo.pOpt + 3) == 0x63))
 {
 dhcpInfo.OptionsCounter += 4;
 dhcpInfo.pOpt += dhcpInfo.OptionsCounter;
 length-=4;
 
 i = 0;
 optMsg = dhcp_GetOption(dhcpInfo.pOpt, 53, &i, length);
 if (optMsg && i == 1)
 dhcpMsgType = *optMsg;
 
 
 optMsg = dhcpInfo.pOpt + length;
 while(*dhcpInfo.pOpt != 255 && dhcpInfo.pOpt <= optMsg)
 {
 if (*dhcpInfo.pOpt == 53)
 {
 dhcpInfo.pOpt += 3;
 if (dhcpMsgType == 5)
 {
 if (dhcpInfo.State & 0x08)
 {
 dhcpInfo.IpAddr = (pDhcpMsg->YiAddr);
 
 
 TCPIP_SetIPAddr(dhcpInfo.IpAddr);
 
 
 STOE_SetIPAddr((dhcpInfo.IpAddr));
 }
 else
 {
 return 0;
 }
 }
 else if (dhcpMsgType == 2)
 {
 if (dhcpInfo.State & 0x02)
 {
 if (pDhcpMsg->YiAddr)
 *(ulong*)dhcpInfo.ClientOfferedIp = pDhcpMsg->YiAddr;
 }
 else
 {
 return 0;
 }
 }
 else if (dhcpMsgType == 6)
 {
 return 1;
 }
 }
 else
 {	
 if (dhcpMsgType == 5)
 dhcp_OptionCheck(5);
 else
 dhcp_OptionCheck(2);
 }
 }
 return 2;
 }
 else
 return 1;
 }
 else
 return 0;
 }
 return 0;
 }
 
 
 
 
 
 
 
 
 void dhcp_OptionCheck(byte msgType)
 {
 
 byte	len;
 
 switch(*(dhcpInfo.pOpt))
 {
 case 1 :
 memcpy(&(dhcpInfo.NetMask), (dhcpInfo.pOpt + 2), 4);
 len = *(dhcpInfo.pOpt + 1) + 2;
 dhcpInfo.pOpt += len;
 
 if (msgType == 5)
 {
 
 
 TCPIP_SetSubnetMask(dhcpInfo.NetMask);
 
 
 STOE_SetSubnetMask((dhcpInfo.NetMask));
 }
 break;
 case 3 :
 memcpy(&(dhcpInfo.DefaultRouter), (dhcpInfo.pOpt + 2), 4);
 len = *(dhcpInfo.pOpt + 1) + 2;
 dhcpInfo.pOpt += len;
 
 if (msgType == 5)
 {
 
 
 TCPIP_SetGateway(dhcpInfo.DefaultRouter);
 
 
 STOE_SetGateway((dhcpInfo.DefaultRouter));
 }
 break;
 case 6:
 memcpy(&(dhcpInfo.DnsAddr), (dhcpInfo.pOpt + 2), 4);
 len = *(dhcpInfo.pOpt + 1) + 2;
 dhcpInfo.pOpt += len;
 
 
 
 
 
 
 
 
 
 
 break;
 case 54:
 memcpy(&(dhcpInfo.ServerId[0]), (dhcpInfo.pOpt + 2), 4);
 len = *(dhcpInfo.pOpt + 1) + 2;
 dhcpInfo.pOpt += len;
 break;
 default :
 len = *(dhcpInfo.pOpt + 1);
 dhcpInfo.pOpt += (len + 2);
 break;
 }
 }
 
 
 
 
 
 
 
 
 byte *dhcp_GetOption(byte *optMsg, byte msgCode, byte *vLen, uint maxLen)
 {
 byte len, *optMsgEnd;
 
 optMsgEnd = optMsg + maxLen;
 while(*optMsg != 255 && optMsg <= optMsgEnd)  
 {
 if (*optMsg == msgCode)
 {
 *vLen = *(optMsg + 1);
 optMsg += 2;
 return optMsg;
 }
 else
 {
 len = *(optMsg + 1);
 optMsg += (len + 2);
 }
 }
 
 return 0;
 }  
 
 
 
 
 
 
 
 
 void dhcp_OptMagicCookie(void)
 {
 *(dhcpInfo.pOpt + 0) = 0x63;
 *(dhcpInfo.pOpt + 1) = 0x82;
 *(dhcpInfo.pOpt + 2) = 0x53;
 *(dhcpInfo.pOpt + 3) = 0x63;
 dhcpInfo.OptionsCounter += 4;
 dhcpInfo.pOpt += dhcpInfo.OptionsCounter;
 }
 
 
 
 
 
 
 
 
 void dhcp_OptionsAppend(byte optCode, byte optLen, byte *optContent)
 {
 uint	i;
 uint	count = 0;
 
 *(dhcpInfo.pOpt + 0) = optCode;
 count ++;
 
 *(dhcpInfo.pOpt + 1) = optLen;
 count ++;
 
 for (i=0 ; i<optLen ; i++)
 {
 *(dhcpInfo.pOpt + 2 + i) = *(optContent + i);
 count ++;
 }
 
 if (optCode != 255)
 {
 dhcpInfo.pOpt = dhcpInfo.pOpt + count;
 dhcpInfo.OptionsCounter = dhcpInfo.OptionsCounter + count;
 }
 else
 {
 *(dhcpInfo.pOpt) = optCode;
 dhcpInfo.pOpt = dhcpInfo.pOpt + count;
 dhcpInfo.OptionsCounter = dhcpInfo.OptionsCounter + count;
 }
 
 }  
 
 
 
 
 
 
 
 
 void DHCP_RejectOffer(void)
 {
 DHCP_HEADER		*pDecline;
 uint			ipAddr[2] = {0, 0};
 byte			optItem[3] = {0, 0, 0};
 uint			i;
 
 dhcpInfo.SocketId = TCPIP_UdpNew(dhcpInfo.AppId, dhcpConnID, 
  0xFFFFFFFF, 
 (uint)68, 
 (uint)67);
 if (dhcpInfo.SocketId == 0xff)
 {
 return;
 }
 pDecline = &dhcpBuffer;
 pDecline->Op = 1;
 pDecline->Htype = 1;
 pDecline->Hlen = 6;
 pDecline->Hops = 0;
 pDecline->Xid = dhcpXid;
 pDecline->Seconds = 0;
 pDecline->Flags = 0;
 pDecline->CiAddr = 0;
 pDecline->YiAddr = 0;
 pDecline->SiAddr = 0;
 pDecline->GiAddr = 0;
 for (i=0 ; i<6 ; i++)
 {
 if (i < 6)
 pDecline->ChAddr[i] = dhcpMacAddr[i];
 else
 pDecline->ChAddr[i] = 0;
 }
 for (i=0 ; i<64 ; i++)
 {
 pDecline->Sname[i] = 0;
 }
 for (i=0 ; i<128 ; i++)
 {
 pDecline->File[i] = 0;
 }
 dhcpInfo.OptionsCounter = 0;
 
 dhcpInfo.pOpt = &(pDecline->Options);
 dhcp_OptMagicCookie();
 
 optItem[0] = 4;
 dhcp_OptionsAppend(53, 1, optItem);
 
 optItem[0] = 0;
 dhcp_OptionsAppend(255, 0, optItem);
 while ((dhcpInfo.OptionsCounter < 312))
 {
 pDecline->Options[dhcpInfo.OptionsCounter ++] = 0;
 }
 TCPIP_UdpSend((dhcpInfo.SocketId), ((void *) 0L), 0, (byte *)pDecline, (uint)(236 + dhcpInfo.OptionsCounter));
 TCPIP_UdpClose(dhcpInfo.SocketId);
 }
 
 
