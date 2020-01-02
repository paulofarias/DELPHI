inherited frmConfigBase: TfrmConfigBase
  Caption = 'Configura'#231#227'o de banco de dados'
  ClientHeight = 144
  ExplicitHeight = 183
  PixelsPerInch = 96
  TextHeight = 13
  inherited h_gbxGeral: TGroupBox
    Height = 103
    ExplicitHeight = 103
    inherited edtSenha: TEdit
      PasswordChar = '*'
    end
    object btnProcurar: TBitBtn [5]
      Left = 414
      Top = 64
      Width = 21
      Height = 21
      TabOrder = 2
      OnClick = btnProcurarClick
    end
    inherited edtBase: TEdit
      Width = 350
      TabOrder = 3
      ExplicitWidth = 350
    end
  end
  inherited h_pnlGeral: TPanel
    Top = 103
    ExplicitTop = 103
  end
  object dlgArquivo: TOpenDialog
    Filter = 'Firebird|*.gdb;*.fdb|Todos|*.*'
    FilterIndex = 0
    Title = 'Selecione um arquivo .gdb'
    Left = 384
    Top = 16
  end
end
