unit D00SU01A;

interface

uses
  Data.DB;

type
  TParamApp = record
  public
    cfConexao: TCustomConnection;
    function fncGetConexao: TCustomConnection;
  end;

var
  _gParamApp: TParamApp;

implementation

{ _gParamAppp }

function TParamApp.fncGetConexao: TCustomConnection;
begin
  Result := cfConexao;
end;

end.
