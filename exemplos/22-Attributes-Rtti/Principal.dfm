object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'RTTI / Attribute'
  ClientHeight = 522
  ClientWidth = 753
  Color = clBtnFace
  Constraints.MinHeight = 414
  Constraints.MinWidth = 610
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    753
    522)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 134
    Top = 8
    Width = 611
    Height = 505
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 7
  end
  object btnMethods: TBitBtn
    Left = 8
    Top = 101
    Width = 120
    Height = 25
    Caption = 'GetMethods'
    TabOrder = 3
    OnClick = btnMethodsClick
  end
  object btnEnum: TBitBtn
    Left = 8
    Top = 194
    Width = 120
    Height = 25
    Caption = 'Enum Label'
    TabOrder = 6
    OnClick = btnEnumClick
  end
  object btnFields: TBitBtn
    Left = 8
    Top = 39
    Width = 120
    Height = 25
    Caption = 'GetFields'
    TabOrder = 1
    OnClick = btnFieldsClick
  end
  object btnProperties: TBitBtn
    Left = 8
    Top = 70
    Width = 120
    Height = 25
    Caption = 'GetProperties'
    TabOrder = 2
    OnClick = btnPropertiesClick
  end
  object btnInvokeMethod: TBitBtn
    Left = 8
    Top = 132
    Width = 120
    Height = 25
    Caption = 'Invoke Method'
    TabOrder = 4
    OnClick = btnInvokeMethodClick
  end
  object btnAttributes: TBitBtn
    Left = 8
    Top = 163
    Width = 120
    Height = 25
    Caption = 'GetAttributes'
    TabOrder = 5
    OnClick = btnAttributesClick
  end
  object btnTypeInfo: TBitBtn
    Left = 8
    Top = 8
    Width = 120
    Height = 25
    Caption = 'TypeInfo'
    TabOrder = 0
    OnClick = btnTypeInfoClick
  end
end
