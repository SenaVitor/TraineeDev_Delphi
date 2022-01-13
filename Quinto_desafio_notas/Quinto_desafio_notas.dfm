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
    Left = 240
    Top = 64
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label2: TLabel
    Left = 304
    Top = 141
    Width = 28
    Height = 13
    Caption = 'Notas'
  end
  object EditValor: TEdit
    Left = 200
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object BtnSacar: TButton
    Left = 352
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Sacar'
    TabOrder = 1
    OnClick = BtnSacarClick
  end
  object Memo1: TMemo
    Left = 200
    Top = 160
    Width = 227
    Height = 89
    TabOrder = 2
  end
end
