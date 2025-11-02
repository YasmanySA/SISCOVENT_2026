object DM_Efectivos: TDM_Efectivos
  OldCreateOrder = False
  Height = 526
  Width = 484
  object DSEnEfectCUC: TDataSource
    Left = 216
    Top = 88
  end
  object DSEnMonCUC: TDataSource
    DataSet = tbEnEfectCUC
    Left = 216
    Top = 32
  end
  object DSEnEfectMN: TDataSource
    Left = 216
    Top = 152
  end
  object tbEnEfectCUC: TFDTable
    TableName = 'DesgloseCUC_BilletesC'
    Connection = dataVentas.ConexDB
    MasterSource = dataVentas.DSVentasCaja
    MasterFields = 'No Comp'
    DetailFields = 'id_enlace'
    DMLRefresh = True
    LockMode = lmNone
    Active = True
    Left = 72
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'No Comp'
        ParamType = ptInput
        Value = 2733
      end>
    object tbEnEfectCUCid_enlace: TSmallintField
      FieldName = 'id_enlace'
    end
    object tbEnEfectCUCFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbEnEfectCUCIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object tbEnEfectCUCSubTotal100: TIntegerField
      FieldName = 'SubTotal(1,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField300: TIntegerField
      FieldName = '3,00'
    end
    object tbEnEfectCUCSubTotal300: TIntegerField
      FieldName = 'SubTotal(3,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField500: TIntegerField
      FieldName = '5,00'
    end
    object tbEnEfectCUCSubTotal500: TIntegerField
      FieldName = 'SubTotal(5,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField1000: TIntegerField
      FieldName = '10,00'
    end
    object tbEnEfectCUCSubTotal1000: TIntegerField
      FieldName = 'SubTotal(10,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField2000: TIntegerField
      FieldName = '20,00'
    end
    object tbEnEfectCUCSubTotal2000: TIntegerField
      FieldName = 'SubTotal(20,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField5000: TIntegerField
      FieldName = '50,00'
    end
    object tbEnEfectCUCSubTotal5000: TIntegerField
      FieldName = 'SubTotal(50,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField10000: TIntegerField
      FieldName = '100,00'
    end
    object tbEnEfectCUCSubTotal10000: TIntegerField
      FieldName = 'SubTotal(100,00)'
      ReadOnly = True
    end
    object tbEnEfectCUCTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object UniTable2: TFDTable
    TableName = 'QVentasOperaciones'
    Connection = dataVentas.ConexDB
    MasterFields = 'No Comp'
    DetailFields = 'enlace_id'
    DMLRefresh = True
    LockMode = lmNone
    Left = 64
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'No Comp'
        ParamType = ptInput
        Value = 2733
      end>
    object IntegerField2: TIntegerField
      FieldName = 'enlace_id'
    end
    object DateField2: TDateField
      FieldName = 'Fecha'
    end
    object WideStringField3: TWideStringField
      FieldName = 'Servicios'
      FixedChar = True
      Size = 10
    end
    object WideStringField4: TWideStringField
      FieldName = 'Descripcion'
      FixedChar = True
      Size = 75
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'Precio'
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'Cantidad'
    end
    object CurrencyField10: TCurrencyField
      FieldName = 'Subtotal'
      ReadOnly = True
    end
    object CurrencyField11: TCurrencyField
      FieldName = 'GastosInsumos'
    end
    object CurrencyField12: TCurrencyField
      FieldName = 'GastosGenerales'
    end
    object CurrencyField13: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object CurrencyField14: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object UniTable3: TFDTable
    TableName = 'QVentasOperaciones'
    Connection = dataVentas.ConexDB
    MasterFields = 'No Comp'
    DetailFields = 'enlace_id'
    DMLRefresh = True
    LockMode = lmNone
    Left = 64
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'No Comp'
        ParamType = ptInput
        Value = 2733
      end>
    object IntegerField3: TIntegerField
      FieldName = 'enlace_id'
    end
    object DateField3: TDateField
      FieldName = 'Fecha'
    end
    object WideStringField5: TWideStringField
      FieldName = 'Servicios'
      FixedChar = True
      Size = 10
    end
    object WideStringField6: TWideStringField
      FieldName = 'Descripcion'
      FixedChar = True
      Size = 75
    end
    object CurrencyField15: TCurrencyField
      FieldName = 'Precio'
    end
    object CurrencyField16: TCurrencyField
      FieldName = 'Cantidad'
    end
    object CurrencyField17: TCurrencyField
      FieldName = 'Subtotal'
      ReadOnly = True
    end
    object CurrencyField18: TCurrencyField
      FieldName = 'GastosInsumos'
    end
    object CurrencyField19: TCurrencyField
      FieldName = 'GastosGenerales'
    end
    object CurrencyField20: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object CurrencyField21: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
end
