
#line 1 "src\gs2e\gudpdat.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\MAIN\MAIN.H" /0









 








 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 25 ".\SRC\MAIN\MAIN.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
 
#line 26 ".\SRC\MAIN\MAIN.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
 
#line 32 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
#line 33 "src\gs2e\gudpdat.c" /0
 
  
#line 1 "SRC\GS2E\GUDPDAT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 "SRC\GS2E\GUDPDAT.H" /0
#line 21 "SRC\GS2E\GUDPDAT.H" /0
 
 
 
 
 
 
 
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
 
 
 
 
#line 34 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
 
#line 35 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
#line 36 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
 
 
 
 
 
#line 37 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
 
#line 38 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
#line 39 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
#line 40 "src\gs2e\gudpdat.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 41 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
#line 42 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
#line 43 "src\gs2e\gudpdat.c" /0
 
  
#line 1 ".\SRC\MSTIMER\DELAY.H" /0









 














 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
#line 31 ".\SRC\MSTIMER\DELAY.H" /0
 
 
 
 
 
 
 
 void DELAY_Init(void);
 void DELAY_Ms(uint);
 void DELAY_Us(uint);
 
 
 
 
 
 
#line 44 "src\gs2e\gudpdat.c" /0
 
  
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
#line 45 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
 
#line 46 "src\gs2e\gudpdat.c" /0
 
  
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
 
 
 
