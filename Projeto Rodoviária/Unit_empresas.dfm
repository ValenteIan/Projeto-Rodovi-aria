object Form_empresas: TForm_empresas
  Left = -1411
  Top = 301
  Width = 1088
  Height = 563
  Caption = 'Empresas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn_fechar: TBitBtn
    Left = 256
    Top = 232
    Width = 145
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btn_fecharClick
  end
  object dbgrid_empresas: TDBGrid
    Left = 168
    Top = 104
    Width = 297
    Height = 120
    DataSource = ds_empresas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object adoquery_empresas: TADOQuery
    Connection = Form_menu.ConexaoBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EMPRESAS ORDER BY NOME')
    Left = 168
    Top = 232
  end
  object ds_empresas: TDataSource
    DataSet = adoquery_empresas
    Left = 200
    Top = 232
  end
end
