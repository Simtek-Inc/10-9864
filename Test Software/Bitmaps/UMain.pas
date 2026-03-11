unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Menus, IniFiles, Math,
  DXClass, DXDraws, DIB, ExtDlgs, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPClient, ShellAPI, jpeg;

const
  InstNum            = '8655';
  InstRevLevel       = '-';
  lblAddressWWW      = 'www.simtekinc.com';
  lblTestSoftwareCap = ': 10-' + InstNum;
  lblTestSoftwareRev = ':   ' + InstRevLevel;
  lblWARNINGCaption  = 'CAUTION FOR USE IN' +#$0D#$0A+ 'FLIGHT SIMULATOR ONLY';
  InstSec            = '10' + InstNum;
  icTXQue            = 512;
  icRXQue            = 1024;
  GENSec             = 'general';
  InstSecK01         = 'edtIPAddress';
  InstSecK02         = 'edtClientPort';
  InstSecK03         = 'cpdCOMBAUDRATE';
  GenSecK01          = 'TxWinLimit';
  GenSecK02          = 'RxWinLimit';
  GenSecK03          = 'cpdDATABITS';
  GenSecK04          = 'cpdPARITY';
  GenSecK05          = 'cpdSTOPBITS';
//  GenSecK06        = 'cpdHwFlow';
//  GenSecK07        = 'cpdSwFlow';
//  GenSecK08        = 'cpdEnableDTROnOpen';
//  GenSecK09        = 'cpdCheckLineStatus';
//  GenSecK10        = 'cpdInBufSize';
//  GenSecK11        = 'cpdOutBufSize';
// Host Command Setn to the Instrument
  TSCapHeader        = ' Transmit speed = ';

  C0Command          = 'Reset';
  C0Request          = $90; // Reset Request
  C0Requestlength    = 2;
  C0CapHeader        = C0Command + ' Transmit speed = ';
  C0Response         = C0Request;
  C0Responselength   = 0;

  C1Command          = 'Options';
  C1Request          = $91; // Options Change Request
  C1Requestlength    = 3;
  C1CapHeader        = C1Command + ' Transmit speed = ';
  C1Response         = C1Request;
  C1Responselength   = 0;

  C2Command          = 'Firmware';
  C2Request          = $92; // Firmware information
  C2Requestlength    = 2;
  C2CapHeader        = C2Command + ' Transmit speed = ';
  C2DeviceValDefault = ': 7?-???? Rev ?';
  C2Response         = C2Request;
  C2Responselength   = 10;

  C3Command          = 'Displays';
  C3Request          = $A0; // Display Request
  C3Requestlength    = 26;
  C3CapHeader        = C3Command + ' Transmit speed = ';
  C3Response         = C3Request;
  C3Responselength   = 0;

  C4Command          = 'Indicator';
  C4Request          = $A1; // Indicator/Annunciator Change Request
  C4Requestlength    = 3;
  C4CapHeader        = C4Command + ' Transmit speed = ';
  C4Response         = C4Request;
  C4Responselength   = 0;

  C5Command          = 'Dimming';
  C5Request          = $B0; // Dimming Change Request
  C5Requestlength    = 6;
  C5CapHeader        = C5Command + ' Transmit speed = ';
  C5Response         = C5Request;
  C5Responselength   = 0;

  C6Command          = 'Status';
  C6Request          = $D0; // Input Status Request
  C6Requestlength    = 2;
  C6CapHeader        = C6Command + ' Transmit speed = ';
  C6Response         = C6Request;
  C6Responselength   = 6;

//  C7Command          = '';
//  C7Request          = $FE; // spare Change Request
//  C7Requestlength    = 0;
//  C7CapHeader        = C7Command + ' Transmit speed = ';
//  C7Response         = C7Request;
//  C7Responselength   = 0;

//  C8Command          = '';
//  C8Request          = $FF; // spare Change Request
//  C8Requestlength    = 0;
//  C8CapHeader        = C8Command + ' Transmit speed = ';
//  C8Response         = C8Request;
//  C8Responselength   = 0;

  // Descriptive labels to use with routines
  lblDimming1Cap     = 'Display Dimming Level = ';
  lblDimming1Hint    = 'Shows Display Brightness Value';
  lblDimming2Cap     = 'Indicator Dimming Level = ';
  lblDimming2Hint    = 'Shows Indicator Brightness Value';

  clActive           = clBlue;
  clInactive         = clBlack;
//  lblB2b0Cap         = 'BIT byte2 bit0 caption';
//  lblB2b1Cap         = 'BIT byte2 bit1 caption';
//  lblB2b2Cap         = 'BIT byte2 bit2 caption';
//  lblB2b3Cap         = 'BIT byte2 bit3 caption';
//  lblB2b4Cap         = 'BIT byte2 bit4 caption';
//  lblB2b5Cap         = 'BIT byte2 bit5 caption';
//  lblB3b0Cap         = 'BIT byte3 bit0 caption';
//  lblB3b1Cap         = 'BIT byte3 bit1 caption';
//  lblB3b2Cap         = 'BIT byte3 bit2 caption';
//  lblB3b3Cap         = 'BIT byte3 bit3 caption';
//  lblB3b4Cap         = 'BIT byte3 bit4 caption';
//  lblB3b5Cap         = 'BIT byte3 bit5 caption';
//  lblB4b0Cap         = 'BIT byte4 bit0 caption';
//  lblB4b1Cap         = 'BIT byte4 bit1 caption';
//  lblB4b2Cap         = 'BIT byte4 bit2 caption';
//  lblB4b3Cap         = 'BIT byte4 bit3 caption';
//  lblB4b4Cap         = 'BIT byte4 bit4 caption';
//  lblB4b5Cap         = 'BIT byte4 bit5 caption';
//  lblC4P1Cap         = 'Microcontroller Firmware = ';
//  lblC4P2Cap         = 'FPGA Firmware = ';
  lblBxbxValDefault  = ': unknown';

type
 Tx = record
   s    : string;                               //
   ai   : byte;                                 // average update rate index
   ar   : array[0..255] of double;              // average update rate
   us   : double;                               // update speed
   ui   : byte;                                 // update index
   uc   : integer;                              // update rate count
end;

type
  pbyte = ^byte;


