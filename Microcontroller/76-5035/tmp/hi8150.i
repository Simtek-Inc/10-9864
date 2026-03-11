
#line 1 "src\main\hi8150.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 "SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 "src\main\hi8150.c" /0
 
 
 
 void formatDataHI8150(byte dat[6],byte *formattedData);                                                        
 void writeHI8150(byte din[5]);                                                            
 void setBPOSC(byte bposc_rate);                                                            
 
 
 
 
 
 
 
 
 
 void formatDataHI8150(byte dat[6],byte *formattedData)                                                         
 {
 
 byte i;
 static const byte seg_A  = 0x01;
 static const byte seg_B  = 0x02;
 static const byte seg_C  = 0x04;
 static const byte seg_D  = 0x08;
 static const byte seg_E  = 0x10;
 static const byte seg_F  = 0x20;
 static const byte seg_G  = 0x40;
 
 static const byte DP1    = 0x01;
 static const byte DP2    = 0x02;
 static const byte DP3    = 0x04;
 static const byte DP4    = 0x08;
 
 static const byte ATC    = 0x01;
 static const byte ONE    = 0x02;
 static const byte TWO    = 0x04;
 static const byte RPLY   = 0x08;
 static const byte F      = 0x10;
 
 static const byte bit00  = 0x01;
 static const byte bit01  = 0x02;
 static const byte bit02  = 0x04;
 static const byte bit03  = 0x08;
 static const byte bit04  = 0x10;
 static const byte bit05  = 0x20;
 static const byte bit06  = 0x40;
 static const byte bit07  = 0x80;
 
 for(i=0; i<5; i++)
 {
 formattedData[i] = 0;    
 }
 
 formattedData[0]  = ((dat[0]&seg_C)?bit07:0) + 
 ((dat[0]&seg_D)?bit06:0) +  
 ((dat[0]&seg_E)?bit05:0) + 
 ((dat[4]&DP1)?bit04:0)   + 
 ((dat[0]&seg_G)?bit03:0) + 
 ((dat[0]&seg_F)?bit02:0) + 
 ((dat[5]&F)?bit01:0)     +
 ((dat[5]&ATC)?bit00:0);  
 
 formattedData[1]  = ((dat[0]&seg_A)?bit07:0) + 
 ((dat[0]&seg_B)?bit06:0) + 
 ((dat[5]&ONE)?bit05:0)   + 
 ((dat[5]&TWO)?bit04:0)   + 
 ((dat[1]&seg_G)?bit03:0) + 
 ((dat[1]&seg_F)?bit02:0) + 
 ((dat[1]&seg_A)?bit01:0) + 
 ((dat[1]&seg_B)?bit00:0); 
 
 formattedData[2]  = ((dat[2]&seg_G)?bit07:0) + 
 ((dat[2]&seg_F)?bit06:0) + 
 ((dat[2]&seg_A)?bit05:0) + 
 ((dat[2]&seg_B)?bit04:0) + 
 ((dat[5]&RPLY)?bit03:0)  + 
 ((dat[3]&seg_G)?bit02:0) + 
 ((dat[3]&seg_F)?bit01:0) +
 ((dat[3]&seg_A)?bit00:0);  
 
 formattedData[3]  = ((dat[3]&seg_B)?bit07:0) + 
 ((dat[3]&seg_C)?bit06:0) + 
 ((dat[3]&seg_D)?bit05:0) + 
 ((dat[3]&seg_E)?bit04:0) + 
 ((dat[4]&DP4)?bit03:0)   + 
 ((dat[2]&seg_C)?bit02:0) + 
 ((dat[2]&seg_D)?bit01:0) + 
 ((dat[2]&seg_E)?bit00:0);  
 
 formattedData[4]  = ((dat[4]&DP3)?bit07:0)   + 
 ((dat[1]&seg_C)?bit06:0) + 
 ((dat[1]&seg_D)?bit05:0) + 
 ((dat[0]&00000)?bit04:0) + 
 ((dat[1]&seg_E)?bit03:0) + 
 ((dat[4]&DP2)?bit02:0)   + 
 ((dat[0]&00000)?bit01:0) + 
 ((dat[0]&00000)?bit00:0);     
 }                           
 
 
 
 
 
 
 









































 
 
 void writeHI8150(byte dat[5])
 {
 byte i, j;
 byte temp;
 
 HI8150CS   = 1;
 HI8150CLK  = 1;
 HI8150LD = 1;
 
 
 HI8150CS   = 0;
 HI8150LD = 0;
 
 for (i = 0; i < 5; i++)                
 {
 temp = dat[i];                    
 
 for (j = 0; j < 8; j++)
 {
 
 HI8150DIN = (temp & 0x80) ? 1 : 0;
 
 
 HI8150CLK = 0;
 HI8150CLK = 1;
 
 temp <<= 1;                    
 }
 }
 
 
 HI8150LD = 1;
 HI8150CS = 1;
 }
