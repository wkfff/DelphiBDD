object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Interfaz de usuario con VCL'
  ClientHeight = 336
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 295
    Align = alClient
    DataSource = MyDataModule.CustomerDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 16
      Top = 13
      Width = 169
      Height = 17
      Caption = 'Conectar/Desconectar'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Button1: TButton
      Left = 416
      Top = 10
      Width = 161
      Height = 25
      Caption = 'Abrir formulario navegaci'#243'n'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 76
    Top = 181
  end
end
