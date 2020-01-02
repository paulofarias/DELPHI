inherited frmPrincipal: TfrmPrincipal
  HelpKeyword = 'DF01A'
  Caption = 'frmPrincipal'
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbPrincipal: TStatusBar
    HelpType = htKeyword
    HelpKeyword = 'DF01A'
  end
  inherited mmnPrincipal: TMainMenu
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Novo1: TMenuItem
        Caption = '&Novo'
        object Pessoa1: TMenuItem
          Caption = '&Pessoa'
        end
        object Ponto1: TMenuItem
          Caption = 'Ponto'
        end
        object Feriado1: TMenuItem
          Caption = 'Feriado'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
    object Janelas1: TMenuItem
      Caption = '&Janelas'
      object Emcascata1: TMenuItem
        Caption = 'Em cascata'
      end
      object Ladoaladohorizontalmnte1: TMenuItem
        Caption = 'Lado a lado horizontalmnte'
      end
      object Ladoaladoverticalmente1: TMenuItem
        Caption = 'Lado a lado verticalmente'
      end
    end
    object Ferramentas1: TMenuItem
      Caption = '&Ferramentas'
      object Configurao1: TMenuItem
        Action = actConfigBase
      end
      object Ajustedoponto1: TMenuItem
        Caption = 'Ajuste do ponto'
      end
    end
    object Ajuda1: TMenuItem
      Caption = '&Ajuda'
      object Sobre1: TMenuItem
        Action = actSobre
      end
    end
  end
  object imlIcones: TImageList [2]
    Left = 456
    Top = 80
  end
  object aclPrincipal: TActionList [3]
    Left = 160
    Top = 104
    object actSobre: TAction
      Caption = 'Sobre'
      HelpKeyword = 'DF01B'
      OnExecute = actSobreExecute
    end
    object actConfigBase: TAction
      Caption = 'Configura'#231#227'o da base de dados'
      OnExecute = actConfigBaseExecute
    end
  end
  inherited sqlConn: TFDConnection
    Left = 656
    Top = 8
  end
end
