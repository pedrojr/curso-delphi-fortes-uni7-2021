object FmEventos: TFmEventos
  Left = 0
  Top = 0
  Width = 281
  Height = 37
  AutoSize = True
  TabOrder = 0
  object LblEvento: TLabel
    Left = 0
    Top = 0
    Width = 34
    Height = 13
    Caption = 'Evento'
  end
  object CbxEvento: TComboBox
    Left = 0
    Top = 16
    Width = 281
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Sal'#225'rio Base'
    Items.Strings = (
      'Sal'#225'rio Base'
      'H. Extra 50%'
      'H. Extra 100%'
      '1'#170' Parc. 13'#186' Sal.'
      '13'#186' Sal'#225'rio')
  end
end
