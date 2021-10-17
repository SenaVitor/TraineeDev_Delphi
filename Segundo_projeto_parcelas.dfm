object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calcular Parcelas'
  ClientHeight = 299
  ClientWidth = 635
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 16
    Width = 24
    Height = 20
    Caption = 'Valor'
    Color = clWhite
    ParentColor = False
  end
  object Label2: TLabel
    Left = 304
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Parcelas'
    Color = clWhite
    ParentColor = False
  end
  object Memo1: TMemo
    Left = 120
    Top = 96
    Width = 387
    Height = 169
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Valor: TEdit
    Left = 120
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Parcelas: TEdit
    Left = 264
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 416
    Top = 46
    Width = 91
    Height = 23
    Caption = 'Calcular Parcelas'
    TabOrder = 3
    OnClick = Button1Click
  end
end
