unit D01SF01D;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01A, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmCadDespesa = class(Th_frmCadBase)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDespesa: TfrmCadDespesa;

implementation

{$R *.dfm}

end.
