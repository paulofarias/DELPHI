unit D00HF01A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF00A, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls;

type
  Th_frmCadBase = class(Th_frmBase)
    h_dsGeral: TDataSource;
    h_scbxGeral: TScrollBox;
    h_tbBarra: TToolBar;
    h_pnlBotoes: TPanel;
    h_gbxBotoes: TGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  h_frmCadBase: Th_frmCadBase;

implementation

{$R *.dfm}

uses
  D00SU01A;

procedure Th_frmCadBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  Self := nil;
end;

constructor Th_frmCadBase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //_gParamApp.cfNavegador.Parent := Self.h_tbBarra;
end;

end.
