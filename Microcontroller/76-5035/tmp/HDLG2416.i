
#line 1 "src\hid\HDLG2416.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\HID\HDLG2416.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 16 "SRC\HID\HDLG2416.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sfr  DispData         = 0xB0; 
 sbit DispD0           = 0xB1; 
 sbit DispD1           = 0xB2; 
 sbit DispD2           = 0xB3; 
 sbit DispD3           = 0xB4; 
 sbit DispD4           = 0xB5; 
 sbit DispD5           = 0xB6; 
 sbit DispD6           = 0xB7; 
 
 sbit DispA0           = 0x96; 
 sbit DispA1           = 0x97; 
 sbit DispCue          = 0x94; 
 sbit DispClr          = 0x95; 
 sbit DispWr           = 0x92; 
 sbit DispCu           = 0x93; 
 
 sbit DispCe1          = 0x84; 
 sbit DispCe2          = 0x85; 
 sbit DispCe3          = 0x86; 
 sbit DispCe4          = 0xB0; 
 sbit DispCe5          = 0x90; 
 sbit DispCe6          = 0x87; 
 
 void HDLG2416ConfLoad(byte dispaddr, byte chradr, byte dat);
 void HDLG2416DispLoad(byte dispaddr, chradr, dat, test);
 void HDLG2416Clear(void);
 void HDLG2416Default(void);
#line 13 "src\hid\HDLG2416.c" /0
 
  
#line 1 ".\SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 ".\SRC\CPU\TYPES.H" /1
  
 
 
 
 
 
 
 
 
 
  
 
 
  
  
  
  
  
  
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
 
  
  
  
  
 
 
  
 
 
  
  
  
  
  
 
  
  
  
  
  
 
 
 
  
  
 
  
  
 
 
#line 17 ".\SRC\MAIN\CIRCUIT.H" /0
#line 17 ".\SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 extern  byte idata AssyVarPass1 _at_ 0x35;                                              
 
 
 
 
 
 
 
 
 
 
 
 
 sbit ScopePin               = 0x85;                                                      
 
 
 sbit HrtBeat                = 0x87;                                                      
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit fpgaserialclock        = 0xA0;                                                      
 
 sbit fpgadataout            = 0xA1;                                                      
 
 sbit fpgaserialload         = 0xA2;                                                      
 
 sbit fpgadatain             = 0xA3;                                                      
 
 sbit fpgaserialale          = 0xA4;                                                      
 
 sbit LogicRst               = 0xA5;                                                      
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 sbit        HI8045T1         = 0xB1;
 
 sbit        HI8045T2        = 0xB2;
 
 sbit        HI8045CLK       = 0xB3;                                                      
 
 sbit        HI8045DIN       = 0xB4;                                                      
 
 sbit        HI8045LOAD      = 0xB5;                                                      
 
 sbit        HI8045CS        = 0xB6;                                                      
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 14 "src\hid\HDLG2416.c" /0
 
  
#line 1 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 55 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 57 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 
 
 
 
#line 63 ".\SRC\DEBUG\PRINTD.H" /1
  
 
#line 65 ".\SRC\DEBUG\PRINTD.H" /0
 
 
 extern byte DEBUG_MsgEnable;
 
 
 int printd(const char *format, ...);
 
 
 
