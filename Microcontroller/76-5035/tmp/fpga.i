
#line 1 "src\fpga\fpga.c" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  
#line 1 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef unsigned short int          bool;                                                  
 typedef unsigned char               byte;                                                  
 typedef unsigned short int          uint;                                                  
 typedef short int                   sint;                                                  
 typedef unsigned long               ulong;                                                 
 typedef unsigned short int          word;                                                  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 96 ".\SRC\CPU\TYPES.H" /1
  
  
  
  
  
 
#line 102 ".\SRC\CPU\TYPES.H" /0
 
 
 
 
 
 
 
 
 
#line 17 ".\SRC\MAIN\CIRCUIT.H" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#line 24 "src\fpga\fpga.c" /0
 
 
 void writeFpgaAddress(byte adrs);                                                          
 
 uint idata fpga16  _at_ 0x20;                                                       
 byte bdata ByteHi  _at_ 0x20;                                                       
 byte bdata ByteLo  _at_ 0x21;                                                       
 sbit          bit_00  = ByteLo^0;                                                      
 sbit          bit_01  = ByteLo^1;                                                      
 sbit          bit_02  = ByteLo^2;                                                      
 sbit          bit_03  = ByteLo^3;                                                      
 sbit          bit_04  = ByteLo^4;                                                      
 sbit          bit_05  = ByteLo^5;                                                      
 sbit          bit_06  = ByteLo^6;                                                      
 sbit          bit_07  = ByteLo^7;                                                      
 sbit          bit_08  = ByteHi^0;                                                      
 sbit          bit_09  = ByteHi^1;                                                      
 sbit          bit_0A  = ByteHi^2;                                                      
 sbit          bit_0B  = ByteHi^3;                                                      
 sbit          bit_0C  = ByteHi^4;                                                      
 sbit          bit_0D  = ByteHi^5;                                                      
 sbit          bit_0E  = ByteHi^6;                                                      
 sbit          bit_0F  = ByteHi^7;                                                      
 
 
 
 
 
 
 
 
 
 void writeFpgaAddress(byte adrs)                                                           
 {
 byte i;
 
 fpgaserialale     = 1;                                                               
 fpgaserialclock   = 1;                                                               
 ByteHi            = adrs;                                                            
 fpgaserialale     = 0;                                                               
 for (i = 0; i < 8; i++)                                                              
 {
 fpgadatain      = bit_08;                                                          
 fpgadatain      = bit_08;                                                          
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 ByteHi          = ByteHi >> 1;                                                     
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 }
 fpgaserialclock   = 1;                                                               
 fpgaserialale     = 1;                                                               
 fpgadatain        = 1;                                                               
 }
 
 
 
 
 
 
 
 
 void writeFpgaData(byte adrs, uint dat, byte numofbits)                                    
 {
 byte i;
 
 writeFpgaAddress(adrs);                                                              
 fpgaserialload    = 1;                                                               
 fpgaserialclock   = 1;                                                               
 fpga16            = dat;                                                             
 fpgaserialload    = 0;                                                               
 for (i = 0; i < numofbits; i++)                                                      
 {
 fpgadatain      = bit_00;                                                          
 fpgadatain      = bit_00;                                                          
 fpgadatain      = bit_00;                                                          
 fpgadatain      = bit_00;                                                          
 fpgadatain      = bit_00;                                                          
 fpgadatain      = bit_00;                                                          
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpga16          = fpga16 >> 1;                                                     
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 }
 fpgaserialclock   = 1;                                                               
 fpgaserialload    = 1;                                                               
 fpgadatain        = 1;                                                               
 }
 
 
 
 
 
 
 
 
 void writeFpgaDataL(byte adrs, byte *pdat, byte numofbits)                                 
 {
 byte i;                                                                              
 
 writeFpgaAddress(adrs);                                                              
 fpgaserialload    = 1;                                                               
 fpgaserialclock   = 1;                                                               
 fpgaserialload    = 0;                                                               
 for (i = 0; i < numofbits; i++)                                                      
 {
 if((i % 8) == 0)                                                                   
 {
 ByteLo        = *pdat;                                                           
 pdat++;                                                                          
 }
 fpgadatain      = bit_00;                                                          
 fpgadatain      = bit_00;                                                          
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 ByteLo          = ByteLo >> 1;                                                     
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 }
 fpgaserialclock   = 1;                                                               
 fpgaserialload    = 1;                                                               
 fpgadatain        = 1;                                                               
 }
 
 
 
 
 
 
 
 
 uint readFpgaData(byte adrs, numofbits)                                                    
 {
 byte i;
 
 writeFpgaAddress(adrs);                                                              
 fpgaserialclock   = 1;                                                               
 fpgaserialload    = 1;                                                               
 fpgadataout       = 1;                                                               
 fpgaserialload    = 0;                                                               
 fpga16            = 0;                                                               
 for (i = 0; i < numofbits; i++)                                                      
 {
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpgaserialclock = 1;                                                               
 fpga16          = fpga16 >> 1;                                                     
 bit_0F          = fpgadataout;                                                     
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 fpgaserialclock = 0;                                                               
 }
 fpgaserialclock   = 1;                                                               
 fpgaserialclock   = 1;                                                               
 fpgaserialclock   = 1;                                                               
 fpgaserialclock   = 1;                                                               
 fpgaserialload    = 1;                                                               
 i = 16 - numofbits;                                                                  
 if(i != 0)  {                                                                        
 while(i != 0)                                                                      
 {  fpga16     = fpga16 >> 1; i--;  }}                                            
 return fpga16;                                                                       
 }
