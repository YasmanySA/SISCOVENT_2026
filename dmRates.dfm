object dmRate: TdmRate
  Height = 580
  Width = 777
  object tbCambioActual: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tb_divisas]')
    Left = 504
    Top = 192
    object tbCambioActualid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbCambioActualid_fecha: TSQLTimeStampField
      FieldName = 'id_fecha'
      Required = True
    end
    object tbCambioActualUSD: TCurrencyField
      FieldName = 'USD'
    end
    object tbCambioActualMLC: TCurrencyField
      FieldName = 'MLC'
    end
    object tbCambioActualEUR: TCurrencyField
      FieldName = 'EUR'
    end
  end
  object DSTasas: TDataSource
    DataSet = tbTasas
    Left = 520
    Top = 280
  end
  object DSCambioActual: TDataSource
    DataSet = tbCambioActual
    Left = 608
    Top = 448
  end
  object tbTasas: TFDMemTable
    Active = True
    Filter = 'rel=confirm'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 263
    Top = 392
    object tbTasasBTC: TCurrencyField
      FieldName = 'BTC'
    end
    object tbTasasMLC: TCurrencyField
      FieldName = 'MLC'
    end
    object tbTasasECU: TCurrencyField
      FieldName = 'ECU'
    end
    object tbTasasUSDT_TRC20: TCurrencyField
      FieldName = 'USDT_TRC20'
    end
    object tbTasasTRX: TCurrencyField
      FieldName = 'TRX'
    end
    object tbTasasUSD: TCurrencyField
      FieldName = 'USD'
    end
  end
  object FDQuery1: TFDQuery
    Connection = dataconex.ConexDB
    Left = 168
    Top = 192
  end
end
