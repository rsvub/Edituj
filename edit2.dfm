object Okno: TOkno
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Okno'
  ClientHeight = 338
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ukoncit: TButton
    Left = 304
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Konec'
    TabOrder = 0
    Visible = False
    OnClick = UkoncitClick
  end
  object Zapni: TRadioButton
    Left = 96
    Top = 120
    Width = 113
    Height = 17
    Caption = 'Lze ukon'#269'it'
    TabOrder = 1
    OnClick = ZapniClick
  end
  object Vypni: TRadioButton
    Left = 96
    Top = 143
    Width = 113
    Height = 17
    Caption = 'Nelze ukon'#269'it'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = VypniClick
  end
  object Panel: TPanel
    Left = 304
    Top = 56
    Width = 289
    Height = 104
    TabOrder = 3
    object Play: TRadioButton
      Left = 72
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Play'
      TabOrder = 0
      OnClick = PlayClick
    end
    object Stop: TRadioButton
      Left = 72
      Top = 63
      Width = 113
      Height = 17
      Caption = 'Stop'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = StopClick
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 250
    OnTimer = TimerTimer
    Left = 456
    Top = 216
  end
end
