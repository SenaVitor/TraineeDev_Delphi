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
    Left = 120
    Top = 77
    Width = 73
    Height = 13
    Caption = 'Digite um texto'
  end
  object Label2: TLabel
    Left = 456
    Top = 77
    Width = 96
    Height = 13
    Caption = 'Texto criptografado'
  end
  object EditTexto: TEdit
    Left = 64
    Top = 96
    Width = 185
    Height = 73
    TabOrder = 0
  end
  object BtnCriptografar: TButton
    Left = 294
    Top = 112
    Width = 75
    Height = 49
    Caption = 'Criptografar'
    TabOrder = 1
    OnClick = BtnCriptografarClick
  end
  object Memo1: TMemo
    Left = 416
    Top = 96
    Width = 185
    Height = 73
    TabOrder = 2
  end
end
