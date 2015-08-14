object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 265
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 97
    Height = 25
    Caption = 'Translate me'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Format'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Plural'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Homonym'
    TabOrder = 3
    OnClick = Button4Click
  end
end
