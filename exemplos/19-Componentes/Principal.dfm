object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 503
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 72
    object este11: TMenuItem
      Caption = 'Teste 1'
      OnClick = este11Click
    end
    object este21: TMenuItem
      Caption = 'Teste 2'
    end
    object este31: TMenuItem
      Caption = 'Teste 3'
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 16
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Mdi1: TMenuItem
        Caption = 'Mdi'
        OnClick = Mdi1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Mdis1: TMenuItem
      Caption = 'Mdi'#39's'
      OnClick = Mdis1Click
    end
  end
end
