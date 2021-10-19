object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tri'#226'ngulo'
  ClientHeight = 283
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EdtLado1: TEdit
    Left = 8
    Top = 8
    Width = 65
    Height = 21
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 0
  end
  object EdtLado2: TEdit
    Left = 79
    Top = 8
    Width = 65
    Height = 21
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 1
  end
  object EdtLado3: TEdit
    Left = 150
    Top = 8
    Width = 65
    Height = 21
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 2
  end
  object Resultado: TMemo
    Left = 7
    Top = 35
    Width = 375
    Height = 240
    TabOrder = 3
  end
  object BtnVerificar: TButton
    Left = 221
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 4
    OnClick = BtnVerificarClick
  end
end
