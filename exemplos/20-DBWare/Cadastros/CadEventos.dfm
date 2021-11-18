object FrmEventos: TFrmEventos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Eventos'
  ClientHeight = 397
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 587
    Height = 397
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 3
        Top = 0
        Width = 574
        Height = 334
        DataSource = DtsEventos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object EdtBusca: TEdit
        Left = 3
        Top = 340
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object BtnBusca: TButton
        Left = 125
        Top = 340
        Width = 21
        Height = 21
        Caption = '>'
        TabOrder = 2
        OnClick = BtnBuscaClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 32
        Top = 64
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 104
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 80
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsEventos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 120
        Width = 400
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DtsEventos
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 32
        Top = 147
        Width = 193
        Height = 38
        Caption = 'Tipo'
        Columns = 2
        DataField = 'TIPO'
        DataSource = DtsEventos
        Items.Strings = (
          'Desconto'
          'Acr'#233'scimo')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 579
        Height = 49
        DataSource = DtsEventos
        Align = alTop
        TabOrder = 3
      end
    end
  end
  object DtsEventos: TDataSource
    DataSet = QryEventos
    Left = 504
    Top = 88
  end
  object QryEventos: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'IDX_CODIGO'
        Fields = 'CODIGO'
        Options = [soPrimary]
      end>
    IndexName = 'IDX_CODIGO'
    Connection = DM.Connection
    SQL.Strings = (
      'select * from eventos')
    Left = 504
    Top = 136
    object QryEventosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEventosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QryEventosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
  end
end
