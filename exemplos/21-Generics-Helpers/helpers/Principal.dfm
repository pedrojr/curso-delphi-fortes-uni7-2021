object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Helpers'
  ClientHeight = 417
  ClientWidth = 646
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
  object CheckListBox: TCheckListBox
    Left = 8
    Top = 8
    Width = 249
    Height = 177
    ItemHeight = 13
    TabOrder = 0
  end
  object btnMarcar: TButton
    Left = 263
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Marcar'
    TabOrder = 1
    OnClick = btnMarcarClick
  end
  object btnDesmarcar: TButton
    Left = 263
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Desmarcar'
    TabOrder = 2
    OnClick = btnDesmarcarClick
  end
  object btnInverter: TButton
    Left = 263
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Inverter'
    TabOrder = 3
    OnClick = btnInverterClick
  end
  object Memo: TMemo
    Left = 8
    Top = 191
    Width = 249
    Height = 178
    TabOrder = 4
  end
  object btnInteger: TButton
    Left = 263
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Integer'
    TabOrder = 5
    OnClick = btnIntegerClick
  end
  object btnString: TButton
    Left = 263
    Top = 222
    Width = 75
    Height = 25
    Caption = 'String'
    TabOrder = 6
    OnClick = btnStringClick
  end
end
