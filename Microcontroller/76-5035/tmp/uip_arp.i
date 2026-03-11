
#line 1 "src\tcpip\uip_arp.c" /0



 
 












 
 





 
 
































 
 






 
 
  
#line 1 "SRC\TCPIP\UIP_ARP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\TCPIP\UIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\TCPIP\UIPOPT.H" /0









 
 









 
 
































 
 






 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 68 "SRC\TCPIP\UIPOPT.H" /0
 
  
#line 1 "SRC\TCPIP\TCPIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 "SRC\TCPIP\TCPIP.H" /0
#line 21 "SRC\TCPIP\TCPIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
 
 
 
 
#line 69 "SRC\TCPIP\UIPOPT.H" /0
 
 
 



 
 
 





 
 typedef unsigned short uip_stats_t;
 
 
 
 
 












 
 








 
 
 
 











 
 
 
 


 


 


 


 
 


 


 


 


 
 


 


 


 


 








 
 
 
 


 


 


 


 


 


 
 
 




 




 
 
 












 
 
 




 
 
 
 
 
 
 
 








 
 




 
 
 







 
 
 




 
 
 




 
 
 
 
 



 
 









 
 
 








 
 
 






 
 
 
 
 








 
 
 








 
 
 




 
 
 





 
 
 






 
 
 




 
 
 
 





 
 
 
 
 
 



 
 







 
 
 





 
 
 
 
 
 
 



 
 








 
 
 
 






 
 
 








 
 
 





 
 void uip_log(char *msg);
 








 
 
 
 
 









 
 
 
 
 
 
 
 







 
 
 
 
 
 
 
 






























 
 






 
 





 
 
 


 
 
 
 
#line 58 "SRC\TCPIP\UIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void uip_init(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 void uip_udp_listen(uint port);
 void uip_udp_unlisten(uint port);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void uip_listen(uint port);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void uip_listen(uint port);
 
 
 
 
 
 
 
 
 
 
 
 
 
 struct uip_conn *uip_connect(uint *ripaddr, uint port);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 struct uip_conn *uip_connect(uint *ripaddr, uint port);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 








 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 struct uip_udp_conn *uip_udp_new(uint *ripaddr, uint rport);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 704 "SRC\TCPIP\UIP.H" /1
  
 
