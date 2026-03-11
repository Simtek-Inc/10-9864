//----------------------------------------------------------------------------------------
//     Copyright (c) 2006	ASIX Electronic Corporation      All rights reserved.
//
//     This is unpublished proprietary source code of ASIX Electronic Corporation
//
//     The copyright notice above does not evidence any actual or intended
//     publication of such source code.
//----------------------------------------------------------------------------------------
// Module Name    : gconfig.c
// Purpose :
// Author         :
// Date           :
// Notes          :
// $Log           : gconfig.c,v $
//----------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------
// INCLUDE FILE DECLARATIONS //
//----------------------------------------------------------------------------------------
#include "reg80390.h"
#include "adapter.h"
#include "gconfig.h"

#include "gs2e.h"
#include "tcpip.h"
#include "mstimer.h"
#include "stoe.h"
#include "uart.h"
#include "printd.h"
#include "ax11000.h"
#include <absacc.h>
#include <string.h>
#include "instrument.h"
#include "hardware.h"
#include "util_menus.h"                                                                   //
//----------------------------------------------------------------------------------------
// NAMING CONSTANT DECLARATIONS //
//----------------------------------------------------------------------------------------
#define DEVICE_STATUS_IDLE                0
#define DEVICE_STATUS_CONNECTED           1
#define ENABLE_FIRMWARE_UPGRADE           0x5A
//----------------------------------------------------------------------------------------
// MACRO DECLARATIONS //
//----------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------
// TYPE DECLARATIONS //
//----------------------------------------------------------------------------------------
typedef byte (*pFlashParaData)(byte * addr, uint  len);

//----------------------------------------------------------------------------------------
// GLOBAL VARIABLES DECLARATIONS //
//----------------------------------------------------------------------------------------
GCONFIG_GID XDATA GCONFIG_Gid = {'A','S','I','X','X','I','S','A'};
//----------------------------------------------------------------------------------------
// LOCAL VARIABLES DECLARATIONS //
//----------------------------------------------------------------------------------------
byte XDATA gconfig_SysClock;
GCONFIG_CFG_DATA XDATA gconfig_ConfigData;
byte IDATA FirmwareUpgradeFlag _at_ 0x31;
static GCONFIG_MAC_ADDR macAddr;
byte DefaultPassword[11];                                                               //
byte DefaultDevName[16];                                                          //
//----------------------------------------------------------------------------------------
// LOCAL SUBPROGRAM DECLARATIONS //
//----------------------------------------------------------------------------------------
static bool gconfig_ReStoreParameter(ulong addr, GCONFIG_CFG_DATA *pConfig, uint  len);
static bool gconfig_StoreParameter(GCONFIG_CFG_DATA *pSramBase, uint  len);
static uint  gconfig_Checksum(uint  *pBuf, ulong length);
static void gconfig_InDisplayConfigData(GCONFIG_CFG_DATA *pConfig);
static void	gconfig_DisplayConfigData(GCONFIG_CFG_DATA *pConfig);

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_Task
// Purpose : Main function
// Params  : void
// Returns : void
// Note           :
//----------------------------------------------------------------------------------------
void GCONFIG_Task(void)
{

} // End of GCONFIG_Task() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_Init
// Purpose : Initialization
// Params  : void
// Returns : void
// Note           :
//----------------------------------------------------------------------------------------
void GCONFIG_Init(void)
{
    byte  dataStopParityBits = 0;
	// Restore last-saved configuration if applicable
    GS2E_SetTaskState(GS2E_STATE_IDLE);

    memcpy((char *)&macAddr, PNetStation->CurrStaAddr, MAC_ADDRESS_LEN);

    GCONFIG_ReadConfigData();
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
//          initialize debug mode control bit                                             //
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
      fTransmitMode = Client;                                                             //
    // UART 2 parameters setting
    gconfig_SysClock = AX11000_GetSysClk();
} // End of GCONFIG_Init() //

