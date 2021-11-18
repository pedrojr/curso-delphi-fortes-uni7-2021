object FrmCadPadrao: TFrmCadPadrao
  Left = 0
  Top = 0
  Caption = 'FrmPadrao'
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
  object PgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 427
    ActivePage = TabLista
    Align = alClient
    TabOrder = 0
    object TabLista: TTabSheet
      Caption = 'Lista'
      object GrdLista: TDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 352
        Align = alClient
        DataSource = DtsMain
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
        object BtnAdicionar: TButton
          Left = 15
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = BtnAdicionarClick
        end
        object BtnEditar: TButton
          Left = 96
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Editar'
          TabOrder = 1
          OnClick = BtnEditarClick
        end
        object BtnExcluir: TButton
          Left = 177
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = BtnExcluirClick
        end
      end
    end
    object TabRegistro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object BtnSalvar: TButton
        Left = 284
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = BtnSalvarClick
      end
      object BtnCancelar: TButton
        Left = 365
        Top = 336
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = BtnCancelarClick
      end
    end
  end
  object QryMain: TFDQuery
    Connection = DM.Connection
    Left = 508
    Top = 72
  end
  object DtsMain: TDataSource
    DataSet = QryMain
    Left = 508
    Top = 120
  end
end
