unit D00HF00A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Th_frmBase = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  h_frmBase: Th_frmBase;

implementation

constructor Th_frmBase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

{$R *.dfm}

end.
