object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Left = 8
    Top = 215
    Width = 76
    Height = 13
    Caption = 'Total da Venda:'
  end
  object LblTotal: TLabel
    Left = 120
    Top = 215
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label2: TLabel
    Left = 32
    Top = 10
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 120
    Top = 10
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label4: TLabel
    Left = 232
    Top = 10
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 56
    Width = 371
    Height = 153
    DefaultColWidth = 72
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object Adicionar: TButton
    Left = 301
    Top = 27
    Width = 36
    Height = 23
    Caption = '+'
    TabOrder = 1
    OnClick = AdicionarClick
  end
  object EditNome: TEdit
    Left = 8
    Top = 29
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object EditQtd: TEdit
    Left = 103
    Top = 29
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object EditPreco: TEdit
    Left = 198
    Top = 29
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object Remover: TButton
    Left = 343
    Top = 27
    Width = 36
    Height = 23
    Caption = '-'
    TabOrder = 5
    OnClick = RemoverClick
  end
end