/////////////////////////////////////////////////////////////////////////////////

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetConfigPacket
// Purpose : 
// Params  : pointer to configuration packet
// Returns : void
// Note           :
//----------------------------------------------------------------------------------------
void GCONFIG_SetConfigPacket(GCONFIG_CFG_PKT* pCfgPkt)
{//   GCONFIG_CFG_DATA                                  GCONFIG_CFG_PKT
    gconfig_ConfigData.Option                       = pCfgPkt->Option;
    gconfig_ConfigData.DevName                      = pCfgPkt->DevName;
    gconfig_ConfigData.Network                      = pCfgPkt->Network;
    gconfig_ConfigData.ServerStaticIP               = pCfgPkt->ServerStaticIP;
    gconfig_ConfigData.ServerDataPktListenPort      = pCfgPkt->ServerDataPktListenPort;
    gconfig_ConfigData.MasterAddress                = pCfgPkt->MasterAddress;
    gconfig_ConfigData.ServerBroadcastListenPort    = pCfgPkt->ServerBroadcastListenPort;
    gconfig_ConfigData.ClientDestIP                 = pCfgPkt->ClientDestIP;
    gconfig_ConfigData.ClientDestPort               = pCfgPkt->ClientDestPort; 
    gconfig_ConfigData.Netmask                      = pCfgPkt->Netmask;
    gconfig_ConfigData.EthernetTxTimer              = pCfgPkt->EthernetTxTimer;
    GCONFIG_WriteConfigData();
} // End of GCONFIG_SetConfigPacket() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetConfigPacket
// Purpose : 
// Params  : pointer to configuration packet
// Returns : void
// Note           :
//----------------------------------------------------------------------------------------
void GCONFIG_GetConfigPacket(GCONFIG_CFG_PKT* pCfgPkt)
{
    memcpy((char *)&pCfgPkt->Gid, (char *)&GCONFIG_Gid, sizeof(GCONFIG_Gid));
    pCfgPkt->Option                    = gconfig_ConfigData.Option;
    pCfgPkt->DevName                   = gconfig_ConfigData.DevName;
    pCfgPkt->MacAddr                   = macAddr;
    pCfgPkt->Network                   = gconfig_ConfigData.Network;
    pCfgPkt->ServerDynamicIP           = STOE_GetIPAddr();
    pCfgPkt->ServerStaticIP            = gconfig_ConfigData.ServerStaticIP;
    pCfgPkt->ServerDataPktListenPort   = gconfig_ConfigData.ServerDataPktListenPort;
    pCfgPkt->MasterAddress             = gconfig_ConfigData.MasterAddress;
    pCfgPkt->ServerBroadcastListenPort = gconfig_ConfigData.ServerBroadcastListenPort;
    pCfgPkt->ClientDestIP              = gconfig_ConfigData.ClientDestIP;
    pCfgPkt->ClientDestPort            = gconfig_ConfigData.ClientDestPort; 
    pCfgPkt->Netmask                   = gconfig_ConfigData.Netmask;
    pCfgPkt->EthernetTxTimer           = gconfig_ConfigData.EthernetTxTimer;
    pCfgPkt->pw                        = gconfig_ConfigData.pw;

    if (GS2E_GetTaskState() == GS2E_STATE_IDLE)
      pCfgPkt->DeviceStatus            = DEVICE_STATUS_IDLE;
    else
      pCfgPkt->DeviceStatus            = DEVICE_STATUS_CONNECTED;
} //End of GCONFIG_GetConfigPacket() //

