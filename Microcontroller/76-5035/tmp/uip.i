
#line 1 "src\tcpip\uip.c" /0



 
 




 
 
































 
 


















 
 






 
 
  
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
 
 
 
 
 
 
#line 74 "src\tcpip\uip.c" /0
 
  
#line 1 "SRC\TCPIP\UIPOPT.H" /0









 
 









 
 
































 
 






 
 
 
#line 66 "SRC\TCPIP\UIPOPT.H" /1
  
 
  
  
 
 



 
 
 





 
 
 
 
 
 
 












 
 








 
 
  
 











 
  
 
  
 
 
  
 
 
  
 
 
  
 
 
 
  
 
 
  
 
 
  
 
 
  
 
 
 
  
 
 
  
 
 
  
 
 
  
 
 
 








 
  
 
  
 
 
  
 
 
  
 
 
  
 
 
  
 
 
  
 
 
 
 
 




 




 
  
 












 
  
 




 
  
 
 
 
  
 
 








 
 




 
  
 







 
  
 




 
  
 




 
  
 
 
 



 
 









 
  
 








 
  
 






 
  
 
  
 








 
  
 








 
  
 




 
  
 





 
  
 






 
  
 




 
  
 
 





 
  
 
 
 
 



 
 







 
  
 





 
  
 
 
 
 
 



 
 








 
  
 
 






 
  
 








 
  
 





 
 
 








 
  
 
 
 









 
 
  
 
 
  
 
 







 
 
  
 
 
 
 
 






























 
 






 
 





 
 
 


 
 
 
 
#line 75 "src\tcpip\uip.c" /0
#line 75 "src\tcpip\uip.c" /0
 
  
#line 1 "SRC\TCPIP\UIP_ARCH.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\TCPIP\UIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 56 "SRC\TCPIP\UIP.H" /1
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
  
 








 
  


 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  



 
 
 
 
 
 
 
 
 
 
 
 
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
  
  
  
 
 
 
  
 
 
 
 
  
 
 
 
 
  
 
 
 
 
  
 
 
 
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
  
 
 
 
  
 
 
  
 
 
 
  
 
 
 
  
  
  
  
  
  
  
  
  
  
 
  
 
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
  
  
 
 
 
 
 
 
 
 
#line 1043 "SRC\TCPIP\UIP.H" /0
 
 
 
#line 67 "SRC\TCPIP\UIP_ARCH.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void uip_add32(byte *op32, uint op16);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 uint uip_chksum(uint *buf, uint len);
 
 
 
 
 
 
 
 
 
 
 uint uip_ipchksum(void);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 uint uip_tcpchksum(void);
 
 
 
 
#line 76 "src\tcpip\uip.c" /0
 
  
#line 1 "SRC\TCPIP\TCPIP.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 18 "SRC\TCPIP\TCPIP.H" /1
  
 
 
  
 
 
  
  
  
  
  
 
  
 
  
  
  
  
  
 
  
  
  
 
  
  
 
  
  
 
  
  
  
 
  
  
 
  
 
 
 
 
 
 
 
 
 
  
  
  
  
  
  
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 124 "SRC\TCPIP\TCPIP.H" /0
 
 
 
#line 77 "src\tcpip\uip.c" /0
 
  
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
 
 
 
 
 
 
#line 78 "src\tcpip\uip.c" /0
 
 
 
 
 
 
 
#line 85 "src\tcpip\uip.c" /1
 
 
 
 
 
 
 
 
 
 
#line 95 "src\tcpip\uip.c" /0
 uint idata uip_hostaddr[2];       
 uint idata uip_arp_draddr[2], uip_arp_netmask[2];
 
 
 byte xdata uip_buf[1514+2];   
 volatile byte *uip_appdata;  
 volatile byte *uip_sappdata;   
 
 
 volatile byte *uip_urgdata;   
 volatile byte idata uip_urglen, uip_surglen;
 
 
 volatile uint idata uip_len, uip_slen;   
 volatile byte idata uip_flags;   
 struct uip_conn xdata *uip_conn;   
 struct uip_conn xdata uip_conns[(16)];   
 uint idata uip_listenports[(12)];   
 
 byte xdata uip_extraflag;
 byte xdata dummy _at_ 0x0000;
 
 
 struct uip_udp_conn xdata *uip_udp_conn;
 struct uip_udp_conn xdata uip_udp_conns[(16)];
 uint idata uip_udp_listenports[(12)];
 
 
 static uint idata ipid;   
 
 static byte idata iss[4];   
 
 
 static uint idata lastport;   
 
 
 
 volatile byte uip_acc32[4];
 static byte idata c, opt;
 static uint idata tmp16;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 static uip_tcpip_hdr* BUF = ((uip_tcpip_hdr *)&uip_buf[0]);
 static uip_udpip_hdr* UDPBUF = ((uip_udpip_hdr *)&uip_buf[0]);
 static uip_icmpip_hdr* ICMPBUF = ((uip_icmpip_hdr *)&uip_buf[0]);
 
 
#line 169 "src\tcpip\uip.c" /1
 
  
 
