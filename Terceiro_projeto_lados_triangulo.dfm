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
    Left = 72
    Top = 56
    Width = 88
    Height = 13
    Caption = 'Lados do tri'#226'ngulo'
  end
  object Lado1: TEdit
    Left = 56
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Lado2: TEdit
    Left = 56
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Lado3: TEdit
    Left = 56
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 208
    Top = 121
    Width = 97
    Height = 35
    Caption = 'Checar tri'#226'ngulo'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Triangulo: TEdit
    Left = 327
    Top = 121
    Width = 282
    Height = 35
    ReadOnly = True
    TabOrder = 4
  end
end