#line 706 "SRC\TCPIP\UIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern volatile byte *uip_sappdata; 
 
 
 
 
 
 
 
 extern volatile byte *uip_urgdata; 
 
 
 
 
 
 
 
 
 
 
 
 
 extern volatile uint idata uip_slen;
 
 
 extern volatile byte idata uip_urglen, uip_surglen;
 
 
 
 
 
 
 
 
 
 
 
 
 struct uip_conn {
 uint ripaddr[2];     
 
 uint lport;          
 uint rport;          
 
 byte rcv_nxt[4];     
 byte snd_nxt[4];     
 uint len;            
 uint mss;            
 uint initialmss;     
 byte sa;             
 byte sv;             
 byte rto;            
 byte tcpstateflags;  
 byte timer;          
 byte nrtx;           
 
 byte window[2];
 byte keepaliveflag;
 byte sndkeepalive;  
 uint keepalivetick;
 byte tcpip_id;
 
 
 
 };
 
 
 extern struct uip_conn xdata *uip_conn;
 
 extern struct uip_conn xdata uip_conns[(16)];
 
 
 
 
 
 
 
 
 extern volatile byte uip_acc32[4];
 
 
 
 
 
 
 
 struct uip_udp_conn {
 uint ripaddr[2];    
 uint lport;         
 uint rport;         
 
 byte tcpip_id;
 };
 
 extern struct uip_udp_conn xdata *uip_udp_conn;
 extern struct uip_udp_conn xdata uip_udp_conns[(16)];
 
 
 
 
 
 
 
 struct uip_stats {
 struct {
 uip_stats_t drop;      
 uip_stats_t recv;      
 uip_stats_t sent;      
 uip_stats_t vhlerr;    
 uip_stats_t hblenerr;  
 uip_stats_t lblenerr;  
 uip_stats_t fragerr;   
 uip_stats_t chkerr;    
 uip_stats_t protoerr;  
 } ip;                    
 struct {
 uip_stats_t drop;      
 uip_stats_t recv;      
 uip_stats_t sent;      
 uip_stats_t typeerr;   
 } icmp;                  
 struct {
 uip_stats_t drop;      
 uip_stats_t recv;      
 uip_stats_t sent;      
 uip_stats_t chkerr;    
 uip_stats_t ackerr;    
 uip_stats_t rst;       
 uip_stats_t rexmit;    
 uip_stats_t syndrop;   
 uip_stats_t synrst;    
 } tcp;                   
 };
 
 
 
 
 
 
 extern struct uip_stats uip_stat;
 
 
 
 
 
 
 
 
 
 
 
 
 extern volatile byte idata uip_flags;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern byte xdata uip_extraflag;
 
 
 
 
 
 
 
 
 
 
 
 void uip_process(byte flag);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct {
 
 byte vhl,
 tos,          
 len[2],       
 ipid[2],        
 ipoffset[2],  
 ttl,          
 proto;     
 uint ipchksum;
 uint srcipaddr[2], 
 destipaddr[2];
 
 
 uint srcport,
 destport;
 byte seqno[4],  
 ackno[4],
 tcpoffset,
 flags,
 wnd[2];     
 uint tcpchksum;
 byte urgp[2];
 byte optdata[4];
 } uip_tcpip_hdr;
 
 
 typedef struct {
 
 byte vhl,
 tos,          
 len[2],       
 ipid[2],        
 ipoffset[2],  
 ttl,          
 proto;     
 uint ipchksum;
 uint srcipaddr[2], 
 destipaddr[2];
 
 byte type, icode;
 uint icmpchksum;
 uint id, seqno;  
 } uip_icmpip_hdr;
 
 
 typedef struct {
 
 byte vhl,
 tos,          
 len[2],       
 ipid[2],        
 ipoffset[2],  
 ttl,          
 proto;     
 uint ipchksum;
 uint srcipaddr[2], 
 destipaddr[2];
 
 
 uint srcport,
 destport;
 uint udplen;
 uint udpchksum;
 } uip_udpip_hdr;
 
 
 
 
 
 
#line 1037 "SRC\TCPIP\UIP.H" /1
 
 
#line 1039 "SRC\TCPIP\UIP.H" /0
 extern uint idata uip_hostaddr[2];
 
 
 
 
 
 