// ----------------------------------------------------------------------------
// Name    : GCONFIG_ReadConfigData
// Purpose :
// Params  :
// Returns :
// Note    :
// ----------------------------------------------------------------------------
void GCONFIG_ReadConfigData(void)
{
#ifdef RuntimeCodeAt24KH // = 0x6000 = approx 0x6020 ROM offset
    bool bRet;

    printd("Read configuration data : ");

    bRet = gconfig_ReStoreParameter(0, &gconfig_ConfigData, sizeof(gconfig_ConfigData));

    if (bRet == FALSE || (gconfig_ConfigData.ServerStaticIP & 0x000000FF) == 0)         //
      {
      GCONFIG_ReadDefaultConfigData();                                                  // read the device cinfiguration data
//    gconfig_InDisplayConfigData(&gconfig_ConfigData);                                 // display the data for the user
      }
#else
    GCONFIG_ReadDefaultConfigData();                                                    // read the device cinfiguration data
//  gconfig_InDisplayConfigData(&gconfig_ConfigData);                                   // display the data for the user
#endif
} //End of GCONFIG_ReadConfigData() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_WriteConfigData
// Purpose : 
// Params  : void
// Returns : void
// Note           :
//----------------------------------------------------------------------------------------
void GCONFIG_WriteConfigData(void)
{
#ifdef RuntimeCodeAt24KH
    gconfig_StoreParameter(&gconfig_ConfigData, (uint)sizeof(gconfig_ConfigData));
#endif
} //End of GCONFIG_WriteConfigData() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_ReadDefaultConfigData
// Purpose : 
// Params  : void
// Returns : void
// Note           :
//----------------------------------------------------------------------------------------
void GCONFIG_ReadDefaultConfigData(void)
{
    printd("Read default configuration data. \n\r");                                    //

    gconfig_ConfigData.CheckSum                  = 0x00;                                //
    gconfig_ConfigData.CfgLength                 = sizeof(gconfig_ConfigData);          //
    gconfig_ConfigData.UdpAutoConnectClientIp    = 0x00000000;                          //
    gconfig_ConfigData.UdpAutoConnectClientPort  = 0x0000;                              //

    strncpy(&DefaultDevName,  defaultDeviceName,  sizeof(defaultDeviceName));           // 
    gconfig_ConfigData.Option                    = 0;                                   //
    memcpy(&gconfig_ConfigData.DevName, &DefaultDevName, sizeof(GCONFIG_DEV_NAME));     //
    gconfig_ConfigData.Network                   = (GCONFIG_NETWORK_SERVER |            //
                                                    GCONFIG_NETWORK_DHCP_DISABLE |      //
                                                    GCONFIG_NETWORK_PROTO_UDP |         //
                                                    GCONFIG_NETWORK_PROTO_UDP_BCAST);   //
    gconfig_ConfigData.ServerStaticIP            = defaultServerStaticIP;               //
    gconfig_ConfigData.ServerDataPktListenPort   = defaultDataPort;                     //
    gconfig_ConfigData.MasterAddress             = 0;                                   // 0
    gconfig_ConfigData.ServerBroadcastListenPort = GCONFIG_UDP_BCAST_SERVER_PORT;       //
    gconfig_ConfigData.ClientDestIP              = defaultClientDestIP;                 //
    gconfig_ConfigData.ClientDestPort            = defaultHostPort;                     //
    gconfig_ConfigData.Netmask                   = defaultsubnetmask;                   //

    strncpy(&DefaultPassword, defaultpassword, sizeof(defaultpassword));                // 
    memcpy(&gconfig_ConfigData.pw   ,    &DefaultPassword, sizeof(defaultpassword));             //

	GCONFIG_DefaultLightingTable();

    gconfig_ConfigData.EthernetTxTimer           = 1;                                   //
} // End of GCONFIG_ReadDefaultConfigData //

/////////////////////////////////////////////////////////////////////////////////

// ---------------------------------------------------------------------------------------
// Name    : Simtek_Modes_Enable
// Purpose : use data stored with EDCT tool to enable different functions
// Params  : mask of bit to check for enable/disable of desired function
// Returns : ON if enabled, OFF if not
// Note    :
// ---------------------------------------------------------------------------------------
//
byte Simtek_Modes_Enable(byte mask)
{
    if ((gconfig_ConfigData.Option & mask) == 0)                                        // mask off all other bits and check remaing bit/s for state
      return OFF;                                                                       // debug if enabled turn mode off
    return ON;                                                                          // debug if disabled turn mode on
} //End of Simtek_Modes_Enable(byte mask) //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_IpAddr2Ulong()
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
ulong GCONFIG_IpAddr2Ulong(byte* pBuf, byte len)
{
    ulong ip     = 0;
    byte* point  = (byte*)&ip;
    byte  count  = 0;
    byte  count2 = 0;

    while (1)
      {
      count2 = 0;
      while ((*pBuf != '.') && len)
        {
        count2++;
        if (count2 > 3) return 0xffffffff;

        *point *= 10;
  
        if ((*pBuf < 0x3a) && (*pBuf > 0x2f))
          *point += (*pBuf - 0x30);
        else
          return 0xffffffff;

        pBuf++;
        len--;
        }
  
      if (len == 0) break;

      pBuf++;
      len--;
      count++;
      point++;

      if (count > 3) return 0xffffffff;
      }

    if (count != 3) return 0xffffffff;

    return ip;
} //End of GCONFIG_IpAddr2Ulong() //
/////////////////////////////////////////////////////////////////////////////////
// Get Functions

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetDeviceName
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetDeviceName(GCONFIG_DEV_NAME* pDevName)
{
    memcpy(&gconfig_ConfigData.DevName, pDevName, sizeof(GCONFIG_DEV_NAME)); 
} // End of GCONFIG_SetDeviceName() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetPassword
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetPassword(void* pNewPassword)
{
    memcpy(&gconfig_ConfigData.pw, pNewPassword, sizeof(GCONFIG_PASSWORD)); 
} // End of GCONFIG_SetPassword() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetNetwork
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetNetwork(uint  val)
{
      gconfig_ConfigData.Network = val;
} // End of GCONFIG_SetNetwork() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetServerStaticIP
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetServerStaticIP(ulong ip)
{
      gconfig_ConfigData.ServerStaticIP = ip;
} // End of GCONFIG_SetServerStaticIP() //

