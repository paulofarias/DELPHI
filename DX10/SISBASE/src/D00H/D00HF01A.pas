// Form principal para herdar
unit D00HF01A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  Th_frmPrincipal = class(TForm)
    mmnPrincipal: TMainMenu;
    stbPrincipal: TStatusBar;
    sqlConn: TFDConnection;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure proConfigStatusBar;
  public
    { Public declarations }
  end;

var
  h_frmPrincipal: Th_frmPrincipal;

implementation

uses
  D00SU01A;

{$R *.dfm}

procedure Th_frmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Application.MessageBox('Deseja sair?','Confirmação', mb_yesno + mb_iconquestion) = idYes then
    Canclose := true
  else
    CanClose := False;
end;

procedure Th_frmPrincipal.FormCreate(Sender: TObject);
begin
  Self.Caption := Application.Title;
end;

procedure Th_frmPrincipal.FormShow(Sender: TObject);
begin
  fncSetConn(sqlConn);
  proConfigStatusBar;
end;

procedure Th_frmPrincipal.proConfigStatusBar;
begin
  if sqlConn.Connected then
    stbPrincipal.Panels.Items[1].Text := sqlConn.Params.Values['user_name'];
  stbPrincipal.Panels.Items[3].Text := FormatDateTime('dd/mm/yyyy', now);
  stbPrincipal.Panels.Items[5].Text := Self.HelpKeyword;
end;

end.
