object h_frmPrincipal: Th_frmPrincipal
  Left = 0
  Top = 0
  HelpType = htKeyword
  HelpKeyword = 'DH01A'
  Caption = 'h_frmPrincipal'
  ClientHeight = 397
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmnPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stbPrincipal: TStatusBar
    Left = 0
    Top = 378
    Width = 695
    Height = 19
    Panels = <
      item
        Text = 'Banco de dados'
        Width = 80
      end
      item
        Width = 50
      end
      item
        Text = 'Data/Hora'
        Width = 60
      end
      item
        Width = 80
      end
      item
        Text = 'Formul'#225'rio'
        Width = 60
      end
      item
        Width = 50
      end>
  end
  object mmnPrincipal: TMainMenu
    Left = 152
    Top = 40
  end
  object sqlConn: TFDConnection
    Params.Strings = (
      'Database=D:\PROJETOS\DELPHI\DX10\PONTO\bin\db\ponto.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 312
    Top = 40
  end
end
