inherited h_frmPrincipalBase: Th_frmPrincipalBase
  Caption = 'h_frmPrincipalBase'
  ClientHeight = 139
  ClientWidth = 356
  FormStyle = fsMDIForm
  WindowState = wsMaximized
  OnCreate = FormCreate
  ExplicitWidth = 386
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  object h_stbPrincipal: TStatusBar
    Left = 0
    Top = 120
    Width = 356
    Height = 19
    Panels = <
      item
        Width = 100
      end>
    ExplicitTop = 28
    ExplicitWidth = 293
  end
  object h_ttbPrincipal: TToolBar
    Left = 0
    Top = 0
    Width = 356
    Height = 29
    ButtonHeight = 25
    Caption = 'h_ttbPrincipal'
    TabOrder = 1
    object h_dbnNavegador: TDBNavigator
      Left = 0
      Top = 0
      Width = 240
      Height = 25
      TabOrder = 0
    end
  end
end
