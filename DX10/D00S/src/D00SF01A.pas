unit D00SF01A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF00A, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Th_frmMsgBase = class(Th_frmBase)
    Panel1: TPanel;
    h_btnOk: TButton;
    h_mmMensagem: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  h_frmMsgBase: Th_frmMsgBase;

implementation

{$R *.dfm}

end.
