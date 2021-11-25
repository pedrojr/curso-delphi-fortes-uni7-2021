object FrmFuncionarios4: TFrmFuncionarios4
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rios'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PgcCadastro: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 561
    ActivePage = TbsEdicao
    Align = alClient
    TabOrder = 0
    OnChange = PgcCadastroChange
    object TbsLista: TTabSheet
      Caption = 'Lista'
      DesignSize = (
        776
        533)
      object DbgLista: TDBGrid
        Left = 3
        Top = 3
        Width = 770
        Height = 490
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DtsFuncionario
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object BtnAdicionar: TButton
        Left = 3
        Top = 499
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = BtnAdicionarClick
      end
      object BtnEditar: TButton
        Left = 84
        Top = 499
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BtnEditarClick
      end
      object BtnExcluir: TButton
        Left = 165
        Top = 499
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = BtnExcluirClick
      end
    end
    object TbsEdicao: TTabSheet
      Caption = 'Edi'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 184
        Top = 96
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EdtCodigo
      end
      object Label2: TLabel
        Left = 184
        Top = 136
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = EdtNome
      end
      object Label3: TLabel
        Left = 184
        Top = 176
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label5: TLabel
        Left = 184
        Top = 219
        Width = 39
        Height = 13
        Caption = 'Contato'
      end
      object LblSalarios: TLabel
        Left = 184
        Top = 261
        Width = 37
        Height = 13
        Caption = 'Sal'#225'rios'
      end
      object BtnSalvar: TButton
        Left = 428
        Top = 440
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 5
        OnClick = BtnSalvarClick
      end
      object BtnCancelar: TButton
        Left = 509
        Top = 440
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = BtnCancelarClick
      end
      object EdtCodigo: TDBEdit
        Left = 184
        Top = 109
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsFuncionario
        TabOrder = 0
      end
      object EdtNome: TDBEdit
        Left = 184
        Top = 149
        Width = 400
        Height = 21
        DataField = 'NOME'
        DataSource = DtsFuncionario
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 234
        Width = 134
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionario
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 184
        Top = 192
        Width = 400
        Height = 21
        DataField = 'COD_CARGO'
        DataSource = DtsFuncionario
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DtsCargos
        TabOrder = 2
      end
      object DbgSalarios: TDBGrid
        Left = 184
        Top = 280
        Width = 261
        Height = 120
        DataSource = DtsSalarios
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object PnlSalario: TPanel
        Left = 324
        Top = 219
        Width = 141
        Height = 41
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        object LblSalario: TLabel
          Left = 0
          Top = 0
          Width = 32
          Height = 13
          Caption = 'Sal'#225'rio'
        end
        object EdtSalario: TEdit
          Left = 0
          Top = 15
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
  object DtsFuncionario: TDataSource
    DataSet = QryFuncionario
    Left = 636
    Top = 152
  end
  object QryFuncionario: TFDQuery
    IndexFieldNames = 'CODIGO'
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS')
    Left = 636
    Top = 197
    object QryFuncionarioCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionarioNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QryFuncionarioCOD_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
    end
    object QryFuncionarioCargo: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Cargo'
      LookupDataSet = QryCargos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_CARGO'
      Size = 50
      Lookup = True
    end
    object QryFuncionarioATIVO: TIntegerField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      OnGetText = QryFuncionarioATIVOGetText
    end
    object QryFuncionarioCONTATO: TStringField
      DisplayLabel = 'Contato'
      DisplayWidth = 20
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 30
    end
  end
  object DtsCargos: TDataSource
    AutoEdit = False
    DataSet = QryCargos
    Left = 716
    Top = 152
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    Left = 716
    Top = 196
    object QryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCargosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object QrySalarios: TFDQuery
    IndexFieldNames = 'COD_FUNCIONARIO'
    MasterSource = DtsFuncionario
    MasterFields = 'CODIGO'
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS_SALARIOS ORDER BY DATA_HORA DESC')
    Left = 636
    Top = 256
    object QrySalariosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object QrySalariosDATA_HORA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 20
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySalariosSALARIO: TFloatField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Required = True
    end
  end
  object DtsSalarios: TDataSource
    AutoEdit = False
    DataSet = QrySalarios
    Left = 636
    Top = 304
  end
end
