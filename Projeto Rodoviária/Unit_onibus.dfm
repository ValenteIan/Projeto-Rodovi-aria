object form_onibus: Tform_onibus
  Left = -1380
  Top = 247
  Width = 1088
  Height = 563
  Caption = #212'nibus'
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
    Left = 440
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btn_fecharClick
  end
  object dbgrid_onibus: TDBGrid
    Left = 320
    Top = 128
    Width = 320
    Height = 120
    DataSource = ds_onibus
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ds_onibus: TDataSource
    DataSet = adoquery_onibus
    Left = 360
    Top = 256
  end
  object adoquery_onibus: TADOQuery
    Connection = Form_menu.ConexaoBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ONIBUS.NUM_ONIBUS AS ONIBUS,'
      '               EMPRESAS.NOME AS EMPRESA,'
      '               MOTORISTAS.NOME AS MOTORISTA,'
      '               ONIBUS.TRAJETO FROM ONIBUS'
      ' INNER JOIN EMPRESAS'
      '   ON EMPRESAS.COD_EMPRESA = ONIBUS.COD_EMPRESA'
      ' INNER JOIN MOTORISTAS'
      '   ON MOTORISTAS.NUM_MOTORISTA = ONIBUS.NUM_MOTORISTA')
    Left = 328
    Top = 256
  end
end
