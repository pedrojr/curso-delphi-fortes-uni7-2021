object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 300
  ClientWidth = 505
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
  object LblTotal: TLabel
    Left = 380
    Top = 279
    Width = 3
    Height = 13
    Alignment = taRightJustify
  end
  object GrdProdutos: TStringGrid
    Left = 8
    Top = 39
    Width = 375
    Height = 234
    Color = clWhite
    ColCount = 4
    DefaultColWidth = 80
    DrawingStyle = gdsClassic
    FixedColor = clSilver
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 4
  end
  object BtnCadastrar: TButton
    Left = 389
    Top = 8
    Width = 106
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = BtnCadastrarClick
  end
  object BtnRemover: TButton
    Left = 390
    Top = 39
    Width = 107
    Height = 25
    Caption = 'Remover'
    TabOrder = 5
    OnClick = BtnRemoverClick
  end
  object EdtProduto: TEdit
    Left = 8
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Produto'
  end
  object EdtQtde: TEdit
    Left = 135
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Qtde'
  end
  object EdtPreco: TEdit
    Left = 262
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Pre'#231'o'
  end
end
