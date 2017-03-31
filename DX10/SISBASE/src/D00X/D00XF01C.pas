unit D00XF01C;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01C, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmConfigBase = class(Th_frmConfigBase)
    btnProcurar: TBitBtn;
    dlgArquivo: TOpenDialog;
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigBase: TfrmConfigBase;

implementation

{$R *.dfm}

procedure TfrmConfigBase.btnProcurarClick(Sender: TObject);
begin
  inherited;
  if dlgArquivo.Execute then
    edtBase.Text := dlgArquivo.FileName;
end;

end.
