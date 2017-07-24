unit D00XD00A;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, D00SU01A,
  Data.DB, D00HD00A;

type
  TdmDados = class(Th_dmBase)
    connSQLServer: TZConnection;
    connConexao: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
  _gParamApp.cfConexao := TCustomConnection(connConexao);
end;

end.
