object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora Simples'
  ClientHeight = 284
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblValorA: TLabel
    Left = 16
    Top = 14
    Width = 34
    Height = 13
    Caption = 'Valor A'
  end
  object LblValorB: TLabel
    Left = 79
    Top = 14
    Width = 33
    Height = 13
    Caption = 'Valor B'
  end
  object EdtValorA: TEdit
    Left = 16
    Top = 32
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object EdtValorB: TEdit
    Left = 79
    Top = 32
    Width = 58
    Height = 21
    TabOrder = 1
  end
  object MemResultado: TMemo
    Left = 16
    Top = 59
    Width = 213
    Height = 89
    TabOrder = 2
  end
  object BtnSomar: TButton
    Left = 142
    Top = 32
    Width = 21
    Height = 21
    Caption = '+'
    TabOrder = 3
    OnClick = BtnSomarClick
  end
  object BtnSubtrair: TButton
    Left = 164
    Top = 32
    Width = 21
    Height = 21
    Caption = '-'
    TabOrder = 4
    OnClick = BtnSubtrairClick
  end
  object BtnMultiplicar: TButton
    Left = 186
    Top = 32
    Width = 21
    Height = 21
    Caption = '*'
    TabOrder = 5
    OnClick = BtnMultiplicarClick
  end
  object BtnDividir: TButton
    Left = 208
    Top = 32
    Width = 21
    Height = 21
    Caption = '/'
    TabOrder = 6
    OnClick = BtnDividirClick
  end
end
