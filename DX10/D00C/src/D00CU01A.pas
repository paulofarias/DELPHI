unit D00CU01A;

interface

uses
  ZDataset, SysUtils, Classes, Controls, stdCtrls, ZAbstractConnection;

type
  TPQuery = class (TZQuery)
  published
    constructor Create(AOwner: TComponent); override;
    function fncConexao: TZAbstractConnection;
    //destructor Destroy; override;
  end;

  procedure register;

implementation

uses
  D00SU01A;

procedure register;
begin
  RegisterComponents('Componentes Diferenciados', [TPQuery]);
end;

constructor TPQuery.Create(AOwner: TComponent);
begin
  inherited create(AOwner);
  Connection := TZAbstractConnection(_gParamApp.cfConexao);
end;

function TPQuery.fncConexao: TZAbstractConnection;
begin
  Result := Connection;
end;

{destructor TPQuery.Destroy;
begin

  //Connection := nil;
  //inherited Destroy;
end;}
end.
