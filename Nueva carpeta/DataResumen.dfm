object DM_Resumen: TDM_Resumen
  Height = 807
  Width = 1181
  object DSResumenDiario: TUniDataSource
    DataSet = tbResumenDiario
    Left = 168
    Top = 256
  end
  object DSResumenAnual: TUniDataSource
    DataSet = tbResumenAnual
    Left = 152
    Top = 16
  end
  object DSResumMensual: TUniDataSource
    DataSet = tbResumMensual
    Left = 168
    Top = 128
  end
  object tbResumenAnual: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.[Resumen Anual]')
    LockMode = lmPessimistic
    Active = True
    Left = 48
    Top = 16
    object tbResumenAnualyear: TWideStringField
      FieldName = 'year'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenAnualTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object tbResumenAnualEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object tbResumenAnualEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object tbResumenAnualEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object tbResumenAnualEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object tbResumenAnualComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object tbResumenAnualComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object tbResumenAnualCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbResumenAnualPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object tbResumenAnualFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object tbResumenAnualGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
    object tbResumenAnualUtilidad: TFloatField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
  end
  object tbResumMensual: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenMensual'
      ''
      'ORDER BY enlace, MesSorting')
    MasterSource = DSResumenTrimestral
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'enlace;enlace2'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 48
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_enlace'
        ParamType = ptInput
        Value = 2015
      end
      item
        DataType = ftInteger
        Name = 'Trimestre'
        ParamType = ptInput
        Value = 1
      end>
    object tbResumMensualenlace: TWideStringField
      FieldName = 'enlace'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualenlace2: TIntegerField
      FieldName = 'enlace2'
      ReadOnly = True
    end
    object tbResumMensualMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualID: TWideStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualMesSorting: TWideStringField
      FieldName = 'MesSorting'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object tbResumMensualEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object tbResumMensualEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object tbResumMensualEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object tbResumMensualEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object tbResumMensualComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object tbResumMensualComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object tbResumMensualCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbResumMensualPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object tbResumMensualFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object tbResumMensualGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
    object tbResumMensualUtilidad: TCurrencyField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
  end
  object tbResumenDiario: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.ResumenDiario'
      ''
      'ORDER BY'
      #9'id_EnlaFecha ASC, '
      #9'id_enlacesemana ASC, '
      #9'FechaDia ASC')
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_EnlaFecha;id_enlacesemana'
    Active = True
    Left = 48
    Top = 256
    ParamData = <
      item
        DataType = ftWideString
        Name = 'id_enlaceMes'
        ParamType = ptInput
        Value = '15 02'
      end
      item
        DataType = ftInteger
        Name = 'ID_Semana'
        ParamType = ptInput
        Value = 6
      end>
    object tbResumenDiarioid_EnlaFecha: TWideStringField
      FieldName = 'id_EnlaFecha'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioid_enlacesemana: TIntegerField
      FieldName = 'id_enlacesemana'
      ReadOnly = True
    end
    object tbResumenDiarioFechaDia: TWideStringField
      FieldName = 'FechaDia'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object tbResumenDiarioEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object tbResumenDiarioEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object tbResumenDiarioEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object tbResumenDiarioEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object tbResumenDiarioComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object tbResumenDiarioComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object tbResumenDiarioCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbResumenDiarioPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object tbResumenDiarioFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object tbResumenDiarioGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
    object tbResumenDiarioUtilidad: TCurrencyField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
  end
  object DSResumenDiarioDetallado: TUniDataSource
    DataSet = tbResumenDiarioDetallado
    Left = 688
    Top = 192
  end
  object DSResumenAnualDetallado: TUniDataSource
    DataSet = tbResumenAnualDetallado
    Left = 880
    Top = 32
  end
  object DSResumMensualDetallado: TUniDataSource
    DataSet = tbResumMensualDetallado
    Left = 896
    Top = 112
  end
  object tbResumenAnualDetallado: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM           ResumenAnualDetalles')
    MasterSource = DSResumenAnual
    MasterFields = 'year'
    DetailFields = 'Anual'
    Active = True
    Left = 720
    Top = 32
    ParamData = <
      item
        DataType = ftWideString
        Name = 'year'
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumenAnualDetalladoAnual: TWideStringField
      FieldName = 'Anual'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenAnualDetalladoServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumenAnualDetalladoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tbResumenAnualDetalladoCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbResumenAnualDetalladoPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
    end
    object tbResumenAnualDetalladoSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbResumenAnualDetalladoTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbResumenAnualDetalladoTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object tbResumenDiarioDetallado: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM           ResumDiarioDetallado'
      'ORDER BY'
      #9'FechaDia ASC')
    MasterSource = DSResumenDiario
    MasterFields = 'FechaDia'
    DetailFields = 'FechaDia'
    Active = True
    Left = 528
    Top = 192
    ParamData = <
      item
        DataType = ftWideString
        Name = 'FechaDia'
        ParamType = ptInput
        Value = '06 02 15'
      end>
    object tbResumenDiarioDetalladoFechaDia: TWideStringField
      FieldName = 'FechaDia'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioDetalladoServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumenDiarioDetalladoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tbResumenDiarioDetalladoPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
    end
    object tbResumenDiarioDetalladoCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbResumenDiarioDetalladoSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbResumenDiarioDetalladoTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbResumenDiarioDetalladoTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object tbResumMensualDetallado: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM [Resumen MensualOperaciones]'
      ''
      '')
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'ID'
    Active = True
    Left = 712
    Top = 112
    ParamData = <
      item
        DataType = ftWideString
        Name = 'ID'
        ParamType = ptInput
        Value = '15 02'
      end>
    object tbResumMensualDetalladoenlace: TWideStringField
      FieldName = 'enlace'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualDetalladoMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualDetalladoID: TWideStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualDetalladoServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumMensualDetalladoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tbResumMensualDetalladoPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
    end
    object tbResumMensualDetalladoCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbResumMensualDetalladoSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbResumMensualDetalladoTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbResumMensualDetalladoTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object DSDescripcion: TUniDataSource
    DataSet = tbDescripcion
    Left = 792
    Top = 672
  end
  object tbDescripcion: TUniTable
    TableName = 'tbServiceDescripC'
    Connection = dataconex.ConexDB
    MasterFields = 'Descripcion'
    DetailFields = 'Descripcion'
    LockMode = lmNone
    Active = True
    Left = 912
    Top = 696
    object tbDescripcionid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbDescripcionServicio: TWideStringField
      FieldName = 'Servicio'
      FixedChar = True
      Size = 75
    end
    object tbDescripcionCod_Descrip: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Descrip'
      ReadOnly = True
      Required = True
    end
    object tbDescripcionCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Size = 25
    end
    object tbDescripcionProducto: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 75
    end
    object tbDescripcionDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object DSCostos: TUniDataSource
    DataSet = tbCosto
    Left = 754
    Top = 590
  end
  object tbCosto: TUniTable
    TableName = '[tbServiceCostos C]'
    Connection = dataconex.ConexDB
    MasterSource = DSDescripcion
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Active = True
    Left = 616
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Cod_Descrip'
        ParamType = ptInput
        Value = 1
      end>
    object tbCostoid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbCostoTipoGasto: TWideStringField
      FieldName = 'TipoGasto'
      FixedChar = True
      Size = 25
    end
    object tbCostoDetalles: TWideStringField
      FieldName = 'Detalles'
      FixedChar = True
      Size = 50
    end
    object tbCostoCosto: TCurrencyField
      FieldName = 'Costo'
    end
    object tbCostoCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbCostoGasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object DSservDecrip: TUniDataSource
    DataSet = tbservDecrip
    Left = 1072
    Top = 648
  end
  object tbservDecrip: TUniTable
    TableName = 'tbServiceDescripC'
    Connection = dataconex.ConexDB
    LockMode = lmNone
    Active = True
    Left = 1000
    Top = 640
    object tbservDecripid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbservDecripServicio: TWideStringField
      FieldName = 'Servicio'
      FixedChar = True
      Size = 75
    end
    object tbservDecripCod_Descrip: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Descrip'
      ReadOnly = True
      Required = True
    end
    object tbservDecripCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Size = 25
    end
    object tbservDecripProducto: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 75
    end
    object tbservDecripDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object DSQVentasOperaciones: TUniDataSource
    DataSet = tbQVentasOperaciones
    Left = 800
    Top = 312
  end
  object tbQVentasOperaciones: TUniTable
    TableName = 'QVentasOperaciones'
    Connection = dataconex.ConexDB
    LockMode = lmNone
    Active = True
    Left = 920
    Top = 368
  end
  object DSHistorico_tbVentasConsulta: TUniDataSource
    DataSet = Historico_tbVentasConsulta
    Left = 960
    Top = 304
  end
  object Historico_tbVentasConsulta: TUniTable
    TableName = 'Historico_tbVentasConsulta'
    Connection = dataconex.ConexDB
    MasterSource = DSResumenAnualDetallado
    LockMode = lmNone
    Active = True
    Left = 864
    Top = 536
    object Historico_tbVentasConsultaNoComp: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'NoComp'
      ReadOnly = True
      Required = True
    end
    object Historico_tbVentasConsultaNoOperacion: TStringField
      FieldName = 'NoOperacion'
      Size = 10
    end
    object Historico_tbVentasConsultaIDUser: TIntegerField
      FieldName = 'IDUser'
    end
    object Historico_tbVentasConsultaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object Historico_tbVentasConsultaHora: TDateTimeField
      FieldName = 'Hora'
    end
    object Historico_tbVentasConsultaTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
    end
    object Historico_tbVentasConsultaEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
    end
    object Historico_tbVentasConsultaEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object Historico_tbVentasConsultaEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object Historico_tbVentasConsultaEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object Historico_tbVentasConsultaComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
    end
    object Historico_tbVentasConsultaComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
    end
    object Historico_tbVentasConsultaNoTarjetaCredito: TStringField
      FieldName = 'NoTarjetaCredito'
      Size = 30
    end
    object Historico_tbVentasConsultanameComercio: TStringField
      FieldName = 'nameComercio'
      Size = 30
    end
    object Historico_tbVentasConsultaPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object Historico_tbVentasConsultaCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object Historico_tbVentasConsultaFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object Historico_tbVentasConsultaIDrow: TLargeintField
      FieldName = 'IDrow'
    end
    object Historico_tbVentasConsultahistory: TBooleanField
      FieldName = 'history'
    end
  end
  object DSResumSemanal: TUniDataSource
    DataSet = tbResumSemanal
    Left = 168
    Top = 200
  end
  object tbResumSemanal: TUniQuery
    UpdatingTable = 'ResumenSemanal'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT      *'
      'FROM          ResumenSemanal'
      'ORDER BY MesSorting')
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'id_enlaceMes'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 48
    Top = 200
    ParamData = <
      item
        DataType = ftWideString
        Name = 'ID'
        ParamType = ptInput
        Value = '15 02'
      end>
    object tbResumSemanalid_enlaceMes: TWideStringField
      FieldName = 'id_enlaceMes'
      ReadOnly = True
      Size = 4000
    end
    object tbResumSemanalID_Semana: TIntegerField
      FieldName = 'ID_Semana'
      ReadOnly = True
    end
    object tbResumSemanalMesSorting: TWideStringField
      FieldName = 'MesSorting'
      ReadOnly = True
      Size = 4000
    end
    object tbResumSemanalde: TDateTimeField
      FieldName = 'de'
      ReadOnly = True
    end
    object tbResumSemanala: TDateTimeField
      FieldName = 'a'
      ReadOnly = True
    end
    object tbResumSemanalf1: TIntegerField
      FieldName = 'f1'
      ReadOnly = True
    end
    object tbResumSemanalf2: TIntegerField
      FieldName = 'f2'
      ReadOnly = True
    end
    object tbResumSemanalTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object tbResumSemanalEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object tbResumSemanalEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object tbResumSemanalEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object tbResumSemanalEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object tbResumSemanalComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object tbResumSemanalComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object tbResumSemanalCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbResumSemanalPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object tbResumSemanalFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object tbResumSemanalGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
    object tbResumSemanalUtilidad: TCurrencyField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
  end
  object DSResumenTrimestral: TUniDataSource
    DataSet = ResumenTrimestral
    Left = 168
    Top = 72
  end
  object ResumenTrimestral: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestral'
      ''
      '')
    MasterSource = DSResumenAnual
    MasterFields = 'year'
    DetailFields = 'id_enlace'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 48
    Top = 80
    ParamData = <
      item
        DataType = ftWideString
        Name = 'year'
        ParamType = ptInput
        Value = '2015'
      end>
    object ResumenTrimestralid_enlace: TIntegerField
      FieldName = 'id_enlace'
      ReadOnly = True
    end
    object ResumenTrimestralTrimestre: TIntegerField
      FieldName = 'Trimestre'
      ReadOnly = True
    end
    object ResumenTrimestralMeses: TIntegerField
      FieldName = 'Meses'
      ReadOnly = True
    end
    object ResumenTrimestralMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 4000
    end
    object ResumenTrimestralMes2: TWideStringField
      FieldName = 'Mes2'
      ReadOnly = True
      Size = 4000
    end
    object ResumenTrimestralTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object ResumenTrimestralEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object ResumenTrimestralEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object ResumenTrimestralEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object ResumenTrimestralEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object ResumenTrimestralComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object ResumenTrimestralComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object ResumenTrimestralCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object ResumenTrimestralPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object ResumenTrimestralFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object ResumenTrimestralUtilidad: TCurrencyField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
    object ResumenTrimestralGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object DSResumenAnualBilletesCUP: TUniDataSource
    DataSet = tbResumenAnualBilletesCUP
    Left = 264
    Top = 392
  end
  object tbResumenAnualBilletesCUP: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT *'
      '  FROM [dbo].[ResumenAnualCUP]')
    MasterSource = DSResumenAnual
    MasterFields = 'year'
    DetailFields = 'año'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 104
    Top = 392
      object tbResumenAnualBilletesCUPaño: TWideStringField
      FieldName = 'Año'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenAnualBilletesCUPIntegerField1cup: TIntegerField
      FieldName = '1cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal1cup: TIntegerField
      FieldName = 'SubTotal(1cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField3cup: TIntegerField
      FieldName = '3cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal3cup: TIntegerField
      FieldName = 'SubTotal(3cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField5cup: TIntegerField
      FieldName = '5cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal5cup: TIntegerField
      FieldName = 'SubTotal(5cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField10cup: TIntegerField
      FieldName = '10cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal10cup: TIntegerField
      FieldName = 'SubTotal(10cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField20cup: TIntegerField
      FieldName = '20cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal20cup: TIntegerField
      FieldName = 'SubTotal(20cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField50cup: TIntegerField
      FieldName = '50cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal50cup: TIntegerField
      FieldName = 'SubTotal(50cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField100cup: TIntegerField
      FieldName = '100cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal100cup: TIntegerField
      FieldName = 'SubTotal(100cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField200cup: TIntegerField
      FieldName = '200cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal200cup: TIntegerField
      FieldName = 'SubTotal(200cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField500cup: TIntegerField
      FieldName = '500cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal500cup: TIntegerField
      FieldName = 'SubTotal(500cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPIntegerField1000cup: TIntegerField
      FieldName = '1000cup'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPSubTotal1000cup: TIntegerField
      FieldName = 'SubTotal(1000cup)'
      ReadOnly = True
    end
    object tbResumenAnualBilletesCUPTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object tbResumenAnualMonedaCUC: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       * FROM            dbo.[ResumenAnual MonedaCUC]'
      '')
    MasterSource = DSResumenAnual