#line 172 "src\tcpip\uip.c" /0
 
 
 
 
#line 176 "src\tcpip\uip.c" /1
  
 
  
 
#line 180 "src\tcpip\uip.c" /0
 
 
 
 
 
 void uip_init(void)
 {
 for(c = 0; c < (12); ++c) {
 uip_listenports[c] = 0;
 }
 for(c = 0; c < (16); ++c) {
 uip_conns[c].tcpstateflags = 0;
 }
 
 lastport = 1024;
 
 
 
 for(c = 0; c < (12); ++c) {
 uip_udp_listenports[c] = 0;
 }
 for(c = 0; c < (16); ++c) {
 uip_udp_conns[c].lport = 0;
 }
 
 
 
 
 uip_hostaddr[0] = uip_hostaddr[1] = 0;
 
 
 }
 
 
 
 
 struct uip_conn *uip_connect(uint *ripaddr, uint rport)
 {
 register struct uip_conn *conn, *cconn;
 
 
 again:
 ++lastport;
 
 if(lastport >= 32000) {
 lastport = 4096;
 }
 
 
 for(c = 0; c < (16); ++c) {
 conn = &uip_conns[c];
 if(conn->tcpstateflags != 0 && conn->lport == htons(lastport)) {
 goto again;
 }
 }
 
 conn = 0;
 for(c = 0; c < (16); ++c) {
 cconn = &uip_conns[c]; 
 if(cconn->tcpstateflags == 0) {
 conn = cconn;
 break;
 }
 if(cconn->tcpstateflags == 7) {
 if(conn == 0 || cconn->timer > uip_conn->timer) {
 conn = cconn;
 }
 }
 }
 
 if(conn == 0) {
 return 0;
 }
 
 conn->tcpstateflags = 2;
 
 conn->snd_nxt[0] = iss[0];
 conn->snd_nxt[1] = iss[1];
 conn->snd_nxt[2] = iss[2];
 conn->snd_nxt[3] = iss[3];
 
 conn->initialmss = conn->mss = TCPIP_MssLen;
 
 conn->len = 1;    
 conn->nrtx = 0;
 conn->timer = 1;  
 conn->rto = 3;
 conn->sa = 0;
 conn->sv = 16;
 conn->lport = htons(lastport);
 conn->rport = rport;
 conn->ripaddr[0] = ripaddr[0];
 conn->ripaddr[1] = ripaddr[1];
 conn->keepaliveflag = 0;
 conn->keepalivetick = 0;
 conn->sndkeepalive = 0;
 
 return conn;
 }
 
 
 
 
 
 struct uip_udp_conn *uip_udp_new(uint *ripaddr, uint rport)
 {
 register struct uip_udp_conn *conn;
 
 
 again:
 ++lastport;
 
 if(lastport >= 32000) {
 lastport = 4096;
 }
 
 for(c = 0; c < (16); ++c) {
 if(uip_udp_conns[c].lport == lastport) {
 goto again;
 }
 }
 
 conn = 0;
 for(c = 0; c < (16); ++c) {
 if(uip_udp_conns[c].lport == 0) {
 conn = &uip_udp_conns[c]; 
 break;
 }
 }
 
 if(conn == 0) {
 return 0;
 }
 
 conn->lport = (lastport);
 conn->rport = (rport);
 conn->ripaddr[0] = ripaddr[0];
 conn->ripaddr[1] = ripaddr[1];
 
 return conn;
 }
 
 
 void uip_udp_unlisten(uint port)
 {
 for(c = 0; c < (12); ++c) {
 if(uip_udp_listenports[c] == port) {
 uip_udp_listenports[c] = 0;
 return;
 }
 }
 }
 
 
 
 void uip_udp_listen(uint port)
 {
 for(c = 0; c < (12); ++c) {
 if(uip_udp_listenports[c] == 0) {
 uip_udp_listenports[c] = port;
 return;
 }
 }
 }
 
 
 
 
 void uip_unlisten(uint port)
 {
 for(c = 0; c < (12); ++c) {
 if(uip_listenports[c] == port) {
 uip_listenports[c] = 0;
 return;
 }
 }
 }
 
 
 
 void uip_listen(uint port)
 {
 for(c = 0; c < (12); ++c) {
 if(uip_listenports[c] == 0) {
 uip_listenports[c] = port;
 return;
 }
 }
 }
 
 
 
 
 
 
