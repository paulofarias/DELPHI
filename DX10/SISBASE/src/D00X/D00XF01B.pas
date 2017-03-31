unit D00XF01B;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01B, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmSobre = class(Th_frmSobre)
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

uses
  D00SU01A;

{$R *.dfm}

procedure TfrmSobre.Timer1Timer(Sender: TObject);
begin
  inherited;
  lbMemoriaAvaliada.Caption := lbMemoriaAvaliada.Caption + ': '+ IntToStr((fncGetMemoriaFisica div 1024) div 1024);
end;

end.
