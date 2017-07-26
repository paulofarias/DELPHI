unit D01SF00A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01B,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Menus;

type
  TfrmPrincipal = class(Th_frmPrincipalBase)
    mmnPrincipal: TMainMenu;
    mniFuncoes: TMenuItem;
    mniCadastros: TMenuItem;
    mniUsuarios: TMenuItem;
    Contrasapagar1: TMenuItem;
    Contasareceber1: TMenuItem;
    Clientes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Configuraes1: TMenuItem;
    Parmetrosdosistemas1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    procedure mniUsuariosClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  D01SF01B, D01SF01C;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  inherited;
  if not Assigned(frmCadUsuario) then
    frmCadPessoa := TFrmCadPessoa.Create(Application);
  frmCadPessoa.Show;
end;

procedure TfrmPrincipal.mniUsuariosClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmCadUsuario) then
    frmCadUsuario := TFrmCadUsuario.Create(Application);
  frmCadUsuario.Show;
end;

initialization
  registerclass(TfrmPrincipal);

end.
