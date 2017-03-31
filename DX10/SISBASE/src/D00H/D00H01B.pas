// Form sobre para herdar
unit D00H01B;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Th_frmSobre = class(TForm)
    lbSistemaOperacional: TLabel;
    lbMemoriaAvaliada: TLabel;
    btnFechar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  h_frmSobre: Th_frmSobre;

implementation

{$R *.dfm}

end.
