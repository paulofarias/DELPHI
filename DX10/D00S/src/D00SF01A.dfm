inherited h_frmMsgBase: Th_frmMsgBase
  BorderStyle = bsDialog
  Caption = 'h_frmMsgBase'
  ClientHeight = 277
  ClientWidth = 300
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 236
    Width = 300
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 8
    object h_btnOk: TButton
      Left = 225
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
    end
  end
  object h_mmMensagem: TMemo
    Left = 0
    Top = 0
    Width = 300
    Height = 236
    Align = alClient
    Color = clBtnFace
    TabOrder = 1
    ExplicitTop = -6
  end
end
