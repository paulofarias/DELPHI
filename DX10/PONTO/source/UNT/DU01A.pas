// Unit de funções gerais
unit DU01A;

interface

uses
  Windows, IniFiles, FireDAC.Comp.Client, SysUtils, Dialogs;

  function fncGetMemoriaFisica: Integer;
  procedure proSetIni(lcIni, lcSessao, lcSubSessao, lcValor: string);
  function fncgetIni(lcIni, lcSessao, lcSubSessao: string): string;
  function fncSetConn(var loConn: TFDConnection): Boolean;

implementation

uses
  DU01B;

function fncGetMemoriaFisica: Integer;
var
  loMemoryStatus: TMemoryStatus;
begin
  loMemoryStatus.dwLength := sizeof(loMemoryStatus);
  GlobalMemoryStatus(loMemoryStatus);
  Result := loMemoryStatus.dwAvailPhys;
end;

procedure proSetIni(lcIni, lcSessao, lcSubSessao, lcValor: string);
var
  _rloINI: TIniFile;
begin
  _rloINI := TIniFile.Create(lcIni);
  try
    _rloINI.WriteString(lcSessao, lcSubSessao, lcValor);
  finally
    _rloINI.Free;
  end;
end;

function fncgetIni(lcIni, lcSessao, lcSubSessao: string): string;
var
  loINI: TIniFile;
begin
  loINI := TIniFile.Create(lcIni);
  try
    Result := loINI.ReadString(lcSessao, lcSubSessao, '');
  finally
    loINI.Free;
  end;
end;

function fncSetConn(var loConn: TFDConnection): Boolean;
begin
  try
    loConn.Close;
    loConn.Params.Values['user_name'] := fncGetIni(ccINIFILE, ccBANCODEDADOS, ccUSUARIO);
    loConn.Params.Values['password'] := fncGetIni(ccINIFILE, ccBANCODEDADOS, ccSENHA);
    loConn.Params.Values['database'] := fncgetIni(ccINIFILE, ccBANCODEDADOS, ccBASE);
    loConn.Open;
    result := loConn.Connected;
  except
    on e: Exception do
    begin
      result := False;
      showMessage(E.Message);
   end;
  end;
end;

end.
