object DMCierre: TDMCierre
  Height = 843
  Width = 1076
  object DSCierreCUP: TDataSource
    DataSet = dbDesgloseCierre
    Left = 40
    Top = 88
  end
  object dbDesgloseCierre: TFDQuery
    Active = True
    AfterPost = dbDesgloseCierreAfterPost
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT '
      ' *'
      'FROM '
      'DesgloseCierre_Q'
      ''
      'where  history = 0')
    Left = 40
    Top = 16
    object dbDesgloseCierreID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object dbDesgloseCierreFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object dbDesgloseCierreIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object dbDesgloseCierreSubtotal_1: TIntegerField
      FieldName = 'Subtotal_1'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField300: TIntegerField
      FieldName = '3,00'
    end
    object dbDesgloseCierreSubtotal_3: TIntegerField
      FieldName = 'Subtotal_3'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField500: TIntegerField
      FieldName = '5,00'
    end
    object dbDesgloseCierreSubtotal_5: TIntegerField
      FieldName = 'Subtotal_5'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField1000: TIntegerField
      FieldName = '10,00'
    end
    object dbDesgloseCierreSubtotal_10: TIntegerField
      FieldName = 'Subtotal_10'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField2000: TIntegerField
      FieldName = '20,00'
    end
    object dbDesgloseCierreSubtotal_20: TIntegerField
      FieldName = 'Subtotal_20'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField5000: TIntegerField
      FieldName = '50,00'
    end
    object dbDesgloseCierreSubtotal_50: TIntegerField
      FieldName = 'Subtotal_50'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField10000: TIntegerField
      FieldName = '100,00'
    end
    object dbDesgloseCierreSubtotal_100: TIntegerField
      FieldName = 'Subtotal_100'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField20000: TIntegerField
      FieldName = '200,00'
    end
    object dbDesgloseCierreSubtotal_200: TIntegerField
      FieldName = 'Subtotal_200'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField50000: TIntegerField
      FieldName = '500,00'
    end
    object dbDesgloseCierreSubtotal_500: TIntegerField
      FieldName = 'Subtotal_500'
      ReadOnly = True
    end
    object dbDesgloseCierreIntegerField100000: TIntegerField
      FieldName = '1000,00'
    end
    object dbDesgloseCierreSubtotal_1000: TIntegerField
      FieldName = 'Subtotal_1000'
      ReadOnly = True
    end
    object dbDesgloseCierreCUP_Banco: TCurrencyField
      FieldName = 'CUP_Banco'
    end
    object dbDesgloseCierreMLC_Banco: TCurrencyField
      FieldName = 'MLC_Banco'
    end
    object dbDesgloseCierreMLC_cambio: TCurrencyField
      FieldName = 'MLC_cambio'
    end
    object dbDesgloseCierreSubtotal_MLC: TCurrencyField
      FieldName = 'Subtotal_MLC'
      ReadOnly = True
    end
    object dbDesgloseCierreUSD: TCurrencyField
      FieldName = 'USD'
    end
    object dbDesgloseCierreUSD_cambio: TCurrencyField
      FieldName = 'USD_cambio'
    end
    object dbDesgloseCierreSubtotal_USD: TCurrencyField
      FieldName = 'Subtotal_USD'
      ReadOnly = True
    end
    object dbDesgloseCierreEUR: TCurrencyField
      FieldName = 'EUR'
    end
    object dbDesgloseCierreEUR_cambio: TCurrencyField
      FieldName = 'EUR_cambio'
    end
    object dbDesgloseCierreSubtotal_EUR: TCurrencyField
      FieldName = 'Subtotal_EUR'
      ReadOnly = True
    end
    object dbDesgloseCierreTotal: TCurrencyField
      FieldName = 'Total'
      ReadOnly = True
    end
    object dbDesgloseCierrehistory: TBooleanField
      FieldName = 'history'
    end
  end
  object DSCierreExtraciones: TDataSource
    DataSet = Q_CierreExtraciones
    Left = 176
    Top = 88
  end
  object Q_CierreExtraciones: TFDQuery
    Active = True
    AfterPost = dbDesgloseCierreAfterPost
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[Q_ExtracionesCierre]'
      ''
      'where  history = 0')
    Left = 176
    Top = 16
    object Q_CierreExtracionesID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Q_CierreExtracionesFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object Q_CierreExtracionesIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object Q_CierreExtracionesSubtotal_1: TIntegerField
      FieldName = 'Subtotal_1'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField300: TIntegerField
      FieldName = '3,00'
    end
    object Q_CierreExtracionesSubtotal_3: TIntegerField
      FieldName = 'Subtotal_3'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField500: TIntegerField
      FieldName = '5,00'
    end
    object Q_CierreExtracionesSubtotal_5: TIntegerField
      FieldName = 'Subtotal_5'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField1000: TIntegerField
      FieldName = '10,00'
    end
    object Q_CierreExtracionesSubtotal_10: TIntegerField
      FieldName = 'Subtotal_10'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField2000: TIntegerField
      FieldName = '20,00'
    end
    object Q_CierreExtracionesSubtotal_20: TIntegerField
      FieldName = 'Subtotal_20'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField5000: TIntegerField
      FieldName = '50,00'
    end
    object Q_CierreExtracionesSubtotal_50: TIntegerField
      FieldName = 'Subtotal_50'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField10000: TIntegerField
      FieldName = '100,00'
    end
    object Q_CierreExtracionesSubtotal_100: TIntegerField
      FieldName = 'Subtotal_100'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField20000: TIntegerField
      FieldName = '200,00'
    end
    object Q_CierreExtracionesSubtotal_200: TIntegerField
      FieldName = 'Subtotal_200'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField50000: TIntegerField
      FieldName = '500,00'
    end
    object Q_CierreExtracionesSubtotal_500: TIntegerField
      FieldName = 'Subtotal_500'
      ReadOnly = True
    end
    object Q_CierreExtracionesIntegerField100000: TIntegerField
      FieldName = '1000,00'
    end
    object Q_CierreExtracionesSubtotal_1000: TIntegerField
      FieldName = 'Subtotal_1000'
      ReadOnly = True
    end
    object Q_CierreExtracionesCUP_Banco: TCurrencyField
      FieldName = 'CUP_Banco'
    end
    object Q_CierreExtracionesMLC_Banco: TCurrencyField
      FieldName = 'MLC_Banco'
    end
    object Q_CierreExtracionesMLC_cambio: TCurrencyField
      FieldName = 'MLC_cambio'
    end
    object Q_CierreExtracionesSubtotal_MLC: TCurrencyField
      FieldName = 'Subtotal_MLC'
      ReadOnly = True
    end
    object Q_CierreExtracionesUSD: TCurrencyField
      FieldName = 'USD'
    end
    object Q_CierreExtracionesUSD_cambio: TCurrencyField
      FieldName = 'USD_cambio'
    end
    object Q_CierreExtracionesSubtotal_USD: TCurrencyField
      FieldName = 'Subtotal_USD'
      ReadOnly = True
    end
    object Q_CierreExtracionesEUR: TCurrencyField
      FieldName = 'EUR'
    end
    object Q_CierreExtracionesEUR_cambio: TCurrencyField
      FieldName = 'EUR_cambio'
    end
    object Q_CierreExtracionesSubtotal_EUR: TCurrencyField
      FieldName = 'Subtotal_EUR'
      ReadOnly = True
    end
    object Q_CierreExtracionesTotal: TCurrencyField
      FieldName = 'Total'
      ReadOnly = True
    end
    object Q_CierreExtracioneshistory: TBooleanField
      FieldName = 'history'
    end
  end
  object DSFondoCaja: TDataSource
    DataSet = Q_FondoCaja
    Left = 976
    Top = 104
  end
  object Q_FondoCaja: TFDQuery
    AfterPost = dbDesgloseCierreAfterPost
    MasterSource = DS_PEriodo
    MasterFields = 'ID'
    DetailFields = 'Fecha'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT TOP 1000 * FROM [dbo].[Q_FondoCaja]')
    Left = 976
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftDate
        ParamType = ptInput
        Value = 45931d
      end>
    object Q_FondoCajaID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Q_FondoCajaid_enlacedate: TSQLTimeStampField
      FieldName = 'id_enlacedate'
    end
    object Q_FondoCajaFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object Q_FondoCajaIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object Q_FondoCajaSubtotal_1: TIntegerField
      FieldName = 'Subtotal_1'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField300: TIntegerField
      FieldName = '3,00'
    end
    object Q_FondoCajaSubtotal_3: TIntegerField
      FieldName = 'Subtotal_3'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField500: TIntegerField
      FieldName = '5,00'
    end
    object Q_FondoCajaSubtotal_5: TIntegerField
      FieldName = 'Subtotal_5'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField1000: TIntegerField
      FieldName = '10,00'
    end
    object Q_FondoCajaSubtotal_10: TIntegerField
      FieldName = 'Subtotal_10'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField2000: TIntegerField
      FieldName = '20,00'
    end
    object Q_FondoCajaSubtotal_20: TIntegerField
      FieldName = 'Subtotal_20'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField5000: TIntegerField
      FieldName = '50,00'
    end
    object Q_FondoCajaSubtotal_50: TIntegerField
      FieldName = 'Subtotal_50'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField10000: TIntegerField
      FieldName = '100,00'
    end
    object Q_FondoCajaSubtotal_100: TIntegerField
      FieldName = 'Subtotal_100'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField20000: TIntegerField
      FieldName = '200,00'
    end
    object Q_FondoCajaSubtotal_200: TIntegerField
      FieldName = 'Subtotal_200'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField50000: TIntegerField
      FieldName = '500,00'
    end
    object Q_FondoCajaSubtotal_500: TIntegerField
      FieldName = 'Subtotal_500'
      ReadOnly = True
    end
    object Q_FondoCajaIntegerField100000: TIntegerField
      FieldName = '1000,00'
    end
    object Q_FondoCajaSubtotal_1000: TIntegerField
      FieldName = 'Subtotal_1000'
      ReadOnly = True
    end
    object Q_FondoCajaTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object InsertPeriodo: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'INSERT INTO Q_PeriodosCierre'
      '  (ID, History'
      'VALUES'
      '  (:ID, :History)')
    Left = 832
    Top = 520
    ParamData = <
      item
        Name = 'ID'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'History'
        DataType = ftBoolean
        ParamType = ptInput
        Value = Null
      end>
  end
  object Q_CierreDiario: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DS_PEriodo
    MasterFields = 'Periodo'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM [dbo].[Q_CierreDiario] ORDER BY [Fecha]')
    Left = 560
    Top = 400
    object Q_CierreDiarioid_enlace: TWideStringField
      FieldName = 'id_enlace'
      ReadOnly = True
      Size = 4000
    end
    object Q_CierreDiarioFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object Q_CierreDiarioTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
    end
    object Q_CierreDiarioEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
    end
    object Q_CierreDiarioEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object Q_CierreDiarioEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object Q_CierreDiarioEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object Q_CierreDiarioComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
    end
    object Q_CierreDiarioComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
    end
    object Q_CierreDiarioPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object Q_CierreDiarioGastos: TFMTBCDField
      FieldName = 'Gastos'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object Q_CierreDiarioUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object Q_CierreDiarioTotalDesglose: TCurrencyField
      FieldName = 'TotalDesglose'
      ReadOnly = True
    end
    object Q_CierreDiarioTotalVentaConPropina: TCurrencyField
      FieldName = 'TotalVentaConPropina'
      ReadOnly = True
    end
    object Q_CierreDiarioBalance: TCurrencyField
      FieldName = 'Balance'
      ReadOnly = True
    end
  end
  object Q_PEriodo: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [Q_PeriodosCierre]'
      'WHERE'
      #9'history = 0')
    Left = 640
    Top = 128
    object Q_PEriodoPeriodo: TWideStringField
      FieldName = 'Periodo'
      ReadOnly = True
      Size = 4000
    end
    object Q_PEriodoHistory: TBooleanField
      FieldName = 'History'
    end
    object Q_PEriodoID: TDateField
      FieldName = 'ID'
    end
  end
  object Q_PeriodoMensual: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DS_PEriodo
    MasterFields = 'Periodo'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM Q_CierreMensual')
    Left = 192
    Top = 584
    object Q_PeriodoMensualid_enlace: TWideStringField
      FieldName = 'id_enlace'
      Size = 4000
    end
    object Q_PeriodoMensualSemana: TIntegerField
      FieldName = 'Semana'
    end
    object Q_PeriodoMensualDesde: TSQLTimeStampField
      FieldName = 'Desde'
    end
    object Q_PeriodoMensualHasta: TSQLTimeStampField
      FieldName = 'Hasta'
    end
    object Q_PeriodoMensualTotalVenta: TCurrencyField
      FieldName = 'TotalVenta'
    end
    object Q_PeriodoMensualPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object Q_PeriodoMensualGastos: TFMTBCDField
      FieldName = 'Gastos'
      Precision = 38
      Size = 2
    end
    object Q_PeriodoMensualUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object tb_state: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tb_state]')
    Left = 376
    Top = 456
    object tb_stateID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tb_statelang: TStringField
      FieldName = 'lang'
      Size = 255
    end
  end
  object Tbperiodoscierre: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tbPeriodosCIerre')
    Left = 707
    Top = 266
    object TbperiodoscierreID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object TbperiodoscierrePeriodo: TDateField
      FieldName = 'Periodo'
    end
    object Tbperiodoscierrestate: TBooleanField
      FieldName = 'state'
    end
  end
  object DS_PEriodo: TDataSource
    DataSet = Q_PEriodo
    Left = 800
    Top = 161
  end
  object DS_state: TDataSource
    DataSet = tb_state
    Left = 376
    Top = 384
  end
  object DSCierreDiario: TDataSource
    DataSet = Q_CierreDiario
    Left = 656
    Top = 489
  end
  object DSPeriodoMensual: TDataSource
    DataSet = Q_PeriodoMensual
    Left = 184
    Top = 433
  end
  object DSperiodoscierre: TDataSource
    DataSet = Tbperiodoscierre
    Left = 840
    Top = 257
  end
end
