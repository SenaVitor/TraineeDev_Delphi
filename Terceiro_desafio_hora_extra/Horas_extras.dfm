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
    Top = 80
    Width = 38
    Height = 13
    Caption = 'Dia/m'#234's'
  end
  object Label2: TLabel
    Left = 8
    Top = 149
    Width = 106
    Height = 13
    Caption = 'C'#243'digo do Funcion'#225'rio'
  end
  object Label3: TLabel
    Left = 456
    Top = 85
    Width = 169
    Height = 13
    Caption = 'Total de Horas Extras (em minutos)'
  end
  object Memo1: TMemo
    Left = 120
    Top = 16
    Width = 330
    Height = 257
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object BtnCalcular: TButton
    Left = 485
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = BtnCalcularClick
  end
  object Feriado: TCheckBox
    Left = 456
    Top = 170
    Width = 121
    Height = 17
    Caption = 'Feriado ou Domingo'
    TabOrder = 2
  end
  object EditData: TEdit
    Left = 8
    Top = 99
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object EditCod: TEdit
    Left = 8
    Top = 168
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object EditHoras: TEdit
    Left = 456
    Top = 114
    Width = 104
    Height = 21
    TabOrder = 5
  end
  object BtnAdicionar: TButton
    Left = 22
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = BtnAdicionarClick
  end
end
