unit D01SF01B;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01A, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, D00CU01A;

type
  TfrmCadUsuario = class(Th_frmCadBase)
    qryUSR: TZQuery;
    qryUSRUSR_CD_USUARIO: TIntegerField;
    qryUSRUSR_NM_USUARIO: TWideStringField;
    qryUSRUSR_NM_LOGIN: TWideStringField;
    qryUSRUSR_NM_SENHA: TWideStringField;
    pnlLabels: TPanel;
    lbUSR_CD_USUARIO: TLabel;
    lbUSR_NM_USUARIO: TLabel;
    lbUSR_NM_LOGIN: TLabel;
    lbUSR_NM_SENHA: TLabel;
    dbctrlUsuario: TDBCtrlGrid;
    dbeUSR_CD_USUARIO: TDBEdit;
    dbeUSR_NM_USUARIO: TDBEdit;
    dbeUSR_NM_LOGIN: TDBEdit;
    dbeUSR_NM_SENHA: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryUSRNewRecord(DataSet: TDataSet);
    procedure qryUSRBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

uses
  D00XD00A, D00XU00A;

procedure TfrmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  Release;
  frmCadUsuario := nil;
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  qryUSR.Open;
end;

procedure TfrmCadUsuario.qryUSRBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(dbeUSR_NM_USUARIO.Text) = '' then
  begin
    showMessage('O nome do usuário deve ser preenchido!');
    if dbeUSR_NM_USUARIO.CanFocus then
      dbeUSR_NM_USUARIO.SetFocus;
    Abort;
  end;
  qryUSRUSR_CD_USUARIO.Value := fncGeraId('USR', 'USR_CD_USUARIO');
end;

procedure TfrmCadUsuario.qryUSRNewRecord(DataSet: TDataSet);
begin
  inherited;
  dbeUSR_NM_USUARIO.SetFocus;
  qryUSRUSR_CD_USUARIO.Value := fncGeraId('USR', 'USR_CD_USUARIO');
end;

initialization
  registerclass(TfrmCadUsuario);

end.
