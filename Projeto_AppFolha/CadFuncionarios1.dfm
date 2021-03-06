inherited FormFuncionarios1: TFormFuncionarios1
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 479
  ClientWidth = 752
  ExplicitWidth = 768
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 752
    Height = 479
    ExplicitWidth = 752
    ExplicitHeight = 479
    inherited TbsLista: TTabSheet
      ExplicitWidth = 744
      ExplicitHeight = 451
      inherited DBGrid1: TDBGrid
        Width = 744
        DataSource = DtsMain
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CARGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Visible = True
          end>
      end
      inherited BtnAdicionar: TButton
        Top = 423
        ExplicitTop = 423
      end
      inherited BtnEditar: TButton
        Top = 423
        ExplicitTop = 423
      end
      inherited BtnExcluir: TButton
        Top = 423
        ExplicitTop = 423
      end
    end
    inherited TbsRegistro: TTabSheet
      ExplicitWidth = 744
      ExplicitHeight = 451
      object Label1: TLabel [0]
        Left = 184
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object Label2: TLabel [1]
        Left = 184
        Top = 43
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = EditNome
      end
      object Label3: TLabel [2]
        Left = 184
        Top = 83
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label5: TLabel [3]
        Left = 184
        Top = 126
        Width = 25
        Height = 13
        Caption = 'Ativo'
        FocusControl = EditAtivo
      end
      object Label4: TLabel [4]
        Left = 184
        Top = 169
        Width = 39
        Height = 13
        Caption = 'Contato'
        FocusControl = EditContato
      end
      object Label6: TLabel [5]
        Left = 184
        Top = 224
        Width = 37
        Height = 13
        Caption = 'Sal'#225'rios'
      end
      inherited BtnCancelar: TButton
        Left = 432
        Top = 410
        Width = 77
        TabOrder = 6
        ExplicitLeft = 432
        ExplicitTop = 410
        ExplicitWidth = 77
      end
      inherited BtnSalvar: TButton
        Left = 276
        Top = 410
        Width = 77
        TabOrder = 5
        ExplicitLeft = 276
        ExplicitTop = 410
        ExplicitWidth = 77
      end
      object EditCodigo: TDBEdit
        Left = 184
        Top = 19
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsMain
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 184
        Top = 59
        Width = 394
        Height = 21
        DataField = 'NOME'
        DataSource = DtsMain
        TabOrder = 1
      end
      object EditAtivo: TDBEdit
        Left = 184
        Top = 142
        Width = 134
        Height = 21
        DataField = 'ATIVO'
        DataSource = DtsMain
        TabOrder = 3
      end
      object EditContato: TDBEdit
        Left = 184
        Top = 185
        Width = 199
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsMain
        TabOrder = 4
      end
      object LcbCargos: TDBLookupComboBox
        Left = 184
        Top = 99
        Width = 394
        Height = 21
        DataField = 'COD_CARGO'
        DataSource = DtsMain
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DtsCargos
        TabOrder = 2
      end
      object DBGrid2: TDBGrid
        Left = 184
        Top = 243
        Width = 394
        Height = 120
        DataSource = DtsSalarios
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SALARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_HORA'
            Visible = True
          end>
      end
      object PnlSalario: TPanel
        Left = 389
        Top = 169
        Width = 189
        Height = 48
        TabOrder = 8
        Visible = False
        object Label7: TLabel
          Left = 16
          Top = -3
          Width = 32
          Height = 13
          Caption = 'Sal'#225'rio'
        end
        object EditSalario: TEdit
          Left = 16
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
  inherited QryMain: TFDQuery
    SQL.Strings = (
      'select * from funcionarios')
    Left = 708
    Top = 32
    object QryMainCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMainNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object QryMainCOD_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
    end
    object QryMainCargo: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'Cargo'
      LookupDataSet = QryCargos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_CARGO'
      Size = 50
      Lookup = True
    end
    object QryMainATIVO: TIntegerField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      OnGetText = QryMainATIVOGetText
    end
    object QryMainCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  inherited DtsMain: TDataSource
    Left = 708
    Top = 80
  end
  object QryCargos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from cargos')
    Left = 708
    Top = 128
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 708
    Top = 176
  end
  object QrySalarios: TFDQuery
    IndexFieldNames = 'COD_FUNCIONARIO'
    MasterSource = DtsMain
    MasterFields = 'CODIGO'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from funcionarios_salarios  order by data_hora desc')
    Left = 708
    Top = 232
    object QrySalariosCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
      Visible = False
    end
    object QrySalariosSALARIO: TFMTBCDField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object QrySalariosDATA_HORA: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 20
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
  end
  object DtsSalarios: TDataSource
    DataSet = QrySalarios
    Left = 708
    Top = 288
  end
end
