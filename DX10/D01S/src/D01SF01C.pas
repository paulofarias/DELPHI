unit D01SF01C;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF01A, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, D00CU01A;

type
  TfrmCadPessoa = class(Th_frmCadBase)
    gbxPessoa: TGroupBox;
    lbPES_CD_PESSOA: TLabel;
    dbePES_CD_PESSOA: TDBEdit;
    dbcbxPES_ID_TIPPES: TDBComboBox;
    lbPES_ID_TIPPES: TLabel;
    Label1: TLabel;
    qryPES: TPQuery;
    qryPESPES_CD_PESSOA: TIntegerField;
    qryPESPES_NM_PESSOA: TWideStringField;
    qryPESPES_ID_TIPPES: TWideStringField;
    dbePES_NM_PESSOA: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryPESNewRecord(DataSet: TDataSet);
    procedure qryPESBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

uses
  D00XD00A, D00XU00A;

procedure TfrmCadPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  Release;
  frmCadPessoa := nil;
end;

procedure TfrmCadPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  qryPES.Open;
end;

procedure TfrmCadPessoa.qryPESBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryPESPES_CD_PESSOA.Value := fncGeraId('PES', 'PES_CD_PESSOA');
end;

procedure TfrmCadPessoa.qryPESNewRecord(DataSet: TDataSet);
begin
  inherited;
  dbcbxPES_ID_TIPPES.SetFocus;
  qryPESPES_CD_PESSOA.Value := fncGeraId('PES', 'PES_CD_PESSOA');
end;

initialization
  registerClass(TfrmCadPessoa);

end.