// ----------------------------------------------------------------------------
// Name    : GCONFIG_SetServerDataPktListenPort
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetServerDataPktListenPort(uint  port)
{
      gconfig_ConfigData.ServerDataPktListenPort = port;
} // End of GCONFIG_SetServerDataPktListenPort() //

// ----------------------------------------------------------------------------
// Name    : GCONFIG_SetHostMasterAddress
// Purpose :
// Params  :
// Returns :
// Note    :
// ----------------------------------------------------------------------------
void GCONFIG_SetHostMasterAddress(byte adrs)
{
    gconfig_ConfigData.MasterAddress = adrs;
} // End of GCONFIG_SetHostMasterAddress() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetServerBroadcastListenPort
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetServerBroadcastListenPort(uint  port)
{
      gconfig_ConfigData.ServerBroadcastListenPort = port;
} // End of GCONFIG_SetServerBroadcastListenPort() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetClientDestIP
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetClientDestIP(ulong ip)
{
      gconfig_ConfigData.ClientDestIP = ip;
} // End of GCONFIG_SetClientDestIP() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetClientDestPort
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetClientDestPort(uint  port)
{
      gconfig_ConfigData.ClientDestPort = port;
} // End of GCONFIG_SetClientDestPort() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetNetmask
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetNetmask(ulong netmask)
{
      gconfig_ConfigData.Netmask = netmask;
} // End of GCONFIG_SetNetmask() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_SetEthernetTxTimer
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void GCONFIG_SetEthernetTxTimer(uint  timer)
{
      gconfig_ConfigData.EthernetTxTimer = timer;
} // End of GCONFIG_SetEthernetTxTimer() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetDeviceName
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
GCONFIG_DEV_NAME* GCONFIG_GetDeviceName(void)
{
      return &gconfig_ConfigData.DevName;
} // End of GCONFIG_GetDeviceName() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetMacAddress
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
GCONFIG_MAC_ADDR GCONFIG_GetMacAddress(void)
{
      return macAddr;
} // End of GCONFIG_GetMacAddress() //

byte* GCONFIG_GetMacAddressP(void)
{
      return &macAddr;
} // End of GCONFIG_GetMacAddress() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetPassword
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
void* GCONFIG_GetPassword(void)
{
      return &gconfig_ConfigData.pw;
} // End of GCONFIG_GetPassword() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetNetwork
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
uint  GCONFIG_GetNetwork(void)
{
      return gconfig_ConfigData.Network;
} // End of GCONFIG_GetNetwork() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetServerStaticIP
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
ulong GCONFIG_GetServerStaticIP(void)
{
      return gconfig_ConfigData.ServerStaticIP;
} // End of GCONFIG_GetServerStaticIP() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetHostMasterAddress
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
byte  GCONFIG_GetHostMasterAddress(void)
{
    return gconfig_ConfigData.MasterAddress;
} // End of GCONFIG_GetHostMasterAddress() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetServerDataPktListenPort
// Purpose : 
// Params  : void
// Returns :
// Note           :
//----------------------------------------------------------------------------------------
uint  GCONFIG_GetServerDataPktListenPort(void)
{
    return gconfig_ConfigData.ServerDataPktListenPort;
} // End of GCONFIG_GetServerDataPktListenPort() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetServerBroadcastListenPort
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
uint  GCONFIG_GetServerBroadcastListenPort(void)
{
      return gconfig_ConfigData.ServerBroadcastListenPort;
} // End of GCONFIG_GetServerBroadcastListenPort() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetClientDestIP
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
ulong GCONFIG_GetClientDestIP(void)
{
      return gconfig_ConfigData.ClientDestIP;
} // End of GCONFIG_GetClientDestIP() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetClientDestPort
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
uint  GCONFIG_GetClientDestPort(void)
{
      return gconfig_ConfigData.ClientDestPort;
} // End of GCONFIG_GetClientDestPort() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetNetmask
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
ulong GCONFIG_GetNetmask(void)
{
      return gconfig_ConfigData.Netmask;
} // End of GCONFIG_GetNetmask() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_GetEthernetTxTimer
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
uint  GCONFIG_GetEthernetTxTimer(void)
{
      return gconfig_ConfigData.EthernetTxTimer;
} // End of GCONFIG_GetEthernetTxTimer() //

