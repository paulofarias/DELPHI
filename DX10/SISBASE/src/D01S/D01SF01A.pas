unit D01SF01A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01A, Vcl.Menus, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Data.DBXFirebird,
  Data.DB, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(Th_frmPrincipal)
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Pessoa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Janelas1: TMenuItem;
    Emcascata1: TMenuItem;
    Ladoaladohorizontalmnte1: TMenuItem;
    Ladoaladoverticalmente1: TMenuItem;
    Ponto1: TMenuItem;
    Feriado1: TMenuItem;
    Ferramentas1: TMenuItem;
    Configurao1: TMenuItem;
    Ajustedoponto1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    imlIcones: TImageList;
    aclPrincipal: TActionList;
    actSobre: TAction;
    actConfigBase: TAction;
    procedure Sair1Click(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actConfigBaseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  D00XF01C, D00XF01B;

{$R *.dfm}

procedure TfrmPrincipal.actConfigBaseExecute(Sender: TObject);
begin
  inherited;
  frmConfigBase := TFrmConfigBase.Create(Self);
  try
    frmConfigBase.ShowModal;
  finally
    frmConfigBase.Free;
  end;
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  inherited;
  frmSobre := TFrmSobre.Create(Self);
  try
    frmSobre.ShowModal;
  finally
    frmSobre.Free;
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
