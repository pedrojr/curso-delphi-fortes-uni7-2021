object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pneus'
  ClientHeight = 321
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Log: TMemo
    Left = 8
    Top = 8
    Width = 433
    Height = 305
    TabOrder = 0
  end
  object Button1: TButton
    Left = 447
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pneu'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 447
    Top = 39
    Width = 75
    Height = 25
    Caption = 'PneuIntf'
    TabOrder = 2
    OnClick = Button2Click
  end
end