//----------------------------------------------------------------------------------------
// Name    : gconfig_ReStoreParameter
// Purpose : read back the ethernet configuration data at startup or reboot 
// Params  : addr - base address to read from
//                  pBase - pointer to the location to write data to(RAM), or read data from(FLASH)
//                  len - number of bytes to read back
// Returns : False if an error occurs during read (bad data, or faulty checksum)
//                  True if all reads and writes completed sucessfully and check sums match
// Note    : All the procedeing notes and following comments were added by cjm and are the assumed functions.
//                  This block was left blank by the ASIX software engineers.
//----------------------------------------------------------------------------------------
static bool gconfig_ReStoreParameter(ulong addr, GCONFIG_CFG_DATA *pConfig, uint  len)
{
	uint 	i;
	byte	*pParaBaseByte;
	byte	lastWtst = 0;

	pParaBaseByte = (byte *)pConfig;

	lastWtst = WTST;
	WTST = PROG_WTST_7;
	if (CSREPR & PMS) // SRAM shadow
	  {
	  CSREPR |= FAES;
	  for (i = 0 ; i < len ; i++)
	    {
	    *(pParaBaseByte + i) = FCVAR(byte, GCONFIG_CFG_DATA_FLASH_ADDR + addr + i);
	    }
	  CSREPR &= ~FAES;
	  }
	else
	  {
	  CSREPR &= ~FAES;
	  for (i = 0 ; i < len ; i++)
	    {
	    *(pParaBaseByte + i) = FCVAR(byte, GCONFIG_CFG_DATA_FLASH_ADDR + addr + i);
	    }
	  }
	WTST = lastWtst;

	if (0xffff != gconfig_Checksum((uint  *)pConfig, len))
	  {
	  printd("failed! (wrong checksum)\n\r");
	  return FALSE;
	  }
	else if (pConfig->CfgLength != len)
	  {
	  printd("Invalid configuration data!\n\r");
	  return FALSE;
	  }
	printd("pass\n\r");
	return TRUE;
} // End of gconfig_ReStoreParameter() //

//----------------------------------------------------------------------------------------
// Name    : gconfig_StoreParameter
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
static bool gconfig_StoreParameter(GCONFIG_CFG_DATA *pConfigData, uint  len)
{
	byte			ret = FALSE;
	pFlashParaData  ptrFlashWrite = (void code*)0x003F00;

      pConfigData->CheckSum = 0;
      pConfigData->CfgLength = len;
      pConfigData->CheckSum = ~gconfig_Checksum((uint  *)pConfigData, len);
    
	ret = (*ptrFlashWrite)((byte *)pConfigData, len);	
      printd("data saved\n\r");
	if (ret == FALSE)
		printd("Failed to program Configration Data!!\n\r");
	return ret;
} // End of gconfig_StoreParameter() //

