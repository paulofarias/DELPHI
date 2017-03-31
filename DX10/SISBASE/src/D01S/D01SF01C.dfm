object frmSplash: TfrmSplash
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmSplash'
  ClientHeight = 320
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbSplash: TLabel
    Left = 168
    Top = 24
    Width = 111
    Height = 39
    Caption = 'Sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbUsuario: TLabel
    Left = 288
    Top = 211
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object lbSenha: TLabel
    Left = 288
    Top = 238
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object btnOk: TSpeedButton
    Left = 407
    Top = 262
    Width = 50
    Height = 20
    Caption = 'OK'
  end
  object btnCancela: TSpeedButton
    Left = 354
    Top = 262
    Width = 50
    Height = 20
    Caption = 'Cancela'
  end
  object edtUsuario: TEdit
    Left = 336
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 336
    Top = 235
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object qryUSR: TFDQuery
    Left = 144
    Top = 104
  end
end
