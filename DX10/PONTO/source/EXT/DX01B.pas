unit DX01B;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DH01B, Vcl.StdCtrls, Vcl.Buttons,
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
  DU01A;

{$R *.dfm}

procedure TfrmSobre.Timer1Timer(Sender: TObject);
begin
  inherited;
  lbMemoriaAvaliada.Caption := lbMemoriaAvaliada.Caption + ': '+ IntToStr((fncGetMemoriaFisica div 1024) div 1024);
end;

end.
