inherited h_frmCadBase: Th_frmCadBase
  Caption = 'h_frmCadBase'
  ClientHeight = 205
  ClientWidth = 522
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnClose = FormClose
  ExplicitWidth = 552
  ExplicitHeight = 258
  PixelsPerInch = 96
  TextHeight = 13
  object h_scbxGeral: TScrollBox
    Left = 0
    Top = 0
    Width = 522
    Height = 205
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    object h_tbBarra: TToolBar
      Left = 0
      Top = 0
      Width = 522
      Height = 29
      Caption = 'h_tbBarra'
      TabOrder = 0
    end
    object h_pnlBotoes: TPanel
      Left = 0
      Top = 176
      Width = 522
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object h_gbxBotoes: TGroupBox
        Left = 0
        Top = 0
        Width = 522
        Height = 29
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object h_dsGeral: TDataSource
    Left = 472
  end
end
