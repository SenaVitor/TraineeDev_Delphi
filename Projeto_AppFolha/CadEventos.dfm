object FormEventos: TFormEventos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Eventos'
  ClientHeight = 321
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 634
    Height = 293
    ActivePage = TbsRegistro
    TabOrder = 0
    object TbsLista: TTabSheet
      Caption = 'Lista'
      object Button1: TButton
        Left = 127
        Top = 241
        Width = 26
        Height = 23
        Caption = '>'
        TabOrder = 0
        OnClick = Button1Click
      end
      object DBGrid1: TDBGrid
        Left = -4
        Top = 0
        Width = 613
        Height = 209
        DataSource = DtsEventos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 0
        Top = 241
        Width = 121
        Height = 21
        TabOrder = 2
      end
    end
    object TbsRegistro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 40
        Top = 40
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 40
        Top = 80
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 56
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsEventos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 99
        Width = 400
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DtsEventos
        TabOrder = 1
      end
      object Tipo: TDBRadioGroup
        Left = 40
        Top = 126
        Width = 225
        Height = 41
        Caption = 'Tipo'
        Columns = 2
        DataField = 'TIPO'
        DataSource = DtsEventos
        Items.Strings = (
          'Desconto'
          'Acr'#233'scimo')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
    end
  end
  object QryEventos: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'IDX_CODIGO'
        Fields = 'CODIGO'
        Options = [soPrimary]
      end>
    IndexFieldNames = 'Codigo'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'Select * from Eventos')
    Left = 552
    Top = 64
    object QryEventosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEventosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QryEventosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
  end
  object DtsEventos: TDataSource
    DataSet = QryEventos
    Left = 552
    Top = 120
  end
end
