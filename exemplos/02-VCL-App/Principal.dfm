object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'VCL App'
  ClientHeight = 378
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblOlaMundo: TLabel
    Left = 28
    Top = 20
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtOlaMundo: TEdit
    Left = 24
    Top = 38
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object btnOlaMundo: TButton
    Left = 175
    Top = 36
    Width = 25
    Height = 25
    Caption = '>'
    TabOrder = 1
    OnClick = btnOlaMundoClick
  end
end
