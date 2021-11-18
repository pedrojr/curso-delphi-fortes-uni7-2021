object FrmFuncionarios: TFrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rios'
  ClientHeight = 427
  ClientWidth = 635
  Color = clBtnFace
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 427
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 352
        Align = alClient
        DataSource = DtsFuncionarios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 352
        Width = 627
        Height = 47
        Align = alBottom
        TabOrder = 1
        object Button1: TButton
          Left = 15
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 96
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Editar'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 177
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Button3Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 40
        Top = 32
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 40
        Top = 72
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 40
        Top = 112
        Width = 64
        Height = 13
        Caption = 'COD_CARGO'
      end
      object Label4: TLabel
        Left = 40
        Top = 152
        Width = 49
        Height = 13
        Caption = 'CONTATO'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 46
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsFuncionarios
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 88
        Width = 400
        Height = 21
        DataField = 'NOME'
        DataSource = DtsFuncionarios
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 40
        Top = 171
        Width = 264
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionarios
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 40
        Top = 127
        Width = 400
        Height = 21
        DataField = 'COD_CARGO'
        DataSource = DtsFuncionarios
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DtsCargos
        TabOrder = 3
      end
      object Button4: TButton
        Left = 284
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 365
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 5
        OnClick = Button5Click
      end
    end
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select * from funcionarios')
    Left = 508
    Top = 72
    object QryFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QryFuncionariosCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
      Required = True
    end
    object QryFuncionariosCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
    end
  end
  object DtsFuncionarios: TDataSource
    DataSet = QryFuncionarios
    Left = 508
    Top = 120
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 508
    Top = 232
  end
  object QryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select * from cargos')
    Left = 508
    Top = 184
  end
end