type
  TMainForm = class(TDXForm)
    DXTimer1: TDXTimer;
    MainMenu1: TMainMenu;
    StatusBar: TStatusBar;
    pnlStatusLights: TPanel;
    PopupMenu1: TPopupMenu;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    Selectall1: TMenuItem;
    pmClearAll: TMenuItem;
    Print1: TMenuItem;
    IdUDPClient1: TIdUDPClient;
    mTXLight: TShape;
    lblTrxDataLight: TLabel;
    memoTx: TRichEdit;
    lblTransmitted: TLabel;
    tbUpdateRate: TTrackBar;
    lblTransmitRate: TLabel;
    cbxTRXWindowEnable: TCheckBox;
    mRXLight: TShape;
    lblRdxDataLight: TLabel;
    memoRx: TRichEdit;
    lblReceived: TLabel;
    lblRecievedTimeout: TLabel;
    tkbRecieveTimeOut: TTrackBar;
    cbxRDXWindowEnable: TCheckBox;
    mm01: TMenuItem;
    mm01s01: TMenuItem;
    mm02: TMenuItem;
    mm02s01: TMenuItem;
    mm02s02: TMenuItem;
    mm02s03: TMenuItem;
    mm03: TMenuItem;
    mm03s01: TMenuItem;
    mm03s02: TMenuItem;
    mm03s03: TMenuItem;
    mm03s04: TMenuItem;
    mm03s05: TMenuItem;
    mm03s05s02: TMenuItem;
    mm03s05s01: TMenuItem;
    mm03s05s03: TMenuItem;
    mm03s05s04: TMenuItem;
    mm03s05s05: TMenuItem;
    mm03s05s06: TMenuItem;
    mm04: TMenuItem;
    mm05: TMenuItem;
    mm06: TMenuItem;
    mm07: TMenuItem;
    mm08: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;

    PageControl1: TPageControl;
    lblDimming1: TLabel;
    tkbDimming1: TTrackBar;
    cbxDimming1: TCheckBox;
    tkbDimming2: TTrackBar;
    lblDimming2: TLabel;
    cbxDimming2: TCheckBox;
    cbxResponse: TCheckBox;
    lblResponseRequestsTitle1: TLabel;
    lblResponseRequestsTitle2: TLabel;

    lblC1TransmitRate: TLabel;
    tkbC1UpdateRate: TTrackBar;
    lblC2TransmitRate: TLabel;
    tkbC2UpdateRate: TTrackBar;
    lblC3TransmitRate: TLabel;
    tkbC3UpdateRate: TTrackBar;
    lblC4TransmitRate: TLabel;
    tkbC4UpdateRate: TTrackBar;
    tkbC5UpdateRate: TTrackBar;
    lblC5TransmitRate: TLabel;
    tkbC6UpdateRate: TTrackBar;
    lblC6TransmitRate: TLabel;

    cbxGraphicsEnable: TCheckBox;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    lblRequestsSent: TLabel;
    lblResponseRecieved: TLabel;

    mm09: TMenuItem;
    mm10: TMenuItem;
    mm11: TMenuItem;
    mm12: TMenuItem;
    mm13: TMenuItem;
    mm14: TMenuItem;

    pnlDevice: TPanel;

    swSW01: TShape;
    swSW04: TShape;
    lblSW04t: TLabel;
    lblSW04m: TLabel;
    lblSW04b: TLabel;
    swSW04Bat: TShape;
    swSW05: TShape;
    lblSW05t: TLabel;
    lblSW05b: TLabel;
    swSW05Bat: TShape;
    swSW06: TShape;
    lblSW06t: TLabel;
    lblSW06b: TLabel;
    swSW06Bat: TShape;

    shpIndicatorD0: TShape;
    lblIndicatorD0: TLabel;
    shpIndicatorD1: TShape;
    lblIndicatorD1: TLabel;
    shpIndicatorD2: TShape;
    lblIndicatorD2: TLabel;
    lblSW01: TLabel;

    pnlDisplay: TPanel;
    edtDCAmpsX1000: TEdit;
    edtDCAmpsX0100: TEdit;
    edtDCAmpsX0010: TEdit;
    edtDCAmpsX0001: TEdit;
    edtUnlablX1000: TEdit;
    edtUnlablX0100: TEdit;
    edtUnlablX0010: TEdit;
    edtUnlablX0001: TEdit;
    edtCPSFrqX1000: TEdit;
    edtCPSFrqX0100: TEdit;
    edtCPSFrqX0010: TEdit;
    edtCPSFrqX0001: TEdit;
    edtACAmpsX1000: TEdit;
    edtACAmpsX0100: TEdit;
    edtACAmpsX0010: TEdit;
    edtACAmpsX0001: TEdit;
    edtDCVoltsX1000: TEdit;
    edtDCVoltsX0100: TEdit;
    edtDCVoltsX0010: TEdit;
    edtDCVoltsX0001: TEdit;
    edtACVoltsX1000: TEdit;
    edtACVoltsX0100: TEdit;
    edtACVoltsX0010: TEdit;
    edtACVoltsX0001: TEdit;
    lblPanelText01: TLabel;
    lblPanelText02: TLabel;
    lblPanelText03: TLabel;
    lblPanelText04: TLabel;
    lblPanelText05: TLabel;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;

    lblScrollRate: TLabel;
    lblTestSoftwarePNValue: TLabel;
    lblIPAddress: TLabel;
    lblReceivePort: TLabel;
    lblFirmwareTitle1: TLabel;
    lblFirmwareTitle2: TLabel;
    lblFirmwareValue1: TLabel;
    lblFirmwareValue2: TLabel;
    lblWARNING: TLabel;
    lblTestSoftwarePNTile: TLabel;
    lblTestSoftwareRevValue: TLabel;
    lblTestSoftwareRevTile: TLabel;
    imgSimtekLogo: TImage;
    edtIPAddress: TEdit;
    edtClientPort: TEdit;
    pnlDividerBar05: TPanel;
    pnlDividerBar03: TPanel;
    pnlDividerBar01: TPanel;
    pnlDividerBar02: TPanel;
    pnlDividerBar04: TPanel;
    tkbScrollRate: TTrackBar;
    memoRevision: TMemo;
    swSW02:  TShape;
    swSW03:  TShape;
    swSW02h: TLabel;
    swSW02d: TLabel;
    swSW02f: TLabel;
    swSW02b: TLabel;
    swSW02c: TLabel;
    swSW02e: TLabel;
    swSW02a: TLabel;
    swSW02g: TLabel;
    swSW03d: TLabel;
    swSW03b: TLabel;
    swSW03f: TLabel;
    swSW03a: TLabel;
    swSW03e: TLabel;
    swSW03c: TLabel;
    swSW03g: TLabel;
    lblPanelText06: TLabel;
    lblPanelText09: TLabel;
    lblPanelText07: TLabel;
    lblPanelText08: TLabel;
    swSW02Index: TShape;
    swSW03Index: TShape;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure PopupMenu1Popup(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Selectall1Click(Sender: TObject);
    procedure pmClearAllClick(Sender: TObject);
    procedure Print1Click(Sender: TObject);

    procedure DXTimer1Timer(Sender: TObject; LagCount: Integer);
//    procedure UserImageFinalize(Sender: TObject);
//    procedure UserImageInitialize(Sender: TObject);
//    procedure UserImageMouseDown(Sender: TObject; Button: TMouseButton;
//      Shift: TShiftState; X, Y: Integer);

    procedure memoTxChange(Sender: TObject);
    procedure memoRxChange(Sender: TObject);
    procedure memoTxKeyPress(Sender: TObject; var Key: char);
    procedure memoRxKeyPress(Sender: TObject; var Key: char);

    procedure tbUpdateRateChange(Sender: TObject);
    procedure lblFirmwareTitle1Click(Sender: TObject);
    procedure edtClientPortKeyPress(Sender: TObject; var Key: char);
    procedure edtIPAddressKeyPress(Sender: TObject; var Key: char);
    procedure tkbScrollRateChange(Sender: TObject);
    procedure cbxResponseClick(Sender: TObject);

    procedure tkbDimming1Change(Sender: TObject);
    procedure tkbDimming2Change(Sender: TObject);
    procedure tkbRecieveTimeOutChange(Sender: TObject);

    procedure mm01s01Click(Sender: TObject);
    procedure mm02s01Click(Sender: TObject);
    procedure mm03s01Click(Sender: TObject);
    procedure mm02s03Click(Sender: TObject);
    procedure mm03s03Click(Sender: TObject);
    procedure mm03s05s00Click(Sender: TObject);
    procedure mm04Click(Sender: TObject);
    procedure mm05Click(Sender: TObject);
    procedure mm06Click(Sender: TObject);
    procedure mm07Click(Sender: TObject);
    procedure mm08Click(Sender: TObject);
    procedure memoRevisionEnter(Sender: TObject);
    procedure memoRevisionMouseLeave(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure imgSimtekLogoClick(Sender: TObject);
    procedure shpIndicatorD0MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure swSW02MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtDCAmpsX1000Change(Sender: TObject);
    procedure edtDCAmpsX1000Click(Sender: TObject);
    procedure memoRevisionExit(Sender: TObject);
    procedure mm09Click(Sender: TObject);
    procedure mm10Click(Sender: TObject);
    procedure mm11Click(Sender: TObject);
    procedure mm12Click(Sender: TObject);
    procedure tkbC1UpdateRateChange(Sender: TObject);
    procedure tkbC2UpdateRateChange(Sender: TObject);
    procedure mm02s02Click(Sender: TObject);
    procedure tkbC3UpdateRateChange(Sender: TObject);
    procedure tkbC4UpdateRateChange(Sender: TObject);
    procedure tkbC5UpdateRateChange(Sender: TObject);
    procedure tkbC6UpdateRateChange(Sender: TObject);
    procedure swSW04MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure setPushbuttonSw(pb: TObject);
    procedure setToggleSwitch(pos, bat, lblT, lblM, lblB: TObject;chg : byte);
    procedure setRotarySwitch(bd,ix,lbl0,lbl1,lbl2,lbl3,lbl4,lbl5,lbl6,lbl7: TObject;stp: byte);
    procedure paintIndicator(pl: byte; Showing: TObject);
    procedure paintGUI;
    procedure decodeRecievedData(s : string);
    function  encodeCommandData(CommandByte : byte) : string;
    function  buildMainCaption : string;
    function  calculateRate(ct : double;g : Tx;rc : boolean;l : TObject;t : TObject;s : string):Tx;
    function  calculateChecksum(ptrCK: pbyte; cnt:byte):byte;
    procedure calculateRotaryIndexPos(rot, indx: TObject;stops: integer);
    procedure cpOutputData(s : string; rc : boolean);

    procedure wrMemoWindow(show,memo,lbl :TObject; Limit,Place : integer;head,cap,s : string);

    procedure responseReset;
    procedure responseStatus(ptrCK: pbyte);
    procedure responseFirmware(s : string);

  public
//    procedure DisplayHint1(Sender: TObject);
    procedure setColorCOMLightTX(SetColor : TColor;i : integer);
    procedure setColorCOMLightRX(SetColor : TColor;i : integer);
    procedure TrafficLightsOff;
  end;

var
  MainForm                 : TMainForm;
  hWind                    : THandle;
// Variables to control Software functions
  dScrollValue             : byte    = 0;
  ScrollCount              : integer = 0;
  TXCount                  : byte    = 1; {define and initilize Counter}
  RXCount                  : byte    = 1; {define and initilize Counter}
  sWidth                   : integer = 1024;
// Software control variables
  RxWinLimit               : integer = 0;
  RxPlace                  : integer = 0;
  TxWinLimit               : integer = 0;
  TxPlace                  : integer = 0;
// Device Output control variables
  fImageRedraw             : boolean;

  ActiveDigit              : cardinal = 0;
  C0RequestData            : array[0..C0Requestlength] of byte; // reset
  C1RequestData            : array[0..C1Requestlength] of byte; // options
  C2RequestData            : array[0..C2Requestlength] of byte; // program revision
  C3RequestData            : array[0..C3Requestlength] of byte; // display
  C4RequestData            : array[0..C4Requestlength] of byte; // indicator
  C5RequestData            : array[0..C5Requestlength] of byte; // dimmimg
  C6RequestData            : array[0..C6Requestlength] of byte; // status
//  C7RequestData            : array[0..C7Requestlength] of byte; //
//  C8RequestData            : array[0..C8Requestlength] of byte;

//  C0ResponseData           : array[0..C0Responselength] of byte; // reset
//  C1ResponseData           : array[0..C1Responselength] of byte; // options
  C2ResponseData           : array[0..C2Responselength] of byte; // program revision
//  C3ResponseData           : array[0..C3Responselength] of byte; // display
//  C4ResponseData           : array[0..C4Responselength] of byte; // indicator
//  C5ResponseData           : array[0..C5Responselength] of byte; // dimming
  C6ResponseData           : array[0..C6Responselength] of byte; // status
//  C7ResponseData           : array[0..C7Responselength] of byte; //
//  C8ResponseData           : array[0..C8Responselength] of byte;
// Host to Instrument request Action Flags
  fC0Request               : boolean  = False; // reset
  fC1Request               : boolean  = False; // options
  fC2Request               : boolean  = False; // program revision
  fC3Request               : boolean  = False; // display
  fC4Request               : boolean  = false; // indicator
  fC5Request               : boolean  = false; // dimming
  fC6Request               : boolean  = false; // status
//  fC7Request               : boolean  = false; //
//  fC8Request               : boolean  = false; //
  fScrollReq               : boolean  = False; // scroll change flag
  fgeneric                 : boolean  = False;

// Device Input control variables
  swMode                   : byte     = 1;
  swPreset                 : byte     = 1;

// Device BIT control variables
  fPTInputStatus           : boolean  = False;
  fCTInputStatus           : boolean  = False;
  fRKInputStatus           : boolean  = False;
  fOFLInputStatus          : boolean  = False;
  fEBInputStaus            : boolean  = False;
  fZALLInputStatus         : boolean  = False;
  fPresetPWROFFInputStatus : boolean  = False;
  fPresetMANInputStatus    : boolean  = False;
  fPreset1InputStatus      : boolean  = False;
  fPreset2InputStatus      : boolean  = False;
  fPreset3InputStatus      : boolean  = False;
  fPreset4InputStatus      : boolean  = False;
  fPreset5InputStatus      : boolean  = False;
  fPreset6InputStatus      : boolean  = False;
  fPresetREMInputStatus    : boolean  = False;
  fINITInputStatus         : boolean  = False;
  fRightArrowInputStatus   : boolean  = False;
  fUpArrowInputStatus      : boolean  = False;
  fBRTDSPLA2DInputStatus   : boolean  = False;
  fBRTPNLA2DInputStatus    : boolean  = False;
  fMemoryStatus            : boolean  = False;
// Display Dimming Variables
  tkbDimming2Old           : integer;
  tkbDimming1Old           : integer;
//tkbDimming3Old           : integer;
//flgDimming3Old           : boolean  = False;
// Debug Variables
  NumberOfRequests         : cardinal = 0;
  UserImageSelected        : boolean  = True;
  NumberOfResponse         : cardinal = 0;
  gRate                    : Tx;
  gRateC1                  : Tx; // StatusRequest      = $F1;
  gRateC2                  : Tx; // DisplayRequest     = $F2;
  gRateC3                  : Tx; // DimmingRequest     = $F3;
  gRateC4                  : Tx; // FirmwareRequest    = $F4;
  gRateC5                  : Tx; // FirmwareRequest    = $F4;
  gRateC6                  : Tx; // FirmwareRequest    = $F4;
  BurstFileName            : string = 'BurstFile.txt';
  BurstFileContents        : TStringlist = nil;
  //bit to reset procedures
  resetbit                  : boolean;               //


implementation

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
var SimtekIni : TIniFile;
    tmp : integer;
begin
  SimtekIni := TIniFile.Create('C:\Simtek.Ini');
  With SimtekIni do
    begin
      // load the limit for the transmit and recieve windows
    TxWinLimit         := ReadInteger(GENSec,  GenSecK01,  250);      //
    RxWinLimit         := ReadInteger(GENSec,  GenSecK02,  250);      //
    edtIPAddress.Text  := ReadString(InstSec,  InstSecK01, '192.168.136.90'); // {Set the default flags for startup          }
    edtClientPort.Text := ReadString(InstSec,  InstSecK02, '51020');          //{Set the default flags for startup          }
    IdUDPClient1.Port  := StrToInt(edtClientPort.Text);
    end;
  SimtekIni.Free;
  TxPlace   := 1;
  tmp       := TxWinLimit;
  while tmp > 10 do
    begin
    tmp     := tmp div 10;
    TxPlace := TxPlace + 1;
    end;
  tmp       := RxWinLimit;
  while tmp > 10 do
    begin
    tmp     := tmp div 10;
    RxPlace := RxPlace + 1;
    end;
  {---------------- ATTENTION ----------------------------------------------}
  { initialize your variables here. DO NOT place them after the Port1click  }
  { Routine as the communications events will be active and you may get an  }
  { invalid value if your variables are not initialized prior to starting   }
  { the communications events                                               }
  {--------------- ATTENTION ^ READ IT -------------------------------------}
  responseReset;
  fImageRedraw                    := True;
  DXTimer1.Enabled                := True;
end;

procedure TMainForm.imgSimtekLogoClick(Sender: TObject);
var url : string;
begin
  url := lblAddressWWW;
  ShellExecute(self.WindowHandle,'open',PChar(url),nil,nil, SW_SHOWNORMAL);
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;                                     //
end;

function TMainForm.buildMainCaption: string;
var s  : string;
begin
  s := 'Test Software ' + lblTestSoftwareCap + '   IP = ' + edtIPAddress.Text + '   Device Port = ' + edtClientPort.Text;
  Result := s;
end;

function TMainForm.encodeCommandData(CommandByte: byte): string;
var
   s       : string;
   tmp     : integer;
   cs      : byte;

   DPtr    : pbyte;
begin
  s := '';
  case CommandByte of
//  C0Command          = 'Reset';      C0Request          = $90; // Reset Request
//  C1Command          = 'Options';    C1Request          = $91; // Options Change Request
//  C2Command          = 'Firmware';   C2Request          = $92; // Firmware information
//  C3Command          = 'Displays';   C3Request          = $A0; // Display Request
//  C4Command          = 'Indicator';  C4Request          = $A1; // Indicator/Annunciator Change Request
//  C5Command          = 'Dimming';    C5Request          = $B0; // Dimming Change Request
//  C6Command          = 'Status';     C6Request          = $D0; // Input Status Request
    C0Request  : begin               // reset
      C0RequestData[1] := CommandByte;
      s        := chr(C0RequestData[1]);
      DPtr     := Addr(C0RequestData[1]);
      cs       := calculateChecksum(DPtr, C0Requestlength);
      s        := s + chr(cs);
      inc(NumberOfRequests);
      end;
    C1Request  : begin               // options
      C1RequestData[1] := CommandByte;
      s        := chr(C1RequestData[1]);
      s        := s + Chr(C1RequestData[2]);      // 02
      DPtr     := Addr(C1RequestData[1]);
      cs       := calculateChecksum(DPtr, C1Requestlength);
      s        := s + chr(cs);
      inc(NumberOfRequests);
      end;
    C2Request  : begin               // firmware
      C2RequestData[1] := CommandByte;
      s        := chr(C2RequestData[1]);  // 01
      DPtr     := Addr(C2RequestData[1]);
      cs       := calculateChecksum(DPtr, C2Requestlength);
      s        := s + chr(cs);
      inc(NumberOfRequests);
    end;
    C3Request  : begin                // display
      C3RequestData[1]  := CommandByte;
//      C3RequestData[2]  := edtDCAmpsX1000.Tag;
//      C3RequestData[3]  := edtDCAmpsX0100.Tag;
//      C3RequestData[4]  := edtDCAmpsX0010.Tag;
//      C3RequestData[5]  := edtDCAmpsX0001.Tag;
//      C3RequestData[6]  := edtUnlablX1000.Tag;
//      C3RequestData[7]  := edtUnlablX0100.Tag;
//      C3RequestData[8]  := edtUnlablX0010.Tag;
//      C3RequestData[9]  := edtUnlablX0001.Tag;
//      C3RequestData[10] := edtCPSFrqX1000.Tag;
//      C3RequestData[11] := edtCPSFrqX0100.Tag;
//      C3RequestData[12] := edtCPSFrqX0010.Tag;
//      C3RequestData[13] := edtCPSFrqX0001.Tag;
//      C3RequestData[14] := edtDCVoltsX1000.Tag;
//      C3RequestData[15] := edtDCVoltsX0100.Tag;
//      C3RequestData[16] := edtDCVoltsX0010.Tag;
//      C3RequestData[17] := edtDCVoltsX0001.Tag;
//      C3RequestData[18] := edtACAmpsX1000.Tag;
//      C3RequestData[19] := edtACAmpsX0100.Tag;
//      C3RequestData[20] := edtACAmpsX0010.Tag;
//      C3RequestData[21] := edtACAmpsX0001.Tag;
//      C3RequestData[22] := edtACVoltsX1000.Tag;
//      C3RequestData[23] := edtACVoltsX0100.Tag;
//      C3RequestData[24] := edtACVoltsX0010.Tag;
//      C3RequestData[25] := edtACVoltsX0001.Tag;
      s        := s + Chr(C3RequestData[1]);      // 01
      s        := s + Chr(C3RequestData[2]);      // 02
      s        := s + Chr(C3RequestData[3]);      // 03
      s        := s + Chr(C3RequestData[4]);      // 04
      s        := s + Chr(C3RequestData[5]);      // 05
      s        := s + Chr(C3RequestData[6]);      // 06
      s        := s + Chr(C3RequestData[7]);      // 07
      s        := s + Chr(C3RequestData[8]);      // 08
      s        := s + Chr(C3RequestData[9]);      // 09
      s        := s + Chr(C3RequestData[10]);     // 10
      s        := s + Chr(C3RequestData[11]);     // 11
      s        := s + Chr(C3RequestData[12]);     // 12
      s        := s + Chr(C3RequestData[13]);     // 13
      s        := s + Chr(C3RequestData[14]);     // 14
      s        := s + Chr(C3RequestData[15]);     // 15
      s        := s + Chr(C3RequestData[16]);     // 16
      s        := s + Chr(C3RequestData[17]);     // 17
      s        := s + Chr(C3RequestData[18]);     // 18
      s        := s + Chr(C3RequestData[19]);     // 19
      s        := s + Chr(C3RequestData[20]);     // 20
      s        := s + Chr(C3RequestData[21]);     // 21
      s        := s + Chr(C3RequestData[22]);     // 22
      s        := s + Chr(C3RequestData[23]);     // 23
      s        := s + Chr(C3RequestData[24]);     // 24
      s        := s + Chr(C3RequestData[25]);     // 25
      DPtr     := Addr(C3RequestData[1]);
      cs       := calculateChecksum(DPtr, C3Requestlength);
      s        := s + chr(cs);
      end;
    C4Request : begin                 // Indicator
//    C4RequestData[2] := iNDICATORS;
      C4RequestData[1] := CommandByte;
      s        := chr(C4RequestData[1]);       // 01
      s        := s + chr(C4RequestData[2]);   // 02
      DPtr     := Addr(C4RequestData[1]);
      cs       := calculateChecksum(DPtr, C4Requestlength);
      s        := s + chr(cs);                 // 03
      inc(NumberOfRequests);
      end;
    C5Request  : begin               // dimming
      C5RequestData[1] := CommandByte;
      s        := chr(C5RequestData[1]);   // 01
      tmp      := tkbDimming1.Position;
      s        := s + chr( tmp and $000F);
      s        := s + chr((tmp shr 4) and $000F);
      tmp      := tkbDimming2.Position;
      s        := s + chr( tmp and $000F);
      s        := s + chr((tmp shr 4) and $000F);
      DPtr     := Addr(C5RequestData[1]);
      cs       := calculateChecksum(DPtr, C5Requestlength);
      s        := s + chr(cs);
      inc(NumberOfRequests);
      end;
    C6Request : begin               // status
      s        := chr(CommandByte);   // 01
      DPtr     := Addr(C6RequestData[1]);
      cs       := calculateChecksum(DPtr, C6Requestlength);
      s        := s + chr(cs);
      inc(NumberOfRequests);
      end;
    else begin
      s   := chr(CommandByte);
    end;
  end;
  TXCount := 30;
  Result  := s;
end;

procedure TMainForm.setColorCOMLightRX(SetColor: TColor;i : integer);
begin
  if i > 1 then Dec(i);
  if i = 1 then
    begin
    mRXLight.Brush.Color := SetColor;                       // change the comm transmit light to active
    end;
end;

procedure TMainForm.setColorCOMLightTX(SetColor: TColor;i : integer);
begin
  if i > 1 then Dec(i);
  if i = 1 then
    begin
    TXCount := 0;
    mTXLight.Brush.Color := SetColor;                         // change the comm transmit light to active
    end;
end;

procedure TMainForm.setPushbuttonSw(pb: TObject);
begin
  case TShape(pb).Tag of
    $04 : TShape(pb).Brush.Color := clActive;
    else  TShape(pb).Brush.Color := clInactive;
  end;
end;

procedure TMainForm.setToggleSwitch(pos, bat, lblT, lblM, lblB: TObject;chg : byte);
begin
  TLabel(lblT).Font.Color := clInactive;
  if lblM <> nil then TLabel(lblM).Font.Color := clInactive;
  TLabel(lblB).Font.Color := clInactive;
  with TShape(bat) do
    begin
    if resetbit then TShape(pos).Tag := 0;
    case TShape(pos).Tag of
      $01 : begin TLabel(lblT).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag - chg;         end;              // $01 = position 1
      $02 : begin TLabel(lblB).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag + chg;         end;              // $02 = position 2 ... so on
      $04 : begin TLabel(lblT).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag - chg;         end;              // the hex value comes from the ICD
      $08 : begin TLabel(lblB).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag + chg;         end;
      $10 : begin TLabel(lblT).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag - chg;         end;
      $20 : begin TLabel(lblB).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag + chg;         end;
      $40 : begin TLabel(lblT).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag - chg;         end;
      $80 : begin TLabel(lblB).Font.Color := clActive;   TShape(bat).Top := TShape(bat).Tag + chg;         end;
      else  begin TLabel(lblT).Font.Color := clInactive; TShape(bat).Top := TShape(bat).Tag;               end;
      end;//case
    end;//with
end;

procedure TMainForm.setRotarySwitch(bd,ix,lbl0,lbl1,lbl2,lbl3,lbl4,lbl5,lbl6,lbl7: TObject;stp: byte);
begin
  calculateRotaryIndexPos(bd,ix,stp);// sw body shape, sw index shape, num of sw positions
  TLabel(lbl0).Font.Color := clInactive;
  TLabel(lbl1).Font.Color := clInactive;
  TLabel(lbl2).Font.Color := clInactive;
  TLabel(lbl3).Font.Color := clInactive;
  TLabel(lbl4).Font.Color := clInactive;
  TLabel(lbl5).Font.Color := clInactive;
  TLabel(lbl6).Font.Color := clInactive;
  if lbl7 <> nil then TLabel(lbl7).Font.Color := clInactive;
  case TShape(bd).Tag of
    $01 :   TLabel(lbl0).Font.Color := clActive;
    $02 :   TLabel(lbl1).Font.Color := clActive;
    $04 :   TLabel(lbl2).Font.Color := clActive;
    $08 :   TLabel(lbl3).Font.Color := clActive;
    $10 :   TLabel(lbl4).Font.Color := clActive;
    $20 :   TLabel(lbl5).Font.Color := clActive;
    $40 :   TLabel(lbl6).Font.Color := clActive;
    $80 :   if lbl7 <> nil then TLabel(lbl7).Font.Color := clActive;
  end;
  if resetbit then Tag := 0;
end;

procedure TMainForm.shpIndicatorD0MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if((C4RequestData[2] and TLabel(Sender).Tag) = TLabel(Sender).Tag)then
    C4RequestData[2] := C4RequestData[2] and (not TLabel(Sender).Tag)
  else
    C4RequestData[2] := C4RequestData[2] or TLabel(Sender).Tag;
  fC4Request := True;
  fImageRedraw := True;
end;

procedure TMainForm.swSW02MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var pos  : integer;
begin
  pos := swSW02.Tag shl 1;
  if(pos > $80)then pos := 1;
  swSW02.Tag := pos;
  if(pos < $80)then swSW03.Tag := pos;
  swSW02Index.Visible := True;
  swSW03Index.Visible := True;
  fImageRedraw := True;
end;

procedure TMainForm.swSW04MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin
  i :=   TShape(Sender).Tag + 1;
  if i = 3 then i := 0;
  TShape(Sender).Tag := i;
  fImageRedraw := True;
end;

procedure TMainForm.TrafficLightsOff;
begin
  setColorCOMLightTX(clBtnFace,1);                             // change the comm recieve light to inactive
  setColorCOMLightRX(clBtnFace,1);                             // change the comm recieve light to inactive
end;

procedure TMainForm.wrMemoWindow(show,memo,lbl :TObject; limit,place : integer;head,cap,s : string);
var lsLineNum : string;
    i         : integer;
    cnt       : byte;
    SMsg      : string;
begin
  if TCheckBox(show).Checked then
    begin
    cnt := length(s);
    SMsg  := '';
    for i := 1 to cnt do {Loop through the buffer and}
      SMsg  := SMsg + IntToHex(ord(s[i]),2)+' '; {Convert the bytes to a pascal string}

    if TRichEdit(memo).Lines.Count >= limit then TRichEdit(memo).Clear;
    lsLineNum := head + IntToStr(TRichEdit(memo).Lines.Count) + ' -> ';

    While length(lsLineNum) < (place + 7) do
      Insert('0',lsLineNum,4);

    TRichEdit(memo).Lines.Add(lsLineNum + SMsg);          {then store them in the RX Window }
    TLabel(lbl).Caption := cap + IntToStr(TRichEdit(memo).Lines.Count);
    end;
end;

procedure TMainForm.memoRxChange(Sender: TObject);
begin
  lblReceived.Caption := 'Lines Received : ' + IntToStr(memoRx.lines.count);
end;

procedure TMainForm.memoRxKeyPress(Sender: TObject; var Key: char);
var UserrecieveString,CharacterCreationString,StringToRecieve : string;
    CharacterPointer,CharacterToRecieve,Stringlength,BadCharPos : byte;
begin
  case Key of
    '0'..'9':;
    'A'..'F':;
    'a'..'f':;
    #8 :;
    #13:begin
        UserrecieveString := memoRx.Lines.Strings[memoRx.Lines.Count-1];
        memoRx.Lines.Delete(memoRx.Lines.Count-1);
        BadCharPos := pos('>',UserrecieveString);
        if BadCharPos <> 0 then
          begin
          memoRx.Lines.Add(UserrecieveString);
          Delete(UserrecieveString,1,BadCharPos+1);
          end;
        While pos(' ',UserrecieveString) <> 0 do
          begin
          BadCharPos := pos(' ',UserrecieveString);
          Delete(UserrecieveString,BadCharPos,1);
          end;//while
        Stringlength := length(UserrecieveString);
        CharacterPointer := 1;
        StringToRecieve := '';
        While CharacterPointer <= Stringlength do
          begin
          CharacterCreationString := '$' + UserrecieveString[CharacterPointer] + UserrecieveString[CharacterPointer+1];
          CharacterToRecieve := StrToInt(CharacterCreationString);
          StringToRecieve := StringToRecieve + Chr(CharacterToRecieve);
          CharacterPointer := CharacterPointer + 2;
          end;
        if StringToRecieve <> '' then decodeRecievedData(StringToRecieve);
        Key := #00;
        end;
    else Key := #00;
  end;//case
end;

procedure TMainForm.memoTxChange(Sender: TObject);
begin
  lblTransmitted.Caption := 'Lines Transmitted : ' + IntToStr(memoTx.lines.count);
end;

procedure TMainForm.memoTxKeyPress(Sender: TObject; var Key: char);
var UserTransmitString,CharacterCreationString,StringToTransmit : string;
    CharacterPointer,CharacterToTransmit,Stringlength,BadCharPos : byte;
begin
 case Key of
  '0'..'9':;
  'A'..'F':;
  'a'..'f':;
  #8:;
  #13:begin
      UserTransmitString := memoTx.Lines.Strings[memoTx.Lines.Count-1];
      memoTx.Lines.Delete(memoTx.Lines.Count-1);
      BadCharPos := pos('>',UserTransmitString);
      if BadCharPos <> 0 then
       begin
       memoTx.Lines.Add(UserTransmitString);
       Delete(UserTransmitString,1,BadCharPos+1);
       end;
      While pos(' ',UserTransmitString) <> 0 do
       begin
       BadCharPos := pos(' ',UserTransmitString);
       Delete(UserTransmitString,BadCharPos,1);
       end;//while
      Stringlength := length(UserTransmitString);
      CharacterPointer := 1;
      StringToTransmit := '';
      While CharacterPointer <= Stringlength do
       begin
       CharacterCreationString := '$' + UserTransmitString[CharacterPointer] + UserTransmitString[CharacterPointer+1];
       CharacterToTransmit := StrToInt(CharacterCreationString);
       StringToTransmit := StringToTransmit + Chr(CharacterToTransmit);
       CharacterPointer := CharacterPointer + 2;
       end;
      if StringToTransmit <> '' then cpOutputData(StringToTransmit, False);
      if cbxResponse.Checked then
        begin
        inc(NumberOfRequests);
        end;
      Key := #00;
      end;
  else Key := #00;
  end;//case
end;

procedure TMainForm.cpOutputData(s: string; rc: boolean);
var
   i         : integer;
   count     : byte;
   SMsg      : string;
   lsLineNum : string;
begin
  if s <> '' then                                                       //
    begin
    IdUDPClient1.Host := edtIPAddress.Text;                             //
    IdUDPClient1.Send(s);                                               //
//    TXCount := 30;                                                      //
    setColorCOMLightTX(clLime,1);                                       //
    end;
  wrMemoWindow(cbxTRXWindowEnable,memoTx,lblTransmitted,TxWinLimit,TxPlace,'TX ','Lines Transmitted : ',s);
end;

procedure TMainForm.tkbC1UpdateRateChange(Sender: TObject);
begin
  lblC1TransmitRate.Caption := IntToStr(tkbC1UpdateRate.Position);
  fImageRedraw := True;
end;

procedure TMainForm.tkbC2UpdateRateChange(Sender: TObject);
begin
  lblC2TransmitRate.Caption := IntToStr(tkbC2UpdateRate.Position);
  fImageRedraw := True;
end;

procedure TMainForm.tkbC3UpdateRateChange(Sender: TObject);
begin
  lblC3TransmitRate.Caption := IntToStr(tkbC3UpdateRate.Position);
  fImageRedraw := True;
end;

procedure TMainForm.tkbC4UpdateRateChange(Sender: TObject);
begin
  lblC4TransmitRate.Caption := IntToStr(tkbC4UpdateRate.Position);
  fImageRedraw := True;
end;

procedure TMainForm.tkbC5UpdateRateChange(Sender: TObject);
begin
  lblC5TransmitRate.Caption := IntToStr(tkbC5UpdateRate.Position);
  fImageRedraw := True;
end;

procedure TMainForm.tkbC6UpdateRateChange(Sender: TObject);
begin
  lblC6TransmitRate.Caption := IntToStr(tkbC6UpdateRate.Position);
  fImageRedraw := True;
end;

procedure TMainForm.tkbDimming1Change(Sender: TObject);
begin
  if tkbDimming1.Position <> tkbDimming1Old then
    begin
    tkbDimming1Old      := tkbDimming1.Position;
    lblDimming1.Caption := lblDimming1Cap + IntToStr(tkbDimming1Old);
    if not cbxDimming1.Checked then fC5Request := True;
    end;
end;

procedure TMainForm.tkbDimming2Change(Sender: TObject);
begin
  if tkbDimming2.Position <> tkbDimming2Old then
    begin
    tkbDimming2Old      := tkbDimming2.Position;
    lblDimming2.Caption := lblDimming2Cap + IntToStr(tkbDimming2Old);
    if not cbxDimming2.Checked then fC5Request := True;
    end;
end;

procedure TMainForm.tkbRecieveTimeOutChange(Sender: TObject);
begin
  lblRecievedTimeout.Caption := 'Recieve Timeout = ' + IntToStr(tkbRecieveTimeOut.Position);
end;

procedure TMainForm.tkbScrollRateChange(Sender: TObject);
begin
 if tkbScrollRate.Position < tbUpdateRate.Position then
   tbUpdateRate.Position := tkbScrollRate.Position;
 lblScrollRate.caption   := 'Scroll Rate Value: ' + InttoStr(tkbScrollRate.Position);
end;

procedure TMainForm.Cut1Click(Sender: TObject);
begin
  with TRichEdit(Sender) do
   begin
    Try
      CutToClipBoard;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.Copy1Click(Sender: TObject);
begin
  with TRichEdit(Sender) do
   begin
    Try
      CopyToClipboard;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.Paste1Click(Sender: TObject);
begin
  with TRichEdit(Sender) do
   begin
    Try
      PasteFromClipboard;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.Delete1Click(Sender: TObject);
begin
  with TRichEdit(Sender) do
   begin
    Try
      ClearSelection;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.Selectall1Click(Sender: TObject);
begin
  with TRichEdit(Sender) do
   begin
    Try
      SelectAll;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.pmClearAllClick(Sender: TObject);
begin
  with TRichEdit(Sender) do
   begin
    Try
      Clear;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.Print1Click(Sender: TObject);
var s : string;
begin
  with TRichEdit(Sender) do
   begin
    Try
      s                           := Name;
      Print(s + ' Contents');
    Except
      on EInOutError do
        begin
        MessageDlg('Error Printing Text',mtError,[mbOk],0);
        Beep;
        end;
    End;
   end;
end;

procedure TMainForm.cbxResponseClick(Sender: TObject);
begin
  lblResponseRequestsTitle1.Visible := cbxResponse.Checked;
  lblRequestsSent.Visible           := cbxResponse.Checked;
  lblResponseRequestsTitle2.Visible := cbxResponse.Checked;
  lblResponseRecieved.Visible       := cbxResponse.Checked;
  lblRecievedTimeout.Visible        := cbxResponse.Checked;
  tkbRecieveTimeOut.Visible         := cbxResponse.Checked;
  N1.Visible                        := cbxResponse.Checked;
  mm02s03.Visible                   := cbxResponse.Checked;
  NumberOfRequests                  :=   0;
  NumberOfResponse                  :=   0;
end;

procedure TMainForm.ScrollBar2Change(Sender: TObject);
//r ofset : integer;
begin
    lblTransmitRate.Top           :=  10 - ScrollBar2.Position;
    tbUpdateRate.Top              :=  22 - ScrollBar2.Position;
    tkbC1UpdateRate.Top           :=  64 - ScrollBar2.Position;
    lblC1TransmitRate.Top         :=  52 - ScrollBar2.Position;
    lblC2TransmitRate.Top         :=  94 - ScrollBar2.Position;
    tkbC2UpdateRate.Top           := 106 - ScrollBar2.Position;
    lblC3TransmitRate.Top         := 136 - ScrollBar2.Position;
    tkbC3UpdateRate.Top           := 148 - ScrollBar2.Position;
    lblC4TransmitRate.Top         := 178 - ScrollBar2.Position;
    tkbC4UpdateRate.Top           := 190 - ScrollBar2.Position;
    lblC5TransmitRate.Top         := 220 - ScrollBar2.Position;
    tkbC5UpdateRate.Top           := 232 - ScrollBar2.Position;
    lblC6TransmitRate.Top         := 262 - ScrollBar2.Position;
    tkbC6UpdateRate.Top           := 270 - ScrollBar2.Position;
    cbxTRXWindowEnable.Top        := 310 - ScrollBar2.Position;
    cbxRDXWindowEnable.Top        := 330 - ScrollBar2.Position;
    cbxGraphicsEnable.Top         := 350 - ScrollBar2.Position;
    cbxResponse.Top               := 370 - ScrollBar2.Position;
    lblResponseRequestsTitle1.Top := 390 - ScrollBar2.Position;
    lblRequestsSent.Top           := 390 - ScrollBar2.Position;
    lblResponseRequestsTitle2.Top := 410 - ScrollBar2.Position;
    lblResponseRecieved.Top       := 410 - ScrollBar2.Position;
    lblRecievedTimeout.Top        := 430 - ScrollBar2.Position;
    tkbRecieveTimeOut.Top         := 430 - ScrollBar2.Position;
//  if cbxResponse.Checked then   ofset :=  60
//  else                          ofset :=   0;
//    lblPot2TrapZero.caption       := IntToStr(ScrollBar2.Position);
end;

procedure TMainForm.ScrollBar3Change(Sender: TObject);
begin
  lblDimming1.Top                 :=  10 - ScrollBar3.Position;
  cbxDimming1.Top                 :=   8 - ScrollBar3.Position;
  tkbDimming1.Top                 :=  24 - ScrollBar3.Position;
  lblDimming2.Top                 :=  52 - ScrollBar3.Position;
  cbxDimming2.Top                 :=  50 - ScrollBar3.Position;
  tkbDimming2.Top                 :=  66 - ScrollBar3.Position;
//  lblDimming3.Top                 :=  94 - ScrollBar3.Position;
//  cbxDimming3.Top                 :=  92 - ScrollBar3.Position;
//  tkbDimming3.Top                 := 108 - ScrollBar3.Position;
end;

procedure TMainForm.edtClientPortKeyPress(Sender: TObject; var Key: char);
var port      : integer;
    SimtekIni : TIniFile;
begin
 case Key of
  '0'..'9':;
  #8:;
  #13:begin
      port                        := StrToInt(edtClientPort.Text);
      IdUDPClient1.Port           := port;
      with TEdit(Sender) do
        begin
        SimtekIni                 := TIniFile.Create('C:\Simtek.Ini');
        with SimtekIni do begin   WriteString(InstSec, InstSecK02, edtClientPort.Text); end; {Set the default flags for startup          }
        SimtekIni.Free;
        end;//with TEdit
      MainForm.Caption            := buildMainCaption;       //
      end//case #13
  else Key := #00;
  end;//case
end;

procedure TMainForm.edtDCAmpsX1000Change(Sender: TObject);
var s : string;
begin
  s := TEdit(Sender).Text;
  C3RequestData[TEdit(Sender).TabOrder+2] := Ord(s[1]);
  if(TEdit(Sender).Name <> 'edtACVoltsX0001') then SelectNext(ActiveControl, True, True)
  else ActiveControl := edtDCAmpsX1000;
  fC3Request := True;
end;

procedure TMainForm.edtDCAmpsX1000Click(Sender: TObject);
begin
  TEdit(Sender).Selectall;
end;

procedure TMainForm.edtIPAddressKeyPress(Sender: TObject; var Key: char);
var SimtekIni : TIniFile;
begin
  case key of
   '0'..'9':;
   '.':;
  #8:;
  #13:begin
      with TEdit(Sender) do
        begin
        SimtekIni                 := TIniFile.Create('C:\Simtek.Ini');
        with SimtekIni do begin   WriteString(InstSec, InstSecK01, edtIPAddress.Text); end; {Set the default flags for startup          }
        SimtekIni.Free;
        end;// with
      MainForm.Caption            := buildMainCaption;       //
      end//case #13
   else Key := #00;
   end;
end;

procedure TMainForm.mm01s01Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.mm02s01Click(Sender: TObject);
begin
  MemoRx.Clear;                              // blank the window
end;

procedure TMainForm.mm02s02Click(Sender: TObject);
begin
  MemoTx.Clear;                              // blank the window
end;

procedure TMainForm.mm02s03Click(Sender: TObject);
begin
  NumberOfRequests                := 0;
  NumberOfResponse                := 0;
end;

procedure TMainForm.mm03s01Click(Sender: TObject);
var i : byte;
begin
  mm03s02.Checked           := mm03s01.Checked;
  mm03s01.Checked           := not mm03s01.Checked;
  gRate.ui                  := 0;
  gRate.s                   := '';
  gRate.ai                  := 0;
  gRate.us                  := 0;
  for i := 0 to 255 do
    gRate.ar[i]             := 0;
  gRate.ui                  := 0;
  gRate.uc                  := 0;
  gRateC1                   := gRate;
  gRateC2                   := gRate;
  gRateC3                   := gRate;
  gRateC4                   := gRate;
end;

procedure TMainForm.mm03s03Click(Sender: TObject);
begin
  mm03s03.Checked                 := mm03s04.Checked;
  mm03s04.Checked                 := not mm03s04.Checked;
end;

procedure TMainForm.mm03s05s00Click(Sender: TObject);
begin
  TMenuItem(Sender).Checked       := not TMenuItem(Sender).Checked;
end;

procedure TMainForm.mm04Click(Sender: TObject); // scroll
var s : string;
begin
  mm04.Checked        := not mm04.Checked;
  fScrollReq          := mm04.Checked;
  if mm04.Checked then
    begin
    end
  else
    begin
    C3RequestData[2]  := Ord(edtDCAmpsX1000.Text[1]);
    C3RequestData[3]  := Ord(edtDCAmpsX0100.Text[1]);
    C3RequestData[4]  := Ord(edtDCAmpsX0010.Text[1]);
    C3RequestData[5]  := Ord(edtDCAmpsX0001.Text[1]);
    C3RequestData[6]  := Ord(edtUnlablX1000.Text[1]);
    C3RequestData[7]  := Ord(edtUnlablX0100.Text[1]);
    C3RequestData[8]  := Ord(edtUnlablX0010.Text[1]);
    C3RequestData[9]  := Ord(edtUnlablX0001.Text[1]);
    C3RequestData[10] := Ord(edtCPSFrqX1000.Text[1]);
    C3RequestData[11] := Ord(edtCPSFrqX0100.Text[1]);
    C3RequestData[12] := Ord(edtCPSFrqX0010.Text[1]);
    C3RequestData[13] := Ord(edtCPSFrqX0001.Text[1]);
    C3RequestData[14] := Ord(edtDCVoltsX1000.Text[1]);
    C3RequestData[15] := Ord(edtDCVoltsX0100.Text[1]);
    C3RequestData[16] := Ord(edtDCVoltsX0010.Text[1]);
    C3RequestData[17] := Ord(edtDCVoltsX0001.Text[1]);
    C3RequestData[18] := Ord(edtACAmpsX1000.Text[1]);
    C3RequestData[19] := Ord(edtACAmpsX0100.Text[1]);
    C3RequestData[20] := Ord(edtACAmpsX0010.Text[1]);
    C3RequestData[21] := Ord(edtACAmpsX0001.Text[1]);
    C3RequestData[22] := Ord(edtACVoltsX1000.Text[1]);
    C3RequestData[23] := Ord(edtACVoltsX0100.Text[1]);
    C3RequestData[24] := Ord(edtACVoltsX0010.Text[1]);
    C3RequestData[25] := Ord(edtACVoltsX0001.Text[1]);
    fC3Request        := True;
    end;
  dScrollValue        := 0;
  ScrollCount         := ScrollCount;
  fImageRedraw        := True;
end;

procedure TMainForm.mm05Click(Sender: TObject);
var UserTransmitString,CharacterCreationString,StringToTransmit : string;
    CharacterPointer,CharacterToTransmit,StringLength : byte;
    x : integer;
begin
  BurstFileContents := TStringList.Create;
  BurstFileContents.Clear;
  try
    BurstFileContents.LoadFromFile(BurstFileName);
  except
    mm05.Visible := False;
  end;
  x := 0;
  try
    while(x < BurstFileContents.Count)do
      begin
      UserTransmitString := BurstFileContents.Strings[x];

      StringLength := Length(UserTransmitString);
      CharacterPointer := 1;
      StringToTransmit := '';
      While CharacterPointer <= StringLength do
        begin
        CharacterCreationString := '$' + UserTransmitString[CharacterPointer] + UserTransmitString[CharacterPointer+1];
        CharacterToTransmit := StrToInt(CharacterCreationString);
        StringToTransmit := StringToTransmit + Chr(CharacterToTransmit);
        CharacterPointer := CharacterPointer + 2;
        end;
      if StringToTransmit <> '' then cpOutputData(StringToTransmit, False);
      inc(x);
      end;
  except
    MessageDlg('Error Illegal Character In Source File',mtError,[mbOk],0);
  end;//try
  BurstFileContents.Free;
end;

procedure TMainForm.mm06Click(Sender: TObject);
begin
  fC0Request                      := True;
end;

procedure TMainForm.mm07Click(Sender: TObject);
begin
  fC1Request                      := True;
end;

procedure TMainForm.mm08Click(Sender: TObject);
begin
  fC2Request                      := True;
end;

procedure TMainForm.mm09Click(Sender: TObject);
begin
  fC3Request                      := True;
end;

procedure TMainForm.mm10Click(Sender: TObject);
begin
  fC4Request                      := True;
end;

procedure TMainForm.mm11Click(Sender: TObject);
begin
  fC5Request                      := True;
end;

procedure TMainForm.mm12Click(Sender: TObject);
begin
  fC6Request                      := True;
end;

procedure TMainForm.responseReset;
begin
    TrafficLightsOff;                          // Turn off the communications status indicators
    memoTx.Clear;                              // Blank the dataout and datain
    memoRx.Clear;                              // Blank the dataout and datain

    mm06.Caption                     := '&'+C0Command;
    mm07.Caption                     := '&'+C1Command;
    mm08.Caption                     := C2Command;
    mm09.Caption                     := C3Command;
    mm10.Caption                     := C4Command;
    mm11.Caption                     := C5Command;
    mm12.Caption                     := C6Command;
//    mm13.Caption                     := C7Command;
//    mm14.Caption                     := C8Command;
    mm03s05s01.Caption               := '&'+C1Command;
    mm03s05s02.Caption               := '&'+C2Command;
    mm03s05s03.Caption               := '&'+C3Command;
    mm03s05s04.Caption               := '&'+C4Command;
    mm03s05s05.Caption               := '&'+C5Command;
    mm03s05s06.Caption               := '&'+C6Command;

    lblFirmwareValue1.Caption        := C2DeviceValDefault;
    lblFirmwareValue2.Caption        := C2DeviceValDefault;
    tkbDimming1Old                   := 4096;
    tkbDimming2Old                   := 4096;
//  tkbDimming3Old                   := 4096;
    tkbDimming1.Position             := 0;
    tkbDimming2.Position             := 0;
//  tkbDimming3.Position             := 0;

    lblDimming1.Caption              := lblDimming1Cap + '0';
    lblDimming1.Hint                 := lblDimming1Hint;
    lblDimming2.Caption              := lblDimming2Cap + '0';
    lblDimming2.Hint                 := lblDimming2Hint;
    MainForm.Caption                 := buildMainCaption;       //
    lblTransmitRate.Caption          := TSCapHeader + '0.00Hz';
    lblC1TransmitRate.Caption        := C1CapHeader + '0.00Hz';
    lblC2TransmitRate.Caption        := C2CapHeader + '0.00Hz';
    lblC3TransmitRate.Caption        := C3CapHeader + '0.00Hz';
    lblC4TransmitRate.Caption        := C4CapHeader + '0.00Hz';
    lblC5TransmitRate.Caption        := C5CapHeader + '0.00Hz';
    lblC6TransmitRate.Caption        := C6CapHeader + '0.00Hz';

    swSW04Bat.Tag                    := swSW04.Top+10;
    swSW04Bat.Left                   := swSW04.Left+2;
    swSW05Bat.Tag                    := swSW05.Top+10;
    swSW05Bat.Left                   := swSW05.Left+2;
    swSW06Bat.Tag                    := swSW06.Top+10;
    swSW06Bat.Left                   := swSW06.Left+2;

    lblTestSoftwarePNValue.Caption   := lblTestSoftwareCap;
    lblTestSoftwareRevValue.Caption  := lblTestSoftwareRev;
    lblWARNING.Caption               := lblWARNINGCaption;
//    ActiveControl                    := UserImage;
end;

procedure TMainForm.responseStatus(ptrCK: pbyte);
begin
  inc(ptrCK);                    // Command byte
  inc(ptrCK);                    // Options

//  tmp := ptrCK^;                 // DC Mode
//  ptrCK^ := tmp + 1;
//  inc(ptrCK);
//  tmp := ptrCK^;                 // AC Mode
//  ptrCK^ := tmp + 1;
//  inc(ptrCK);
//  tmp := ptrCK^;                 // Toggles
//  ptrCK^ := tmp + 1;
//  inc(ptrCK);

  swSW02.Tag   := ptrCK^;          // DC Mode
  inc(ptrCK);
  swSW03.Tag   := ptrCK^;          // AC Mode
  inc(ptrCK);

  swSw04.Tag   := (ptrCK^ and $03);
  swSw05.Tag   := (ptrCK^ and $C0);
  swSw06.Tag   := (ptrCK^ and $30);
  swSW01.Tag   := (ptrCK^ and $04);
  fImageRedraw := True;
end;

procedure TMainForm.responseFirmware(s : string);
var
  si    : string;
  b1,b2 : byte;
begin
    inc(NumberOfResponse);
    b2 := Ord(s[2]);
    b1 := ((b2 shr 4) and $0F) or $30;
    b2 := (b2 and $0F) or $30;
    si := ': ' + chr(b1) + chr(b2) + '-';
    b2 := Ord(s[3]);
    b1 := ((b2 shr 4) and $0F) or $30;
    b2 := (b2 and $0F) or $30;
    si := si + chr(b1) + chr(b2);
    b2 := Ord(s[4]);
    b1 := ((b2 shr 4) and $0F) or $30;
    b2 := (b2 and $0F) or $30;
    si := si + chr(b1) + chr(b2) + ' rev ';
    si := si + s[5];
    lblFirmwareValue1.Caption := si;
    b2 := Ord(s[6]);
    b1 := ((b2 shr 4) and $0F) or $30;
    b2 := (b2 and $0F) or $30;
    si := ': ' + chr(b1) + chr(b2) + '-';
    b2 := Ord(s[7]);
    b1 := ((b2 shr 4) and $0F) or $30;
    b2 := (b2 and $0F) or $30;
    si := si + chr(b1) + chr(b2);
    b2 := Ord(s[8]);
    b1 := ((b2 shr 4) and $0F) or $30;
    b2 := (b2 and $0F) or $30;
    si := si + chr(b1) + chr(b2) + ' rev ';
    si := si + s[9];
    lblFirmwareValue2.Caption := si;
end;

procedure TMainForm.memoRevisionEnter(Sender: TObject);
begin
  memoRevision.Height            := 290;
end;

procedure TMainForm.memoRevisionExit(Sender: TObject);
begin
  memoRevision.Height     := 38;
  ActiveControl           := nil;
end;

procedure TMainForm.memoRevisionMouseLeave(Sender: TObject);
begin
  memoRevision.Height     := 38;
  ActiveControl           := nil;
end;

procedure TMainForm.PopupMenu1Popup(Sender: TObject);
var   ln,ch : integer;
const copy   = 0;
      cut    = 1;
      paste  = 2;
      delete = 3;
      select = 5;
      clear  = 7;
      print  = 9;
begin
  ln        := 0;
  ch        := 0;
  if PopupMenu1.PopupComponent = memoTx then
   begin
   ln       := memoTx.Sellength;
   ch       := length(memoTx.Text);
   end
  else if PopupMenu1.PopupComponent = memoRx then
   begin
   ln       := memoRx.Sellength;
   ch       := length(memoRx.Text);
   end
  else
   Beep;
  if ln > 0 then
   begin
   PopUpMenu1.Items[copy].Enabled   := True;
   PopUpMenu1.Items[cut].Enabled    := True;
   PopUpMenu1.Items[delete].Enabled := True;
   end
  else
   begin
   PopUpMenu1.Items[copy].Enabled   := False;
   PopUpMenu1.Items[cut].Enabled    := False;
   PopUpMenu1.Items[delete].Enabled := False;
   end;
  if ch <> 0 then
   begin
   PopUpMenu1.Items[select].Enabled := True;
   PopUpMenu1.Items[clear].Enabled  := True;
   PopUpMenu1.Items[print].Enabled  := True;
   end
  else
   begin
   PopUpMenu1.Items[select].Enabled := False;
   PopUpMenu1.Items[clear].Enabled  := False;
   PopUpMenu1.Items[print].Enabled  := False;
   end;
end;

procedure TMainForm.tbUpdateRateChange(Sender: TObject);
begin
 if tbUpdateRate.Position = 0 then DXTimer1.Interval := 0 else DXTimer1.Interval := 1;
 if tkbScrollRate.Position < tbUpdateRate.Position then
   tkbScrollRate.Position := tbUpdateRate.Position;
end;

function TMainForm.calculateChecksum(ptrCK: pbyte;cnt:byte):byte;
var  i,sum     : integer;
     tmp       : byte;
begin
  sum    := 0;
  for i  := 2 to cnt do
    begin
    tmp  := ptrCK^;
    sum  := sum + integer(tmp);
    inc(ptrCK);
    end;
  sum    := not sum;
  result := byte(sum);
end;

function TMainForm.calculateRate(ct : double;g : Tx;rc : boolean;l : TObject;t : TObject; s : string):Tx;
var
   i   : integer;
   cus : double; // current update speed
   cuh : double; // current update Hz
   cua : double; // current update average
begin
  if (g.us <> 0) and rc then
    begin
    cus := (ct - g.us) * 86400;
    if cus <> 0 then
      begin
      g.ar[g.ai] := cus;
      inc(g.ai);
      if g.ui < 255 then Inc(g.ui);
      cua := 0;
      for i := 0 to (g.ui - 1) do
        begin  cua := cua + g.ar[i];    end;
      cus := cua / g.ui;
      cuh := RoundTo((1 / cus),-2);
      g.s := FloatToStr(cuh) +'Hz';
      g.us := ct;
      end;//if cus <> 0 then
    end// if g.us <> 0 then
  else if rc then
    begin
    g.us := ct;
    g.ai := 0;
    end;//else if g.us <> 0 then
  TLabel(l).Caption := s + g.s + ' ' +  IntToStr(TTrackBar(t).Position);
  Result := g;
end;

procedure TMainForm.calculateRotaryIndexPos(rot, indx: TObject;stops: integer);
var pos  : integer;
    ang  : double;
    xpnt : double;
    ypnt : double;
    rrad : integer;
    ccX  : extended;
    ccY  : extended;
begin
  pos := TShape(rot).Tag;
  case pos of
    $01 : pos := 7;
    $02 : pos := 0;
    $04 : pos := 1;
    $08 : pos := 2;
    $10 : pos := 3;
    $20 : pos := 4;
    $40 : pos := 5;
    $80 : pos := 6;
    else  pos := 0;
    end;
  rrad        := round(TShape(rot).Width / 2) - 7;
  ccX         := TShape(rot).Left + ((TShape(rot).Width  / 2) - 4);
  ccY         := TShape(rot).Top  + ((TShape(rot).Height / 2) - 4);
  ang         := pos * ((2 * PI) / stops);
  ang         := ang - PI;                                             //  s2      s3
  xpnt        := (cos(ang) * rrad) + ccX;//tkbC1UpdateRate.Position;   //  86     282
  ypnt        := (sin(ang) * rrad) + ccY;//tkbC2UpdateRate.Position;   // 309     30
  TShape(indx).Top  := integer(Round(ypnt));
  TShape(indx).Left := integer(Round(xpnt));
end;

procedure TMainForm.DXTimer1Timer(Sender: TObject; LagCount: Integer);
var  rxtimeout : integer;                 // timeout time for attempt to read receive buffer
     wdlist    : array[0..10] of string;  //
     wrstr     : string;                  // string to write to transmit buffer
     li        : integer;                 // line index
     counter   : integer;                 //
     ratecalc  : boolean;                 //
     ctime     : double;                  //
begin
  rxtimeout                   := tkbRecieveTimeOut.Position;
  wrstr                       := '';
  lblRequestsSent.Caption     := ': ' + IntToStr(NumberOfRequests);
  lblResponseRecieved.Caption := ': ' + IntToStr(NumberOfResponse);

  if NumberOfRequests > NumberOfResponse then
    begin
    wrstr     := IdUDPClient1.ReceiveString(rxtimeout);
    if wrstr <> '' then decodeRecievedData(wrstr);
    RXCount    := 30;
    setColorCOMLightRX(clLime,1);
    end;// if NumberOfRequests > NumberOfResponse then

  if fScrollReq then
    begin
    if ScrollCount > tkbScrollRate.Position then
      begin
      C3RequestData[2]  := dScrollValue;
      C3RequestData[3]  := dScrollValue;
      C3RequestData[4]  := dScrollValue;
      C3RequestData[5]  := dScrollValue;
      C3RequestData[6]  := dScrollValue;
      C3RequestData[7]  := dScrollValue;
      C3RequestData[8]  := dScrollValue;
      C3RequestData[9]  := dScrollValue;
      C3RequestData[10] := dScrollValue;
      C3RequestData[11] := dScrollValue;
      C3RequestData[12] := dScrollValue;
      C3RequestData[13] := dScrollValue;
      C3RequestData[14] := dScrollValue;
      C3RequestData[15] := dScrollValue;
      C3RequestData[16] := dScrollValue;
      C3RequestData[17] := dScrollValue;
      C3RequestData[18] := dScrollValue;
      C3RequestData[19] := dScrollValue;
      C3RequestData[20] := dScrollValue;
      C3RequestData[21] := dScrollValue;
      C3RequestData[22] := dScrollValue;
      C3RequestData[23] := dScrollValue;
      C3RequestData[24] := dScrollValue;
      C3RequestData[25] := dScrollValue;
//    if dScrollValue > 57 then dScrollValue := 1;
      fC3Request      := True;
      fImageRedraw    := True;
      ScrollCount     := 255;
      inc(dScrollValue);
      end;//if DispScrolRateCnt > tkbScrollRate.Position then
    inc(ScrollCount);
    end;
  wrstr           := '';
  mm03s05.Checked := mm03s05s01.Checked
                  or mm03s05s02.Checked
                  or mm03s05s03.Checked
                  or mm03s05s04.Checked
                  or mm03s05s05.Checked
                  or mm03s05s06.Checked;
  inc(gRate.uc);

  if gRateC1.uc >= (tkbC1UpdateRate.Position) then
    begin
    if mm03s05.Checked and mm03s02.Checked then
      begin
      if mm03s05s01.Checked then fC1Request := True;
      end;
    gRateC1.uc := 0;
    end; //if gRateC1.uc >= (tkbC1UpdateRate.Position)then
  if gRateC2.uc >= (tkbC2UpdateRate.Position) then
    begin
    if mm03s05.Checked and mm03s02.Checked then
      begin      if mm03s05s02.Checked then fC2Request := True;   end;
    gRateC2.uc := 0;
    end; //if gRateC2.uc >= (tkbC2UpdateRate.Position)then

  if gRateC3.uc >= (tkbC3UpdateRate.Position) then
    begin
    if mm03s05.Checked and mm03s02.Checked then
      begin      if mm03s05s03.Checked then fC3Request := True;   end;
    gRateC3.uc := 0;
    end; //if gRateC3.uc >= (tkbC3UpdateRate.Position)then

  if gRateC4.uc >= (tkbC4UpdateRate.Position) then
    begin
    if mm03s05.Checked and mm03s02.Checked then
      begin      if mm03s05s04.Checked then fC4Request := True;   end;
    gRateC4.uc := 0;
    end; //if gRateC4.uc >= (tkbC4UpdateRate.Position)then

  if gRateC5.uc >= (tkbC5UpdateRate.Position) then
    begin
    if mm03s05.Checked and mm03s02.Checked then
      begin      if mm03s05s05.Checked then fC5Request := True;   end;
    gRateC5.uc := 0;
    end; //if gRateC5.uc >= (tkbC4UpdateRate.Position)then

  if gRateC6.uc >= (tkbC6UpdateRate.Position) then
    begin
    if mm03s05.Checked and mm03s02.Checked then
      begin      if mm03s05s06.Checked then fC6Request := True;   end;
    gRateC6.uc := 0;
    end; //if gRateC6.uc >= (tkbC4UpdateRate.Position)then

  ctime           := Now;
  li              := 0;

  if fC0Request then
    begin
    wrstr         := wrstr + encodeCommandData(C0Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    fC0Request    := False;
    end;// if fC0Request

  if fC1Request then
    begin
    wrstr         := wrstr + encodeCommandData(C1Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    gRateC1 := calculateRate(ctime, gRateC1, True, lblC1TransmitRate, tkbC1UpdateRate, C1CapHeader);
    fC1Request    := False;
    end;// if fC1Request

  if fC2Request then
    begin
    wrstr         := wrstr + encodeCommandData(C2Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    gRateC2 := calculateRate(ctime, gRateC2, True, lblC2TransmitRate, tkbC2UpdateRate, C2CapHeader);
    fC2Request    := False;
    end;// if fC2Request

  if fC3Request then
    begin
    wrstr         := wrstr + encodeCommandData(C3Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    gRateC3 := calculateRate(ctime, gRateC3, True, lblC3TransmitRate, tkbC3UpdateRate, C3CapHeader);
    fC3Request    := False;
    end;// if fC3Request

  if fC4Request then
    begin
    wrstr         := wrstr + encodeCommandData(C4Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    gRateC4 := calculateRate(ctime, gRateC4, True, lblC4TransmitRate, tkbC4UpdateRate, C4CapHeader);
    fC4Request    := False;
    end;// if fC4Request

  if fC5Request then
    begin
    wrstr         := wrstr + encodeCommandData(C5Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    gRateC5 := calculateRate(ctime, gRateC5, True, lblC5TransmitRate, tkbC5UpdateRate, C5CapHeader);
    fC5Request    := False;
    end;// if fC5Request

  if fC6Request then
    begin
    wrstr         := wrstr + encodeCommandData(C6Request);
    if mm03s04.Checked then
      begin
      inc(li);
      wdlist[li]  := wrstr;
      wrstr       := '';
      end;// mm03s04.Checked
    gRateC6 := calculateRate(ctime, gRateC6, True, lblC6TransmitRate, tkbC6UpdateRate, C6CapHeader);
    fC6Request    := False;
    end;// if fC6Request

  if mm03s03.Checked and (wrstr <> '') then
    begin
    inc(li);
    wdlist[li]    := wrstr;
    wrstr         := '';
    end;//if mm03s01.Checked

  if gRate.uc >= (tbUpdateRate.Position) then
    begin
    if mm03s02.Checked then gRate := calculateRate(ctime,    gRate, True, lblTransmitRate, tbUpdateRate, TSCapHeader)
    else                    gRate := calculateRate(gRate.uc, gRate, True, lblTransmitRate, tbUpdateRate, TSCapHeader);

    if li <> 0 then
      begin
      for counter  := 1 to li do
        begin
        wrstr           := wdlist[counter];
        wdlist[counter] := '';
        if counter       = li then ratecalc := True else  ratecalc := False;
        cpOutputData(wrstr, ratecalc);
        end;//for counter := 1 to li do
      end;//if li <> 0 then
    gRate.uc := 0;
    inc(gRateC1.uc);
    inc(gRateC2.uc);
    inc(gRateC3.uc);
    inc(gRateC4.uc);
    inc(gRateC5.uc);
    inc(gRateC6.uc);
    end;//if gRate.uc >= (tbUpdateRate.Position) then

  if (fImageRedraw and cbxGraphicsEnable.Checked) then
    begin
    paintGUI;
    end;

  if TXCount > 1 then
  Dec(TXCount);
  if TXCount = 1 then
    begin
    TXCount := 0;
    setColorCOMLightTX(clRed,1);
    end;

  if RXCount > 1 then Dec(RXCount);
  if RXCount = 1 then
    begin
    RXCount := 0;
    setColorCOMLightRX(clRed,1);
    end;
end;

procedure TMainForm.decodeRecievedData(s: string);
var
  SMsg      : string;
  lsLineNum : string;
  i         : integer;
  count     : byte;
  cal,giv   : byte;
  DPtr      : pbyte;
  SPtr      : pbyte;
begin
  if length(s) <> 0 then
    begin
    i := 1;
    while i <= length(s) do
      begin
      case Ord(s[i]) of
//  C2Response  = C2Request;   C2Responselength  = 9;  // program response
//  C6Response  = C6Request;   C6Responselength  = 6;  // status
        C2Response : begin  // program revision
          SPtr     := Addr(s[i]);
          DPtr     := Addr(C2ResponseData[1]);
          CopyMemory(DPtr, SPtr, C2Responselength);
          cal := calculateChecksum(DPtr, C2Responselength);
          giv := ord(s[i+(C2Responselength-1)]);
          if (cal = giv) then
            begin
            inc(NumberOfResponse);
            responseFirmware(s);
            i        := i + C2Responselength;
            fImageRedraw := True;
            end
          else
            begin
            i        := i + C2Responselength;
            end;
          end;//case = C2Response
        C6Response : begin  // switch status
          SPtr     := Addr(s[i]);
          DPtr     := Addr(C6ResponseData[1]);
          CopyMemory(DPtr, SPtr, C6Responselength);
          cal := calculateChecksum(DPtr, C6Responselength);
          giv := ord(s[i+(C6Responselength-1)]);
          if (cal = giv) then
            begin
            inc(NumberOfResponse);
            responseStatus(DPtr);
            i        := i + C6Responselength;
            fImageRedraw := True;
            end
          else
            begin
            i        := i + C6Responselength;
            end;
          end;//case = C1Response
        else
          begin
          i          := i + 1;
          end;
        end;// case Ord(s[i]) of
      end;// while i <= length(s) do
    end;// if length(s) <> 0 then
  wrMemoWindow(cbxRDXWindowEnable,memoRx,lblReceived,RxWinLimit,RxPlace,'RX ','Lines Received : ',s);
end;

procedure TMainForm.paintGUI;
begin
  fImageRedraw := False;
  paintIndicator(C4RequestData[2], shpIndicatorD0);
  paintIndicator(C4RequestData[2], shpIndicatorD1);
  paintIndicator(C4RequestData[2], shpIndicatorD2);
  setPushbuttonSw(swSW01);
  setRotarySwitch(swSW02,swSw02Index,swSW02a,swSW02b,swSW02c,swSW02d,swSW02e,swSW02f,swSW02g,swSW02h,8);
  setRotarySwitch(swSW03,swSw03Index,swSW03a,swSW03b,swSW03c,swSW03d,swSW03e,swSW03f,swSW03g,nil,8);
  setToggleSwitch(swSw04,swSW04Bat,lblSW04t,lblSW04m,lblSW04b,10);
  setToggleSwitch(swSw05,swSW05Bat,lblSW05t,     nil,lblSW05b,10);              // checking to see if this is the issue
  setToggleSwitch(swSw06,swSW06Bat,lblSW06t,     nil,lblSW06b,10);
end;

procedure TMainForm.paintIndicator(pl: byte; Showing: TObject);
begin
  if((pl and TControl(showing).Tag) = 0) then
    TShape(showing).Brush.Color := clMaroon
  else
    TShape(showing).Brush.Color := clRed;
end;

procedure TMainForm.lblFirmwareTitle1Click(Sender: TObject);
begin
  lblFirmwareValue1.Caption := C2DeviceValDefault;
  lblFirmwareValue2.Caption := C2DeviceValDefault;
end;

end.
