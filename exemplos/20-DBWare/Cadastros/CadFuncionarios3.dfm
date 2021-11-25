inherited FrmFuncionarios3: TFrmFuncionarios3
  Caption = 'Cadastro de Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgcPrincipal: TPageControl
    ActivePage = TabRegistro
    inherited TabLista: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 627
      ExplicitHeight = 399
    end
    inherited TabRegistro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 627
      ExplicitHeight = 399
      object Label1: TLabel [0]
        Left = 48
        Top = 40
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = EdtCodigo
      end
      object Label2: TLabel [1]
        Left = 48
        Top = 80
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = EdtNome
      end
      object Label3: TLabel [2]
        Left = 48
        Top = 120
        Width = 64
        Height = 13
        Caption = 'COD_CARGO'
      end
      object Label4: TLabel [3]
        Left = 48
        Top = 160
        Width = 49
        Height = 13
        Caption = 'CONTATO'
        FocusControl = EdtContato
      end
      inherited BtnSalvar: TButton
        TabOrder = 4
      end
      inherited BtnCancelar: TButton
        TabOrder = 5
      end
      object EdtCargo: TDBLookupComboBox
        Left = 48
        Top = 136
        Width = 400
        Height = 21
        DataField = 'COD_CARGO'
        DataSource = DtsMain
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DtsCargos
        TabOrder = 2
      end
      object EdtCodigo: TDBEdit
        Left = 48
        Top = 55
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsMain
        TabOrder = 0
      end
      object EdtNome: TDBEdit
        Left = 48
        Top = 96
        Width = 400
        Height = 21
        DataField = 'NOME'
        DataSource = DtsMain
        TabOrder = 1
      end
      object EdtContato: TDBEdit
        Left = 48
        Top = 176
        Width = 264
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsMain
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 48
        Top = 203
        Width = 121
        Height = 38
        Caption = ' Ativo '
        Columns = 2
        DataField = 'ATIVO'
        DataSource = DtsMain
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 6
        Values.Strings = (
          '1'
          '0')
      end
    end
  end
  inherited QryMain: TFDQuery
    OnCalcFields = QryMainCalcFields
    SQL.Strings = (
      'select * from funcionarios')
    object QryMainCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMainNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QryMainCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
      Required = True
    end
    object QryMainCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
    end
    object QryMainATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Visible = False
    end
    object QryMainAtivoDesc: TStringField
      DisplayLabel = 'Ativo'
      FieldKind = fkCalculated
      FieldName = 'AtivoDesc'
      Size = 10
      Calculated = True
    end
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select * from cargos')
    Left = 508
    Top = 184
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 508
    Top = 232
  end
end