#line 375 "src\tcpip\uip.c" /1
  
 
 
 
 
 
 
  
 
 
  
  
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 




 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 492 "src\tcpip\uip.c" /0
 
 
 
 static void uip_add_rcv_nxt(uint n)
 {
 uip_add32(uip_conn->rcv_nxt, n);
 uip_conn->rcv_nxt[0] = uip_acc32[0];
 uip_conn->rcv_nxt[1] = uip_acc32[1];
 uip_conn->rcv_nxt[2] = uip_acc32[2];
 uip_conn->rcv_nxt[3] = uip_acc32[3];
 }
 
 
 
 void uip_process(byte flag)
 {
 register struct uip_conn *uip_connr = uip_conn;
 
 if (TCPIP_IsPppoe)
 {
 BUF = ((uip_tcpip_hdr *)&uip_buf[14 + 8]);
 UDPBUF = ((uip_udpip_hdr *)&uip_buf[14 + 8]);
 ICMPBUF = ((uip_icmpip_hdr *)&uip_buf[14 + 8]);
 }
 else if (TCPIP_EthHeadLen)
 {
 BUF = ((uip_tcpip_hdr *)&uip_buf[14]);
 UDPBUF = ((uip_udpip_hdr *)&uip_buf[14]);
 ICMPBUF = ((uip_icmpip_hdr *)&uip_buf[14]);
 }
 else
 {
 BUF = ((uip_tcpip_hdr *)&uip_buf[0]);
 UDPBUF = ((uip_udpip_hdr *)&uip_buf[0]);
 ICMPBUF = ((uip_icmpip_hdr *)&uip_buf[0]);
 }
 
 
 if(flag == 2) {
 
 uip_appdata = &uip_buf[40 + TCPIP_EthHeadLen + TCPIP_PppoeHeaderLen];
 
#line 534 "src\tcpip\uip.c" /1
 
 
 
 
#line 538 "src\tcpip\uip.c" /0
 
 
 if(++iss[3] == 0) {
 if(++iss[2] == 0) {
 if(++iss[1] == 0) {
 ++iss[0];
 }
 }
 }    
 uip_len = 0;
 if(uip_connr->tcpstateflags == 7 || uip_connr->tcpstateflags == 5) {
 ++(uip_connr->timer);
 if(uip_connr->timer == 120) {
 uip_connr->tcpstateflags = 0;
 uip_flags = 32;
  TCPIP_CallTcpApp();
 
 
 BUF->flags = 0x04 | 0x10;
 goto tcp_send_nodata;
 }
 } else if(uip_connr->tcpstateflags != 0) {

 
 if(((uip_connr)->len)) {
 if(uip_connr->timer-- == 0) {
 if(uip_connr->nrtx == 8 || ((uip_connr->tcpstateflags == 2 ||
 uip_connr->tcpstateflags == 1) && uip_connr->nrtx == 3))
 {
 uip_connr->tcpstateflags = 0;

 
 uip_flags = 128;
  TCPIP_CallTcpApp();
 
 
 BUF->flags = 0x04 | 0x10;
 goto tcp_send_nodata;
 }
 
 uip_connr->timer = 3 << (uip_connr->nrtx > 4? 4:uip_connr->nrtx);
 ++(uip_connr->nrtx);
 



 
  ;
 switch(uip_connr->tcpstateflags & 15) 
 {
 case 1:
 
 goto tcp_send_synack;
 
 
 case 2:
 
 BUF->flags = 0;
 
 goto tcp_send_syn;
 
 
 case 3:


 
 uip_len = 0;
 uip_slen = 0;
 uip_flags = 4;
  TCPIP_CallTcpApp();
 uip_connr = uip_conn;
 uip_connr->len = uip_slen;
 goto apprexmit;
 
 case 4:
 case 6:
 case 8:
 
 goto tcp_send_finack;
 }
 }
 } else if((uip_connr->tcpstateflags & 15) == 3) {
 if (uip_connr->keepaliveflag)
 {
 if (++uip_connr->keepalivetick == (240 * 2))
 {


 
 if (uip_connr->sndkeepalive < 4)
 {
 uip_connr->sndkeepalive++;
 uip_connr->keepalivetick = 0;
 
 BUF->flags = 0x10;
 uip_len = 41;
 BUF->tcpoffset = 5 << 4;
 
 BUF->seqno[0] = uip_connr->snd_nxt[0];
 BUF->seqno[1] = uip_connr->snd_nxt[1];
 BUF->seqno[2] = uip_connr->snd_nxt[2];
 if ((BUF->seqno[3] = (uip_connr->snd_nxt[3] - 1)) == 0xff)
 if ((BUF->seqno[2] = (uip_connr->snd_nxt[2] - 1)) == 0xff)
 if ((BUF->seqno[1] = (uip_connr->snd_nxt[1] - 1)) == 0xff)
 BUF->seqno[0] = uip_connr->snd_nxt[0] - 1;
 goto tcp_keepalive;
 }
 else
 {
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 uip_flags = 8;
  TCPIP_CallTcpApp();
 goto appsend;
 }
 }
 }
 else
 {
 if (++uip_connr->keepalivetick == (240 * 8))
 {
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 uip_flags = 8;
  TCPIP_CallTcpApp();
 goto appsend;
 }
 }
 
 
 
 
 
 
 }
 }
 goto drop;
 }
 
 if(flag == 3) {
 if(uip_udp_conn->lport != 0) {
 
 
 
 
 goto udp_send;
 } else {
 goto drop;
 }
 }
 
 
 if (flag == 4)
 {
 switch(uip_connr->tcpstateflags & 15)
 {
 case 2:
 BUF->flags = 0;
 goto tcp_send_syn;
 default:
 if (uip_extraflag & 4)
 {
 uip_connr->len = uip_slen;
 goto apprexmit;
 }
 else
 goto appsend;
 }
 goto drop;
 }
 
 
 uip_appdata = &uip_buf[40 + TCPIP_EthHeadLen + TCPIP_PppoeHeaderLen];
 uip_len -= (TCPIP_EthHeadLen + TCPIP_PppoeHeaderLen);
 
 
  ;
 
 
 
 
 if(BUF->vhl != 0x45)  {  
  ;
  ;
  ;
 goto drop;
 }
 


 
 
 if(BUF->len[0] != (uip_len >> 8)) {  
 uip_len = (uip_len & 0xff) | (BUF->len[0] << 8);
 }
 
 if(BUF->len[1] != (uip_len & 0xff)) {  
 uip_len = (uip_len & 0xff00) | BUF->len[1];
 }
 
 
 if((BUF->ipoffset[0] & 0x3f) != 0 || BUF->ipoffset[1] != 0) { 
 
#line 741 "src\tcpip\uip.c" /1
 
 
 
 
 
#line 746 "src\tcpip\uip.c" /0
  ;
  ;
  ;    
 goto drop;
 
 }
 

 
 
#line 756 "src\tcpip\uip.c" /1
 
 
 
 
 
 
 
 
 
 
#line 766 "src\tcpip\uip.c" /0
 
 if (TCPIP_EthHeadLen && uip_hostaddr[0] && (BUF->destipaddr[0] < 0xe000))
 {
 
 if(BUF->destipaddr[0] != uip_hostaddr[0]) {
  ;
  ;
 goto drop;
 }
 if(BUF->destipaddr[1] != uip_hostaddr[1]) {
 if (((BUF->destipaddr[1] & 0xff) != 0xff) ||
 ((BUF->destipaddr[1] & 0xff00) != (uip_hostaddr[1] & 0xff00)))
 {
  ;
  ;
 goto drop;
 }
 }
 }
 
#line 786 "src\tcpip\uip.c" /1
 
 
 
 
 
 
 
#line 793 "src\tcpip\uip.c" /0
 if(BUF->proto == 6)   
 goto tcp_input;
 
 
 if(BUF->proto == 17)
 goto udp_input;
 
 
 if(BUF->proto != 1) {  
  ;
  ;
  ;        
 goto drop;
 }
 
 
 
  ;
 

 
 if(ICMPBUF->type != 8)
 {
 if ((ICMPBUF->type == 0) && TCPIP_PingRespCallBack)
 TCPIP_PingRespCallBack();
 
 goto drop;
 }
 else
 {

 
 
#line 826 "src\tcpip\uip.c" /1
 
 
 
 
 
#line 831 "src\tcpip\uip.c" /0
 
 ICMPBUF->type = 0;
 
 
#line 835 "src\tcpip\uip.c" /1
 
 
 
 
 
 
#line 841 "src\tcpip\uip.c" /0
 
 
 tmp16 = BUF->destipaddr[0];
 BUF->destipaddr[0] = BUF->srcipaddr[0];
 BUF->srcipaddr[0] = tmp16;
 tmp16 = BUF->destipaddr[1];
 BUF->destipaddr[1] = BUF->srcipaddr[1];
 BUF->srcipaddr[1] = tmp16;
 }
 
  ;
 goto send;
 
 
 
 
 
 udp_input:


 
 
#line 863 "src\tcpip\uip.c" /1
 
 
 
 
 
 
 
 
 
#line 872 "src\tcpip\uip.c" /0
 
 uip_flags = 0;
 
 
 for(uip_udp_conn = &uip_udp_conns[0]; uip_udp_conn < &uip_udp_conns[(16)]; ++uip_udp_conn)
 {
 if(uip_udp_conn->lport != 0 && UDPBUF->destport == uip_udp_conn->lport &&
 ((uip_udp_conn->rport == 0) || (UDPBUF->srcport == uip_udp_conn->rport)) &&
 (((uip_udp_conn->ripaddr[0] == 0) && (uip_udp_conn->ripaddr[1] == 0)) ||
 ((uip_udp_conn->ripaddr[0] == 0xffff) &&(uip_udp_conn->ripaddr[1] == 0xffff)) ||
 ((BUF->srcipaddr[0] == uip_udp_conn->ripaddr[0]) &&
 (BUF->srcipaddr[1] == uip_udp_conn->ripaddr[1])))) 
 {
 if (uip_udp_conn->rport == 0)
 uip_udp_conn->rport = UDPBUF->srcport;
 else if ((uip_udp_conn->ripaddr[0] == 0) &&(uip_udp_conn->ripaddr[1] == 0))
 {
 uip_udp_conn->ripaddr[0] = BUF->srcipaddr[0];
 uip_udp_conn->ripaddr[1] = BUF->srcipaddr[1];
 }
 goto udp_found; 
 }
 }
 
 
 for(c = 0; c < (12); ++c)
 {
 if(UDPBUF->destport == uip_udp_listenports[c])
 goto found_udp_listen;
 }
 
 goto drop;
 found_udp_listen:
 for(c = 0; c < (16); c++)
 {
 if (uip_udp_conns[c].lport == 0)
 {
 uip_udp_conns[c].lport = UDPBUF->destport;
 uip_udp_conns[c].rport = UDPBUF->srcport;
 uip_udp_conns[c].ripaddr[0] = BUF->srcipaddr[0];
 uip_udp_conns[c].ripaddr[1] = BUF->srcipaddr[1];
 uip_udp_conns[c].tcpip_id = (16);
 uip_udp_conn = &uip_udp_conns[c];
 uip_flags |= 64;
 break;
 }
 }
 if (c == (16))
 goto drop;
 
 udp_found:
 uip_len = uip_len - 28;
 uip_appdata = &uip_buf[TCPIP_EthHeadLen + 28 + TCPIP_PppoeHeaderLen];
 uip_flags |= 2;
 uip_slen = 0;
  TCPIP_CallUdpApp();;
 
 udp_send:
 
 if(uip_slen == 0) {
 goto drop;      
 }
 uip_len = uip_slen + 28;
 
 BUF->len[0] = (uip_len >> 8);
 BUF->len[1] = (uip_len & 0xff);
 
 BUF->proto = 17;
 
 UDPBUF->udplen = (uip_slen + 8);
 UDPBUF->udpchksum = 0;
 
#line 944 "src\tcpip\uip.c" /1
 
 
 
 
 
 
 
 
#line 952 "src\tcpip\uip.c" /0
 
 BUF->srcport  = uip_udp_conn->lport;
 BUF->destport = uip_udp_conn->rport;
 
 BUF->srcipaddr[0] = uip_hostaddr[0];
 BUF->srcipaddr[1] = uip_hostaddr[1];
 BUF->destipaddr[0] = uip_udp_conn->ripaddr[0];
 BUF->destipaddr[1] = uip_udp_conn->ripaddr[1];
 
 goto ip_send_nolen;
 
 
 
 tcp_input:
 
  ;
 
 
 
#line 971 "src\tcpip\uip.c" /1
 
 
 
 
 
 
 
#line 978 "src\tcpip\uip.c" /0
 
 
 
 for(uip_connr = &uip_conns[0]; uip_connr < &uip_conns[(16)]; ++uip_connr) {
 if(uip_connr->tcpstateflags != 0 &&
 BUF->destport == uip_connr->lport &&
 BUF->srcport == uip_connr->rport &&
 BUF->srcipaddr[0] == uip_connr->ripaddr[0] &&
 BUF->srcipaddr[1] == uip_connr->ripaddr[1]) 
 {
 if ((uip_connr->tcpstateflags == 7) && ((BUF->flags & 0x3f) == 0x02))
 goto tcp_waitport_send_synack;
 else
 goto found;
 }
 }
 


 
 if((BUF->flags & 0x3f) != 0x02)
 goto reset;
 
 tmp16 = BUF->destport;
 
 for(c = 0; c < (12); ++c) {
 if(tmp16 == uip_listenports[c])
 goto found_listen;
 }
 
 
  ;
 
 reset:
 
 
 if(BUF->flags & 0x04) 
 goto drop;
 
  ;
 
 BUF->flags = 0x04 | 0x10;
 uip_len = 40;
 BUF->tcpoffset = 5 << 4;
 
 
 c = BUF->seqno[3];
 BUF->seqno[3] = BUF->ackno[3];  
 BUF->ackno[3] = c;
 
 c = BUF->seqno[2];
 BUF->seqno[2] = BUF->ackno[2];  
 BUF->ackno[2] = c;
 
 c = BUF->seqno[1];
 BUF->seqno[1] = BUF->ackno[1];
 BUF->ackno[1] = c;
 
 
 c = BUF->seqno[0];
 BUF->seqno[0] = BUF->ackno[0];  
 BUF->ackno[0] = c;
 

 
 if(++BUF->ackno[3] == 0) {
 if(++BUF->ackno[2] == 0) {
 if(++BUF->ackno[1] == 0) {
 ++BUF->ackno[0];
 }
 }
 }
 
 
 tmp16 = BUF->srcport;
 BUF->srcport = BUF->destport;
 BUF->destport = tmp16;
 
 
 tmp16 = BUF->destipaddr[0];
 BUF->destipaddr[0] = BUF->srcipaddr[0];
 BUF->srcipaddr[0] = tmp16;
 tmp16 = BUF->destipaddr[1];
 BUF->destipaddr[1] = BUF->srcipaddr[1];
 BUF->srcipaddr[1] = tmp16;
 
 
 
 goto tcp_send_noconn;
 

 
 found_listen:
 




 
 uip_connr = -1;     
 for(c = 0; c < (16); ++c) {
 if(uip_conns[c].tcpstateflags == 0) {
 uip_connr = &uip_conns[c];
 break;
 }
 if(uip_conns[c].tcpstateflags == 7) {
 if(uip_connr == 0 || uip_conns[c].timer > uip_connr->timer) {
 uip_connr = &uip_conns[c];
 }
 }
 }
 
 if(uip_connr == -1) {   

 
  ;
  ;
 goto drop;
 }
 uip_connr->tcpip_id = (16);
 
 tcp_waitport_send_synack:
 
 uip_conn = uip_connr;
 
 
 uip_connr->rto = uip_connr->timer = 3;
 uip_connr->sa = 0;
 uip_connr->sv = 4;  
 uip_connr->nrtx = 0;
 uip_connr->lport = BUF->destport;
 uip_connr->rport = BUF->srcport;
 uip_connr->ripaddr[0] = BUF->srcipaddr[0];
 uip_connr->ripaddr[1] = BUF->srcipaddr[1];
 uip_connr->tcpstateflags = 1;
 uip_connr->keepaliveflag = 0;
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 
 uip_connr->snd_nxt[0] = iss[0];
 uip_connr->snd_nxt[1] = iss[1];
 uip_connr->snd_nxt[2] = iss[2];
 uip_connr->snd_nxt[3] = iss[3];
 uip_connr->len = 1;
 
 
 uip_connr->rcv_nxt[3] = BUF->seqno[3];
 uip_connr->rcv_nxt[2] = BUF->seqno[2];
 uip_connr->rcv_nxt[1] = BUF->seqno[1];
 uip_connr->rcv_nxt[0] = BUF->seqno[0];
 uip_add_rcv_nxt(1);
 
 uip_connr->window[0] = BUF->wnd[0];
 uip_connr->window[1] = BUF->wnd[1];
 
 
 if((BUF->tcpoffset & 0xf0) > 0x50) {
 for(c = 0; c < ((BUF->tcpoffset >> 4) - 5) << 2 ;) {
 opt = uip_buf[40 + TCPIP_EthHeadLen + c + TCPIP_PppoeHeaderLen];
 if(opt == 0x00) {
 
 break;
 } else if(opt == 0x01) {
 ++c;
 
 } else if(opt == 0x02 && uip_buf[40 + TCPIP_EthHeadLen + 1 + c + TCPIP_PppoeHeaderLen] == 0x04) {
 
 tmp16 = ((uint)uip_buf[40 + TCPIP_EthHeadLen + 2 + c + TCPIP_PppoeHeaderLen] << 8) |
 (uint)uip_buf[40 + TCPIP_EthHeadLen + 3 + c + TCPIP_PppoeHeaderLen];
 uip_connr->initialmss = uip_connr->mss = tmp16 > TCPIP_MssLen? TCPIP_MssLen: tmp16;
 
 
 break;
 } else {
 
 if(uip_buf[40 + TCPIP_EthHeadLen + 1 + c + TCPIP_PppoeHeaderLen] == 0) {
 
 break;
 }
 c += uip_buf[40 + TCPIP_EthHeadLen + 1 + c + TCPIP_PppoeHeaderLen];
 }
 }
 }
 
 
 
 tcp_send_synack:
 
 BUF->flags = 0x10;    
 
 tcp_send_syn:
 
 BUF->flags |= 0x02;    
 
#line 1172 "src\tcpip\uip.c" /1
 
 
 
 
#line 1176 "src\tcpip\uip.c" /0
 
 
 BUF->optdata[0] = 2;
 BUF->optdata[1] = 4;
 BUF->optdata[2] = (TCPIP_MssLen) / 256;
 BUF->optdata[3] = (TCPIP_MssLen) & 255;
 uip_len = 44;
 BUF->tcpoffset = 6 << 4;
 goto tcp_send;
 
 
 found:
 
 uip_conn = uip_connr;
 uip_flags = 0;
 uip_extraflag = 0;
 


 
 if(BUF->flags & 0x04) {
 uip_connr->tcpstateflags = 0;
  ;
 uip_flags = 32;
  TCPIP_CallTcpApp();
 goto drop;
 }
 
 c = (BUF->tcpoffset >> 4) << 2;

 
 uip_len = uip_len - c - 20;
 

 
 
 if (((uip_len > 0) || (BUF->flags & 0x01)) &&	 
 (BUF->seqno[0] != uip_connr->rcv_nxt[0] ||
 BUF->seqno[1] != uip_connr->rcv_nxt[1] ||
 BUF->seqno[2] != uip_connr->rcv_nxt[2] ||
 BUF->seqno[3] != uip_connr->rcv_nxt[3]))
 {
 goto tcp_send_ack;
 }
 


 
 if((BUF->flags & 0x10) && ((uip_connr)->len)) {
 uip_add32(uip_connr->snd_nxt, uip_connr->len);
 if(BUF->ackno[0] == uip_acc32[0] && BUF->ackno[1] == uip_acc32[1] &&
 BUF->ackno[2] == uip_acc32[2] && BUF->ackno[3] == uip_acc32[3])
 {
 
 
 uip_connr->snd_nxt[0] = uip_acc32[0];
 uip_connr->snd_nxt[1] = uip_acc32[1];
 uip_connr->snd_nxt[2] = uip_acc32[2];
 uip_connr->snd_nxt[3] = uip_acc32[3];
 
 
 if(uip_connr->nrtx == 0) {
 signed char m;
 m = uip_connr->rto - uip_connr->timer;
 
 m = m - (uip_connr->sa >> 3);
 uip_connr->sa += m;
 if(m < 0) {
 m = -m;
 }
 m = m - (uip_connr->sv >> 2);
 uip_connr->sv += m;
 uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
 }
 
 uip_flags = 1;
 
 uip_connr->timer = uip_connr->rto;
 
 
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 }
 else if ((BUF->ackno[0] == uip_connr->snd_nxt[0]) &&
 (BUF->ackno[1] == uip_connr->snd_nxt[1]) &&
 (BUF->ackno[2] == uip_connr->snd_nxt[2]) &&
 (BUF->ackno[3] == uip_connr->snd_nxt[3]))
 {
 
 uip_extraflag |= 128;
 
 
 if(uip_connr->nrtx == 0) {
 signed char m;
 m = uip_connr->rto - uip_connr->timer;
 
 m = m - (uip_connr->sa >> 3);
 uip_connr->sa += m;
 if(m < 0) {
 m = -m;
 }
 m = m - (uip_connr->sv >> 2);
 uip_connr->sv += m;
 uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
 }
 
 uip_flags = 1;
 
 uip_connr->timer = uip_connr->rto;
 
 
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 }
 
 
 
 
 }
 
 if ((BUF->wnd[0] < 0x40) && (uip_connr->window[0] > 0x80))  
 uip_extraflag |= 64;
 
 
 switch(uip_connr->tcpstateflags & 15)
 {


 
 case 1:


 
 if(uip_flags & 1) {
 uip_connr->tcpstateflags = 3;
 uip_flags = 64;
 uip_connr->len = 0;
 if(uip_len > 0) {
 uip_flags |= 2;
 uip_add_rcv_nxt(uip_len);
 }
 uip_slen = 0;
  TCPIP_CallTcpApp();
 goto appsend;
 }
 goto drop;
 
 
 case 2:


 
 if((uip_flags & 1) && BUF->flags == (0x02 | 0x10)) {
 
 if((BUF->tcpoffset & 0xf0) > 0x50) {
 for(c = 0; c < ((BUF->tcpoffset >> 4) - 5) << 2 ;) {
 opt = uip_buf[40 + TCPIP_EthHeadLen + c + TCPIP_PppoeHeaderLen];
 if(opt == 0x00) {
 
 break;
 } else if(opt == 0x01) {
 ++c;
 
 } else if(opt == 0x02 && uip_buf[40 + TCPIP_EthHeadLen + 1 + c + TCPIP_PppoeHeaderLen] == 0x04) {
 
 tmp16 = (uip_buf[40 + TCPIP_EthHeadLen + 2 + c + TCPIP_PppoeHeaderLen] << 8) |
 uip_buf[40 + TCPIP_EthHeadLen + 3 + c + TCPIP_PppoeHeaderLen];
 uip_connr->initialmss = uip_connr->mss = tmp16 > TCPIP_MssLen? TCPIP_MssLen: tmp16;
 
 break;
 } else {
 
 if(uip_buf[40 + TCPIP_EthHeadLen + 1 + c + TCPIP_PppoeHeaderLen] == 0) {

 
 break;
 }
 c += uip_buf[40 + TCPIP_EthHeadLen + 1 + c + TCPIP_PppoeHeaderLen];
 }
 }
 }
 uip_connr->tcpstateflags = 3;      
 uip_connr->rcv_nxt[0] = BUF->seqno[0];
 uip_connr->rcv_nxt[1] = BUF->seqno[1];
 uip_connr->rcv_nxt[2] = BUF->seqno[2];
 uip_connr->rcv_nxt[3] = BUF->seqno[3];
 uip_add_rcv_nxt(1);
 
 uip_connr->window[0] = BUF->wnd[0];
 uip_connr->window[1] = BUF->wnd[1];
 
 uip_flags = 64 | 2;
 uip_connr->len = 0;
 uip_len = 0;
 uip_slen = 0;
  TCPIP_CallTcpApp();
 goto appsend;
 }
 
 uip_flags = 32;
  TCPIP_CallTcpApp();
 goto reset;
 
 
 case 3:









 
 if(BUF->flags & 0x01) {
 
 
 
 uip_add_rcv_nxt(1 + uip_len);      
 uip_flags = 16;
 if(uip_len > 0) {
 uip_flags |= 2;
 }
  TCPIP_CallTcpApp();
 uip_connr = uip_conn;
 uip_connr->len = 1;
 uip_connr->tcpstateflags = 8;
 uip_connr->nrtx = 0;
 
 tcp_send_finack:
 
 BUF->flags = 0x01 | 0x10;
 goto tcp_send_nodata;
 }
 

 
 if(BUF->flags & 0x20) {
 
 uip_urglen = (BUF->urgp[0] << 8) | BUF->urgp[1];
 if(uip_urglen > uip_len) {
 
 uip_urglen = uip_len;
 }
 uip_add_rcv_nxt(uip_urglen);
 uip_len -= uip_urglen;
 uip_urgdata = uip_appdata;
 uip_appdata += uip_urglen;
 } else {
 uip_urglen = 0;
 
 uip_appdata += (BUF->urgp[0] << 8) | BUF->urgp[1];
 uip_len -= (BUF->urgp[0] << 8) | BUF->urgp[1];
 }
 




 
 if(uip_len > 0 && !(uip_connr->tcpstateflags & 16)) {
 uip_flags |= 2;
 uip_add_rcv_nxt(uip_len);
 }
 
 else if (uip_len == 0 && (BUF->flags == 0x10) && 
 uip_connr->keepaliveflag && uip_connr->sndkeepalive)
 {
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 }










 
 tmp16 = ((uint)BUF->wnd[0] << 8) + (uint)BUF->wnd[1];
 if(tmp16 > uip_connr->initialmss || tmp16 == 0) {
 tmp16 = uip_connr->initialmss;
 }
 uip_connr->mss = tmp16;
 















 
 if(uip_flags & (2 | 1)) {
 uip_connr->keepalivetick = 0;
 uip_connr->sndkeepalive = 0;
 uip_slen = 0;
  TCPIP_CallTcpApp();
 
 appsend:
 uip_connr = uip_conn;
 
 if(uip_flags & 32) {
 uip_slen = 0;
 uip_connr->tcpstateflags = 0;
 BUF->flags = 0x04 | 0x10;
 goto tcp_send_nodata;
 }
 if(uip_flags & 16) {
 
 uip_slen = 0;
 uip_connr->len = 1;
 uip_connr->tcpstateflags = 4;
 uip_connr->nrtx = 0;
 BUF->flags = 0x01 | 0x10;
 goto tcp_send_nodata;	
 }
 
 if (uip_extraflag & 2)
 goto drop;
 
 
 if(uip_slen > 0) {

 
 if((uip_flags & 1) != 0) {
 uip_connr->len = 0;
 }
 

 
 if(uip_connr->len == 0) {

 
 if(uip_slen > uip_connr->mss) {
 uip_slen = uip_connr->mss;
 }
 

 
 uip_connr->len = uip_slen;
 
 } else {


 
 uip_slen = uip_connr->len;
 }
 } else {
 uip_connr->len = 0;
 }
 uip_connr->nrtx = 0;
 apprexmit:
 
 uip_appdata = uip_sappdata;
 

 
 if(uip_slen > 0 && uip_connr->len > 0) {
 
 uip_len = uip_connr->len + 40;
 
 if (uip_extraflag & 1)
 BUF->flags = 0x10 | 0x08;
 else
 BUF->flags = 0x10;
 
 
 
 goto tcp_send_noopts;
 }
 
 if(uip_flags & 2) {
 uip_len = 40;
 BUF->flags = 0x10;
 goto tcp_send_noopts;
 }
 }
 goto drop;
 
 case 8:

 
 if(uip_flags & 1) {
 uip_connr->tcpstateflags = 0;
 uip_flags = 16;
  TCPIP_CallTcpApp();
 }
 break;
 
 case 4:


 
 if(uip_len > 0) {
 uip_add_rcv_nxt(uip_len);
 }
 if(BUF->flags & 0x01) {
 if(uip_flags & 1) {
 uip_connr->tcpstateflags = 7;
 uip_connr->timer = 0;
 uip_connr->len = 0;
 } else {
 uip_connr->tcpstateflags = 6;
 }
 uip_add_rcv_nxt(1);
 uip_flags = 16;
  TCPIP_CallTcpApp();
 goto tcp_send_ack;
 } else if(uip_flags & 1) {
 uip_connr->tcpstateflags = 5;
 uip_connr->len = 0;
 goto drop;
 }
 if(uip_len > 0) {
 goto tcp_send_ack;
 }
 goto drop;
 
 case 5:
 if(uip_len > 0) {
 uip_add_rcv_nxt(uip_len);
 }
 if(BUF->flags & 0x01) {
 uip_connr->tcpstateflags = 7;
 uip_connr->timer = 0;
 uip_add_rcv_nxt(1);
 uip_flags = 16;
  TCPIP_CallTcpApp();
 goto tcp_send_ack;
 }
 if(uip_len > 0) {
 goto tcp_send_ack;
 }
 goto drop;
 
 case 7:
 goto tcp_send_ack;
 
 case 6:
 if(uip_flags & 1) {
 uip_connr->tcpstateflags = 7;
 uip_connr->timer = 0;
 }
 }
 goto drop;
 
 

 
 tcp_send_ack:
 BUF->flags = 0x10;
 tcp_send_nodata:
 uip_len = 40;
 tcp_send_noopts:
 BUF->tcpoffset = 5 << 4;
 tcp_send:


 
 BUF->seqno[0] = uip_connr->snd_nxt[0];
 BUF->seqno[1] = uip_connr->snd_nxt[1];
 BUF->seqno[2] = uip_connr->snd_nxt[2];
 BUF->seqno[3] = uip_connr->snd_nxt[3];
 
 tcp_keepalive:
 BUF->ackno[0] = uip_connr->rcv_nxt[0];
 BUF->ackno[1] = uip_connr->rcv_nxt[1];
 BUF->ackno[2] = uip_connr->rcv_nxt[2];
 BUF->ackno[3] = uip_connr->rcv_nxt[3];
 
 BUF->proto = 6;
 
 BUF->srcport  = uip_connr->lport;
 BUF->destport = uip_connr->rport;
 
 BUF->srcipaddr[0] = uip_hostaddr[0];
 BUF->srcipaddr[1] = uip_hostaddr[1];
 BUF->destipaddr[0] = uip_connr->ripaddr[0];
 BUF->destipaddr[1] = uip_connr->ripaddr[1];
 
 if(uip_connr->tcpstateflags & 16) {

 
 BUF->wnd[0] = BUF->wnd[1] = 0;
 } else {
 BUF->wnd[0] = (((1460 * 4)) >> 8);
 BUF->wnd[1] = (((1460 * 4)) & 0xff); 
 }
 
 tcp_send_noconn:
 BUF->len[0] = (uip_len >> 8);
 BUF->len[1] = (uip_len & 0xff);
 BUF->urgp[0] = 0;
 BUF->urgp[1] = 0;
 
 
 BUF->tcpchksum = 0;
 
#line 1687 "src\tcpip\uip.c" /1
 
 
#line 1689 "src\tcpip\uip.c" /0
 
 ip_send_nolen:
 
 BUF->vhl = 0x45;
 BUF->tos = 0;
 if (TCPIP_DontFrag == 1)
 BUF->ipoffset[0] = 0x40;
 else
 BUF->ipoffset[0] = 0;
 BUF->ipoffset[1] = 0;
 BUF->ttl  = (255);
 ++ipid;
 BUF->ipid[0] = ipid >> 8;
 BUF->ipid[1] = ipid & 0xff;
 
 
 BUF->ipchksum = 0;
 
#line 1707 "src\tcpip\uip.c" /1
 
 
#line 1709 "src\tcpip\uip.c" /0
 
  ;
 
 send:
 
  ;
 
 
 return;
 
 drop:
 
 uip_len = 0;
 return;
 }
 
 
 
 uint htons(uint val)
 {
 return (val);
 }
 
 
 
 
#line 1735 "src\tcpip\uip.c" /1
 
 
 
 
 
#line 1740 "src\tcpip\uip.c" /0
 
