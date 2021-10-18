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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 13
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Label3: TLabel
    Left = 40
    Top = 72
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Button1: TButton
    Left = 40
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object N1: TEdit
    Left = 40
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object N2: TEdit
    Left = 40
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 192
    Top = 23
    Width = 153
    Height = 57
    Caption = 'RadioGroup1'
    Columns = 4
    Items.Strings = (
      '+'
      '-'
      '*'
      '/')
    TabOrder = 3
  end
  object result: TEdit
    Left = 144
    Top = 130
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
