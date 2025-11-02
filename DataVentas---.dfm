object DMVentas: TDMVentas
  OldCreateOrder = False
  Height = 753
  Width = 772
  object DSVentas: TDataSource
    Left = 120
    Top = 88
  end
  object DSdetalles: TDataSource
    Left = 168
    Top = 160
  end
  object Historico_tbventas: TFDQuery
    SQL.Strings = (
      'SELECT * FROM [Historico_tbVentas Consulta]')
    Left = 44
    Top = 270
  end
  object DB_Coneccion2: TFDConnection
    Params.Strings = (
      
        'Database=D:\01Programaci'#243'n\Software\SISCOVENT 2.2\DataBase\SQlit' +
        'e\SISCOVENT.sdb'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 64
  end
  object tbVentas: TFDQuery
    SQL.Strings = (
      
        'SELECT tbVentas.[No Comp], tbVentas.Usuario, tbVentas.Fecha, tbV' +
        'entas.Hora, tbVentas.EfectivoCUC, tbVentas.EfectivoMN, tbVentas.' +
        'Total, [Total]-([EfectivoMN]/25+[EfectivoCUC]) AS Cambio, [Cambi' +
        'o]*25 AS CambioMN, tbVentas.Propina, tbVentas.GastosDeducible, t' +
        'bVentas.GastosInsumos'
      'FROM tbVentas;')
    Left = 37
    Top = 72
    object tbVentasNoComp: TFDAutoIncField
      FieldName = 'No Comp'
      Origin = '[No Comp]'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbVentasUsuario: TWideStringField
      FieldName = 'Usuario'
      Origin = 'Usuario'
      Size = 50
    end
    object tbVentasFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object tbVentasHora: TSQLTimeStampField
      FieldName = 'Hora'
      Origin = 'Hora'
    end
    object tbVentasEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object tbVentasEfectivoMN: TCurrencyField
      FieldName = 'EfectivoMN'
      Origin = 'EfectivoMN'
    end
    object tbVentasTotal: TCurrencyField
      FieldName = 'Total'
      Origin = 'Total'
    end
    object tbVentasCambio: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'Cambio'
      Origin = 'Cambio'
      ProviderFlags = []
      ReadOnly = True
    end
    object tbVentasCambioMN: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'CambioMN'
      Origin = 'CambioMN'
      ProviderFlags = []
      ReadOnly = True
    end
    object tbVentasPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object tbVentasGastosDeducible: TCurrencyField
      FieldName = 'GastosDeducible'
      Origin = 'GastosDeducible'
    end
    object tbVentasGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
      Origin = 'GastosInsumos'
    end
  end
  object TbdetallesconsultaView: TFDQuery
    SQL.Strings = (
      'SELECT * FROM [tbDetalles Consulta]')
    Left = 52
    Top = 162
  end
end
