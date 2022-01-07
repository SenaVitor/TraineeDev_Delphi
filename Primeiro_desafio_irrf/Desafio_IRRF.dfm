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
  object LblIRRF: TLabel
    Left = 104
    Top = 155
    Width = 60
    Height = 13
    Caption = 'IRRF ='
  end
  object Button1: TButton
    Left = 240
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Calcular IRRF'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EditSalario: TEdit
    Left = 96
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditIRRF: TEdit
    Left = 154
    Top = 152
    Width = 161
    Height = 21
    TabOrder = 2
  end
end