#line 47 "src\gs2e\gudpdat.c" /0
 
  
#line 1 ".\SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 ".\SRC\MAIN\INSTRUMENT.H" /1
  
 
 
 
  
  
  
 
  
 
  
  
  
  
  
 
  
  
 
  
  
  
  
  
  
 
  
 
  
 
  
 
 
 
 
 
 
 
  
  
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
  
  
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
#line 48 "src\gs2e\gudpdat.c" /0
#line 48 "src\gs2e\gudpdat.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte gtcpdat_TxBuf[];                                                               
 extern byte uip_findarptable(uint* ipaddr);                                                
 
 
 
 static GUDPDAT_CONN gudpdat_Conns[5];                                      
 byte gudpdat_TxBuff[1472];                                                  
 static byte gudpdat_InterAppId;                                                            
 static byte gudpdat_LastConnId;                                                            
 static uint gudpdat_TxDatLen;                                                              
 static ulong gudpdat_TxWaitTime;                                                           
 static byte *gudpdat_TxBuf = gudpdat_TxBuff;                                               
 static uint gudpdat_Port;                                                                  
 static uint gudpdat_EthernetTxTimer;                                                       
 static byte gudpdat_UdpClient;                                                             
 static ulong elapse, time;                                                                 
 static byte txBuf[6];                                                                      
 
 
 
 static byte gudpdat_CheckAllConnStatusIdle(void);                                          
 static void gudpdat_MaintainConnection(byte id);                                           
 static void gudpdat_SendData(byte id);                                                     
 static uint gudpdat_GetData(byte id);                                                      
 static void gudpdat_Client(byte id);                                                       
 uint GUDPDAT_GetRandomPortNum(void);                                                
 static uint gudpdat_GetData(byte id);                                                      
 
 
 
 uint  main_readEthChar(byte* pDat);                                                 
 
 
 
 
 
 
 
 
 
 
 
 uint GUDPDAT_GetRandomPortNum(void)
 {
 uint port;
 
 port = (uint)SWTIMER_Tick();
 
 if (port < 5000)
 port += 5000;
 return port;
 }  
 
 
 
 
 
 
 
 
 void gudpdat_ClientOpen(byte id)
 {
 gudpdat_Client(id);
 if (gudpdat_Conns[id].State == 1)
 gudpdat_Conns[id].State = 3;
 }
 
 
 
 
 
 
 
 
 void gudpdat_Client(byte id)                                                               
 {
 ulong dip;
 byte tmp;
 
 if (GS2E_GetTaskState() != 2)                              
 {
 uint   dport = GCONFIG_GetClientDestPort();                                        
 dip = GCONFIG_GetClientDestIP();                                                   
 
 if (dip == 0)                                                                      
 return;
 if (gudpdat_Conns[id].State == 0)                                 
 {
 gudpdat_Conns[id].State = 1;                              
 gudpdat_Conns[id].Timer = SWTIMER_Tick();                                        
 gudpdat_Conns[id].Ip = dip;                                                      
 gudpdat_Conns[id].Port = dport;                                                  
 gudpdat_Conns[id].UdpSocket = TCPIP_UdpNew(gudpdat_InterAppId,                   
 id,                                   
 dip,                                  
 GUDPDAT_GetRandomPortNum(),           
 dport);                               
 
 if (((PNetStation->StationIP) & (PNetStation->SubnetMask)) != (dip & (PNetStation->SubnetMask)))   
 dip = (PNetStation->Gateway);                                                       
 ETH_SendArpRequest(dip);                                                         
 GS2E_SetTaskState(2);                                  
 tmp = printd("UDP host client port    : ");                                      
 if(gudpdat_Conns[id].UdpSocket == 0xff)                             
 printd("**ERROR! UNABLE TO CREATE SOCKET**\n\r");                              
 else
 {
 printd("%du\n\r", (uint) dport);                                               
 }          
 }
 }
 }
 
 
 
 
 
 
 
 
 uint gudpdat_GetData(byte id)
 {
 byte dat;
 uint temp;
 
 temp = readEthTxBufCount();                                                          
 while (temp > 0)                                                                     
 {
 if (gudpdat_TxDatLen >= 1472)                                      
 break;                                                                           
 temp = main_readEthChar(&dat);                                                     
 gudpdat_TxBuf[gudpdat_TxDatLen++] = dat;                                           
 gudpdat_Conns[id].UrRxBytes++;                                                     
 }
 return temp;                                                                         
 }  
 
 
 
 
 
 
 
 
 void gudpdat_MaintainConnection(byte id)
 {
 ulong time;
 time = SWTIMER_Tick();
 
 
 if (time >= gudpdat_Conns[id].Timer)
 elapse = time - gudpdat_Conns[id].Timer;
 else
 elapse = (0xFFFFFFFF - gudpdat_Conns[id].Timer) + time;
 
 if (elapse >= (3 * 60 * 100))
 {
 if (((PNetStation->StationIP) & (PNetStation->SubnetMask)) != (gudpdat_Conns[id].Ip & (PNetStation->SubnetMask)))
 {
 ETH_SendArpRequest((PNetStation->Gateway));
 }
 else
 {
 ETH_SendArpRequest(gudpdat_Conns[id].Ip);
 }
 gudpdat_Conns[id].Timer = time;
 }
 }  
 
 
 
 
 
 
 
 
 void gudpdat_SendData(byte id)
 {
 ulong elapse, time;
 
 if (gudpdat_TxDatLen >= 1472)
 {
 TCPIP_UdpSend(gudpdat_Conns[id].UdpSocket, 0, 0, gudpdat_TxBuf, 1472);
 gudpdat_TxDatLen = 0;                                                              
 gudpdat_TxWaitTime = 0;
 }
 else if (gudpdat_TxDatLen > 0)
 {
 time = SWTIMER_Tick();
 if (gudpdat_TxWaitTime == 0)
 { gudpdat_TxWaitTime = time; }
 else
 {
 if (time >= gudpdat_TxWaitTime)
 elapse = time - gudpdat_TxWaitTime;
 else
 elapse = (0xFFFFFFFF - gudpdat_TxWaitTime) + time;
 if ((elapse * 10) >= gudpdat_EthernetTxTimer)
 {
 TCPIP_UdpSend(gudpdat_Conns[id].UdpSocket, 0, 0, gudpdat_TxBuf, gudpdat_TxDatLen);
 gudpdat_TxDatLen   = 0;
 gudpdat_TxWaitTime = 0;
 }
 }
 }
 }  
 
 
 
 
 
 
 
 
 void GUDPDAT_Task(void)                                                                    
 {
 byte id;                                                                             
 uint temp;                                                                           
 
 for (id = 0; id < 5; id++)                                           
 {
 switch (gudpdat_Conns[id].State)                                                   
 {
 case 0 :                                                        
 if (gudpdat_UdpClient == 1)                                               
 {
 gudpdat_Client(id);                                                        
 }
 break;                                                                       
 case 1 :                                                  
 if (gudpdat_UdpClient == 1)                                               
 {
 gudpdat_Conns[id].State = 3;                         
 }
 break;                                                                       
 case 3 :                                                   
 {
 temp = gudpdat_GetData(id);                                                  
 gudpdat_SendData(id);                                                        
 gudpdat_MaintainConnection(id);                                              
 }
 break;                                                                       
 default:                                                                         
 break;                                                                       
 }
 }
 }  
 
 
 
 
 
 
 
 
 void GUDPDAT_Init(uint localPort)                                                          
 {
 byte  i;                                                                             
 
 gudpdat_UdpClient = 0;                                                           
 for (i = 0; i < 5; i++)                                              
 {
 gudpdat_Conns[i].State = 0;                                       
 gudpdat_Conns[i].UrRxBytes = 0;                                                    
 gudpdat_Conns[i].UrTxBytes = 0;                                                    
 }
 gudpdat_LastConnId = 0;                                                              
 gudpdat_InterAppId = TCPIP_Bind(GUDPDAT_NewConn, GUDPDAT_Event, GUDPDAT_Receive);    
 
 printd("UDP data ");                                                                 
 if (gudpdat_InterAppId == 0xff)                                         
 printd("port           : **BINDING ERROR!**\n\r");                                                  
 else
 {
 if ((GCONFIG_GetNetwork() & 0x8000) != 0x8000)     
 {
 i = TCPIP_UdpListen(localPort, gudpdat_InterAppId);                              
 if(i == 1)
 printd("server port    : %du\n\r",localPort);                                  
 else
 printd("server port    : * BINDING ERROR! *\n\r");                               
 }
 else                                                                               
 {
 gudpdat_UdpClient = 1;                                                        
 printd("client port      : %du\n\r",localPort);                                  
 }
 }
 gudpdat_TxDatLen = 0;                                                                
 gudpdat_TxWaitTime = 0;                                                              
 gudpdat_EthernetTxTimer = GCONFIG_GetEthernetTxTimer();                              
 }  
 
 
 
 
 
 
 
 
 byte GUDPDAT_NewConn(ulong xdata* pip, uint remotePort, byte socket)                       
 {
 byte i;                                                                              
 
 gudpdat_LastConnId = 0;                                                              
 
 if (gudpdat_Conns[gudpdat_LastConnId].State == 3)              
 {
 gudpdat_Conns[gudpdat_LastConnId].State = 0;                      
 TCPIP_UdpClose(gudpdat_Conns[gudpdat_LastConnId].UdpSocket);                       
 }
 for (i = 0; i < 5; i++)                                              
 {
 if (gudpdat_Conns[i].State == 0)                                  
 {
 GS2E_SetTaskState(2);                                  
 gudpdat_Conns[i].State = 3;                                
 gudpdat_Conns[i].Timer = SWTIMER_Tick();                                         
 gudpdat_Conns[i].Ip = *pip;                                                      
 gudpdat_Conns[i].Port = remotePort;                                              
 gudpdat_Conns[i].UdpSocket = socket;                                             
 printd("New UDP connection : id=%bu, remotePort=%du, socket=%bu\n\r",            
 i, remotePort, socket);                                                  
 gudpdat_LastConnId++;                                                            
 gudpdat_LastConnId = gudpdat_LastConnId & 0x03;                                  
 return i;                                                                        
 }
 }
 return 0xFF;                                                          
 }  
 
 
 
 
 
 
 
 
 void GUDPDAT_Event(byte id, byte event)                                                    
 {
 if (event == 2)                                                   
 {
 }
 else if (event == 0)                                              
 {
 gudpdat_Conns[id].State = 0;                                      
 GS2E_SetTaskState(0);                                                
 printd("TCPIP_UdpClose(id=%bu, socket=%bu)\n\r", id, gudpdat_Conns[id].UdpSocket); 
 TCPIP_UdpClose(gudpdat_Conns[id].UdpSocket);                                       
 }
 }  
 
 
 
 
 
 
 
 
 void GUDPDAT_Receive(byte xdata* pData, uint length, byte id)                              
 {
 
 
 
 
 
 
 word        *pword; 
 uint        i; 
 byte        EthRxBuf[1024];                                                           
 byte        Chngs;                                                                   
 
 if (gudpdat_Conns[id].State != 3)                              
 return;                                                                            
 memcpy(&EthRxBuf[0], pData, length);                                                 
 gudpdat_Conns[id].UrTxBytes += length;                                               
 
 i = 0;                                                                               
 Chngs = 0;                                                                           
 while(i < length)                                                                    
 {
 switch(EthRxBuf[i])                                                                
 {
 case 0xF0 : {
 if(acResetRequest < 0xffff)                                            
 {acResetRequest++;}                                                  
 memset(&EthRxBuf[i], 0, 1);                                            
 i += 1;                                                                
 break;                                                                 
 }
 case 0xF1 : {
 if(acStatusRequest < 0xffff)                                           
 { acStatusRequest++; }                                               
 memset(&EthRxBuf[i], 0, 1);                                            
 i += 1;                                                                
 break;                                                                 
 }
 case 0xF4 : {		  			  
 if(acDimmingRequest < 0xffff)                                          
 { acDimmingRequest++; }                                              
 memcpy(&bufDimmingData[1], &EthRxBuf[i+1], 2);
 memset(&EthRxBuf[i], 0, 3);                                            
 i += 3;                                                                
 break;
 }
 
 case 0xF3 : {
 
 if(acIndicatorRequest < 0xffff)                                          
 { acIndicatorRequest++; }                                              
 memcpy(&bufIndicatorData[1], &EthRxBuf[i+1], 1);
 memset(&EthRxBuf[i], 0, 2);                                            
 i += 2;                                                                
 break;
 }
 
 case 0xF5 : {
 
 if(acDisplayRequest < 0xffff)                                          
 { acDisplayRequest++; }                                              
 memcpy(&bufDisplayData[1], &EthRxBuf[i+1], 6);
 memset(&EthRxBuf[i], 0, 7);                                            
 i += 7;                                                                
 break;
 }
 
 case 0xF8 : {
 
 if(acDisplayDimmingRequest < 0xffff)                                          
 { acDisplayDimmingRequest++; }                                              
 memcpy(&bufDisplayDimmingData[1], &EthRxBuf[i+1], 1);
 memset(&EthRxBuf[i], 0, 2);                                            
 i += 2;                                                                
 break;
 }
 
 case 0xF9 : {
 
 if(acDisplayContrastRequest < 0xffff)                                          
 { acDisplayContrastRequest++; }                                              
 memcpy(&bufDisplayContrastData[1], &EthRxBuf[i+1], 1);
 memset(&EthRxBuf[i], 0, 2);                                            
 i += 2;                                                                
 break;
 }
 
 case 0xFE : {
 
 if(acFirmwareRequest < 0xffff)                                         
 { acFirmwareRequest++; }                                             
 memset(&EthRxBuf[i], 0, 1);                                            
 i += 1;                                                                
 break;
 }
 case 0xEA         :                                                            
 {
 if(lightingcal == 1)                                                
 {
 
 
 
 
 
 
 
 
 
 
 if(length == (2*0x0100+1))                                          
 {
 printd("\n\rNew Lighting Table Loaded\n\r");                       
 pword = addresslookup(0);                                        
 memmove(pword, &EthRxBuf[i+1], (2*0x0100));                     
 GCONFIG_SetLightingTable(pword);
 memset(&EthRxBuf[i], 0, ((2*0x0100)+1));                          
 i += ((2*0x0100)+1);                                              
 
 }
 else
 {
 memset(&EthRxBuf[i], 0, length);                                   
 i += (length);                                                     
 
 }
 }
 else
 {
 printd("no valid op-code : %02bx\n\r",EthRxBuf[i]);                  
 memset(&EthRxBuf[i], 0, length);                                     
 i += (length);                                                       
 }                   
 }
 break;  
 case 0xED         :                                                            
 {
 if(lightingcal == 1)                                                
 {
 GCONFIG_DefaultLightingTable();                                      
 printd("\n\rDefault Lighting Table Data Loaded\n\r");                
 memset(&EthRxBuf[i], 0, length);                                     
 i += (length);                                                       
 }
 else
 {
 printd("no valid op-code : %02bx\n\r",EthRxBuf[i]);                  
 EthRxBuf[i] = 0;                                                     
 i++;                                                                 
 }                   
 }
 break;
 case 0xEE         :                                                            
 {
 if(lightingcal == 1)                                                
 {
 printd("\n\rLighting Table Data Saved\n\r");                         
 memset(&EthRxBuf[i], 0, length);                                     
 i += (length);                                                       
 GCONFIG_WriteConfigData();
 }
 else
 {
 printd("no valid op-code : %02bx\n\r",EthRxBuf[i]);                  
 EthRxBuf[i] = 0;                                                     
 i++;                                                                 
 }                   
 }
 break;
 case 0xEF         :                                                            
 {
 if(lightingcal == 1)                                                
 {
 memset(&EthRxBuf[i], 0, length);                                     
 i += (length);                                                       
 acLightTableReadBack = 1;                                            
 }
 else
 {
 printd("no valid op-code : %02bx\n\r",EthRxBuf[i]);                  
 EthRxBuf[i] = 0;                                                     
 i++;                                                                 
 }                   
 }
 break;
 default  :
 printd("invalid op-code : %02bx\n\r",EthRxBuf[i]);                      
 i++;                                                                   
 break;                                                                 
 }
 }
 }  
 
 
