inherited FormEventos1: TFormEventos1
  Caption = 'FormEventos1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TbsLista: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = DtsMain
      end
      object Button1: TButton
        Left = 663
        Top = 305
        Width = 26
        Height = 23
        Caption = '>'
        TabOrder = 4
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 536
        Top = 305
        Width = 121
        Height = 21
        TabOrder = 5
      end
    end
    inherited TbsRegistro: TTabSheet
      object Label1: TLabel [0]
        Left = 96
        Top = 32
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object Label2: TLabel [1]
        Left = 96
        Top = 72
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = EditDescricao
      end
      object EditCodigo: TDBEdit
        Left = 96
        Top = 48
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsMain
        TabOrder = 2
      end
      object EditDescricao: TDBEdit
        Left = 96
        Top = 88
        Width = 394
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DtsMain
        TabOrder = 3
      end
      object DrgTipo: TDBRadioGroup
        Left = 96
        Top = 128
        Width = 209
        Height = 33
        Caption = 'Tipo'
        Columns = 2
        DataField = 'TIPO'
        DataSource = DtsMain
        Items.Strings = (
          'Desconto'
          'Acr'#233'scimo')
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
      end
    end
  end
  inherited QryMain: TFDQuery
    SQL.Strings = (
      'select * from eventos')
    object QryMainCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMainDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QryMainTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
  end
end
