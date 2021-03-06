object DataModulo: TDataModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 266
  Width = 322
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'COD_PROD'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_PROD'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'ESTOQUE_PROD'
        DataType = ftFloat
      end
      item
        Name = 'VLRUNIT_PROD'
        DataType = ftCurrency
      end
      item
        Name = 'TOTAL_PROD'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 32
    object cdsProdutosCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
    end
    object cdsProdutosDESCR_PROD: TStringField
      FieldName = 'DESCR_PROD'
      Size = 24
    end
    object cdsProdutosVLRUNIT_PROD: TCurrencyField
      FieldName = 'VLRUNIT_PROD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsProdutosTOTAL_PROD2: TCurrencyField
      FieldName = 'TOTAL_PROD'
    end
    object cdsProdutosESTOQUE_PROD: TFloatField
      FieldName = 'ESTOQUE_PROD'
    end
    object cdsProdutosTOTAL_PROD: TAggregateField
      FieldName = 'TOTALGERAL'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'SUM(VLRUNIT_PROD)'
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 203
    Top = 28
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 24
    object cdsVendasID_VEN: TIntegerField
      FieldName = 'ID_VEN'
    end
    object cdsVendasNMCLI_VEN: TStringField
      FieldName = 'NMCLI_VEN'
      Size = 24
    end
    object cdsVendasDATA_VEN: TDateField
      FieldName = 'DATA_VEN'
    end
    object cdsVendasHORA_VEN: TTimeField
      FieldName = 'HORA_VEN'
    end
    object cdsVendasTOTAL_VEN: TFloatField
      FieldName = 'TOTAL_VEN'
    end
    object cdsVendasCODBAR_VEN: TStringField
      FieldName = 'CODBAR_VEN'
      Size = 100
    end
    object cdsVendasSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsVendasQTDITENS_VEN: TIntegerField
      FieldName = 'QTDITENS_VEN'
    end
    object cdsVendasDTENTREGA_VEN: TDateField
      FieldName = 'DTENTREGA_VEN'
    end
  end
  object dsVendas: TDataSource
    DataSet = cdsVendas
    Left = 56
    Top = 24
  end
  object cdsItensVenda: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'ID_VENDA_ITEM'
        DataType = ftInteger
      end
      item
        Name = 'COD_ITEM'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_ITEM'
        DataType = ftString
        Size = 24
      end
      item
        Name = 'QTDSAI_ITEM'
        DataType = ftFloat
      end
      item
        Name = 'VLRUNIT_ITEM'
        DataType = ftCurrency
      end
      item
        Name = 'TOTAL_ITEM'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 104
    object cdsItensVendaID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object IntegerField2: TIntegerField
      FieldName = 'COD_ITEM'
    end
    object StringField1: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 24
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'VLRUNIT_ITEM'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'TOTAL_ITEM'
    end
    object cdsItensVendaQTDSAI_ITEM: TFloatField
      FieldName = 'QTDSAI_ITEM'
    end
  end
  object dsItensVenda: TDataSource
    DataSet = cdsItensVenda
    Left = 99
    Top = 108
  end
end
