object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cargos: TMenuItem
        Caption = 'Cargos'
      end
      object Eventos: TMenuItem
        Caption = 'Eventos'
      end
      object CadFuncionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
      object TabelaINSS: TMenuItem
        Caption = 'Tabela de INSS'
      end
      object TabelaIRRF: TMenuItem
        Caption = 'Tabela de IRRF'
      end
      object CadSair: TMenuItem
        Caption = 'Sair'
      end
    end
    object Processos: TMenuItem
      Caption = 'Processos'
      object Mudancasdesalarios: TMenuItem
        Caption = 'Mudan'#231'as de sal'#225'rio(s)'
      end
      object eventofuncionrios: TMenuItem
        Caption = 'Lan'#231'ar evento para funcion'#225'rio(s)'
      end
      object ProcFolhaPagamento: TMenuItem
        Caption = 'Folha de Pagamento'
      end
    end
    object Relatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object ReFolhaPagamento: TMenuItem
        Caption = 'Folha de Pagamento'
      end
      object ReFuncionarios: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
    end
    object Sair: TMenuItem
      Caption = 'Sair'
    end
  end
end
