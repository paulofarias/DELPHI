// Unit de conex�o fireDAC
unit D00SU01C;

interface

uses
    IniFiles, SysUtils, Forms, FireDAC.Comp.Client, Dialogs;

type
TConexao = class
  private
    FPath: string;
    FServidor: string;
    FPorta: integer;
    FDatabase: string;
    FSenha: string;
    FUsuario: string;
    FDriver: string;
    FSecao: string;
  public
    property Path : string read FPath write FPath;
    property Servidor : string read FServidor write FServidor;
    property Porta : integer read FPorta write FPorta;
    property Database : string read FDatabase write FDatabase;
    property Senha : string read FSenha write FSenha;
    property Usuario : string read FUsuario write FUsuario;
    property Driver : string read FDriver write FDriver;
    property Secao : string read FSecao write FSecao;
    constructor Create(Path: string; Secao: string);
    procedure proLeINI(); virtual;
    procedure proGravaINI(Usuario, Senha, Servidor, Banco: string; Porta: integer); virtual;
    procedure proConectar(var Conexao: TFDConnection); virtual;
  end;


implementation

// L� o arquivo INI e carrega os par�metros no componente TFDConnection
procedure TConexao.proConectar(var Conexao: TFDConnecti-on);
begin
  proLeINI();
  try
    //Passa os par�metros para o objeto Conex�o
    with Conexao, Params do
    begin
      Connected := false;
      LoginPrompt := false;
      Clear;
      Add('hostname='+ Servidor);
      Add('user_name='+ Usuario);
      Add('password='+ Senha);
      Add('port='+ IntToStr(Porta));
      Add('Database='+ Database);
      Add('DriverID='+ Driver);
    end;
  except
    on E:Exception do
    ShowMessage('Erro ao carregar par�metros de conex�o!'#13#10 + E.Message);
  end;
end;

// M�todo construtor recebe o caminho do INI e nome da Se��o para Leitura
constructor TConexao.Create(Path: string; Secao: string);
begin
  if FileExists(Path) then
  begin
    Self.Path := Path;
    Self.Secao := Secao;
  end
  else
    raise Exception.Create('Arquivo INI para configura��o n�o encontrado.'#13#10'Aplica��o ser� finalizada.');
end;

// Grava os par�metros recebidos no arquivo INI
procedure TConexao.proGravaINI(Usuario, Senha, Servidor, Banco: string; Porta: integer);
var
  _rArqIni : TIniFile;
begin
  _rArqIni := TIniFile.Create(Path);
  try
    with _rArqIni do
    begin
      WriteString(Secao, 'Usuario', Usuario);
      WriteString(Secao, 'Senha', Senha);
      WriteString(Secao, 'Database', Banco);
      WriteString(Secao, 'Servidor', Servidor);
      WriteInteger(Secao, 'Porta', Porta);
    end;
  finally
      _rArqIni.Free;
  end;
end;

// L� os par�metros do arquivo INI e atribui para os atributos
procedure TConexao.proLeINI();
var
  _rArqIni : TIniFile;
begin
  _rArqIni := TIniFile.Create(Path);
  try
    with _rArqIni do
    begin
      Servidor := ReadString(Secao, 'Servidor', '');
      Porta    := ReadInteger(Secao, 'Porta', 0);
      Database := ReadString(Secao, 'Database', '');
      Senha    := ReadString(Secao, 'Senha', '');
      Usuario  := ReadString(Secao, 'Usuario', '');
      Driver   := ReadString(Secao, 'drivername', '');
    end;
  finally
    _rArqIni.Free;
  end;
end;

end.
