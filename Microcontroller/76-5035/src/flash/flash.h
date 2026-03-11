//----------------------------------------------------------------------------------------
//     Copyright (c) 2006   ASIX Electronic Corporation      All rights reserved.
//
//     This is unpublished proprietary source code of ASIX Electronic Corporation
//
//     The copyright notice above does not evidence any actual or intended
//     publication of such source code.
//----------------------------------------------------------------------------------------
// name     : flash.h
// purpose  :
// author   : Robin Lee
// date     : 2005-03-31
// notes    :
// $Log     : flash.h,v $
//----------------------------------------------------------------------------------------
// revision : 1.1.1.1  2006/02/23 00:55:10  borbin
//          : no message
//----------------------------------------------------------------------------------------

#ifndef __FLASH_H__
#define __FLASH_H__

// INCLUDE FILE DECLARATIONS //
#include "types.h"

// NAMING CONSTANT DECLARATIONS //
#define	SOH_128			0x01
#define	SOH_1024			0x02
#define	EOT				0x04
#define	ACK				0x06
#define	NACK				0x15
#define	CAN				0x18
#define	ASCII_C			0x43

#define	X_LEN_128			128
#define	X_LEN_1024			1024
#define	MAX_RETRY			6

#define	STATE_SOH			BIT0
#define	STATE_BLKNUM		BIT1
#define	STATE_BLKNUM_CMP	      BIT2
#define	STATE_DATA			BIT3
#define	STATE_ACK			BIT4
#define	STATE_EOT_ACK		BIT5

#define	DUMP_DATA_MEMORY	      1
#define	DUMP_FLASH			2
#define	DUMP_SHADOW			3

#define	ERA_BLD			BIT0
#define	ERA_CFG			BIT1
#define	ERA_RUN			BIT2
#define	ERA_ALL			BIT3

// MACRO DECLARATIONS //

// TYPE DECLARATIONS //

// GLOBAL VARIABLES //
extern byte CODE* PFlash;

// EXPORTED SUBPROGRAM SPECIFICATIONS //
int	IntFlashWrite(ulong ProgAddr, byte *ptWrData, ulong ProgLen, byte BootldrSel)large reentrant;
//int	ExtFlashWrite(ulong ProgAddr, byte *ptWrData, ulong ProgLen);
int	IntFlashErase(byte EraseSel)large reentrant;
//int	ExtFlashErase(ulong ExtAddr);

#endif // End of __FLASH_H__ //