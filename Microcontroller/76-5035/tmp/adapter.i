
#line 1 "src\adapter\adapter.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\ADAPTER\ADAPTER.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 21 "SRC\ADAPTER\ADAPTER.H" /0
 
  
#line 1 "SRC\ADAPTER\ADAPTER_CFG.H" /0









 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 "SRC\ADAPTER\ADAPTER.H" /0
 
  
#line 1 ".\SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 23 "SRC\ADAPTER\ADAPTER.H" /0
 
 
 
 
 
 
 
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
 
 
 
#line 20 "src\adapter\adapter.c" /0
 
  
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
 
 
 
#line 21 "src\adapter\adapter.c" /0
 
  
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
 
 
 
 
 
 
 
#line 22 "src\adapter\adapter.c" /0
 
  
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
 
 
 
 
 
 
 
 
#line 23 "src\adapter\adapter.c" /0
 
  
#line 1 ".\SRC\PPPOE\PPPOE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\PPPOE\PPPOE.H" /0
#line 21 ".\SRC\PPPOE\PPPOE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _pppoe_hdr {
 
 byte	dest_addr[6];
 byte	src_addr[6];
 uint	ether_type;
 
 byte	vhl;
 byte	pppoe_code;
 uint	session_id;
 uint	payload_length;
 
 byte	payload_data[(1500 - 8)];
 }pppoe_hdr;
 
 
 
 
 
 typedef struct _tag {
 uint	name;
 uint	length;
 byte	value[(1500 - 8)-4];
 }tag;
 
 
 typedef struct _ppp_handshake_session {
 uint	protocol;
 byte	ppp_code;
 byte	ppp_id;
 uint	length;
 byte	option[(1500 - 8)-10];
 }ppp_handshake_session;
 
 
 typedef struct _pppoe_info {
 
 byte	state;
 byte	identifier;
 byte	wait_count_master;
 uint	wait_count_slave;
 uint	lcp_length;
 } PPPOE_INFO;
 
 
 
 extern byte PPPOE_GetDnsFlag;
 
 
 
 
 
 void	PPPOE_Init(void);
 void	PPPOE_Command(void);
 byte	PPPOE_GetState(void);
 void	PPPOE_Send(byte* buf, uint length);
 byte	PPPOE_Receive(byte *buf, uint length);
 void	PPPOE_Setup_Account(byte *username, byte *password);
 void	PPPOE_Get_DNS(byte *pri_dns, byte *sec_dns);
 
 
 
 
 
