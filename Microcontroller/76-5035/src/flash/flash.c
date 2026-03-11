//----------------------------------------------------------------------------------------
//     Copyright (c) 2006   ASIX Electronic Corporation      All rights reserved.
//
//     This is unpublished proprietary source code of ASIX Electronic Corporation
//
//     The copyright notice above does not evidence any actual or intended
//     publication of such source code.
//----------------------------------------------------------------------------------------
// name     : flash.c
// purpose  :
// author   : Robin Lee
// date     : 2005-03-31
// notes    :
// $Log     : flash.c,v $
//----------------------------------------------------------------------------------------
// Revision : 1.1.1.1  2006/02/23 00:55:10  borbin
//          : no message
//----------------------------------------------------------------------------------------

// INCLUDE FILE DECLARATIONS //
#include    <absacc.h>
#include    "reg80390.h"
#include    "flash.h"

#define FLASH_CONFIG_DATA_ADDR    0x004000
#define FLASH_RUNTIME_DATA_ADDR   0x006000
// GLOBAL VARIABLE DECLARATIONS //
byte CODE* PFlash = FLASH_RUNTIME_DATA_ADDR;

// STATIC VARIABLE DECLARATIONS //

//----------------------------------------------------------------------------------------
// name    : IntFlashWrite(ulong ProgAddr, byte *ptWrData, ulong ProgLen, byte BootldrSel)
// purpose :
// params  :
// returns :
// notes   :
//----------------------------------------------------------------------------------------
int IntFlashWrite(ulong ProgAddr, byte *ptWrData, ulong ProgLen, byte BootldrSel) large reentrant
{
      byte  LastWtst;
//    ulong idata i;
//    byte  idata PollData;
      ulong i;
      byte  PollData;

      LastWtst = WTST;
      WTST     = 0x07;
      EA       = 0;
      if (CSREPR & PMS)                                           // check for SRAM shadow state
        {
        if (BootldrSel & ERA_BLD)                                 // check for a program bootloader switch
          {
          CSREPR |= FAES | FARM;                                  // change flash memory access rights from runtime to bootloader area, and enable flash access
          for (i = 0 ; i < 0x4000 ; i++)                          // loop through entire bootlader flash block
            {
            FLASH_WR_ENB;                                         // enable program memory access
            FVAR(byte, 0x4000 + 0x000555) = 0xAA;                 // access automatic flash functions                 
            FVAR(byte, 0x4000 + 0x0002AA) = 0x55;
            FVAR(byte, 0x4000 + 0x000555) = 0xA0;                 // enable automatic program function
            FVAR(byte, 0x4000 + i) = *(ptWrData + i);             // write data memory cell
            FLASH_WR_DISB;                                        // disable acess to flash program memory
            do
              {
              PollData = FCVAR(byte, 0x4000 + i);                 // read the flash memory write status register
              } while (PollData != *(ptWrData + i)) ;             // wait until byte is done writing
            }
          CSREPR &= ~FARM;                                        // change flash memory access rights from bootloader to runtime area

          for (i = 0x4000 ; i < ProgLen ; i++)                    //
            {
            FLASH_WR_ENB;                                         // enable write access  for flash memory
            CSREPR |= FARM;                                       // change flash memory access rights from runtime to bootloader area
            FVAR(byte, 0x4000 + 0x000555) = 0xAA;                 // access automatic flash functions
            FVAR(byte, 0x4000 + 0x0002AA) = 0x55;
            FVAR(byte, 0x4000 + 0x000555) = 0xA0;                 // enable automatic program function
            CSREPR &= ~FARM;                                      // change flash memory access rights from bootloader to runtime area
            FVAR(byte, i) = *(ptWrData + i);                      // write data memory cell
            FLASH_WR_DISB;                                        // disable write access to flash memory
            do
              {
              PollData = FCVAR(byte, i);                          // read the flash memory write status register
              } while (PollData != *(ptWrData + i));              // wait until byte is done writing
            }
          CSREPR &= ~FAES;                                        // disable flash access, switch access to shadow ram
          }
        else                                                      // not bootloader write to runtime code block
          {
          CSREPR |= FAES;                                         // enable flash access
          for (i = 0 ; i < ProgLen ; i++)                         //
            {
            FLASH_WR_ENB;                                         // enable write access  for flash memory
            CSREPR |= FARM;                                       // change flash memory access rights from runtime to bootloader area
            FVAR(byte, 0x4000 + 0x000555) = 0xAA;                 // access automatic flash functions
            FVAR(byte, 0x4000 + 0x0002AA) = 0x55;
            FVAR(byte, 0x4000 + 0x000555) = 0xA0;                 // enable automatic program function
            CSREPR &= ~FARM;                                      // change flash memory access rights from bootloader to runtime area
            FVAR(byte, ProgAddr + i) = *(ptWrData + i);           // write data memory cell
            FLASH_WR_DISB;                                        // disable write access to flash memory
            do
              {
              PollData = FCVAR(byte, ProgAddr + i);               // read the flash memory write status register
              } while (PollData != *(ptWrData + i));              // wait until byte is done writing
            }
          CSREPR &= ~FAES;                                        // disable flash access, switch access to shadow ram
          }
        }
      else                                                        // Flash, No shadow
        {
        CSREPR &= ~FAES;                                          // disable flash access, switch access to shadow ram

        if (BootldrSel & ERA_BLD)                                 // check for a program bootloader switch
          {
          CSREPR |= FARM;                                         // change flash memory access rights from runtime to bootloader area
          for (i = 0 ; i < 0x4000 ; i++)                          // loop through the bootloader block
            {
            FLASH_WR_ENB;                                         // enable write access  for flash memory
            FVAR(byte, 0x4000 + 0x000555) = 0xAA;                 // access automatic flash functions
            FVAR(byte, 0x4000 + 0x0002AA) = 0x55;
            FVAR(byte, 0x4000 + 0x000555) = 0xA0;                 // enable automatic program function
            FVAR(byte, 0x4000 + i) = *(ptWrData + i);             // write data memory cell
            FLASH_WR_DISB;                                        // disable write access to flash memory
            do
              {
              PollData = FCVAR(byte, 0x4000 + i);                 // read the flash memory write status register
              } while (PollData != *(ptWrData + i));              // wait until byte is done writing
            }
          CSREPR &= ~FARM;                                        // change flash memory access rights from bootloader to runtime area
          for (i = 0x4000 ; i < ProgLen ; i++)
            {
            FLASH_WR_ENB;                                         // enable write access  for flash memory
            CSREPR |= FARM;                                       // change flash memory access rights from runtime to bootloader area 
            FVAR(byte, 0x4000 + 0x000555) = 0xAA;                 // access automatic flash functions
            FVAR(byte, 0x4000 + 0x0002AA) = 0x55;
            FVAR(byte, 0x4000 + 0x000555) = 0xA0;                 // enable automatic program function
            CSREPR &= ~FARM;                                      // change flash memory access rights from bootloader to runtime area
            FVAR(byte, i) = *(ptWrData + i);                      // write data memory cell
            FLASH_WR_DISB;                                        // disable write access to flash memory
            do
              {
              PollData = FCVAR(byte, i);                          // read the flash memory write status register
              } while (PollData != *(ptWrData + i));              // wait until byte is done writing
            }
          }
        else                                                      // write to runtime program area
          {
          for (i = 0 ; i < ProgLen ; i++)                         // loop through for each byte to the end of the program block
            {
            FLASH_WR_ENB;                                         // enable write access  for flash memory
            CSREPR |= FARM;                                       // change flash memory access rights from runtime to bootloader area 
            FVAR(byte, 0x4000 + 0x000555) = 0xAA;                 // access automatic flash functions
            FVAR(byte, 0x4000 + 0x0002AA) = 0x55;
            FVAR(byte, 0x4000 + 0x000555) = 0xA0;                 // enable automatic program function
            CSREPR &= ~FARM;                                      // change flash memory access rights from bootloader to runtime area
            FVAR(byte, ProgAddr + i) = *(ptWrData + i);           // write data memory cell
            FLASH_WR_DISB;                                        // disable write access to flash memory
            do
              {
              PollData = FCVAR(byte, ProgAddr + i);               // read the flash memory write status register
              } while (PollData != *(ptWrData + i));              // wait until byte is done writing
            }
          }
      }
      WTST = LastWtst;
      EA   = 1;
      return TRUE;
}

