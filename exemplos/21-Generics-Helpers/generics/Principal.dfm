object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Generics'
  ClientHeight = 374
  ClientWidth = 593
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
  object btnArray: TBitBtn
    Left = 8
    Top = 101
    Width = 120
    Height = 25
    Caption = 'Array'
    TabOrder = 2
    OnClick = btnArrayClick
  end
  object btnArraySearch: TBitBtn
    Left = 8
    Top = 132
    Width = 120
    Height = 25
    Caption = 'Array Search'
    TabOrder = 3
    OnClick = btnArraySearchClick
  end
  object btnObjectList: TBitBtn
    Left = 8
    Top = 70
    Width = 120
    Height = 25
    Caption = 'ObjectList'
    TabOrder = 1
    OnClick = btnObjectListClick
  end
  object btnAutoFree: TBitBtn
    Left = 8
    Top = 256
    Width = 120
    Height = 25
    Caption = 'AutoFree'
    TabOrder = 7
    OnClick = btnAutoFreeClick
  end
  object btnSingleton: TBitBtn
    Left = 8
    Top = 225
    Width = 120
    Height = 25
    Caption = 'Singleton'
    TabOrder = 6
    OnClick = btnSingletonClick
  end
  object Memo: TMemo
    Left = 134
    Top = 8
    Width = 452
    Height = 358
    TabOrder = 8
  end
  object btnDictionary: TBitBtn
    Left = 8
    Top = 163
    Width = 120
    Height = 25
    Caption = 'Dictionary'
    TabOrder = 4
    OnClick = btnDictionaryClick
  end
  object btnObjectDictionary: TBitBtn
    Left = 8
    Top = 194
    Width = 120
    Height = 25
    Caption = 'ObjectDictionary'
    TabOrder = 5
    OnClick = btnObjectDictionaryClick
  end
  object btnStringList: TBitBtn
    Left = 8
    Top = 8
    Width = 120
    Height = 25
    Caption = 'StringList'
    TabOrder = 0
    OnClick = btnStringListClick
  end
  object btnStringList2: TBitBtn
    Left = 8
    Top = 39
    Width = 120
    Height = 25
    Caption = 'StringList'
    TabOrder = 9
    OnClick = btnStringList2Click
  end
end
