object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Record'
  ClientHeight = 313
  ClientWidth = 521
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
    Width = 425
    Height = 289
    TabOrder = 0
  end
  object Button1: TButton
    Left = 439
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Record1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 439
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Record2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 439
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Record3'
    TabOrder = 3
    OnClick = Button3Click
  end
end
