object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Containers'
  ClientHeight = 421
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 335
    Top = 8
    Width = 185
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 0
    object Edit2: TEdit
      Left = 11
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit2'
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 321
    Height = 249
    ActivePage = TabSheet1
    MultiLine = True
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitLeft = 8
      ExplicitTop = 0
      object Edit1: TEdit
        Left = 11
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
  object ScrollBox1: TScrollBox
    Left = 336
    Top = 131
    Width = 185
    Height = 122
    TabOrder = 2
    object Edit3: TEdit
      Left = 19
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 19
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 19
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit5'
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 271
    Width = 317
    Height = 129
    TabOrder = 3
    object Edit6: TEdit
      Left = 15
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit6'
    end
  end
end
