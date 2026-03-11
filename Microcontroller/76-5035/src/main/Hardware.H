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
// Module Name     : Hardware.H                                                           //
// Purpose         : Definition of universal variables                                    //
// Author          : C. Jeardoe                                                             //
// Date            : Jult 31, 2017                                                        //
// Notes           :                                                                      //
//========================================================================================//
//========================================================================================//
// Simtek Revision : -                                                                    //
//========================================================================================//
#include "INSTRUMENT.H"                                                                   //
//========================================================================================//
//                NAMING CONSTANT DECLARATIONS                                            //
//========================================================================================//

//========================================================================================//
//                GLOBAL VARIABLES                                                        //
//========================================================================================//
extern uint  acReadP0;                                                                    //
extern uint  acReadP1;                                                                    //
extern uint  acReadP2;                                                                    //
extern uint  acReadP3;                                                                    //
extern uint  acRDFU;                                                                      //
extern uint  acAPF;                                                                       //
extern bool  fDebugPin;                                                                   //
extern bool  fNormalRun;                                                                  //
extern byte  HalfDuplex;                                                                  //
////////////////////////////////////////////////////////////////////////////////////////////
//          GLOBAL VARIABLES                                                              //
////////////////////////////////////////////////////////////////////////////////////////////

extern uint  acResetRequest;                                                              //
extern uint  acStatusRequest;                                                             //
extern uint  acDimmingRequest;		 
extern uint  acMeterRequest;                                                          
extern uint  acIndicatorRequest;
extern uint  acDisplayRequest;
extern uint  acDisplayDimmingRequest;
extern uint  acDisplayContrastRequest;

extern uint  acFirmwareRequest;                                                           //
extern uint  acPointerRequest;                                                            //
extern byte  bufDisplayReq[];
extern byte  tmpDisplayReq[];
extern byte  bufDimmingReq[];

extern bool fDebugMode;                                                                   //
extern bool fTransmitMode;                                                                //


extern byte  bufDimmingData[bufDimmingMsgLength];
//extern byte  bufMeterData[bufMeterMsgLength];
extern byte  bufIndicatorData[bufIndicatorMsgLength];
extern byte  bufResetReq[bufResetMsgLength];                                              //
extern byte  bufStatusRsp[bufStatusMsgLength];                                            //
extern byte  bufFirmwareRsp[bufFirmwareMsgLength];                                        //
extern byte  bufDisplayData[bufDisplayMsgLength];
extern byte  bufDisplayDimmingData[bufDisplayDimmingMsgLength];
extern byte  bufDisplayContrastData[bufDisplayContrastMsgLength];

extern uint main_readEthChar(byte* pDat);                                                 //
