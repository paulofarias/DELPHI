inherited frmCadDespesa: TfrmCadDespesa
  Caption = 'frmCadDespesa'
  ClientHeight = 331
  ClientWidth = 682
  ExplicitWidth = 712
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 13
  inherited h_tbBarra: TToolBar
    Width = 682
    inherited h_dbnNavegador: TDBNavigator
      Hints.Strings = ()
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 58
    Width = 682
    Height = 244
    Align = alClient
    Caption = 'GroupBox1'
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 176
    ExplicitWidth = 185
    ExplicitHeight = 105
  end
  inherited h_pnlBotoes: TPanel
    Top = 302
    Width = 682
    TabOrder = 2
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 29
    Width = 682
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 164
    ExplicitWidth = 522
  end
end