//----------------------------------------------------------------------------------------
// Name    : gconfig_Checksum
// Purpose :
// Params  :
// Returns :
// Note    :
//----------------------------------------------------------------------------------------
static uint  gconfig_Checksum(uint  *pBuf, ulong length)
{
	ulong	cksum = 0;
	ulong	i, count;
	byte*	inChar = &pBuf;
	uint *	point;

	count = length/2;

    for (i = 0; i < count; i++)
      {
      point = pBuf;
      cksum += *pBuf++;
      if (point > pBuf)
        (*inChar) = *inChar + 1;

      if (!(i % 0x8000))
        {
        cksum = (cksum >> 16) + (cksum & 0xffff);
        cksum += (cksum >> 16);
        cksum &= 0xffff;
        }
      }
            
    if (length % 2)
      cksum += (*pBuf & 0xff00);

    cksum  = (cksum >> 16) + (cksum & 0xffff);
    cksum += (cksum >> 16);
    cksum &= 0xffff;

    return ((uint)cksum);
} // End of gconfig_Checksum() //

//----------------------------------------------------------------------------------------
// Name    : gconfig_DisplayConfigData
// Purpose : display configuration data in the debug window
// Params  : pointer to configuration packet
// Returns : void
// Note    :
//----------------------------------------------------------------------------------------
static void gconfig_DisplayConfigData(GCONFIG_CFG_DATA *pConfigData)
{
    byte  i, tmp, *pData;
    uint  val;

    if (GS2E_GetTaskState() == GS2E_STATE_IDLE)
      {
      printd("  Device Name           : ");
      for (i = 0; i < 16; i++)
        printd ("%c", pConfigData->DevName.DevName[i]);

      printd("\n\r");
      printd("  MAC Address           : ");
      for (i = 0; i < 6; i++)
        printd ("%02bx ", macAddr.MacAddr[i]);
      printd("\n\r");
      printd("  Network Settings      : ");
      printd ("%04dx\r\n", pConfigData->Network);
      val = pConfigData->Network;
      if (val & GCONFIG_NETWORK_CLIENT)
        printd("    Server/Client       : Client");
      else
        printd("    Server/Client       : Server");
      printd("\n\r");
      if (val & GCONFIG_NETWORK_DHCP_ENABLE)
        printd("    DHCP                : Enabled");
      else
        printd("    DHCP                : Disabled");
      printd("\n\r");
      if (val & GCONFIG_NETWORK_PROTO_UDP)
        printd("    UDP                 : On");
      else
        printd("    UDP                 : Off");
      if (val & GCONFIG_NETWORK_PROTO_TCP)
        printd("          TCP         : On");
      else
        printd("               TCP   : Off");
      printd("\n\r");
      if (val & GCONFIG_NETWORK_PROTO_UDP_BCAST)
        printd("    BroadCast           : On");
      else
        printd("    BroadCast           : Off");
      printd("\n\r");
      printd("  Device Server IP      : ");
      tmp    = 0;
      pData  = (byte *)&pConfigData->ServerStaticIP;
      for (i = 0; i < 3; i++)
        tmp += printd ("%bu.", *(pData + i));
      tmp   += printd ("%bu", *(pData + i));
      tmp    = 17 - tmp;                                                                     // find the number of characters of IP 255.255.255.255(15) plus white space(3) minus the number printed
      if (tmp < 0) tmp = 0;
      for(i  = 0; i < tmp; i++)
        printd(" ");
      printd("Port  : ");
      printd("%du(%04dx)", pConfigData->ServerDataPktListenPort, pConfigData->ServerDataPktListenPort);
      printd("\n\r");
// Client Port Information
      tmp    = 0;
      printd("  Host Server IP        : ");
      pData  = (byte *)&pConfigData->ClientDestIP;
      for (i = 0; i < 3; i++)
        tmp += printd ("%bu.", *(pData + i));
      tmp   += printd ("%bu", *(pData + i));
      tmp    = 17 - tmp;                                                                     // find the number of characters of IP 255.255.255.255(15) plus white space(3) minus the number printed
      if (tmp < 0) tmp = 0;
      for(i  = 0; i < tmp; i++)
        printd(" ");
      printd("Port  : ");
      printd("%du(%04dx)", pConfigData->ClientDestPort, pConfigData->ClientDestPort);
      printd("\n\r");
      }
} // End of gconfig_DisplayConfigData() //

//----------------------------------------------------------------------------------------
// Name    : gconfig_ExDisplayConfigData
// Purpose : display configuration data from external call
// Params  : void
// Returns : void
// Note    : 
//----------------------------------------------------------------------------------------
void gconfig_ExDisplayConfigData(void)//&gconfig_ConfigData
{
      gconfig_DisplayConfigData(&gconfig_ConfigData);                                     // output the configuration data to the debug port
}

