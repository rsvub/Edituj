object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Okno'
  ClientHeight = 382
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
  object Napis: TLabel
    Left = 80
    Top = 304
    Width = 465
    Height = 49
    AutoSize = False
    Color = clHighlightText
    ParentColor = False
  end
  object Edit: TEdit
    Left = 80
    Top = 56
    Width = 465
    Height = 161
    AutoSize = False
    TabOrder = 0
    Text = 'Napi'#353' text pro editaci'
  end
  object Tlacitko: TButton
    Left = 280
    Top = 240
    Width = 75
    Height = 25
    Caption = 'P'#345'epi'#353' text'
    TabOrder = 1
    OnClick = TlacitkoClick
  end
end
