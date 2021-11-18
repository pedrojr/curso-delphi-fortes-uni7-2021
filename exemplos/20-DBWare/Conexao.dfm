object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 270
  Width = 371
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'User_Name=SYSDBA'
      'Database=C:\Dados\DADOS.FDB')
    LoginPrompt = False
    Transaction = Transaction
    Left = 64
    Top = 48
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 64
    Top = 104
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 152
    Top = 64
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 240
    Top = 168
  end
end
