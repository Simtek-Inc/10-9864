//========================================================================================//
//========================================================================================//
//========================================================================================//
//     Copyright (c) 2017     Simtek, Incorporated      All rights reserved.              //
//                                                                                        //
//     This is unpublished proprietary source code of Simtek, Inc                         //
//                                                                                        //
//     The copyright notice above does not evidence any actual or intended                //
//     publication of such source code.                                                   //
//========================================================================================//
//========================================================================================//
//========================================================================================//
// 76-5035  for 10-9864-01                                                                //
//========================================================================================//
// Author      : C. Jeardoe                                                                 //
// Date        : February 8, 2017                                                         //
// Revision    : -                                                                        //
// Notes       : Shipped with instrument.                                                 //
//========================================================================================//
//                                                                                        //
//========================================================================================//
//          include file declarations                                                     //
//========================================================================================//
#include "CIRCUIT.H"                                                                      //
//Change CIRCUIT.H to include definitions for: HI8150CLK, HI8150DIN, HI8150LOAD, HI8150CS // 
                                                                                          //
void formatDataHI8150(byte dat[6],byte *formattedData);                                                       //
void writeHI8150(byte din[5]);                                                           //
void setBPOSC(byte bposc_rate);                                                           //
   
   
//----------------------------------------------------------------------------------------
// Function Name : formatDataHI8150                                                       //
// Purpose       : format 4 digits into 5 byte, 38 bit data format according to PWTNLCD  //
// Params        : data to write to registers                                             //
// Returns       : void                                                                   //
// Note          :                                                                        //
//----------------------------------------------------------------------------------------
void formatDataHI8150(byte dat[6],byte *formattedData)                                                        //
{
//    byte formattedData[10];
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
        formattedData[i] = 0;   // Load array with zeroes.
    }
// FOLLOWING the HI-8150 pinout from s38 down to s1 on the 51-1331schematic...
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
//----------------------------------------------------------------------------------------
// Function Name : writeHI8150                                                            //
// Purpose       : write the data into the HI-8150 device, 40 bits at a time              //
// Params        : data to write to registers                                             //
// Returns       : void                                                                   //
// Note          :                                                                        //
//----------------------------------------------------------------------------------------
/*void writeHI8150(byte dat[5])                                                            //
{
    byte i,j;
    
    HI8150LOAD  = 1;                                                                      // make sure the fpga ale is deactived before starting
    HI8150CLK   = 1;                                                                      // make sure the fpga serial register clock is deactived before starting
    HI8150LOAD  = 0;                                                                      // activate the ale to move the address into the address latch from the sipo function
    HI8150CS    = 0;
    /*for(i=0; i<2; i++)                                                                    // HI-8150 has 40 bits shift register, but only 38 can be used. Insert 0's into first 2 bits.
    {
        HI8150DIN   = 0;
        HI8150CLK   = 0;          
        HI8150CLK   = 0;                                                                  // deactivate the fpga serial register clock
        HI8150CLK   = 0;                                                                  // deactivate the fpga serial register clock
        HI8150CLK   = 0;                                                                  // deactivate the fpga serial register clock
        HI8150CLK   = 0;   
        HI8150CLK   = 1;                                                                  // set the clock to activate
        HI8150CLK   = 1;                                                                  // set the clock to activate
    }
 
    for (i = 0; i < 5; i++)                                                              // loop until all bits are read
    {
        for (j = 0; j < 8; j++)                                                           // loop until all bits are read
        {
            HI8150DIN = (dat[i] & 0x80) ? 1 : 0;                                          // write the bit of the data to the fpga data input pin
            //HI8150DIN = dat[i];                                                           // burn a ccyle
            HI8150CLK = 0;                                                                // deactivate the fpga serial register clock
            HI8150CLK = 0;                                                                // deactivate the fpga serial register clock
            HI8150CLK = 0;                                                                // deactivate the fpga serial register clock
            HI8150CLK = 0;                                                                // burn a ccyle
            dat[i]    = dat[i] << 1;                                                      // shift the next bit into position for the next bit write
            HI8150CLK = 1;                                                                // set the clock to activate
            HI8150CLK = 1;                                                                // set the clock to activate
            
            
        }
            HI8150CLK   = 1;                                                              // set the clock to high to burn a cycle
            HI8150LOAD  = 1;                                                              // now that the address is latched deactivate the ale
            HI8150DIN   = 1;                                                              // write the bit of the data to the fpga data input pin
            HI8150CS    = 1;
    }
}*/

void writeHI8150(byte dat[5])
{
    byte i, j;
    byte temp;

    HI8150CS   = 1;
    HI8150CLK  = 1;
    HI8150LD = 1;

    // ----- start -----
    HI8150CS   = 0;
    HI8150LD = 0;

    for (i = 0; i < 5; i++)               // 5 bytes = 40 bits
    {
        temp = dat[i];                    

        for (j = 0; j < 8; j++)
        {
            // send MSB
            HI8150DIN = (temp & 0x80) ? 1 : 0;

            // clock pulse
            HI8150CLK = 0;
            HI8150CLK = 1;

            temp <<= 1;                   // next bit
        }
    }
 
    // ----- end -----
    HI8150LD = 1;
    HI8150CS = 1;
}