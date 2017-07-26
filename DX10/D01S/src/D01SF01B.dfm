inherited frmCadUsuario: TfrmCadUsuario
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 312
  ClientWidth = 492
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 512
  ExplicitHeight = 355
  PixelsPerInch = 96
  TextHeight = 13
  inherited h_scbxGeral: TScrollBox
    Width = 492
    Height = 312
    ExplicitWidth = 492
    ExplicitHeight = 312
    inherited h_tbBarra: TToolBar
      Width = 492
      ExplicitWidth = 492
      inherited h_dbnNavegador: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited h_pnlBotoes: TPanel
      Top = 283
      Width = 492
      ExplicitTop = 283
      ExplicitWidth = 492
      inherited h_gbxBotoes: TGroupBox
        Width = 492
        ExplicitWidth = 492
      end
    end
    object pnlLabels: TPanel
      Left = 0
      Top = 29
      Width = 492
      Height = 15
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lbUSR_CD_USUARIO: TLabel
        Left = 7
        Top = -1
        Width = 55
        Height = 13
        Caption = 'Cd. usu'#225'rio'
      end
      object lbUSR_NM_USUARIO: TLabel
        Left = 69
        Top = -1
        Width = 65
        Height = 13
        Caption = 'Nome usu'#225'rio'
      end
      object lbUSR_NM_LOGIN: TLabel
        Left = 221
        Top = -1
        Width = 25
        Height = 13
        Caption = 'Login'
      end
      object lbUSR_NM_SENHA: TLabel
        Left = 341
        Top = -1
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
    end
    object dbctrlUsuario: TDBCtrlGrid
      Left = 0
      Top = 44
      Width = 492
      Height = 239
      Align = alClient
      AllowDelete = False
      AllowInsert = False
      DataSource = h_dsGeral
      PanelBorder = gbNone
      PanelHeight = 29
      PanelWidth = 475
      TabOrder = 3
      RowCount = 8
      SelectedColor = clNavy
      object dbeUSR_CD_USUARIO: TDBEdit
        Left = 7
        Top = 3
        Width = 60
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'USR_CD_USUARIO'
        DataSource = h_dsGeral
        ReadOnly = True
        TabOrder = 0
      end
      object dbeUSR_NM_USUARIO: TDBEdit
        Left = 69
        Top = 3
        Width = 150
        Height = 21
        DataField = 'USR_NM_USUARIO'
        DataSource = h_dsGeral
        TabOrder = 1
      end
      object dbeUSR_NM_LOGIN: TDBEdit
        Left = 221
        Top = 3
        Width = 118
        Height = 21
        DataField = 'USR_NM_LOGIN'
        DataSource = h_dsGeral
        TabOrder = 2
      end
      object dbeUSR_NM_SENHA: TDBEdit
        Left = 341
        Top = 3
        Width = 118
        Height = 21
        DataField = 'USR_NM_SENHA'
        DataSource = h_dsGeral
        PasswordChar = '*'
        TabOrder = 3
      end
    end
  end
  inherited h_dsGeral: TDataSource
    DataSet = qryUSR
    Left = 448
  end
  object qryUSR: TZQuery
    Connection = dmDados.connConexao
    BeforePost = qryUSRBeforePost
    OnNewRecord = qryUSRNewRecord
    SQL.Strings = (
      'SELECT * FROM USR;')
    Params = <>
    Left = 392
    object qryUSRUSR_CD_USUARIO: TIntegerField
      FieldName = 'USR_CD_USUARIO'
      Required = True
    end
    object qryUSRUSR_NM_USUARIO: TWideStringField
      FieldName = 'USR_NM_USUARIO'
      Size = 60
    end
    object qryUSRUSR_NM_LOGIN: TWideStringField
      FieldName = 'USR_NM_LOGIN'
      Size = 30
    end
    object qryUSRUSR_NM_SENHA: TWideStringField
      FieldName = 'USR_NM_SENHA'
      Size = 30
    end
  end
end
