object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 302
  ClientWidth = 647
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
    Left = 280
    Top = 8
    Width = 116
    Height = 13
    Caption = 'Valor do deposito/saque'
  end
  object Memo1: TMemo
    Left = 232
    Top = 88
    Width = 217
    Height = 161
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object EditValor: TEdit
    Left = 280
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 9
    Top = 72
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    ItemIndex = 0
    Items.Strings = (
      'Conta Corrente'
      'Conta Poupan'#231'a')
    TabOrder = 2
  end
  object Saque: TButton
    Left = 512
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Saque'
    TabOrder = 3
    OnClick = SaqueClick
  end
  object Deposito: TButton
    Left = 512
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Deposito'
    TabOrder = 4
    OnClick = DepositoClick
  end
end
