object FrmMdi: TFrmMdi
  Left = 0
  Top = 0
  Caption = 'Mdi Form'
  ClientHeight = 296
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FmEventos1: TFmEventos
    Left = 22
    Top = 24
    Width = 281
    Height = 37
    AutoSize = True
    TabOrder = 0
    ExplicitLeft = 22
    ExplicitTop = 24
  end
  inline FmTeste1: TFmTeste
    Left = 22
    Top = 80
    Width = 232
    Height = 21
    AutoSize = True
    TabOrder = 1
    ExplicitLeft = 22
    ExplicitTop = 80
    ExplicitWidth = 232
    inherited CheckBox1: TCheckBox
      Left = 135
      Top = 1
      ExplicitLeft = 135
      ExplicitTop = 1
    end
  end
end
