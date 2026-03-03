unit U9864_Panel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPanel = class(TForm)
    pnlDevice: TPanel;
    TEMP2: TShape;
    lbl_TA_RA: TLabel;
    lbl_STBY: TLabel;
    TEMP1: TShape;
    lbl_ATC_SOURCE: TLabel;
    lbl_XPNDR: TLabel;
    lbl_ALT_RPTG_OFF: TLabel;
    lbl_TA_ONLY: TLabel;
    lbl_XPNDR2: TLabel;
    LgEnc_L: TShape;
    LgEnc_R: TShape;
    lbl_IDENT: TLabel;
    SmEnc_L: TShape;
    lbl_TCAS: TLabel;
    SmEncVal_L: TLabel;
    LgEncVal_L: TLabel;
    LgEncVal_R: TLabel;
    SmEncVal_R: TLabel;
    lbl_ATC: TLabel;
    TEMP3: TShape;
    lbl_1_Low: TLabel;
    lbl_2_Low: TLabel;
    lbl_2_High: TLabel;
    lbl_1_High: TLabel;
    IDENT: TShape;
    TEMP4: TShape;
    SmEnc_R: TShape;
    Sw_Big_Point: TShape;
    Sw_Big_Indicator: TShape;
    Sw_Big_Bottom: TShape;
    STBY_Sel: TShape;
    LCD_BackPlane: TShape;
    lblXPNDRFail: TLabel;
    Sw_ALT: TShape;
    Sw_XPNDR: TShape;
    dig_1_f: TShape;
    dig_1_e: TShape;
    dig_1_c: TShape;
    dig_1_b: TShape;
    dig_1_a: TShape;
    dig_1_d: TShape;
    dig_1_g: TShape;
    dig_2_f: TShape;
    dig_2_e: TShape;
    dig_2_c: TShape;
    dig_2_b: TShape;
    dig_2_a: TShape;
    dig_2_d: TShape;
    dig_2_g: TShape;
    dig_3_f: TShape;
    dig_3_e: TShape;
    dig_3_c: TShape;
    dig_3_b: TShape;
    dig_3_a: TShape;
    dig_3_d: TShape;
    dig_3_g: TShape;
    dig_4_f: TShape;
    dig_4_e: TShape;
    dig_4_c: TShape;
    dig_4_b: TShape;
    dig_4_a: TShape;
    dig_4_d: TShape;
    dig_4_g: TShape;
    lbl_F_LED: TLabel;
    lbl_ATC_LED: TLabel;
    lbl_1_LED: TLabel;
    lbl_2_LED: TLabel;
    lbl_RPLY_LED: TLabel;
    dp1: TShape;
    dp2: TShape;
    dp3: TShape;
    dp4: TShape;
    TA_ONLY_Sel: TShape;
    lbl_TEST: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPanel: TfrmPanel;

implementation

{$R *.dfm}

end.
