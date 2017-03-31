{Form de configuração de banco de dados para herdar}
unit D00H01C;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Th_frmConfigBase = class(TForm)
    h_gbxGeral: TGroupBox;
    h_pnlGeral: TPanel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    btnFechar: TBitBtn;
    lbBase: TLabel;
    edtBase: TEdit;
    btnOk: TBitBtn;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function fncValidaBase: Boolean;
    procedure proSalvaBase;
    procedure proLerBase;
  public
    { Public declarations }
  end;

var
  h_frmConfigBase: Th_frmConfigBase;

implementation

uses
  D00U01A, D00U01B;

{$R *.dfm}

{ Th_frmConfigBase }

procedure Th_frmConfigBase.btnOkClick(Sender: TObject);
begin
  if fncValidaBase then
  begin
    proSalvaBase;
    Application.MessageBox('Gravado com sucesso!', 'Confirmação'{mtConfirmation}, MB_OK);
    ModalResult := mrOk;
  end;
end;

procedure Th_frmConfigBase.proLerBase;
begin
  edtUsuario.Text := fncGetIni(ccINIFILE, ccBANCODEDADOS, ccUSUARIO);
  edtSenha.Text := fncGetIni(ccINIFILE, ccBANCODEDADOS, ccSENHA);
  edtBase.Text := fncgetIni(ccINIFILE, ccBANCODEDADOS, ccBASE);
end;

procedure Th_frmConfigBase.proSalvaBase;
begin
  proSetIni(ccINIFILE, ccBANCODEDADOS, ccUSUARIO, Trim(edtUsuario.Text));
  proSetIni(ccINIFILE, ccBANCODEDADOS, ccSENHA, Trim(edtSenha.Text));
  proSetIni(ccINIFILE, ccBANCODEDADOS, ccBASE, Trim(edtBase.Text));
end;

function Th_frmConfigBase.fncValidaBase: Boolean;
begin
  Result := False;
  if Trim(edtUsuario.Text) = '' then
  begin
    Application.MessageBox('Informe o nome do usuário.', 'Aviso', MB_OK);
    if edtUsuario.CanFocus then
      edtUsuario.SetFocus;
    Exit;
  end;

  if Trim(edtSenha.Text) = '' then
  begin
    Application.MessageBox('Informe a senha.', 'Aviso', MB_OK);
    if edtSenha.CanFocus then
      edtSenha.SetFocus;
    Exit;
  end;

  if Trim(edtBase.Text) = '' then
  begin
    Application.MessageBox('Informe o banco de dados.', 'Aviso', MB_OK);
    if edtBase.CanFocus then
      edtBase.SetFocus;
    Exit;
  end;
  Result := True;
end;

procedure Th_frmConfigBase.FormShow(Sender: TObject);
begin
  proLerBase;
end;

end.
