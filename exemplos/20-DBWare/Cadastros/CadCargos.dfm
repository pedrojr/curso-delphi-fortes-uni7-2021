object FrmCargos: TFrmCargos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cargos'
  ClientHeight = 361
  ClientWidth = 544
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 560
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 56
    Top = 160
    Width = 345
    Height = 17
    DataField = 'STR_CALC'
    DataSource = DtsCargos
  end
  object Label2: TLabel
    Left = 56
    Top = 96
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 544
    Height = 35
    DataSource = DtsCargos
    Align = alTop
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 115
    Width = 345
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DtsCargos
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 64
    Width = 134
    Height = 21
    DataField = 'CODIGO'
    DataSource = DtsCargos
    TabOrder = 2
  end
  object BtnSetRange: TButton
    Left = 56
    Top = 224
    Width = 75
    Height = 25
    Caption = 'SetRange'
    TabOrder = 3
    OnClick = BtnSetRangeClick
  end
  object TblCargos: TFDTable
    OnCalcFields = TblCargosCalcFields
    IndexFieldNames = 'CODIGO'
    Connection = DM.Connection
    UpdateOptions.UpdateTableName = 'CARGOS'
    TableName = 'CARGOS'
    Left = 456
    Top = 48
    object TblCargosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TblCargosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object TblCargosSTR_CALC: TStringField
      FieldKind = fkCalculated
      FieldName = 'STR_CALC'
      Size = 100
      Calculated = True
    end
  end
  object DtsCargos: TDataSource
    DataSet = TblCargos
    Left = 456
    Top = 96
  end
end