#line 24 "src\adapter\adapter.c" /0
 
  
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
 
 
 
 
#line 25 "src\adapter\adapter.c" /0
 
  
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
 
 
#line 26 "src\adapter\adapter.c" /0
 
 
 
 
 
 
 
 
 
 
 byte ETH_DoDhcp = 0;
 
 byte ETH_DhcpArpReply = 1;
 
 
 static byte eth_EthHeadLen = 0;
 static uint eth_PayLoadOffset = 0;
 static ulong eth_ArpSendIntervalTime = 3;
 static ulong eth_ArpSendTime = 0;
 
 
 static void eth_RcvHandle(byte xdata*, uint, byte);
 
 
 
 
 
 
 
 
 
 
 void ETH_Init(void)
 {
 byte*		point;
 
 
 STOE_Init((0));
 STOE_RcvCallback = eth_RcvHandle;
 
 
 TCPIP_Init(1);
 eth_EthHeadLen = 14;
 
 point =	MAC_GetMacAddr();
 TCPIP_SetMacAddr(point);
 
 TCPIP_AssignLowlayerXmitFunc(ETH_Send);
 
 
 }  
 
 
 
 
 
 
 
 
 
 
 void ETH_Start(void)
 {
 STOE_Start();
 
 }  
 
 
 
 
 
 
 
 
 
 
 void eth_RcvHandle(byte xdata* pbuf, uint length, byte protocol)
 {
 
 DMA_GrantXdata((uip_buf), pbuf, length);
 
  (uip_len = length);
 
 switch (protocol)
 {
 default:
 break;
 case 1:
 case 2:
 case 6:
 case 17:
 if (ETH_DoDhcp == 0)
 uip_arp_ipin();
 TCPIP_Receive();
 if((uip_len) > 0)
 {
 
 uip_arp_out();
 ETH_Send(0);
 }
 break;
 case 0xff:
 if(pbuf[12] == 0x08 && pbuf[13] == 0x06)
 {
 uip_arp_arpin();
 if ((pbuf[21] == 0x02) && ((*(ulong *)&pbuf[28]) == (PNetStation->StationIP)))
 {
 if ((ETH_DhcpArpReply) == 0)
  (ETH_DhcpArpReply = 1);
 }
 else
 {
 if((uip_len) > 0)
 ETH_Send(0);
 
 if ((uip_getgatewaymacaddrflag))
 eth_ArpSendIntervalTime = 180;
 }
 }
 
 break;
 }   
 
 }  
 
 
 
 
 
 
 
 
 
 
 void ETH_Send(uint	payloadOffset)
 {
 uint	length = (uip_len);
 
 eth_PayLoadOffset = payloadOffset;
 ETH_SendPkt((uip_buf), length);
 }  
 
 
 
 
 
 
 
 
 
 
 void ETH_SendPkt(byte xdata* psour, uint length)
 {
 byte xdata* pBuf;
 byte xdata* point;
 uint		len;
 uint		addr;
 byte		isPppoeIp = 0;
 uint		totalLen = length;
 ulong	sourIp = (PNetStation->StationIP);
 ulong	destIp = *(ulong*)&psour[16];
 byte	mode = 0;
 
 if (!PBDP->MacInfo.LinkSpeed)
 return;
 
 pBuf = STOE_AssignSendBuf(length + 6);
 if (!pBuf)
 return;
 point = pBuf + 6;
 
 {
 if ((*(psour + 12) == 8) && (*(psour + 13) == 0))
 PBDP->STOE_TxInform.Protocol = *(psour + 23);
 else
 PBDP->STOE_TxInform.Protocol = 0xff;
 }
 
 if (pBuf)
 {
 if (eth_PayLoadOffset)
 len = eth_PayLoadOffset;
 else
 {
 len = 40 + eth_EthHeadLen;
 }
 
 if (length > len)
 {
 
 DMA_GrantXdata(point, (uip_buf), len);
 
 point += len;
 length -= len;
 
 addr = (ulong)((uip_appdata)) >> 8;
 
 if(addr > 0x8000)	 
 STOE_CopyCode2TPBR(point, (uip_appdata), length);
 else if (addr >= 0x200)
 DMA_Grant(point, (uip_appdata), length);
 else
 DMA_GrantXdata(point, (uip_appdata), length);
 }
 else
 {
 
 DMA_GrantXdata(point, (uip_buf), len);
 
 }  
 
 if (isPppoeIp)
 pBuf[5] = 0x80;
 else
 pBuf[5] = 0;
 STOE_Send(pBuf, totalLen, PBDP->STOE_TxInform.Protocol);
 }
 
 eth_PayLoadOffset = 0;  
 
 }  
 
 
 
 
 
 
 
 
 bool eth_CheckGatewayIp(byte xdata* pBuf)
 {
 ulong	gatewayIp, receiveIp;
 
 gatewayIp = (PNetStation->Gateway);
 if (!gatewayIp)
 {
 return 0;
 }
 receiveIp = *(ulong *)&pBuf[28];
 if (gatewayIp != receiveIp)
 {
 return 0;
 }
 return 1;
 }
 
 
 
 
 
 
 
 
 void ETH_SendArpToGateway(bool StopSendAfterRcvReply)
 {
 ulong	gateway, ip, TempTime;
 byte	*buf = uip_buf;
 byte*	point;
 
 if (StopSendAfterRcvReply)
 {
 if ((uip_getgatewaymacaddrflag))
 return;
 }
 
 gateway = (PNetStation->Gateway);
 if (!gateway)
 return;
 
 
 ip = (PNetStation->StationIP);
 if (!ip)
 return;
 
 
 TempTime = SWTIMER_Tick();
 if ((TempTime - eth_ArpSendTime) < (eth_ArpSendIntervalTime * (1000 / 10)))
 return;
 
 
 eth_ArpSendTime = TempTime;
 
 if ((uip_getgatewaymacaddrflag))
 {
 eth_ArpSendIntervalTime = 180;
 }
 else
 {
 eth_ArpSendIntervalTime = 10;
 }
 
 
 point = MAC_GetMacAddr();
 uip_len = 42;
 
 buf[0] = 0xFF;
 buf[1] = 0xFF;
 buf[2] = 0xFF;
 buf[3] = 0xFF;
 buf[4] = 0xFF;
 buf[5] = 0xFF;
 buf[6] = *(point);
 buf[7] = *(point + 1);
 buf[8] = *(point + 2);
 buf[9] = *(point + 3);
 buf[10] = *(point + 4);
 buf[11] = *(point + 5);
 buf[12] = 0x08; 
 buf[13] = 0x06;
 
 buf[14] = 0x00;
 buf[15] = 0x01;
 buf[16] = 0x08;
 buf[17] = 0x00;
 buf[18] = 0x06;
 buf[19] = 0x04;
 buf[20] = 0x00;
 buf[21] = 0x01;
 
 buf[22] = *(point);
 buf[23] = *(point + 1);
 buf[24] = *(point + 2);
 buf[25] = *(point + 3);
 buf[26] = *(point + 4);
 buf[27] = *(point + 5);
 *(ulong *)&buf[28] = (PNetStation->StationIP);
 
 buf[32] = 0x00;
 buf[33] = 0x00;
 buf[34] = 0x00;
 buf[35] = 0x00;
 buf[36] = 0x00;
 buf[37] = 0x00;
 *(ulong *)&buf[38] = gateway;
 
 ETH_Send(0);
 
 return;
 }
 
 
 
 
 
 
 
 
 
 
 void ETH_SendArpRequest(ulong dstIp)
 {
 byte *buf = uip_buf;
 byte *point;
 
 
 point = MAC_GetMacAddr();
 uip_len = 42;
 
 buf[0] = 0xFF;
 buf[1] = 0xFF;
 buf[2] = 0xFF;
 buf[3] = 0xFF;
 buf[4] = 0xFF;
 buf[5] = 0xFF;
 buf[6] = *(point);
 buf[7] = *(point + 1);
 buf[8] = *(point + 2);
 buf[9] = *(point + 3);
 buf[10] = *(point + 4);
 buf[11] = *(point + 5);
 buf[12] = 0x08; 
 buf[13] = 0x06;
 
 buf[14] = 0x00;
 buf[15] = 0x01;
 buf[16] = 0x08;
 buf[17] = 0x00;
 buf[18] = 0x06;
 buf[19] = 0x04;
 buf[20] = 0x00;
 buf[21] = 0x01;
 
 buf[22] = *(point);
 buf[23] = *(point + 1);
 buf[24] = *(point + 2);
 buf[25] = *(point + 3);
 buf[26] = *(point + 4);
 buf[27] = *(point + 5);
 *(ulong *)&buf[28] = (PNetStation->StationIP);
 
 buf[32] = 0x00;
 buf[33] = 0x00;
 buf[34] = 0x00;
 buf[35] = 0x00;
 buf[36] = 0x00;
 buf[37] = 0x00;
 *(ulong *)&buf[38] = dstIp;
 
 ETH_Send(0);
 
 return;
 }
 
 
 
 
 
 
 
 
 
 
 void ETH_RestartSendArpToGateway(void)
 {
  (uip_getgatewaymacaddrflag = 0);
 eth_ArpSendIntervalTime = 3;
 }
 
 
 
 
 
 
 
 
 
 
 void ETH_SendDhcpArpRequest(void)
 {
 byte	*buf = uip_buf;
 byte*	point;
 
 eth_ArpSendIntervalTime = 5;
 
 point = MAC_GetMacAddr();
 uip_len = 42;
 
 buf[0] = 0xFF;
 buf[1] = 0xFF;
 buf[2] = 0xFF;
 buf[3] = 0xFF;
 buf[4] = 0xFF;
 buf[5] = 0xFF;
 buf[6] = *(point);
 buf[7] = *(point + 1);
 buf[8] = *(point + 2);
 buf[9] = *(point + 3);
 buf[10] = *(point + 4);
 buf[11] = *(point + 5);
 buf[12] = 0x08; 
 buf[13] = 0x06;
 
 buf[14] = 0x00;
 buf[15] = 0x01;
 buf[16] = 0x08;
 buf[17] = 0x00;
 buf[18] = 0x06;
 buf[19] = 0x04;
 buf[20] = 0x00;
 buf[21] = 0x01;
 
 buf[22] = *(point);
 buf[23] = *(point + 1);
 buf[24] = *(point + 2);
 buf[25] = *(point + 3);
 buf[26] = *(point + 4);
 buf[27] = *(point + 5);
 *(ulong *)&buf[28] = (PNetStation->StationIP);  
 
 buf[32] = 0x00;
 buf[33] = 0x00;
 buf[34] = 0x00;
 buf[35] = 0x00;
 buf[36] = 0x00;
 buf[37] = 0x00;
 *(ulong *)&buf[38] = (PNetStation->StationIP);  
 
 ETH_DhcpArpReply = 0;
 
 ETH_Send(0);
 
 return;
 }
 
 
