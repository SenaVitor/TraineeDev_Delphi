object FormCargos: TFormCargos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cargos'
  ClientHeight = 299
  ClientWidth = 635
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
  object Label1: TLabel
    Left = 48
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 48
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 64
    Width = 134
    Height = 21
    DataField = 'CODIGO'
    DataSource = DtsCargos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 48
    Top = 123
    Width = 400
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DtsCargos
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 192
    Width = 75
    Height = 25
    Caption = 'SetRange'
    TabOrder = 2
    OnClick = Button1Click
  end
  object TblCargos: TFDTable
    OnCalcFields = TblCargosCalcFields
    IndexFieldNames = 'CODIGO'
    Connection = DM.FDConnection1
    TableName = 'CARGOS'
    Left = 512
    Top = 56
    object TblCargosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object TblCargosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object TblCargosSTR_CALCULADO: TStringField
      FieldKind = fkCalculated
      FieldName = 'STR_CALCULADO'
      Calculated = True
    end
  end
  object DtsCargos: TDataSource
    DataSet = TblCargos
    Left = 512
    Top = 120
  end
end
