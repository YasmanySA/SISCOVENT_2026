object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 622
  Width = 891
  object MoveHistorico: TCRBatchMove
    Destination = tbHistorico_Ventas
    FieldMappingMode = mmFieldName
    Mode = bmAppendUpdate
    Source = tbCaja
    Left = 112
    Top = 456
  end
  object DSVentasCaja: TDataSource
    DataSet = tbCaja
    Left = 208
    Top = 176
  end
  object tbHistorico_Ventas: TFDTable
    TableName = 'Historico_tbVentas'
    Connection = ConexDB
    DMLRefresh = True
    Left = 48
    Top = 376
    object tbHistorico_VentasNoComp: TLargeintField
      FieldName = 'NoComp'
      Required = True
    end
    object tbHistorico_VentasUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object tbHistorico_VentasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbHistorico_VentasHora: TDateTimeField
      FieldName = 'Hora'
    end
    object tbHistorico_VentasTotalCUP: TCurrencyField
      FieldName = 'TotalCUP'
      Required = True
    end
    object tbHistorico_VentasTotalCUC: TCurrencyField
      FieldName = 'TotalCUC'
    end
    object tbHistorico_VentasEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object tbHistorico_VentasEfectivoMN: TCurrencyField
      FieldName = 'EfectivoMN'
    end
    object tbHistorico_VentasEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object tbHistorico_VentasEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object tbHistorico_VentasTarjetaCredito: TCurrencyField
      FieldName = 'TarjetaCredito'
    end
    object tbHistorico_VentasCambioCUC: TCurrencyField
      FieldName = 'CambioCUC'
    end
    object tbHistorico_VentasCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
    end
    object tbHistorico_VentasPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object tbHistorico_VentasGastosGenerales: TCurrencyField
      FieldName = 'GastosGenerales'
    end
    object tbHistorico_VentasGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
    end
    object tbHistorico_VentasVentaCool: TBooleanField
      FieldName = 'VentaCool'
    end
  end
  object DSHistorico_Ventas: TDataSource
    DataSet = tbHistorico_Ventas
    Left = 240
    Top = 376
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 480
    Top = 272
  end
  object tbCaja: TFDQuery
    Connection = ConexDB
    SQL.Strings = (
      ' SELECT *'
      '  FROM dbo.[tbVentas Consulta]')
    DMLRefresh = True
    CheckMode = cmNone
    Left = 80
    Top = 168
    object tbCajaNoComp: TLargeintField
      FieldName = 'NoComp'
      Required = True
    end
    object tbCajaNoOperacion: TStringField
      FieldName = 'NoOperacion'
      Required = True
      Size = 10
    end
    object tbCajaUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object tbCajaFecha: TDateField
      FieldName = 'Fecha'
    end
    object tbCajaHora: TDateTimeField
      FieldName = 'Hora'
    end
    object tbCajaTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
    end
    object tbCajaEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object tbCajaEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
    end
    object tbCajaEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object tbCajaEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object tbCajaComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
    end
    object tbCajaComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
    end
    object tbCajaNoTarjetaCredito: TStringField
      FieldName = 'NoTarjetaCredito'
      Size = 30
    end
    object tbCajanameComercio: TStringField
      FieldName = 'nameComercio'
      Size = 30
    end
    object tbCajaCambioCUP: TFloatField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbCajaPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object tbCajaGastosGenerales: TCurrencyField
      FieldName = 'GastosGenerales'
    end
    object tbCajaGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
    end
    object tbCajaVentaCool: TBooleanField
      FieldName = 'VentaCool'
    end
  end
  object ConexDB: TfdConnection
    ProviderName = 'SQL Server'
    Database = 'SISCOVENTv3.0_2022'
    Debug = True
    Username = 'sa'
    Server = 'SPA\sql'
    Connected = True
    Left = 288
    Top = 32
    EncryptedPassword = 'D5FFBCFF90FF92FF90FF9BFF9EFFCDFFCFFFCDFFCDFF'
  end
  object Tbdescrip: TFDQuery
    Connection = ConexDB
    SQL.Strings = (
      'SELECT * FROM tbServiceDescripC')
    MasterSource = DSVentasOperaciones
    MasterFields = 'Descripcion'
    DetailFields = 'Producto'
    Active = True
    Left = 373
    Top = 469
    ParamData = <
      item
        DataType = ftWideString
        Name = 'Descripcion'
        ParamType = ptInput
        Value = 'Impresi'#243'n de Doc_Color'
      end>
    object Tbdescripid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object TbdescripServicio: TWideStringField
      FieldName = 'Servicio'
      FixedChar = True
      Size = 75
    end
    object TbdescripCod_Descrip: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Descrip'
      ReadOnly = True
      Required = True
    end
    object TbdescripCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Size = 25
    end
    object TbdescripProducto: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 75
    end
    object TbdescripDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object DSClasif_Descrip: TDataSource
    DataSet = Tbdescrip
    Left = 514
    Top = 470
  end
  object tbVentasOperaciones: TFDQuery
    Connection = ConexDB
    SQL.Strings = (
      'SELECT * FROM QVentasOperaciones'
      '')
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'enlace_id;Fecha'
    Left = 72
    Top = 240
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NoComp'
        ParamType = ptInput
        Value = 2996
      end
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
        Value = 44170d
      end>
    object tbVentasOperacionesID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbVentasOperacionesenlace_id: TLargeintField
      FieldName = 'enlace_id'
    end
    object tbVentasOperacionesFecha: TDateField
      FieldName = 'Fecha'
    end
    object tbVentasOperacionesServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbVentasOperacionesDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tbVentasOperacionesPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
    end
    object tbVentasOperacionesPrecioCUC: TCurrencyField
      FieldName = 'PrecioCUC'
    end
    object tbVentasOperacionesCantidad: TCurrencyField
      FieldName = 'Cantidad'
      currency = False
    end
    object tbVentasOperacionesSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbVentasOperacionesSubtotalCUC: TCurrencyField
      FieldName = 'SubtotalCUC'
      ReadOnly = True
    end
    object tbVentasOperacionesGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
    end
    object tbVentasOperacionesGastosGenerales: TCurrencyField
      FieldName = 'GastosGenerales'
    end
    object tbVentasOperacionesTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbVentasOperacionesTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object DSVentasOperaciones: TDataSource
    DataSet = tbVentasOperaciones
    Left = 200
    Top = 240
  end
  object tbOperacionesTotal: TFDQuery
    Connection = ConexDB
    SQL.Strings = (
      
        'SELECT        enlace_id, SUM(TotalGenerales) AS TotalGenerales, ' +
        'SUM(TotalInsumos) AS TotalInsumos, SUM(SubtotalCUP) AS SubtotalC' +
        'UP'
      'FROM            dbo.QVentasOperaciones'
      'GROUP BY enlace_id')
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp'
    DetailFields = 'enlace_id'
    Active = True
    Left = 136
    Top = 312
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NoComp'
        ParamType = ptInput
        Value = 2996
      end>
    object tbOperacionesTotalenlace_id: TLargeintField
      FieldName = 'enlace_id'
    end
    object tbOperacionesTotalTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
    object tbOperacionesTotalTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbOperacionesTotalSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
  end
end