#line 15 "src\hid\HDLG2416.c" /0
 
 
 byte  bdata HByte0   _at_ 0x21;                                                      
 sbit          bitz00      = HByte0^0;                                                  
 sbit          bitz01      = HByte0^1;                                                  
 sbit          bitz02      = HByte0^2;                                                  
 sbit          bitz03      = HByte0^3;                                                  
 sbit          bitz04      = HByte0^4;                                                  
 sbit          bitz05      = HByte0^5;                                                  
 sbit          bitz06      = HByte0^6;                                                  
 sbit          bitz07      = HByte0^7;                                                  
 
 
 
 void HDLG2416ByteLoad(void);
 
 
 
 
 
 
 
 
 
 
 
 
 void HDLG2416ConfLoad(byte dispaddr, byte chradr, byte dat)
 {
 
 
 DispClr = 1;                                                                         
 DispCu  = 0;                                                                         
 
 DispCue = 1;                                                                         
 if((chradr   & 0x01  ) == 0x01  ) DispA0  = 0; else DispA0  = 1;                     
 if((chradr   & 0x02  ) == 0x02  ) DispA1  = 0; else DispA1  = 1;                     
 HByte0 = dat;                                                                        
 bitz07 = bitz04;                                                                     
 bitz04 = bitz06;                                                                     
 bitz06 = bitz07;                                                                     
 DispData = ((HByte0 << 1) | 0x01);                                                   
 if((dispaddr & 0x04) == 0x04) DispCe1 = 0; else DispCe1 = 1;                     
 if((dispaddr & 0x08) == 0x08) DispCe2 = 0; else DispCe2 = 1;                     
 if((dispaddr & 0x10) == 0x10) DispCe3 = 0; else DispCe3 = 1;                     
 if((dispaddr & 0x20) == 0x20) DispCe4 = 0; else DispCe4 = 1;                     
 if((dispaddr & 0x40) == 0x40) DispCe5 = 0; else DispCe5 = 1;                     
 if((dispaddr & 0x80) == 0x80) DispCe6 = 0; else DispCe6 = 1;                     
 extHardwareDelay();                                                                  
 
 HDLG2416ByteLoad();                                                                  
 
 DispCe1 = 1;                                                                         
 DispCe2 = 1;                                                                         
 DispCe3 = 1;                                                                         
 DispCe4 = 1;                                                                         
 DispCe5 = 1;                                                                         
 DispCe6 = 1;                                                                         
 
 DispCu  = 1;                                                                         
 DispClr = 1;                                                                         
 
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 void HDLG2416DispLoad(byte dispaddr, chradr, dat, test)
 {
 
 
 DispClr = 1;                                                                         
 DispCu  = 1;                                                                         
 
 
 DispCue          = 1;                                                                
 if((chradr   & 0x01  ) == 0x01  ) DispA0  = 0; else DispA0  = 1;                     
 if((chradr   & 0x02  ) == 0x02  ) DispA1  = 0; else DispA1  = 1;                     
 
 
 if((dat == 0x80) || (test != 0))
 {
 HDLG2416ConfLoad(dispaddr, chradr,0x41);                                           
 }
 else  
 {
 HDLG2416ConfLoad(dispaddr, chradr,0x40);                                           
 }
 HByte0 = dat;                                                                        
 bitz07 = bitz04;                                                                     
 bitz04 = bitz06;                                                                     
 bitz06 = bitz07;                                                                     
 DispData = ((HByte0 << 1) | 0x01);                                                   
 
 if((dispaddr & 0x04) == 0x04) DispCe1 = 0; else DispCe1 = 1;                     
 if((dispaddr & 0x08) == 0x08) DispCe2 = 0; else DispCe2 = 1;                     
 if((dispaddr & 0x10) == 0x10) DispCe3 = 0; else DispCe3 = 1;                     
 if((dispaddr & 0x20) == 0x20) DispCe4 = 0; else DispCe4 = 1;                     
 if((dispaddr & 0x40) == 0x40) DispCe5 = 0; else DispCe5 = 1;                     
 if((dispaddr & 0x80) == 0x80) DispCe6 = 0; else DispCe6 = 1;                     
 extHardwareDelay();                                                                  
 
 HDLG2416ByteLoad();                                                                  
 
 DispCe1 = 1;                                                                         
 DispCe2 = 1;                                                                         
 DispCe3 = 1;                                                                         
 DispCe4 = 1;                                                                         
 DispCe5 = 1;                                                                         
 DispCe6 = 1;                                                                         
 
 DispCu  = 1;                                                                         
 DispClr = 1;                                                                         
 
 }
 
 
 
 
 
 
 
 
 void HDLG2416ByteLoad(void)
 {
 extHardwareDelay();                                                                  
 extHardwareDelay();                                                                  
 DispWr = 1;                                      
 extHardwareDelay();                                                                  
 DispWr = 0;                                      
 extHardwareDelay();                                                                  
 DispWr = 1;                                      
 extHardwareDelay();                                                                  
 }
 
 
 
 
 
 
 
 
 void HDLG2416Clear(void)
 {     
 DispClr = 0;                                                             
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 x001uSDelay();                                                           
 DispClr = 1;                                                             
 x001uSDelay();                                                           
 }
 
 
 
 
 
 
 
 
 void HDLG2416Default(void)
 {     
 DispData         = 0x20;                                                 
 
 
 
 
 
 
 
 
 DispA0           = 0;                                                    
 DispA1           = 0;                                                    
 DispCue          = 1;                                                    
 DispClr          = 1;                                                    
 DispWr           = 1;                                                    
 DispCu           = 1;                                                    
 
 DispCe1          = 1;                                                    
 DispCe2          = 1;                                                    
 DispCe3          = 1;                                                    
 DispCe4          = 1;                                                    
 DispCe5          = 1;                                                    
 DispCe6          = 1;                                                    
 x001uSDelay();                                                           
 }
