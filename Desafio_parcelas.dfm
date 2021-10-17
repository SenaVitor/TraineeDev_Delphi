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
  object LValor: TLabel
    Left = 96
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object LParcelas: TLabel
    Left = 248
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Parcelas'
  end
  object Valor: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Parcelas: TEdit
    Left = 208
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object TMemo: TMemo
    Left = 96
    Top = 112
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object Button1: TButton
    Left = 376
    Top = 38
    Width = 97
    Height = 23
    Caption = 'Calcular Parcelas'
    TabOrder = 3
    OnClick = Button1Click
  end
end