//----------------------------------------------------------------------------------------
// name    : Flash_WriteCfgData(byte * addr, word len)
// purpose :
// params  : addr pointer to data address to copy data from, len  length of data to copy
// returns :
// notes   :
//----------------------------------------------------------------------------------------
byte Flash_WriteCfgData(byte *addr, word len) large reentrant
{
    if(IntFlashErase(ERA_CFG))
      return IntFlashWrite(FLASH_CONFIG_DATA_ADDR, addr, len, ERA_CFG);
    else
      return FALSE;
}

//----------------------------------------------------------------------------------------
// name    : IntFlashErase(byte EraseSel)
// purpose :
// params  : EraseSel  (ERA_BLD | ERA_CFG | ERA_RUN) 
// returns :
// notes   :
//----------------------------------------------------------------------------------------
int IntFlashErase(byte EraseSel) large reentrant
{
//      byte   idata PollData, LastWtst;
//      ulong  idata BaseAddr;
      byte   PollData, LastWtst;
      ulong  BaseAddr;
//      byte   i;
      
      LastWtst = WTST;
      WTST     = 0x07;
      EA       = 0;
      BaseAddr = FLASH_CONFIG_DATA_ADDR;
      FLASH_WR_ENB;
      if (CSREPR & PMS)             // SRAM shadow
        CSREPR |= FAES;
      else
        CSREPR &= ~FAES;
      if (EraseSel & ERA_BLD)       // erase  bootLoader
        {
        CSREPR |= FARM;
        FVAR(byte, BaseAddr + 0x000555) = 0xAA;
        FVAR(byte, BaseAddr + 0x0002AA) = 0x55;
        FVAR(byte, BaseAddr + 0x000555) = 0x80;
        FVAR(byte, BaseAddr + 0x000555) = 0xAA;
        FVAR(byte, BaseAddr + 0x0002AA) = 0x55;
        FVAR(byte, BaseAddr + 0x000000) = 0x30;
        CSREPR &= ~FARM;
        }
      else                                      // ERASE OTHER
        {
        CSREPR |= FARM;
        FVAR(byte, BaseAddr + 0x000555) = 0xAA;
        FVAR(byte, BaseAddr + 0x0002AA) = 0x55;
        FVAR(byte, BaseAddr + 0x000555) = 0x80;
        FVAR(byte, BaseAddr + 0x000555) = 0xAA;
        FVAR(byte, BaseAddr + 0x0002AA) = 0x55;
        CSREPR &= ~FARM;
        if(EraseSel & ERA_CFG)                  // erase configuration data
          {
          FVAR(byte, FLASH_CONFIG_DATA_ADDR) = 0x30;
          }
        else if(EraseSel & ERA_RUN)             // erase runtime code
          {
          FVAR(byte, 0x006000) = 0x30;
          FVAR(byte, 0x008000) = 0x30;
          FVAR(byte, 0x010000) = 0x30;
          FVAR(byte, 0x020000) = 0x30;
          FVAR(byte, 0x030000) = 0x30;
          FVAR(byte, 0x040000) = 0x30;
          FVAR(byte, 0x050000) = 0x30;
          FVAR(byte, 0x060000) = 0x30;
          FVAR(byte, 0x070000) = 0x30;
          }
        else if(EraseSel & ERA_ALL)                            // erase all code
          {
          FVAR(byte, BaseAddr + 0x000555) = 0x10;
//          CSREPR &= ~FAES;
//          WTST    = LastWtst;
//          EA      = 1;
//          return FALSE;
          }
        }
      FLASH_WR_DISB;
    // check for completition
      if (EraseSel & ERA_BLD)
        {
        CSREPR |= FARM;
        while (1)
          {   
          PollData = FCVAR(byte, BaseAddr + 0x000000);
          if (PollData == 0xFF)
            {
            break;
            }
          }
        CSREPR &= ~FARM;
        }
      else
        {
//        i
        while (1)
          {
          if(EraseSel & ERA_CFG)
            PollData = FCVAR(byte, BaseAddr + 0x000000);
          else
            PollData = FCVAR(byte, BaseAddr + 0x002000);
          if ((PollData & BIT7) == BIT7)
            {
            break;
            }
          }
        }
      CSREPR &= ~FAES;
      WTST    = LastWtst;
      EA      = 1;
      return TRUE;
}

// end of flash.c //