//----------------------------------------------------------------------------------------
// Name    : gconfig_InDisplayConfigData
// Purpose : display configuration data from internal call
// Params  : pointer to configuration packet
// Returns : void
// Note    : 
//----------------------------------------------------------------------------------------
void gconfig_InDisplayConfigData(GCONFIG_CFG_DATA *pConfig)//&gconfig_ConfigData
{
      if (GS2E_GetTaskState() == GS2E_STATE_IDLE)
        gconfig_DisplayConfigData(pConfig);                                               // output the configuration data to the debug port
}

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_EnableFirmwareUpgrade
// Purpose : 
// Params  : void
// Returns : void
// Note    : 
//----------------------------------------------------------------------------------------
void GCONFIG_EnableFirmwareUpgrade(void)
{
      FirmwareUpgradeFlag = ENABLE_FIRMWARE_UPGRADE;
} // End of GCONFIG_EnableFirmwareUpgrade() //

void GCONFIG_DisplayLightingTable(void)
{
      word  pnt;

  printd("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\r     |");     //
      for(pnt = 0;pnt < 16;pnt++)
        {
        printd("%4dx ", pnt);
        }
  printd("\n\r      ----------------------------------------------------------------------------------");     //
      for(pnt = 0;pnt < 256;pnt++)
        {
        if((pnt % 16)==0)
          printd("\n\r%4dx : ",(pnt/16));
        printd("%04dx ", gconfig_ConfigData.lt.point[pnt]);
        }
  printd("\n\r");                                                                 //
  printd("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\r     ");     //
  printd("\n\r");
} // End of GCONFIG_SetLightingTable() //

//----------------------------------------------------------------------------------------
// Name    : GCONFIG_WrValuesToLightingTable
// params  :
// params  :
// returns :
// notes   :
//----------------------------------------------------------------------------------------
void GCONFIG_WrValuesToLightingTable(word* pLTable)
{
    memcpy(pLTable, &gconfig_ConfigData.lt, sizeof(GCONFIG_LTG_TABLE));
} // End of GCONFIG_WrValuesToLightingTable() //

//----------------------------------------------------------------------------------------
// name    : GCONFIG_SetLightingTable
// purpose :
// params  :
// returns :
// notes   :
//----------------------------------------------------------------------------------------
void GCONFIG_SetLightingTable(word* pLTable)
{
      memcpy(&gconfig_ConfigData.lt, pLTable, sizeof(GCONFIG_LTG_TABLE));
} // End of GCONFIG_SetLightingTable() //

