inherited frmCadPessoa: TfrmCadPessoa
  Caption = 'Cadastro de clientes/fornecedores'
  ClientHeight = 155
  ClientWidth = 368
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 398
  ExplicitHeight = 208
  PixelsPerInch = 96
  TextHeight = 13
  inherited h_scbxGeral: TScrollBox
    Width = 368
    Height = 155
    ExplicitWidth = 368
    ExplicitHeight = 155
    inherited h_tbBarra: TToolBar
      Width = 368
      ExplicitWidth = 368
      inherited h_dbnNavegador: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited h_pnlBotoes: TPanel
      Top = 126
      Width = 368
      ExplicitTop = 126
      ExplicitWidth = 368
      inherited h_gbxBotoes: TGroupBox
        Width = 368
        ExplicitWidth = 368
      end
    end
    object gbxPessoa: TGroupBox
      Left = 0
      Top = 29
      Width = 368
      Height = 97
      Align = alClient
      Caption = 'Clientes/Fornecedores'
      TabOrder = 2
      object lbPES_CD_PESSOA: TLabel
        Left = 11
        Top = 20
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object lbPES_ID_TIPPES: TLabel
        Left = 11
        Top = 44
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object Label1: TLabel
        Left = 11
        Top = 68
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object dbePES_CD_PESSOA: TDBEdit
        Left = 56
        Top = 16
        Width = 60
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'PES_CD_PESSOA'
        DataSource = h_dsGeral
        TabOrder = 0
      end
      object dbcbxPES_ID_TIPPES: TDBComboBox
        Left = 56
        Top = 40
        Width = 100
        Height = 21
        DataField = 'PES_ID_TIPPES'
        DataSource = h_dsGeral
        Items.Strings = (
          'Cliente'
          'Fornecedor'
          'Ambos')
        TabOrder = 1
      end
      object dbePES_NM_PESSOA: TDBEdit
        Left = 56
        Top = 64
        Width = 256
        Height = 21
        DataField = 'PES_NM_PESSOA'
        DataSource = h_dsGeral
        TabOrder = 2
      end
    end
  end
  inherited h_dsGeral: TDataSource
    DataSet = qryPES
    Left = 328
    Top = 8
  end
  object qryPES: TPQuery
    Connection = dmDados.connConexao
    BeforePost = qryPESBeforePost
    OnNewRecord = qryPESNewRecord
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  PES')
    Params = <>
    Left = 272
    Top = 8
    object qryPESPES_CD_PESSOA: TIntegerField
      FieldName = 'PES_CD_PESSOA'
      Required = True
    end
    object qryPESPES_NM_PESSOA: TWideStringField
      FieldName = 'PES_NM_PESSOA'
      Size = 60
    end
    object qryPESPES_ID_TIPPES: TWideStringField
      FieldName = 'PES_ID_TIPPES'
      Size = 1
    end
  end
end
