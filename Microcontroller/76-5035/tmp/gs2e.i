
#line 1 "src\gs2e\gs2e.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
 
 
 
#line 18 "src\gs2e\gs2e.c" /0
 
  
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
 
 
 
 
#line 19 "src\gs2e\gs2e.c" /0
 
  
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
 
 
 
 
#line 20 "src\gs2e\gs2e.c" /0
 
  
#line 1 "SRC\GS2E\GUDPBC.H" /0









 









 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 26 "SRC\GS2E\GUDPBC.H" /0
#line 26 "SRC\GS2E\GUDPBC.H" /0
 
 
 
 
 
 typedef struct _GUDPBC_CONN
 {
 byte 	State;
 byte	UdpSocket;
 
 } GUDPBC_CONN;
 
 
 
 
 void GUDPBC_Task(void);
 void GUDPBC_Init(uint);
 byte GUDPBC_NewConn(ulong xdata*, uint, byte);
 void GUDPBC_Event(byte, byte);
 void GUDPBC_Receive(byte xdata*, uint, byte);
 
 
 
 
#line 21 "src\gs2e\gs2e.c" /0
 
  
#line 1 "SRC\GS2E\GUDPUC.H" /0









 









 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 26 "SRC\GS2E\GUDPUC.H" /0
#line 26 "SRC\GS2E\GUDPUC.H" /0
 
 
 
 
 
 typedef struct _GUDPUC_CONN
 {
 byte 	State;
 byte	UdpSocket;
 
 } GUDPUC_CONN;
 
 
 
 
 void GUDPUC_Task(void);
 void GUDPUC_Init(uint);
 byte GUDPUC_NewConn(ulong xdata*, uint, byte);
 void GUDPUC_Event(byte, byte);
 void GUDPUC_Receive(byte xdata*, uint, byte);
 
 
 
 
#line 22 "src\gs2e\gs2e.c" /0
 
  
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
 
 
 
#line 23 "src\gs2e\gs2e.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 void printd_int (int x);
 
 
 
#line 24 "src\gs2e\gs2e.c" /0
 
  
#line 1 ".\SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 24 ".\SRC\ETHERNET\MAC.H" /0
#line 24 ".\SRC\ETHERNET\MAC.H" /0
 
  
#line 1 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 25 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /1
  
 
 
  
  
 
  
 
 
 
  
  
  
 
 
#line 40 "\_SWORK\10-\9800\9864\MICROCONTROLLER\76-4415\SRC\ETHERNET\STOE_CFG.H" /0
 
#line 25 ".\SRC\ETHERNET\MAC.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
#line 25 "src\gs2e\gs2e.c" /0
 
  
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
 
 
 
 
#line 26 "src\gs2e\gs2e.c" /0
 
  
#line 1 ".\SRC\PING\PING.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 ".\SRC\PING\PING.H" /0
#line 21 ".\SRC\PING\PING.H" /0
 
 
 
 
 
 typedef struct _PING_CONFIG_SET
 {
 ulong TargetIP;
 uint PatternLen;
 uint EchoTime;		
 byte TTL;
 byte TxCount;
 byte RxCount;
 
 uint PingID;
 uint Sequence;	
 } tsPING_CONFIG_SET;
 
 struct _PING_LINK
 {
 struct _PING_LINK *pPre;
 struct _PING_LINK *pNext;
 uint WaitTime;
 uint ReplyLen;
 byte Buf[1];
 };
 typedef struct _PING_LINK tsPING_LINK;
 
 
 extern byte xdata PingFlag; 
 
 
 void PING_Init(void);
 void PING_Task(void);
 char PING_CmdEnQueue(tsPING_LINK *pEntity);
 char PING_CmdDeQueue(tsPING_LINK *pEntity);
 
 
 
 
#line 27 "src\gs2e\gs2e.c" /0
 
  
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
 
 
 
 
#line 28 "src\gs2e\gs2e.c" /0
 
  
#line 1 ".\SRC\MAIN\HARDWARE.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
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
#line 29 "src\gs2e\gs2e.c" /0
 
  
#line 1 ".\SRC\MAIN\INSTRUMENT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 22 ".\SRC\MAIN\INSTRUMENT.H" /1
  
 
 
 
  
  
  
 
  
 
  
  
  
  
  
 
  
  
 
  
  
  
  
  
  
 
  
 
  
 
  
 
 
 
 
 
 
 
  
  
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
  
  
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
  
  
  
  
  
  
  
 
 
 
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
#line 30 "src\gs2e\gs2e.c" /0
#line 30 "src\gs2e\gs2e.c" /0
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 31 "src\gs2e\gs2e.c" /0
#line 31 "src\gs2e\gs2e.c" /0
 
 
 
 
 
 
 
 
 static byte xdata gs2e_State;
 static byte xdata gs2e_ConnType;
 void   gs2e_EEPROM_Init(void);
 
 void  GS2E_PortLeaseTimeoutUpdate(void);
 uint  DEADMANcnt;
 uint  PortLeaseTimeoutVal;                                                             
 
 
 
 
 
 
 
 
 
 void  GS2E_PortLeaseTimeoutUpdate(void)
 {
 if (DEADMANcnt == 0)                                                                   
 {
 if(PortLeaseTimeoutVal != 0)                                                         
 {
 if(PortLeaseTimeoutVal == 1)                                                       
 {
 PortLeaseTimeoutVal = 0;                                                         
 
 
 
 
 
 printd("\rConnection inactive\n\r");                                                 
 }
 else                                                                               
 {
 PortLeaseTimeoutVal--;                                                           
 }
 }
 }
 }
 
 
 
 
 
 
 
 void GS2E_Task(void)
 {
 GCONFIG_Task();
 if (gs2e_ConnType == 1)
 GUDPDAT_Task();
 
 
 
 
 
 
 
 
 
 
 
 
 }  
 
 
 
 
 
 
 
 
 
 void   gs2e_EEPROM_Init(void)
 {
 EEPROM_Init();
 }
 
 
 
 
 
 
 
 
 void GS2E_Init(void)
 {	
 gs2e_State = 0; 
 
 if ((GCONFIG_GetNetwork() & 0x0100) == 0x0100)
 {
 GUDPBC_Init(25122);
 }
 GUDPUC_Init(25124);
 
 if ((GCONFIG_GetNetwork() & 0x0800) == 0x0800)
 {
 gs2e_ConnType = 1;
 GUDPDAT_Init(GCONFIG_GetServerDataPktListenPort());
 }
 DEADMANcnt          = 3000;                                                            
 PortLeaseTimeoutVal = 6000;                                                
 gs2e_EEPROM_Init();
 }  
 
 
 
 
 
 
 
 
 byte GS2E_GetTaskState(void)
 {
 return gs2e_State;
 }  
 
 
 
 
 
 
 
 
 void GS2E_SetTaskState(byte state)
 {
 gs2e_State = state;
 }  
 
 
 
 
 
 
 
 
 byte GS2E_GetConnType(void)
 {
 return gs2e_ConnType;
 }  
 
 
