unit D00HF01B;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, D00HF00A, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ToolWin, Vcl.ComCtrls;

type
  Th_frmPrincipalBase = class(Th_frmBase)
    h_stbPrincipal: TStatusBar;
    h_ttbPrincipal: TToolBar;
    h_dbnNavegador: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure proCreateForm(Classe: TComponentClass; var Reference);
  end;

var
  h_frmPrincipalBase: Th_frmPrincipalBase;

implementation

{$R *.dfm}

{ Th_frmPrincipalBase }

procedure Th_frmPrincipalBase.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := Application.Title;
end;

procedure Th_frmPrincipalBase.proCreateForm(Classe: TComponentClass;
  var Reference);
begin
  Application.CreateForm(Classe, Reference);
end;

end.
