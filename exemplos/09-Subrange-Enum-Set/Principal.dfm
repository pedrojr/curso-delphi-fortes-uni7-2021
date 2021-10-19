object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Exemplo 09'
  ClientHeight = 331
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Resultado: TMemo
    Left = 8
    Top = 8
    Width = 401
    Height = 315
    TabOrder = 0
  end
  object BtnSubrange: TButton
    Left = 415
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Subrange'
    TabOrder = 1
    OnClick = BtnSubrangeClick
  end
  object BtnEnum1: TButton
    Left = 414
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Enum1'
    TabOrder = 2
    OnClick = BtnEnum1Click
  end
  object BtnEnum2: TButton
    Left = 415
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Enum2'
    TabOrder = 3
    OnClick = BtnEnum2Click
  end
  object BtnSet: TButton
    Left = 415
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Set'
    TabOrder = 4
    OnClick = BtnSetClick
  end
  object BtnUnnamed: TButton
    Left = 415
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Unnamed'
    TabOrder = 5
    OnClick = BtnUnnamedClick
  end
end
