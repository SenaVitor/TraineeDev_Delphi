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
  object N: TEdit
    Left = 168
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 160
    Top = 96
    Width = 259
    Height = 129
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 320
    Top = 38
    Width = 99
    Height = 25
    Caption = 'Exibir n'#250'meros'
    TabOrder = 2
    OnClick = Button1Click
  end
end
