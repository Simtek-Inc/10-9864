unit UARRSI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Menus, IniFiles, Math, IdUDPServer,
  IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, jpeg,
  IdSocketHandle, ShellAPI, ExtDlgs, IdGlobal, DXClass;

const
  InstNum            = '8780';
  InstRevLevel       = '-';
  lblAddressWWW      = 'www.simtekinc.com';
  fileCFG            = 'simtek.dcf';
  defaultIP          = '192.168.13.200';
  defaultCPort       = '51020';
  defaultSPort       = '51021';
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
// Host Command Sent to the Instrument
  TSCapHeader        = ' Transmit speed = ';


  C0Command          = 'Reset';
  C0Request          = $F0; // Reset Request
  C0Requestlength    = 1;
  C0CapHeader        = C0Command + ' Transmit speed = ';
  C0Response         = C0Request;
  C0Responselength   = 0;

  C1Command          = 'Status';
  C1Request          = $F1; // Reset Request
  C1Requestlength    = 1;
  C1CapHeader        = C0Command + ' Transmit speed = ';
  C1Response         = C0Request;
  C1Responselength   = 21;

  C2Command          = 'Dimming';
  C2Request          = $F4; // Reset Request
  C2Requestlength    = 2;
  C2CapHeader        = C0Command + ' Transmit speed = ';
  C2Response         = C0Request;
  C2Responselength   = 0;

  C3Command          = 'Firmware';
  C3Request          = $FE; // Reset Request
  C3Requestlength    = 1;
  C3CapHeader        = C0Command + ' Transmit speed = ';
  C3Response         = C0Request;
  C3Responselength   = 17;



  // Descriptive labels to use with routines
  lblDimming1Cap     = 'Dimming Level = ';
  lblDimming1Hint    = 'Shows Brightness Value';
  lblFirmwareDefault = ': ';

  clActive           = clLime;
  clInactive         = clBlack;

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
  TMainForm = class(TForm)
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
    memoTx: TRichEdit;
    lblTransmitted: TLabel;
    tbUpdateRate: TTrackBar;
    lblTransmitRate: TLabel;
    cbxTRXWindowEnable: TCheckBox;
    memoRx: TRichEdit;
    lblReceived: TLabel;
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
    mm06: TMenuItem;
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
    cbxResponse: TCheckBox;
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
    pnlDevice: TPanel;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    lblScrollRate: TLabel;
    lblTestSoftwarePNValue: TLabel;
    lblIPAddress: TLabel;
    lblDevicePort: TLabel;
    lblFirmwareTitle1: TLabel;
    lblFirmwareValue1: TLabel;
    lblWARNING: TLabel;
    lblTestSoftwarePNTile: TLabel;
    lblTestSoftwareRevValue: TLabel;
    lblTestSoftwareRevTile: TLabel;
    imgSimtekLogo: TImage;
    edtIPAddress: TEdit;
    edtHostClientPort: TEdit;
    pnlDividerBar05: TPanel;
    pnlDividerBar03: TPanel;
    pnlDividerBar01: TPanel;
    pnlDividerBar02: TPanel;
    pnlDividerBar04: TPanel;
    tkbScrollRate: TTrackBar;
    memoRevision: TMemo;
    mm07: TMenuItem;
    mm08: TMenuItem;
    mm09: TMenuItem;
    mm10: TMenuItem;
    mm11: TMenuItem;
    mm12: TMenuItem;
    mm05: TMenuItem;
    Panel1: TPanel;
    lblRealtime: TLabel;
    cbxRealtime: TCheckBox;
    tkbRecieveTimeOut: TTrackBar;
    lblResponseRecieved: TLabel;
    lblRequestsSent: TLabel;
    lblResponseRequestsTitle1: TLabel;
    lblResponseRequestsTitle2: TLabel;
    lblRecievedTimeout: TLabel;
    lblMACTitle: TLabel;
    lblMACValue: TLabel;
    edtHostServerPort: TEdit;
    lblHostPort: TLabel;
    IdUDPServer1: TIdUDPServer;
    DXTimer1: TDXTimer;
    lblINT: TLabel;
    potInt: TShape;
    Shape6: TShape;
    Shape7: TShape;
    lblH1: TLabel;
    potH1: TShape;
    potPAGain: TShape;
    lblPAGain: TLabel;
    potH2: TShape;
    lblH2: TLabel;
    potPA: TShape;
    lblPA: TLabel;
    lblVoxSens: TLabel;
    potVOXSens: TShape;
    lblV1: TLabel;
    potV1: TShape;
    potPVT: TShape;
    lblPVT: TLabel;
    potV2: TShape;
    lblV2: TLabel;
    potSAT: TShape;
    lblSAT: TLabel;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    lblVOXHM: TLabel;
    potVOXHM: TShape;
    lblU1: TLabel;
    potU1: TShape;
    potU2: TShape;
    lblU2: TLabel;
    RockerBase: TShape;
    RockerToggle: TShape;
    lblRockerInt: TLabel;
    lblRockerRadio: TLabel;
    RS1: TShape;
    RS2: TShape;
    lblRS11: TLabel;
    lblRS12: TLabel;
    lblRS13: TLabel;
    lblRS14: TLabel;
    lblRS22: TLabel;
    lblRS23: TLabel;
    lblRS24: TLabel;
    lblRS25: TLabel;
    lblRS21: TLabel;
    lblRS29: TLabel;
    lblRS28: TLabel;
    lblRS27: TLabel;
    lblRS26: TLabel;
    lblRS210: TLabel;
    potVol: TShape;
    lblVOL: TLabel;
    valInt: TLabel;
    valH1: TLabel;
    valH2: TLabel;
    valPA: TLabel;
    valPAGain: TLabel;
    valVOXSens: TLabel;
    valV1: TLabel;
    valV2: TLabel;
    valSAT: TLabel;
    valPVT: TLabel;
    valVOXHM: TLabel;
    valU1: TLabel;
    valU2: TLabel;
    valVol: TLabel;
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
    procedure memoTxChange(Sender: TObject);
    procedure memoRxChange(Sender: TObject);
    procedure memoTxKeyPress(Sender: TObject; var Key: char);
    procedure memoRxKeyPress(Sender: TObject; var Key: char);
    procedure tbUpdateRateChange(Sender: TObject);
    procedure edtHostClientPortKeyPress(Sender: TObject; var Key: char);
    procedure edtIPAddressKeyPress(Sender: TObject; var Key: char);
    procedure tkbScrollRateChange(Sender: TObject);
    procedure cbxResponseClick(Sender: TObject);
    procedure tkbRecieveTimeOutChange(Sender: TObject);
    procedure mm01s01Click(Sender: TObject);
    procedure mm02s01Click(Sender: TObject);
    procedure mm03s01Click(Sender: TObject);
    procedure mm02s03Click(Sender: TObject);
    procedure mm03s03Click(Sender: TObject);
    procedure mm03s05s00Click(Sender: TObject);
    procedure mm06Click(Sender: TObject);
    procedure mm07Click(Sender: TObject);
    procedure mm08Click(Sender: TObject);
    procedure memoRevisionEnter(Sender: TObject);
    procedure memoRevisionMouseLeave(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure imgSimtekLogoClick(Sender: TObject);
    procedure shpIndicatorD10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
    procedure mm04Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure edtHostServerPortKeyPress(Sender: TObject; var Key: Char);
    procedure IdUDPServer1UDPRead(Sender: TObject; AData: TBytes;
      ABinding: TIdSocketHandle);
    procedure DXTimer1Timer(Sender: TObject; LagCount: Integer);
    procedure lblFirmwareValue1Click(Sender: TObject);
    procedure lblFirmwareTitle1Click(Sender: TObject);
  private
	  procedure paintIndicator(pl: byte; Showing: TObject);				// sets conditions to change color of buttons
    procedure paintIndicator1(pl: byte; Showing: TObject);	 		// sets conditions to change color of buttons
    procedure paintGUI;											                 		// sets the color of the indicator lights
    procedure decodeRecievedData(s : string);
    function  addasciivaluetomsg(s : string; places,num: integer):string;
    function  encodelockheedstr(msglen, msgid : integer):string;
    function  encodeCommandData(CommandByte : byte) : string;
    function  buildMainCaption : string;
    function  calculateRate(ct : double;g : Tx;rc : boolean;l : TObject;t : TObject;s : string):Tx;
    function  calculateChecksum(ptrCK: pbyte; cnt:byte):byte;
    procedure cpOutputData(s : string; rc : boolean);
    procedure wrMemoWindow(show,memo,lbl :TObject; Limit,Place : integer;head,cap,s,err : string);
    procedure responseReset;
    procedure responseFirmware(s : string);
  public
    procedure initialize_UDP();
  end;

  var
  MainForm                  : TMainForm;
  hWind                     : THandle;
// Variables to control Software functions
  dScrollValue              : byte    = 0;
  ScrollCount               : integer = 0;
  TXCount                   : byte    = 1; {define and initilize Counter}
  RXCount                   : byte    = 1; {define and initilize Counter}
  sWidth                    : integer = 1024;
// Software control variables
  RxWinLimit                : integer = 0;
  RxPlace                   : integer = 0;
  TxWinLimit                : integer = 0;
  TxPlace                   : integer = 0;
// Device Output control variables
  fImageRedraw              : boolean;

  ActiveDigit               : cardinal = 0;
  C0RequestData             : array[0..C0Requestlength] of byte;
  C1RequestData             : array[0..C1Requestlength] of byte;
  C2RequestData             : array[0..C2Requestlength] of byte;
  C3RequestData             : array[0..C3Requestlength] of byte;

// Host to Instrument request Action Flags
  f0Request                 : boolean  = false;
  f1Request                 : boolean  = false;
  f2Request                 : boolean  = false;
  f3Request                 : boolean  = false;

// Device Input control variables
  swMode                    : byte     = 1;
  swPreset                  : byte     = 1;
// Device BIT control variables
  fPTInputStatus            : boolean  = False;
  fCTInputStatus            : boolean  = False;
  fRKInputStatus            : boolean  = False;
  fOFLInputStatus           : boolean  = False;
  fEBInputStaus             : boolean  = False;
  fZALLInputStatus          : boolean  = False;
  fPresetPWROFFInputStatus  : boolean  = False;
  fPresetMANInputStatus     : boolean  = False;
  fPreset1InputStatus       : boolean  = False;
  fPreset2InputStatus       : boolean  = False;
  fPreset3InputStatus       : boolean  = False;
  fPreset4InputStatus       : boolean  = False;
  fPreset5InputStatus       : boolean  = False;
  fPreset6InputStatus       : boolean  = False;
  fPresetREMInputStatus     : boolean  = False;
  fINITInputStatus          : boolean  = False;
  fRightArrowInputStatus    : boolean  = False;
  fUpArrowInputStatus       : boolean  = False;
  fBRTDSPLA2DInputStatus    : boolean  = False;
  fBRTPNLA2DInputStatus     : boolean  = False;
  fMemoryStatus             : boolean  = False;
// Display Dimming Variables

// Debug Variables
  NumberOfRequests          : cardinal = 0;
  UserImageSelected         : boolean  = True;
  NumberOfResponse          : cardinal = 0;
  gRate                     : Tx;
  gRateC1                   : Tx; // StatusRequest      = $F1;
  gRateC2                   : Tx; // DisplayRequest     = $F2;
  gRateC3                   : Tx; // DimmingRequest     = $F3;
  gRateC4                   : Tx; // FirmwareRequest    = $F4;
  gRateC5                   : Tx; // FirmwareRequest    = $F4;
  gRateC6                   : Tx; // FirmwareRequest    = $F4;
  BurstFileName             : string = 'BurstFile.txt';
  BurstFileContents         : TStringlist = nil;
  scrincrement              : Integer =1;

  implementation

{$R *.DFM}

procedure TMainForm.initialize_UDP;
begin

// stopgap
// all code related to setting up the ethernet will be stored/initialized here

end;
procedure TMainForm.FormCreate(Sender: TObject);
var SIni : TIniFile;
    tmp  : integer;
begin

end;

procedure TMainForm.IdUDPServer1UDPRead(Sender: TObject; AData: TBytes;
  ABinding: TIdSocketHandle);
var iReadData : string;
begin
  iReadData := BytesToString(AData);
  if iReadData <> '' then
    begin
    decodeRecievedData(iReadData);
    end;// if iReadData <> '' then
end;

procedure TMainForm.imgSimtekLogoClick(Sender: TObject);
var url : string;
begin
  url := lblAddressWWW;
  ShellExecute(self.WindowHandle,'open',PChar(url),nil,nil, SW_SHOWNORMAL);
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  idUDPServer1.Active         := False;
  idUDPServer1.Bindings.Clear;
  Action := caFree;                                     //
end;

function TMainForm.addasciivaluetomsg(s : string; places,num : integer): string;
var i,x,q : integer;
begin
   s := s + IntToHex(num,places);
   Result := s;
end;

function TMainForm.buildMainCaption: string;
var s  : string;
begin
   s := 'Test Software ' + lblTestSoftwareCap + '   IP = ' + edtIPAddress.Text + '   Device Port = ' + edtHostClientPort.Text;
   Result := s;
end;

function TMainForm.encodeCommandData(CommandByte: byte): string;
var
   s       : string;
   tmp     : integer;
   chksum  : byte;
   C4Val   : integer;
   DPtr    : pbyte;
begin

end;

function TMainForm.encodelockheedstr(msglen, msgid: integer): string;
var s       : string;
    chksum  : byte;
    DPtr    : pbyte;
begin
                                                    // pass the string to transmit back to the calling routine
end;

procedure TMainForm.wrMemoWindow(show,memo,lbl :TObject; limit,place : integer;head,cap,s,err : string);
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

    TRichEdit(memo).Lines.Add(lsLineNum + SMsg + err);          {then store them in the RX Window }
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
    IdUDPClient1.Port := edtHostClientPort.Tag;                         //
    IdUDPClient1.Host := edtIPAddress.Text;                             //
    IdUDPClient1.Send(s);                                               //
    end;
  wrMemoWindow(cbxTRXWindowEnable,memoTx,lblTransmitted,TxWinLimit,TxPlace,'TX ','Lines Transmitted : ',s, '');
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
  with TRichEdit(PopupMenu1.PopupComponent) do
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
  with TRichEdit(PopupMenu1.PopupComponent) do
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
  with TRichEdit(PopupMenu1.PopupComponent) do
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
  with TRichEdit(PopupMenu1.PopupComponent) do
   begin
    Try
      ClearSelection;
    Except
      Beep;
    End;
   end;
end;

procedure TMainForm.DXTimer1Timer(Sender: TObject; LagCount: Integer);
var  rxtimeout : integer;                 // timeout time for attempt to read receive buffer
     wdlist    : array[0..10] of string;  //
     wrstr     : string;                  // string to write to transmit buffer
     li        : integer;                 // line index
     counter   : integer;                 //
     ratecalc  : boolean;                 //
     ctime     : double;                  //
     A         : array[1..14] of Tshape;  //
     I         : integer;                 //
begin

end;

procedure TMainForm.Selectall1Click(Sender: TObject);
begin
  with TRichEdit(PopupMenu1.PopupComponent) do
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
  with TRichEdit(PopupMenu1.PopupComponent) do
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
  with TRichEdit(PopupMenu1.PopupComponent) do
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


procedure TMainForm.edtHostClientPortKeyPress(Sender: TObject; var Key: char);
var SIni : TIniFile;
begin


end;


procedure TMainForm.edtHostServerPortKeyPress(Sender: TObject; var Key: Char);
var SimtekIni : TIniFile;
begin

end;

procedure TMainForm.edtIPAddressKeyPress(Sender: TObject; var Key: char);
var SIni : TIniFile;
begin
  case key of
   '0'..'9':;
   '.':;
  #8:;
  #13:begin
      with TEdit(Sender) do
        begin
        SIni := TIniFile.Create('C:\Simtek.Ini');
        SIni.WriteString(InstSec, Name, Text);  {Set the default flags for startup          }
        SIni.Free;
        end;// with
      MainForm.Caption := buildMainCaption;    //
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


procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  if(PageControl1.ActivePage = TabSheet1)then ActiveControl := edtIPAddress;
end;

procedure TMainForm.responseReset;
begin

end;


procedure TMainForm.responseFirmware(s : string);
var
  si    : string;
  b1,b2 : byte;
begin

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
   ln       := TRichEdit(PopupMenu1.PopupComponent).Sellength;
   ch       := length(TRichEdit(PopupMenu1.PopupComponent).Text);
   end
  else if PopupMenu1.PopupComponent = memoRx then
   begin
   ln       := TRichEdit(PopupMenu1.PopupComponent).Sellength;
   ch       := length(TRichEdit(PopupMenu1.PopupComponent).Text);
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

procedure TMainForm.decodeRecievedData(s: string);
var
  SMsg              : string;
  lsLineNum         : string;
  i                 : integer;
  count             : byte;
  cal,giv           : byte;
  DPtr              : pbyte;
  SPtr              : pbyte;
  calculate_chksum  : byte;
  given_chksum      : byte;
  MSG_LENGTH        : string;
  MSG_VER           : string;
  MSG_PORT          : string;
  MSG_ID_STR        : string;
  MSG_ID_NUM        : integer;
  MSG_PAYLOAD       : string;
  MSG_CHECKSUM      : string;
  MSG_CHKSUM_INDEX  : byte;
  tmpf              : extended;
  tmp1,tmp2         : byte;
  tmps              : string;
  err               : string;
const
  MSG_LENGTH_INDEX  = 3;
  MSG_VER_INDEX     = 7;
  MSG_PORT_INDEX    = 9;
  MSG_ID_INDEX      = 13;
  MSG_PAYLOAD_INDEX = 17;
begin

  wrMemoWindow(cbxRDXWindowEnable,memoRx,lblReceived,RxWinLimit,RxPlace,'RX ','Lines Received : ',s,err);
end;

procedure TMainForm.paintGUI;
begin
  fImageRedraw := False;

end;

procedure TMainForm.lblFirmwareTitle1Click(Sender: TObject);
begin
  lblFirmwareValue1.Font.Color := clBlack;
  lblMACValue.Font.Color := clBlack;
end;

procedure TMainForm.lblFirmwareValue1Click(Sender: TObject);
begin
  lblFirmwareValue1.Caption := ': 0.00';
  lblMACValue.Caption       := ': 00:00:00:00:00:00';
end;

end.
