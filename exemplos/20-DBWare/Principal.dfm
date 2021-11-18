object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 541
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = Menu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 516
    Width = 784
    Height = 25
    Panels = <>
  end
  object Menu: TMainMenu
    Left = 18
    Top = 12
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object CadCargos: TMenuItem
        Caption = 'Cargos'
        OnClick = CadCargosClick
      end
      object CadEventos: TMenuItem
        Caption = 'Eventos'
        OnClick = CadEventosClick
      end
      object CadFuncionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = CadFuncionariosClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object TabINSS: TMenuItem
        Caption = 'Tabela de INSS'
      end
      object TabIRRF: TMenuItem
        Caption = 'Tabela de IRRF'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Sair'
        OnClick = SairClick
      end
    end
    object Processos1: TMenuItem
      Caption = 'Processos'
      object ProRegistrarMudancaSalarios: TMenuItem
        Caption = 'Mudan'#231'a de sal'#225'rio(s)'
      end
      object ProLancarEventoFuncionrios: TMenuItem
        Caption = 'Lan'#231'ar evento para funcion'#225'rio(s)'
      end
      object ProFolhadePagamento: TMenuItem
        Caption = 'Folha de Pagamento'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object RelFolhadePagamento: TMenuItem
        Caption = 'Folha de Pagamento'
      end
      object RelFuncionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = SairClick
    end
  end
end
