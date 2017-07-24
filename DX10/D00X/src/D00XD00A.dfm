inherited dmDados: TdmDados
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 92
  Width = 181
  object connSQLServer: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'DESKTOP-U2PG3N8\SQLEXPRESS'
    Port = 0
    Database = 'siscom'
    User = 'sa'
    Password = 'masterkey'
    Protocol = 'mssql'
    Left = 120
    Top = 16
  end
  object connConexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'siscom'
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'mysql-5'
    Left = 24
    Top = 16
  end
end
