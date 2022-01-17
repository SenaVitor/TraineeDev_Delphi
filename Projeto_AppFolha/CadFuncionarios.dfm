object FormFuncionarios: TFormFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcionarios'
  ClientHeight = 319
  ClientWidth = 634
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
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 634
    Height = 319
    ActivePage = TabEdicao
    Align = alClient
    TabOrder = 0
    object TabLista: TTabSheet
      Caption = 'Lista'
      DesignSize = (
        626
        291)
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 597
        Height = 234
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DtsFuncionarios
        TabOrder = 0
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
            FieldName = 'NOME'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CARGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descri'#231#227'o'
            Width = 100
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
      object BtnAdicionar: TButton
        Left = 16
        Top = 255
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = BtnAdicionarClick
        ExplicitTop = 235
      end
      object BtnEditar: TButton
        Left = 112
        Top = 255
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Editar'
        TabOrder = 2
        OnClick = BtnEditarClick
        ExplicitTop = 235
      end
      object BtnExcluir: TButton
        Left = 208
        Top = 255
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = BtnExcluirClick
        ExplicitTop = 235
      end
    end
    object TabEdicao: TTabSheet
      Caption = 'Edicao'
      ImageIndex = 1
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = EditCodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = EditNome
      end
      object Label3: TLabel
        Left = 24
        Top = 96
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label4: TLabel
        Left = 26
        Top = 182
        Width = 39
        Height = 13
        Caption = 'Contato'
        FocusControl = EditContato
      end
      object Label5: TLabel
        Left = 26
        Top = 139
        Width = 25
        Height = 13
        Caption = 'Ativo'
        FocusControl = EditAtivo
      end
      object EditCodigo: TDBEdit
        Left = 24
        Top = 32
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsFuncionarios
        TabOrder = 0
      end
      object EditNome: TDBEdit
        Left = 24
        Top = 72
        Width = 385
        Height = 21
        DataField = 'NOME'
        DataSource = DtsFuncionarios
        TabOrder = 1
      end
      object LcbCargo: TDBLookupComboBox
        Left = 24
        Top = 112
        Width = 385
        Height = 21
        DataField = 'COD_CARGO'
        DataSource = DtsFuncionarios
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DtsCargos
        TabOrder = 2
      end
      object BtnSalvar: TButton
        Left = 214
        Top = 263
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 5
        OnClick = BtnSalvarClick
      end
      object BtnCancelar: TButton
        Left = 334
        Top = 263
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = BtnCancelarClick
      end
      object EditContato: TDBEdit
        Left = 26
        Top = 198
        Width = 199
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionarios
        TabOrder = 4
      end
      object EditAtivo: TDBEdit
        Left = 26
        Top = 155
        Width = 134
        Height = 21
        DataField = 'ATIVO'
        DataSource = DtsFuncionarios
        TabOrder = 3
      end
    end
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from funcionarios')
    Left = 552
    Top = 64
    object QryFuncionariosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionariosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object QryFuncionariosCOD_CARGO: TIntegerField
      DisplayLabel = 'Cargo'
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
    end
    object QryFuncionariosCargo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Cargo'
      LookupDataSet = QryCargos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_CARGO'
      Size = 50
      Lookup = True
    end
    object QryFuncionariosATIVO: TIntegerField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      OnGetText = QryFuncionariosATIVOGetText
    end
    object QryFuncionariosCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
  end
  object QryCargos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from cargos')
    Left = 552
    Top = 184
    object QryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCargosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 552
    Top = 248
  end
  object DtsFuncionarios: TDataSource
    DataSet = QryFuncionarios
    Left = 552
    Top = 128
  end
end