//----------------------------------------------------------------------------------------
// name    : GCONFIG_DefaultLightingTable
// purpose :
// params  :
// returns :
// notes   :
//----------------------------------------------------------------------------------------
void GCONFIG_DefaultLightingTable(void)
{
      word  pnt;
      word  *wptr;
//                                		    0     1     2     3     4     5     6     7     8     9     A     B     C     D     E     F
word xdata Default_DimCurve[256] = {	0x0000,	0x0040,	0x0080,	0x00C0,	0x0100,	0x0141,	0x0181,	0x01C1,	0x0201,	0x0242,	0x0282,	0x02C2,	0x0302,	0x0343,	0x0383,	0x03C3,   // 0
										0x0403,	0x0444,	0x0484,	0x04C4,	0x0504,	0x0545,	0x0585,	0x05C5,	0x0605,	0x0646,	0x0686,	0x06C6,	0x0706,	0x0747,	0x0787,	0x07C7,   // 1
										0x0807,	0x0848,	0x0888,	0x08C8,	0x0908,	0x0949,	0x0989,	0x09C9,	0x0A09,	0x0A4A,	0x0A8A,	0x0ACA,	0x0B0A,	0x0B4B,	0x0B8B,	0x0BCB,   // 2
										0x0C0B,	0x0C4C,	0x0C8C,	0x0CCC,	0x0D0C,	0x0D4D,	0x0D8D,	0x0DCD,	0x0E0D,	0x0E4E,	0x0E8E,	0x0ECE,	0x0F0E,	0x0F4F,	0x0F8F,	0x0FCF,   // 3
										0x100F,	0x1050,	0x1090,	0x10D0,	0x1110,	0x1151,	0x1191,	0x11D1,	0x1211,	0x1252,	0x1292,	0x12D2,	0x1312,	0x1353,	0x1393,	0x13D3,   // 4
										0x1413,	0x1454,	0x1494,	0x14D4,	0x1514,	0x1555,	0x1595,	0x15D5,	0x1615,	0x1655,	0x1696,	0x16D6,	0x1716,	0x1756,	0x1797,	0x17D7,   // 5
										0x1817,	0x1857,	0x1898,	0x18D8,	0x1918,	0x1958,	0x1999,	0x19D9,	0x1A19,	0x1A59,	0x1A9A,	0x1ADA,	0x1B1A,	0x1B5A,	0x1B9B,	0x1BDB,   // 6
										0x1C1B,	0x1C5B,	0x1C9C,	0x1CDC,	0x1D1C,	0x1D5C,	0x1D9D,	0x1DDD,	0x1E1D,	0x1E5D,	0x1E9E,	0x1EDE,	0x1F1E,	0x1F5E,	0x1F9F,	0x1FDF,   // 7
										0x201F,	0x205F,	0x20A0,	0x20E0,	0x2120,	0x2160,	0x21A1,	0x21E1,	0x2221,	0x2261,	0x22A2,	0x22E2,	0x2322,	0x2362,	0x23A3,	0x23E3,   // 8
										0x2423,	0x2463,	0x24A4,	0x24E4,	0x2524,	0x2564,	0x25A5,	0x25E5,	0x2625,	0x2665,	0x26A6,	0x26E6,	0x2726,	0x2766,	0x27A7,	0x27E7,   // 9
										0x2827,	0x2867,	0x28A8,	0x28E8,	0x2928,	0x2968,	0x29A9,	0x29E9,	0x2A29,	0x2A69,	0x2AAA,	0x2AEA,	0x2B2A,	0x2B6A,	0x2BAA,	0x2BEB,   // A
										0x2C2B,	0x2C6B,	0x2CAB,	0x2CEC,	0x2D2C,	0x2D6C,	0x2DAC,	0x2DED,	0x2E2D,	0x2E6D,	0x2EAD,	0x2EEE,	0x2F2E,	0x2F6E,	0x2FAE,	0x2FEF,   // B
										0x302F,	0x306F,	0x30AF,	0x30F0,	0x3130,	0x3170,	0x31B0,	0x31F1,	0x3231,	0x3271,	0x32B1,	0x32F2,	0x3332,	0x3372,	0x33B2,	0x33F3,   // C
										0x3433,	0x3473,	0x34B3, 0x34F4,	0x3534,	0x3574,	0x35B4,	0x35F5,	0x3635,	0x3675,	0x36B5,	0x36F6,	0x3736,	0x3776,	0x37B6,	0x37F7,   // D
										0x3837,	0x3877,	0x38B7,	0x38F8,	0x3938,	0x3978,	0x39B8,	0x39F9,	0x3A39,	0x3A79,	0x3AB9,	0x3AFA,	0x3B3A,	0x3B7A,	0x3BBA,	0x3BFB,   // E
										0x3C3B,	0x3C7B,	0x3CBB,	0x3CFC,	0x3D3C,	0x3D7C,	0x3DBC,	0x3DFD,	0x3E3D,	0x3E7D,	0x3EBD, 0x3EFE,	0x3F3E,	0x3F7E,	0x3FBE,	0x3FFF};  // F

      //printd("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\r");          //
     // for(pnt = 0;pnt < 16;pnt++) { printd("%3dx ", pnt); }  printd("\n\r");            // print title line 0 - f above values

      for(pnt = 0;pnt < 256;pnt++)
        {
        	gconfig_ConfigData.lt.point[pnt] = Default_DimCurve[pnt];
			//gconfig_ConfigData.lt.point[pnt] = pnt*1;                                      // load the default linear lighting table
        	//if((pnt % 16)==0)           printd("\n\r%2dx : ",(pnt/16));                     //
        	//printd("%03dx ", gconfig_ConfigData.lt.point[pnt]);                             //
        }

      wptr = addresslookup(0);                                                          // get the table address
      GCONFIG_WrValuesToLightingTable(wptr);                                            //

      //printd("\n\r\n\r~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\r");  //
} // End of GCONFIG_SetLightingTable() //

// End of gconfig.c //
