inherited frmPrincipal: TfrmPrincipal
  Caption = 'frmPrincipal'
  ClientHeight = 428
  ClientWidth = 756
  Menu = mmnPrincipal
  ExplicitWidth = 786
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  object mmnPrincipal: TMainMenu
    Left = 96
    Top = 16
    object mniFuncoes: TMenuItem
      Caption = 'Fun'#231#245'es'
      object mniCadastros: TMenuItem
        Caption = 'Cadastros'
        object mniUsuarios: TMenuItem
          Caption = 'Usu'#225'rios'
          OnClick = mniUsuariosClick
        end
        object Clientes1: TMenuItem
          Caption = 'Clientes/Fornecedores'
          OnClick = Clientes1Click
        end
        object Contrasapagar1: TMenuItem
          Caption = 'Contras a pagar'
        end
        object Contasareceber1: TMenuItem
          Caption = 'Contas a receber'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Parmetrosdosistemas1: TMenuItem
        Caption = 'Par'#226'metros do sistema'
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Sobre1: TMenuItem
        Caption = 'Sobre'
      end
    end
  end
end
