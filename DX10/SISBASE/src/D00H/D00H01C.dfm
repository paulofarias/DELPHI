object h_frmConfigBase: Th_frmConfigBase
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 7
  Caption = 'h_frmConfigBase'
  ClientHeight = 201
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object h_gbxGeral: TGroupBox
    Left = 0
    Top = 0
    Width = 443
    Height = 160
    Align = alClient
    TabOrder = 0
    object lbUsuario: TLabel
      Left = 16
      Top = 20
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object lbSenha: TLabel
      Left = 16
      Top = 44
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object lbBase: TLabel
      Left = 16
      Top = 68
      Width = 27
      Height = 13
      Caption = 'Base:'
    end
    object edtUsuario: TEdit
      Left = 58
      Top = 16
      Width = 130
      Height = 21
      TabOrder = 0
    end
    object edtSenha: TEdit
      Left = 58
      Top = 40
      Width = 130
      Height = 21
      TabOrder = 1
    end
    object edtBase: TEdit
      Left = 58
      Top = 64
      Width = 130
      Height = 21
      TabOrder = 2
    end
  end
  object h_pnlGeral: TPanel
    Left = 0
    Top = 160
    Width = 443
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnFechar: TBitBtn
      Left = 360
      Top = 9
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnOk: TBitBtn
      Left = 279
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
end
