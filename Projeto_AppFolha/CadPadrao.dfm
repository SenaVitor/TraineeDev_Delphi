object FormCadPadrao: TFormCadPadrao
  Left = 0
  Top = 0
  Caption = 'FormCadPadrao'
  ClientHeight = 361
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 698
    Height = 361
    ActivePage = TbsRegistro
    Align = alClient
    TabOrder = 0
    object TbsLista: TTabSheet
      Caption = 'Lista'
      DesignSize = (
        690
        333)
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 265
        Align = alTop
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object BtnAdicionar: TButton
        Left = 3
        Top = 305
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = BtnAdicionarClick
      end
      object BtnEditar: TButton
        Left = 84
        Top = 305
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BtnEditarClick
      end
      object BtnExcluir: TButton
        Left = 165
        Top = 305
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = BtnExcluirClick
      end
    end
    object TbsRegistro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      DesignSize = (
        690
        333)
      object BtnCancelar: TButton
        Left = 363
        Top = 308
        Width = 75
        Height = 25
        Anchors = [akBottom]
        Caption = 'Cancelar'
        TabOrder = 0
        OnClick = BtnCancelarClick
      end
      object BtnSalvar: TButton
        Left = 272
        Top = 308
        Width = 75
        Height = 25
        Anchors = [akBottom]
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = BtnSalvarClick
      end
    end
  end
  object QryMain: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from ')
    Left = 580
    Top = 48
  end
  object DtsMain: TDataSource
    DataSet = QryMain
    Left = 580
    Top = 120
  end
end
