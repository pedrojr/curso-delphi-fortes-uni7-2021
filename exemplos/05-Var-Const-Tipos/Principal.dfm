object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Var / Const / Types'
  ClientHeight = 322
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 8
    Top = 9
    Width = 513
    Height = 305
    TabOrder = 0
  end
  object Button1: TButton
    Left = 527
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Var/Const'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 527
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Char'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 527
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Boolean'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 527
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Integer'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 527
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Double'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 527
    Top = 163
    Width = 75
    Height = 25
    Caption = 'DateTime'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 527
    Top = 194
    Width = 75
    Height = 25
    Caption = 'Variant'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 527
    Top = 225
    Width = 75
    Height = 25
    Caption = 'Variant2'
    TabOrder = 8
    OnClick = Button8Click
  end
end
