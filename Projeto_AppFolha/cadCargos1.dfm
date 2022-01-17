inherited FormCargos1: TFormCargos1
  Caption = 'Cadastro de Cargos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TbsLista: TTabSheet
      inherited DBGrid1: TDBGrid
        DataSource = DtsMain
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
    end
    inherited TbsRegistro: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 56
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = EditDescricao
      end
      object EditCodigo: TDBEdit
        Left = 16
        Top = 32
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsMain
        TabOrder = 2
      end
      object EditDescricao: TDBEdit
        Left = 16
        Top = 72
        Width = 264
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DtsMain
        TabOrder = 3
      end
    end
  end
  inherited QryMain: TFDQuery
    SQL.Strings = (
      'select * from cargos')
    object QryMainCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMainDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
end
