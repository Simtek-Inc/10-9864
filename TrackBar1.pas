unit TrackBar1;

interface

uses
  SysUtils, Classes, Controls, ComCtrls;

type
  TTrackBarX1 = class(TTrackBar)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TTrackBarX1]);
end;

end.