#line 63 "SRC\TCPIP\UIP_ARP.H" /0
 
 
 
 
 
 
 struct uip_eth_addr {
 byte addr[6];
 };
 
 extern struct uip_eth_addr xdata uip_ethaddr;
 extern struct uip_eth_addr xdata uip_gatewaymacaddr;
 extern byte xdata uip_getgatewaymacaddrflag;
 
 
 
 
 struct uip_eth_hdr {
 struct uip_eth_addr dest;
 struct uip_eth_addr src;
 uint type;
 };
 
 
 
 
 
 
 
 
 void uip_arp_init(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void uip_arp_timer(void);
 
 byte uip_findarptable(uint* ipaddr);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 





 
 
 
 
 
 
 
 
#line 210 "SRC\TCPIP\UIP_ARP.H" /1
 
 
#line 212 "SRC\TCPIP\UIP_ARP.H" /0
 extern uint idata uip_arp_draddr[2], uip_arp_netmask[2];
 
 
 
 
#line 69 "src\tcpip\uip_arp.c" /0
 
  
#line 1 "SRC\TCPIP\TCPIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 18 "SRC\TCPIP\TCPIP.H" /1
  
 
 
  
 
 
  
  
  
  
  
 
  
 
  
  
  
  
  
 
  
  
  
 
  
  
 
  
  
 
  
  
  
 
  
  
 
  
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 124 "SRC\TCPIP\TCPIP.H" /0
 
 
 
#line 70 "src\tcpip\uip_arp.c" /0
 
  
#line 1 "SRC\TCPIP\TCPIP_UIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 21 "SRC\TCPIP\TCPIP_UIP.H" /0
#line 21 "SRC\TCPIP\TCPIP_UIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct _TCPIP_APPLICATION
 {
 byte	Valid;
 byte	(*NewConnHandle)(ulong xdata*, uint, byte);
 void	(*EventHandle)(byte, byte);
 void	(*ReceiveHandle)(byte xdata*, uint, byte);
 
 } TCPIP_APPLICATION;
 
 
 typedef struct _TCPIP_LISTEN
 {
 uint	LocalPort;
 byte	InterfaceId; 
 
 } TCPIP_LISTEN;
 
 
 typedef struct _TCPIP_UDP_CONNECT
 {
 byte	State;
 byte	InterfaceId; 
 byte	AppId;		 
 ulong	Ip;
 uint	LocalPort;
 uint	RemotePort;
 byte	HeadLen;
 uint	PayloadLen;
 byte*	PHead;		 
 byte*	PPayload;	 
 void xdata*	PSocket; 
 
 } TCPIP_UDP_CONNECT;
 
 
 typedef struct _TCPIP_TCP_CONNECT
 {
 byte	State;
 byte	InterfaceId; 
 byte	AppId;		 
 byte	FinalFlag;
 ulong	Ip;
 byte	Seq[4];
 void  xdata*	PSocket;
 uint	XmitLen;
 uint	SecXmitLen;
 uint	LeftLen;
 byte*	PData;
 byte*	PSecData;
 byte*	PNextData;
 byte	Count;
 
 } TCPIP_TCP_CONNECT;
 
 
 extern byte TCPIP_PppoeHeaderLen;
 extern byte TCPIP_IsPppoe;
 extern byte TCPIP_DontFrag;
 extern byte TCPIP_EthHeadLen;
 extern uint TCPIP_MssLen;
 extern void (*TCPIP_PingRespCallBack)(void);
 
 
 
 void TCPIP_CallTcpApp(void);
 void TCPIP_CallUdpApp(void);
 
 
 
 
 
 
#line 71 "src\tcpip\uip_arp.c" /0
 
  
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
 
 
#line 72 "src\tcpip\uip_arp.c" /0
 
  
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
 
 
 
 
 
#line 73 "src\tcpip\uip_arp.c" /0
 
 
 struct arp_hdr {
 struct uip_eth_hdr ethhdr;
 uint hwtype;
 uint protocol;
 byte hwlen;
 byte protolen;
 uint opcode;
 struct uip_eth_addr shwaddr;
 uint sipaddr[2];
 struct uip_eth_addr dhwaddr;
 uint dipaddr[2]; 
 };
 
 struct ethip_hdr {
 struct uip_eth_hdr ethhdr;
 
 byte vhl,
 tos,          
 len[2],       
 ipid[2],        
 ipoffset[2],  
 ttl,          
 proto;     
 uint ipchksum;
 uint srcipaddr[2], 
 destipaddr[2];
 };
 
 
 
 
 
 
 struct arp_entry {
 uint ipaddr[2];
 struct uip_eth_addr ethaddr;
 byte time;
 };
 
 struct uip_eth_addr xdata uip_ethaddr = {{0x00,
  0x12,
  0x34,
  0x56,
  0x78,
  0x9A}};
 struct uip_eth_addr xdata uip_gatewaymacaddr = {0, 0, 0, 0, 0, 0};
 byte xdata uip_getgatewaymacaddrflag = 0;
 
 static struct arp_entry xdata arp_table[8];
 static uint xdata ipaddr[2];
 static byte xdata i, c;
 
 static byte xdata arptime;
 static byte xdata tmpage;
 
 
 
 
 



 
 
 void uip_arp_init(void)
 {
 for(i = 0; i < 8; ++i) {
 memset(arp_table[i].ipaddr, 0, 4);
 }
 }
 
 







 
 
 void uip_arp_timer(void)
 {
 struct arp_entry *tabptr;
 
 ++arptime;
 for(i = 0; i < 8; ++i) {
 tabptr = &arp_table[i];
 if((tabptr->ipaddr[0] | tabptr->ipaddr[1]) != 0 &&
 arptime - tabptr->time >= 120)
 {
 memset(tabptr->ipaddr, 0, 4);
 }
 }
 }
 
 
 
 static void uip_arp_update(uint *ipaddr, struct uip_eth_addr *ethaddr)
 {
 register struct arp_entry *tabptr;
 


 
 for(i = 0; i < 8; ++i) {
 tabptr = &arp_table[i];
 
 if(tabptr->ipaddr[0] != 0 && tabptr->ipaddr[1] != 0) {

 
 if(ipaddr[0] == tabptr->ipaddr[0] && ipaddr[1] == tabptr->ipaddr[1]) {
 
 memcpy(tabptr->ethaddr.addr, ethaddr->addr, 6);
 tabptr->time = arptime;
 return;
 }
 }
 }
 
 
 
 
 for(i = 0; i < 8; ++i) {
 tabptr = &arp_table[i];
 if(tabptr->ipaddr[0] == 0 && tabptr->ipaddr[1] == 0) {
 break;
 }
 }
 
 
 if(i == 8) {
 tmpage = 0;
 c = 0;
 for(i = 0; i < 8; ++i) {
 tabptr = &arp_table[i];
 if(arptime - tabptr->time > tmpage) {
 tmpage = arptime - tabptr->time;
 c = i;
 }
 }
 i = c;
 tabptr = &arp_table[i];
 }
 
 
 memcpy(tabptr->ipaddr, ipaddr, 4);
 memcpy(tabptr->ethaddr.addr, ethaddr->addr, 6);
 tabptr->time = arptime;
 }
 
 











 
 
 void uip_arp_ipin(void)
 {

 
 if((((struct ethip_hdr *)&uip_buf[0])->srcipaddr[0] & uip_arp_netmask[0]) != (uip_hostaddr[0] & uip_arp_netmask[0])) {
 return;
 }
 if((((struct ethip_hdr *)&uip_buf[0])->srcipaddr[1] & uip_arp_netmask[1]) != (uip_hostaddr[1] & uip_arp_netmask[1])) {
 return;
 }
 
 
 if (uip_getgatewaymacaddrflag == 1)
 {
 
 if ((((struct ethip_hdr *)&uip_buf[0])->srcipaddr[0]!=uip_arp_draddr[0])||(((struct ethip_hdr *)&uip_buf[0])->srcipaddr[1]!=uip_arp_draddr[1]))
 {
 
 if (0 == memcmp(uip_gatewaymacaddr.addr, ((struct ethip_hdr *)&uip_buf[0])->ethhdr.src.addr, 6))
 return;
 }
 }
 
 uip_arp_update(((struct ethip_hdr *)&uip_buf[0])->srcipaddr, &(((struct ethip_hdr *)&uip_buf[0])->ethhdr.src));
 
 return;
 }
 
 




















 
 
 void uip_arp_arpin(void)
 {
 register struct arp_entry *tabptr;
 
 if(uip_len < sizeof(struct arp_hdr)) {
 uip_len = 0;
 return;
 }
 
 uip_len = 0;
 
 switch(((struct arp_hdr *)&uip_buf[0])->opcode)
 {
 case (1):
 
 if(((struct arp_hdr *)&uip_buf[0])->dipaddr[0] == uip_hostaddr[0] && ((struct arp_hdr *)&uip_buf[0])->dipaddr[1] == uip_hostaddr[1]) {
 
  ((struct arp_hdr *)&uip_buf[0])->opcode = (2);
 
 memcpy(((struct arp_hdr *)&uip_buf[0])->dhwaddr.addr, ((struct arp_hdr *)&uip_buf[0])->shwaddr.addr, 6);
 memcpy(((struct arp_hdr *)&uip_buf[0])->shwaddr.addr, uip_ethaddr.addr, 6);
 memcpy(((struct arp_hdr *)&uip_buf[0])->ethhdr.src.addr, uip_ethaddr.addr, 6);
 memcpy(((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr, ((struct arp_hdr *)&uip_buf[0])->dhwaddr.addr, 6);
 
  ((struct arp_hdr *)&uip_buf[0])->dipaddr[0] = ((struct arp_hdr *)&uip_buf[0])->sipaddr[0];
  ((struct arp_hdr *)&uip_buf[0])->dipaddr[1] = ((struct arp_hdr *)&uip_buf[0])->sipaddr[1];
  ((struct arp_hdr *)&uip_buf[0])->sipaddr[0] = uip_hostaddr[0];
  ((struct arp_hdr *)&uip_buf[0])->sipaddr[1] = uip_hostaddr[1];
 
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.type = (0x0806);
 uip_len = sizeof(struct arp_hdr);
 }
 break;
 
 case (2):
 
 if(((struct arp_hdr *)&uip_buf[0])->dipaddr[0] == uip_hostaddr[0] && ((struct arp_hdr *)&uip_buf[0])->dipaddr[1] == uip_hostaddr[1]) {
 if (uip_getgatewaymacaddrflag == 0)  
 {
 if ((uip_arp_draddr[0] == ((struct arp_hdr *)&uip_buf[0])->sipaddr[0]) && (uip_arp_draddr[1] == ((struct arp_hdr *)&uip_buf[0])->sipaddr[1]))
 {
 uip_getgatewaymacaddrflag = 1;
 memcpy(uip_gatewaymacaddr.addr, ((struct arp_hdr *)&uip_buf[0])->shwaddr.addr, 6);
 
 for(i = 0; i < 8; ++i)
 {
 tabptr = &arp_table[i];
 
 if(tabptr->ipaddr[0] != 0 && tabptr->ipaddr[1] != 0)
 {
 if (0 == memcmp(uip_gatewaymacaddr.addr, tabptr->ethaddr.addr, 6))
 {
 if ((uip_arp_draddr[0] != tabptr->ipaddr[0]) || (uip_arp_draddr[1]) != tabptr->ipaddr[1])
 {
 tabptr->ipaddr[0] = 0;
 tabptr->ipaddr[1] = 0;
 }
 }
 }
 }
 }
 }
 uip_arp_update(((struct arp_hdr *)&uip_buf[0])->sipaddr, &((struct arp_hdr *)&uip_buf[0])->shwaddr);
 }
 break;
 default:
 break;
 }
 
 return;
 }
 
 

























 
 
 void uip_arp_out(void)
 {
 struct arp_entry *tabptr;





 
 
 if (((struct ethip_hdr *)&uip_buf[0])->destipaddr[0] == 0xffff)
 {
 memset(((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr, 0xff, 6);
 }
 else if (((struct ethip_hdr *)&uip_buf[0])->destipaddr[0] > 0xe000)
 {
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr[0] = 1;
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr[1] = 0;
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr[2] = 0x5e;
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr[3] = (byte)((struct ethip_hdr *)&uip_buf[0])->destipaddr[0] & 0x7f;
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr[4] = (byte)(((struct ethip_hdr *)&uip_buf[0])->destipaddr[1] >> 8);
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr[5] =(byte)((struct ethip_hdr *)&uip_buf[0])->destipaddr[1];
 }
 else
 {
 
 if((((struct ethip_hdr *)&uip_buf[0])->destipaddr[0] & uip_arp_netmask[0]) != (uip_hostaddr[0] & uip_arp_netmask[0]) ||
 (((struct ethip_hdr *)&uip_buf[0])->destipaddr[1] & uip_arp_netmask[1]) != (uip_hostaddr[1] & uip_arp_netmask[1])) 
 {


 
 ipaddr[0] = uip_arp_draddr[0];
 ipaddr[1] = uip_arp_draddr[1];
 } else {
 
 ipaddr[0] = ((struct ethip_hdr *)&uip_buf[0])->destipaddr[0];
 ipaddr[1] = ((struct ethip_hdr *)&uip_buf[0])->destipaddr[1];
 }
 
 
 if (((ipaddr[0] == 0) && (ipaddr[1] == 0)) || ((uip_hostaddr[0] == 0) && (uip_hostaddr[1] == 0)))
 {
 uip_len = 0;
 return;
 }
 
 for(i = 0; i < 8; ++i) {
 tabptr = &arp_table[i];
 if(ipaddr[0] == tabptr->ipaddr[0] && ipaddr[1] == tabptr->ipaddr[1])
 break;
 }
 
 if(i == 8) {

 
 memset(((struct arp_hdr *)&uip_buf[0])->ethhdr.dest.addr, 0xff, 6);
 memset(((struct arp_hdr *)&uip_buf[0])->dhwaddr.addr, 0x00, 6);
 memcpy(((struct arp_hdr *)&uip_buf[0])->ethhdr.src.addr, uip_ethaddr.addr, 6);
 memcpy(((struct arp_hdr *)&uip_buf[0])->shwaddr.addr, uip_ethaddr.addr, 6);
 
  ((struct arp_hdr *)&uip_buf[0])->dipaddr[0] = ipaddr[0];
  ((struct arp_hdr *)&uip_buf[0])->dipaddr[1] = ipaddr[1];
  ((struct arp_hdr *)&uip_buf[0])->sipaddr[0] = uip_hostaddr[0];
  ((struct arp_hdr *)&uip_buf[0])->sipaddr[1] = uip_hostaddr[1];
  ((struct arp_hdr *)&uip_buf[0])->opcode = (1);  
  ((struct arp_hdr *)&uip_buf[0])->hwtype = (1);
  ((struct arp_hdr *)&uip_buf[0])->protocol = (0x0800);
  ((struct arp_hdr *)&uip_buf[0])->hwlen = 6;
  ((struct arp_hdr *)&uip_buf[0])->protolen = 4;
  ((struct arp_hdr *)&uip_buf[0])->ethhdr.type = (0x0806);
 
 uip_appdata = &uip_buf[40 + TCPIP_EthHeadLen];
 
 uip_len = sizeof(struct arp_hdr);
 arp_flag = 1;
 return;
 }
 
 memcpy(((struct ethip_hdr *)&uip_buf[0])->ethhdr.dest.addr, tabptr->ethaddr.addr, 6);
 }
 
 memcpy(((struct ethip_hdr *)&uip_buf[0])->ethhdr.src.addr, uip_ethaddr.addr, 6);
 
  ((struct ethip_hdr *)&uip_buf[0])->ethhdr.type = (0x0800);
 
 uip_len += sizeof(struct uip_eth_hdr);	
 }
 
 



 
 
 byte uip_findarptable(uint* ipaddr)
 {
 register struct arp_entry *tabptr;
 

 
 for(i = 0; i < 8; ++i) {
 tabptr = &arp_table[i];
 
 if(tabptr->ipaddr[0] != 0 && tabptr->ipaddr[1] != 0) {

 
 if(ipaddr[0] == tabptr->ipaddr[0] && ipaddr[1] == tabptr->ipaddr[1]) {
 
 return i;
 }
 }
 }
 
 return 0xff;
 }  
 
 
 
 
 