MasterFields = 'Año'
DetailFields = 'id_enlaceAño'

    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 952
    Top = 464
    ParamData = <
      item
        DataType = ftWideString
        Name = 'Año'
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumenAnualMonedaCUCid_enlaceAño: TWideStringField
      FieldName = 'id_enlaceAño'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenAnualMonedaCUCIntegerField005: TIntegerField
      FieldName = '0,05'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCSubTota005: TFloatField
      FieldName = 'SubTota(0,05)'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCIntegerField010: TIntegerField
      FieldName = '0,10'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCSubTota010: TFloatField
      FieldName = 'SubTota(0,10)'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCIntegerField025: TIntegerField
      FieldName = '0,25'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCSubTota025: TFloatField
      FieldName = 'SubTota(0,25)'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCIntegerField050: TIntegerField
      FieldName = '0,50'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCSubTota050: TFloatField
      FieldName = 'SubTota(0,50)'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCIntegerField100: TIntegerField
      FieldName = '1,00'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCSubTota100: TIntegerField
      FieldName = 'SubTota(1,00)'
      ReadOnly = True
    end
    object tbResumenAnualMonedaCUCTotal: TFloatField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DSResumenAnualMonedaCUC: TUniDataSource
    DataSet = tbResumenAnualMonedaCUC
    Left = 752
    Top = 440
  end
  object ResumenTrimestralBilletesCUP: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestralCUP'
      ''
      '')
    MasterSource = DSResumenTrimestral
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'id_enlace;Trimestre'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 104
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_enlace'
        ParamType = ptInput
        Value = 2015
      end
      item
        DataType = ftInteger
        Name = 'Trimestre'
        ParamType = ptInput
        Value = 1
      end>
    object ResumenTrimestralBilletesCUPid_enlace: TIntegerField
      FieldName = 'id_enlace'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPTrimestre: TIntegerField
      FieldName = 'Trimestre'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPMeses: TIntegerField
      FieldName = 'Meses'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField1cup: TIntegerField
      FieldName = '1cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal1cup: TIntegerField
      FieldName = 'SubTotal(1cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField3cup: TIntegerField
      FieldName = '3cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal3cup: TIntegerField
      FieldName = 'SubTotal(3cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField5cup: TIntegerField
      FieldName = '5cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal5cup: TIntegerField
      FieldName = 'SubTotal(5cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField10cup: TIntegerField
      FieldName = '10cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal10cup: TIntegerField
      FieldName = 'SubTotal(10cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField20cup: TIntegerField
      FieldName = '20cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal20cup: TIntegerField
      FieldName = 'SubTotal(20cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField50cup: TIntegerField
      FieldName = '50cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal50cup: TIntegerField
      FieldName = 'SubTotal(50cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField100cup: TIntegerField
      FieldName = '100cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal100cup: TIntegerField
      FieldName = 'SubTotal(100cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField200cup: TIntegerField
      FieldName = '200cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal200cup: TIntegerField
      FieldName = 'SubTotal(200cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField500cup: TIntegerField
      FieldName = '500cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal500cup: TIntegerField
      FieldName = 'SubTotal(500cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPIntegerField1000cup: TIntegerField
      FieldName = '1000cup'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPSubTotal1000cup: TIntegerField
      FieldName = 'SubTotal(1000cup)'
      ReadOnly = True
    end
    object ResumenTrimestralBilletesCUPTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DSResumenTrimestralBilletesCUP: TUniDataSource
    DataSet = ResumenTrimestralBilletesCUP
    Left = 264
    Top = 472
  end
  object ResumenMensualBilletesCUP: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenMensualCUP'
      '')
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'ID'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 104
    Top = 552
    ParamData = <
      item
        DataType = ftWideString
        Name = 'ID'
        ParamType = ptInput
        Value = '15 02'
      end>
    object ResumenMensualBilletesCUPenlace: TWideStringField
      FieldName = 'enlace'
      ReadOnly = True
      Size = 4000
    end
    object ResumenMensualBilletesCUPMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 4000
    end
    object ResumenMensualBilletesCUPID: TWideStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 4000
    end
    object ResumenMensualBilletesCUPIntegerField1cup: TIntegerField
      FieldName = '1cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal1cup: TIntegerField
      FieldName = 'SubTotal(1cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField3cup: TIntegerField
      FieldName = '3cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal3cup: TIntegerField
      FieldName = 'SubTotal(3cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField5cup: TIntegerField
      FieldName = '5cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal5cup: TIntegerField
      FieldName = 'SubTotal(5cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField10cup: TIntegerField
      FieldName = '10cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal10cup: TIntegerField
      FieldName = 'SubTotal(10cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField20cup: TIntegerField
      FieldName = '20cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal20cup: TIntegerField
      FieldName = 'SubTotal(20cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField50cup: TIntegerField
      FieldName = '50cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal50cup: TIntegerField
      FieldName = 'SubTotal(50cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField100cup: TIntegerField
      FieldName = '100cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal100cup: TIntegerField
      FieldName = 'SubTotal(100cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField200cup: TIntegerField
      FieldName = '200cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal200cup: TIntegerField
      FieldName = 'SubTotal(200cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField500cup: TIntegerField
      FieldName = '500cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal500cup: TIntegerField
      FieldName = 'SubTotal(500cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPIntegerField1000cup: TIntegerField
      FieldName = '1000cup'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPSubTotal1000cup: TIntegerField
      FieldName = 'SubTotal(1000cup)'
      ReadOnly = True
    end
    object ResumenMensualBilletesCUPTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DSResumenMensualBilletesCUP: TUniDataSource
    DataSet = ResumenMensualBilletesCUP
    Left = 272
    Top = 544
  end
  object DSResumenTrimestralDetalles: TUniDataSource
    DataSet = tbResumenTrimestralDetalles
    Left = 552
    Top = 24
  end
  object tbResumenTrimestralDetalles: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestralDetalles'
      '')
    MasterSource = DSResumenTrimestral
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'id_enlace;Trimestre'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 368
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_enlace'
        ParamType = ptInput
        Value = 2015
      end
      item
        DataType = ftInteger
        Name = 'Trimestre'
        ParamType = ptInput
        Value = 1
      end>
    object tbResumenTrimestralDetallesid_enlace: TIntegerField
      FieldName = 'id_enlace'
      ReadOnly = True
    end
    object tbResumenTrimestralDetallesTrimestre: TIntegerField
      FieldName = 'Trimestre'
      ReadOnly = True
    end
    object tbResumenTrimestralDetallesServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumenTrimestralDetallesDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tbResumenTrimestralDetallesCantidad: TCurrencyField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
    object tbResumenTrimestralDetallesSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbResumenTrimestralDetallesTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbResumenTrimestralDetallesTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object DSResumSemanaldetalles: TUniDataSource
    DataSet = tbResumSemanaldetalles
    Left = 536
    Top = 96
  end
  object tbResumSemanaldetalles: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT      *'
      'FROM          ResumenSemanalDetalles'
      'ORDER BY MesSorting')
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_enlaceMes;ID_Semana'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 376
    Top = 104
    ParamData = <
      item
        DataType = ftWideString
        Name = 'id_enlaceMes'
        ParamType = ptInput
        Value = '15 02'
      end
      item
        DataType = ftInteger
        Name = 'ID_Semana'
        ParamType = ptInput
        Value = 6
      end>
    object tbResumSemanaldetallesid_enlaceMes: TWideStringField
      FieldName = 'id_enlaceMes'
      ReadOnly = True
      Size = 4000
    end
    object tbResumSemanaldetallesID_Semana: TIntegerField
      FieldName = 'ID_Semana'
      ReadOnly = True
    end
    object tbResumSemanaldetallesMesSorting: TWideStringField
      FieldName = 'MesSorting'
      ReadOnly = True
      Size = 4000
    end
    object tbResumSemanaldetallesde: TDateTimeField
      FieldName = 'de'
      ReadOnly = True
    end
    object tbResumSemanaldetallesa: TDateTimeField
      FieldName = 'a'
      ReadOnly = True
    end
    object tbResumSemanaldetallesf1: TIntegerField
      FieldName = 'f1'
      ReadOnly = True
    end
    object tbResumSemanaldetallesf2: TIntegerField
      FieldName = 'f2'
      ReadOnly = True
    end
    object tbResumSemanaldetallesServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumSemanaldetallesDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tbResumSemanaldetallesPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
    end
    object tbResumSemanaldetallesCantidad: TCurrencyField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
    object tbResumSemanaldetallesSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbResumSemanaldetallesTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      ReadOnly = True
    end
    object tbResumSemanaldetallesTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object DSResumMensualPorServicios: TUniDataSource
    DataSet = tbResumMensualPorServicios
    Left = 480
    Top = 360
  end
  object tbResumMensualPorServicios: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenMensualporServicios'
      ''
      '')
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'ID'
    Active = True
    Left = 480
    Top = 296
    ParamData = <
      item
        DataType = ftWideString
        Name = 'ID'
        ParamType = ptInput
        Value = '15 02'
      end>
    object tbResumMensualPorServiciosenlace: TWideStringField
      FieldName = 'enlace'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualPorServiciosMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualPorServiciosID: TWideStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualPorServiciosServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumMensualPorServiciosCantidad: TCurrencyField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
  end
  object tbResumenAnualPorServicios: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM           ResumenAnualPorServicios')
    MasterSource = DSResumenAnual
    MasterFields = 'year'
    DetailFields = 'Anual'
    Active = True
    Left = 488
    Top = 648
    ParamData = <
      item
        DataType = ftWideString
        Name = 'year'
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumenAnualPorServiciosAnual: TWideStringField
      FieldName = 'Anual'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenAnualPorServiciosServicios: TWideStringField
      FieldName = 'Servicios'
      Size = 100
    end
    object tbResumenAnualPorServiciosCantidad: TCurrencyField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
    object tbResumenAnualPorServiciosSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      ReadOnly = True
    end
  end
  object DSResumenAnualPorServicios: TUniDataSource
    DataSet = tbResumenAnualPorServicios
    Left = 448
    Top = 712
  end
  object tbResumMensualGrafico: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenMensual'
      ''
      'ORDER BY enlace, MesSorting')
    MasterSource = DSResumenAnual
    MasterFields = 'year'
    DetailFields = 'enlace'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 432
    Top = 440
    ParamData = <
      item
        DataType = ftWideString
        Name = 'year'
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumMensualGraficoenlace: TWideStringField
      FieldName = 'enlace'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualGraficoenlace2: TIntegerField
      FieldName = 'enlace2'
      ReadOnly = True
    end
    object tbResumMensualGraficoMes: TWideStringField
      FieldName = 'Mes'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualGraficoID: TWideStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualGraficoMesSorting: TWideStringField
      FieldName = 'MesSorting'
      ReadOnly = True
      Size = 4000
    end
    object tbResumMensualGraficoTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object tbResumMensualGraficoEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object tbResumMensualGraficoEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object tbResumMensualGraficoEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object tbResumMensualGraficoEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object tbResumMensualGraficoComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object tbResumMensualGraficoComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object tbResumMensualGraficoCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbResumMensualGraficoPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object tbResumMensualGraficoFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object tbResumMensualGraficoGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
    object tbResumMensualGraficoUtilidad: TFloatField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
  end
  object DSResumMensualGrafico: TUniDataSource
    DataSet = tbResumMensualGrafico
    Left = 624
    Top = 448
  end
  object tbResumenDiarioGrafico: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.ResumenDiario'
      '')
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes'
    DetailFields = 'id_EnlaFecha'
    Active = True
    Left = 440
    Top = 496
    ParamData = <
      item
        DataType = ftWideString
        Name = 'id_enlaceMes'
        ParamType = ptInput
        Value = '15 02'
      end>
    object tbResumenDiarioGraficoid_EnlaFecha: TWideStringField
      FieldName = 'id_EnlaFecha'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioGraficoid_enlacesemana: TIntegerField
      FieldName = 'id_enlacesemana'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoFechaDia: TWideStringField
      FieldName = 'FechaDia'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioGraficoTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoPropina: TCurrencyField
      FieldName = 'Propina'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoFondo: TCurrencyField
      FieldName = 'Fondo'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoGasto: TFloatField
      FieldName = 'Gasto'
      ReadOnly = True
    end
    object tbResumenDiarioGraficoUtilidad: TFloatField
      FieldName = 'Utilidad'
      ReadOnly = True
    end
  end
  object DSResumenDiarioGrafico: TUniDataSource
    DataSet = tbResumenDiarioGrafico
    Left = 640
    Top = 528
  end
  object ResumenSemanalBilletesCUP: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * from ResumenSemanalBilletesCUP')
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_enlaceMes;ID_Semana'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 88
    Top = 608
    ParamData = <
      item
        DataType = ftWideString
        Name = 'id_enlaceMes'
        ParamType = ptInput
        Value = '15 02'
      end
      item
        DataType = ftInteger
        Name = 'ID_Semana'
        ParamType = ptInput
        Value = 6
      end>
    object ResumenSemanalBilletesCUPid_enlaceMes: TWideStringField
      FieldName = 'id_enlaceMes'
      ReadOnly = True
      Size = 4000
    end
    object ResumenSemanalBilletesCUPID_Semana: TIntegerField
      FieldName = 'ID_Semana'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPMesSorting: TWideStringField
      FieldName = 'MesSorting'
      ReadOnly = True
      Size = 4000
    end
    object ResumenSemanalBilletesCUPIntegerField1cup: TIntegerField
      FieldName = '1cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal1cup: TIntegerField
      FieldName = 'SubTotal(1cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField3cup: TIntegerField
      FieldName = '3cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal3cup: TIntegerField
      FieldName = 'SubTotal(3cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField5cup: TIntegerField
      FieldName = '5cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal5cup: TIntegerField
      FieldName = 'SubTotal(5cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField10cup: TIntegerField
      FieldName = '10cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal10cup: TIntegerField
      FieldName = 'SubTotal(10cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField20cup: TIntegerField
      FieldName = '20cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal20cup: TIntegerField
      FieldName = 'SubTotal(20cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField50cup: TIntegerField
      FieldName = '50cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal50cup: TIntegerField
      FieldName = 'SubTotal(50cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField100cup: TIntegerField
      FieldName = '100cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal100cup: TIntegerField
      FieldName = 'SubTotal(100cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField200cup: TIntegerField
      FieldName = '200cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal200cup: TIntegerField
      FieldName = 'SubTotal(200cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField500cup: TIntegerField
      FieldName = '500cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal500cup: TIntegerField
      FieldName = 'SubTotal(500cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPIntegerField1000cup: TIntegerField
      FieldName = '1000cup'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPSubTotal1000cup: TIntegerField
      FieldName = 'SubTotal(1000cup)'
      ReadOnly = True
    end
    object ResumenSemanalBilletesCUPTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DSResumenSemanalBilletesCUP: TUniDataSource
    DataSet = ResumenSemanalBilletesCUP
    Left = 272
    Top = 608
  end
  object ResumenDiarioBilletesCUP: TUniQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenDiarioBilletesCUP'
      '')
    MasterSource = DSResumenDiario
    MasterFields = 'id_EnlaFecha;id_enlacesemana;FechaDia'
    DetailFields = 'id_EnlaFecha;id_enlacesemana;FechaDia'
    LockMode = lmOptimistic
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Active = True
    Left = 96
    Top = 672
    ParamData = <
      item
        DataType = ftWideString
        Name = 'id_EnlaFecha'
        ParamType = ptInput
        Value = '15 02'
      end
      item
        DataType = ftInteger
        Name = 'id_enlacesemana'
        ParamType = ptInput
        Value = 6
      end
      item
        DataType = ftWideString
        Name = 'FechaDia'
        ParamType = ptInput
        Value = '06 02 15'
      end>
    object ResumenDiarioBilletesCUPid_EnlaFecha: TWideStringField
      FieldName = 'id_EnlaFecha'
      ReadOnly = True
      Size = 4000
    end
    object ResumenDiarioBilletesCUPid_enlacesemana: TIntegerField
      FieldName = 'id_enlacesemana'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPFechaDia: TWideStringField
      FieldName = 'FechaDia'
      ReadOnly = True
      Size = 4000
    end
    object ResumenDiarioBilletesCUPIntegerField1cup: TIntegerField
      FieldName = '1cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal1cup: TIntegerField
      FieldName = 'SubTotal(1cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField3cup: TIntegerField
      FieldName = '3cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal3cup: TIntegerField
      FieldName = 'SubTotal(3cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField5cup: TIntegerField
      FieldName = '5cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal5cup: TIntegerField
      FieldName = 'SubTotal(5cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField10cup: TIntegerField
      FieldName = '10cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal10cup: TIntegerField
      FieldName = 'SubTotal(10cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField20cup: TIntegerField
      FieldName = '20cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal20cup: TIntegerField
      FieldName = 'SubTotal(20cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField50cup: TIntegerField
      FieldName = '50cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal50cup: TIntegerField
      FieldName = 'SubTotal(50cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField100cup: TIntegerField
      FieldName = '100cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal100cup: TIntegerField
      FieldName = 'SubTotal(100cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField200cup: TIntegerField
      FieldName = '200cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal200cup: TIntegerField
      FieldName = 'SubTotal(200cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField500cup: TIntegerField
      FieldName = '500cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal500cup: TIntegerField
      FieldName = 'SubTotal(500cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPIntegerField1000cup: TIntegerField
      FieldName = '1000cup'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPSubTotal1000cup: TIntegerField
      FieldName = 'SubTotal(1000cup)'
      ReadOnly = True
    end
    object ResumenDiarioBilletesCUPTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DSResumenDiarioBilletesCUP: TUniDataSource
    DataSet = ResumenDiarioBilletesCUP
    Left = 264
    Top = 672
  end
end