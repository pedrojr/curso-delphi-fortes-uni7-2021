object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FizzBuzz'
  ClientHeight = 321
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EdtNumero: TEdit
    Left = 8
    Top = 8
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object Resultado: TMemo
    Left = 8
    Top = 35
    Width = 379
    Height = 278
    TabOrder = 1
  end
  object BtnVerificar: TButton
    Left = 87
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = BtnVerificarClick
  end
end
