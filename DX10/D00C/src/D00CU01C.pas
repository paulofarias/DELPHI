unit D00CU01C;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.DBCGrids;

type
  TPDBCtrlGrid = class(TDBCtrlGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

uses
  Vcl.Graphics;

procedure Register;
begin
  RegisterComponents('Componentes Diferenciados', [TPDBCtrlGrid]);
end;

{ TPDBCtrlGrid }

constructor TPDBCtrlGrid.Create(AOwner: TComponent);
begin
  inherited;
  SelectedColor := clNavy;
end;

end.
