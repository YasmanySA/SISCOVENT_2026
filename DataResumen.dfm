object DM_Resumen: TDM_Resumen
  Height = 814
  Width = 1106
  object ResumenTrimestral: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSResumenAnual
    MasterFields = 'year'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestral')
    Left = 48
    Top = 80
    object ResumenTrimestralid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object ResumenTrimestralTrimestre: TIntegerField
      FieldName = 'Trimestre'
    end
    object ResumenTrimestralMeses: TIntegerField
      FieldName = 'Meses'
    end
    object ResumenTrimestralMes: TWideStringField
      FieldName = 'Mes'
      Size = 4000
    end
    object ResumenTrimestralMes2: TWideStringField
      FieldName = 'Mes2'
      Size = 4000
    end
    object ResumenTrimestralTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
    end
    object ResumenTrimestralEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
    end
    object ResumenTrimestralEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object ResumenTrimestralEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object ResumenTrimestralEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object ResumenTrimestralComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
    end
    object ResumenTrimestralComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
    end
    object ResumenTrimestralCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
    end
    object ResumenTrimestralPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object ResumenTrimestralFondo: TCurrencyField
      FieldName = 'Fondo'
    end
    object ResumenTrimestralGasto: TFMTBCDField
      FieldName = 'Gasto'
      Precision = 38
      Size = 2
    end
    object ResumenTrimestralUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenTrimestral: TDataSource
    DataSet = ResumenTrimestral
    Left = 168
    Top = 72
  end
  object tbResumMensual: TFDQuery
    Active = True
    IndexFieldNames = 'enlace;enlace2'
    MasterSource = DSResumenTrimestral
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'enlace;enlace2'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumenMensual'
      'ORDER BY enlace, MesSorting')
    Left = 48
    Top = 144
    object tbResumMensualenlace: TWideStringField
      FieldName = 'enlace'
      Origin = 'enlace'
      Size = 4000
    end
    object tbResumMensualenlace2: TIntegerField
      FieldName = 'enlace2'
      Origin = 'enlace2'
    end
    object tbResumMensualMes: TWideStringField
      FieldName = 'Mes'
      Origin = 'Mes'
      Size = 4000
    end
    object tbResumMensualID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      Size = 4000
    end
    object tbResumMensualMesSorting: TWideStringField
      FieldName = 'MesSorting'
      Origin = 'MesSorting'
      Size = 4000
    end
    object tbResumMensualTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      Origin = 'TotalVentaCUP'
    end
    object tbResumMensualEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      Origin = 'EfectivoCUP'
    end
    object tbResumMensualEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object tbResumMensualEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      Origin = 'EfectivoUSD'
    end
    object tbResumMensualEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      Origin = 'EfectivoEUR'
    end
    object tbResumMensualComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      Origin = 'ComercioE_CUP'
    end
    object tbResumMensualComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      Origin = 'ComercioE_USD'
    end
    object tbResumMensualCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      Origin = 'CambioCUP'
    end
    object tbResumMensualPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object tbResumMensualFondo: TCurrencyField
      FieldName = 'Fondo'
      Origin = 'Fondo'
    end
    object tbResumMensualGasto: TFMTBCDField
      FieldName = 'Gasto'
      Origin = 'Gasto'
      Precision = 38
      Size = 2
    end
    object tbResumMensualUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Origin = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object DSResumMensual: TDataSource
    DataSet = tbResumMensual
    Left = 184
    Top = 152
  end
  object tbResumSemanal: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlaceMes'
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'id_enlaceMes'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT      *'
      'FROM          ResumenSemanal'
      'ORDER BY MesSorting')
    Left = 48
    Top = 200
    object tbResumSemanalid_enlaceMes: TWideStringField
      FieldName = 'id_enlaceMes'
      Origin = 'id_enlaceMes'
      Size = 4000
    end
    object tbResumSemanalID_Semana: TIntegerField
      FieldName = 'ID_Semana'
      Origin = 'ID_Semana'
    end
    object tbResumSemanalMesSorting: TWideStringField
      FieldName = 'MesSorting'
      Origin = 'MesSorting'
      Size = 4000
    end
    object tbResumSemanalde: TSQLTimeStampField
      FieldName = 'de'
      Origin = 'de'
    end
    object tbResumSemanala: TSQLTimeStampField
      FieldName = 'a'
      Origin = 'a'
    end
    object tbResumSemanalf1: TIntegerField
      FieldName = 'f1'
      Origin = 'f1'
    end
    object tbResumSemanalf2: TIntegerField
      FieldName = 'f2'
      Origin = 'f2'
    end
    object tbResumSemanalTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      Origin = 'TotalVentaCUP'
    end
    object tbResumSemanalEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      Origin = 'EfectivoCUP'
    end
    object tbResumSemanalEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object tbResumSemanalEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      Origin = 'EfectivoUSD'
    end
    object tbResumSemanalEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      Origin = 'EfectivoEUR'
    end
    object tbResumSemanalComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      Origin = 'ComercioE_CUP'
    end
    object tbResumSemanalComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      Origin = 'ComercioE_USD'
    end
    object tbResumSemanalCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      Origin = 'CambioCUP'
    end
    object tbResumSemanalPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object tbResumSemanalFondo: TCurrencyField
      FieldName = 'Fondo'
      Origin = 'Fondo'
    end
    object tbResumSemanalGasto: TFMTBCDField
      FieldName = 'Gasto'
      Origin = 'Gasto'
      Precision = 38
      Size = 2
    end
    object tbResumSemanalUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Origin = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object DSResumSemanal: TDataSource
    DataSet = tbResumSemanal
    Left = 168
    Top = 200
  end
  object tbResumenDiario: TFDQuery
    Active = True
    IndexFieldNames = 'id_EnlaFecha;id_enlacesemana'
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_EnlaFecha;id_enlacesemana'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.ResumenDiario'
      ''
      'ORDER BY'
      #9'id_EnlaFecha ASC, '
      #9'id_enlacesemana ASC, '
      #9'FechaDia ASC')
    Left = 48
    Top = 256
    object tbResumenDiarioid_EnlaFecha: TWideStringField
      FieldName = 'id_EnlaFecha'
      Origin = 'id_EnlaFecha'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioid_enlacesemana: TIntegerField
      FieldName = 'id_enlacesemana'
      Origin = 'id_enlacesemana'
      ReadOnly = True
    end
    object tbResumenDiarioFechaDia: TWideStringField
      FieldName = 'FechaDia'
      Origin = 'FechaDia'
      ReadOnly = True
      Size = 4000
    end
    object tbResumenDiarioTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      Origin = 'TotalVentaCUP'
    end
    object tbResumenDiarioEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      Origin = 'EfectivoCUP'
    end
    object tbResumenDiarioEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object tbResumenDiarioEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      Origin = 'EfectivoUSD'
    end
    object tbResumenDiarioEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      Origin = 'EfectivoEUR'
    end
    object tbResumenDiarioComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      Origin = 'ComercioE_CUP'
    end
    object tbResumenDiarioComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      Origin = 'ComercioE_USD'
    end
    object tbResumenDiarioCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      Origin = 'CambioCUP'
    end
    object tbResumenDiarioPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object tbResumenDiarioFondo: TCurrencyField
      FieldName = 'Fondo'
      Origin = 'Fondo'
    end
    object tbResumenDiarioGasto: TFMTBCDField
      FieldName = 'Gasto'
      Origin = 'Gasto'
      Precision = 38
      Size = 2
    end
    object tbResumenDiarioUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Origin = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenDiario: TDataSource
    DataSet = tbResumenDiario
    Left = 168
    Top = 256
  end
  object DSResumenAnualBilletesCUP: TDataSource
    DataSet = tbResumenAnualBilletesCUP
    Left = 264
    Top = 392
  end
  object tbResumenAnualBilletesCUP: TFDQuery
    Active = True
    MasterFields = 'year'
    DetailFields = 'a'#241'o'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT *'
      '  FROM [dbo].[ResumenAnualCUP]')
    Left = 96
    Top = 384
    ParamData = <
      item
        Name = 'year'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumenAnualBilletesCUPaño: TWideStringField
      FieldName = 'a'#241'o'
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
  object ResumenTrimestralBilletesCUP: TFDQuery
    Active = True
    MasterSource = DSResumenTrimestral
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'id_enlace;Trimestre'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestralCUP'
      ''
      '')
    Left = 104
    Top = 472
    ParamData = <
      item
        Name = 'id_enlace'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2025
      end
      item
        Name = 'Trimestre'
        DataType = ftInteger
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
  object DSResumenTrimestralBilletesCUP: TDataSource
    DataSet = ResumenTrimestralBilletesCUP
    Left = 264
    Top = 472
  end
  object ResumenMensualBilletesCUP: TFDQuery
    Active = True
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumenMensualCUP'
      '')
    Left = 104
    Top = 552
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '25 01'
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
  object DSResumenMensualBilletesCUP: TDataSource
    DataSet = ResumenMensualBilletesCUP
    Left = 272
    Top = 544
  end
  object ResumenSemanalBilletesCUP: TFDQuery
    Active = True
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_enlaceMes;ID_Semana'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * from ResumenSemanalBilletesCUP')
    Left = 88
    Top = 608
    ParamData = <
      item
        Name = 'id_enlaceMes'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '25 01'
      end
      item
        Name = 'ID_Semana'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
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
  object DSResumenSemanalBilletesCUP: TDataSource
    DataSet = ResumenSemanalBilletesCUP
    Left = 272
    Top = 608
  end
  object ResumenDiarioBilletesCUP: TFDQuery
    Active = True
    MasterSource = DSResumenDiario
    MasterFields = 'id_EnlaFecha;id_enlacesemana;FechaDia'
    DetailFields = 'id_EnlaFecha;id_enlacesemana;FechaDia'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumenDiarioBilletesCUP'
      '')
    Left = 96
    Top = 672
    ParamData = <
      item
        Name = 'id_EnlaFecha'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '25 01'
      end
      item
        Name = 'id_enlacesemana'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'FechaDia'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '01 01 25'
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
  object DSResumenDiarioBilletesCUP: TDataSource
    DataSet = ResumenDiarioBilletesCUP
    Left = 264
    Top = 672
  end
  object DSResumenDiarioDetallado: TDataSource
    DataSet = tbResumenDiarioDetallado
    Left = 896
    Top = 240
  end
  object DSResumenAnualDetallado: TDataSource
    DataSet = tbResumenAnualDetallado
    Left = 880
    Top = 32
  end
  object DSResumMensualDetallado: TDataSource
    DataSet = tbResumMensualDetallado
    Left = 896
    Top = 112
  end
  object tbResumenAnualDetallado: TFDQuery
    Active = True
    IndexFieldNames = 'Anual'
    MasterFields = 'year'
    DetailFields = 'Anual'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM           ResumenAnualDetalles')
    Left = 720
    Top = 32
    object tbResumenAnualDetalladoAnual: TWideStringField
      FieldName = 'Anual'
      Origin = 'Anual'
      Size = 4000
    end
    object tbResumenAnualDetalladoServicios: TWideStringField
      FieldName = 'Servicios'
      Origin = 'Servicios'
      Size = 100
    end
    object tbResumenAnualDetalladoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 100
    end
    object tbResumenAnualDetalladoCantidad: TCurrencyField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbResumenAnualDetalladoPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
      Origin = 'PrecioCUP'
    end
    object tbResumenAnualDetalladoSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      Origin = 'SubtotalCUP'
    end
    object tbResumenAnualDetalladoTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      Origin = 'TotalInsumos'
    end
    object tbResumenAnualDetalladoTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      Origin = 'TotalGenerales'
    end
  end
  object tbResumenDiarioDetallado: TFDQuery
    Active = True
    IndexFieldNames = 'FechaDia'
    MasterSource = DSResumenDiario
    MasterFields = 'FechaDia'
    DetailFields = 'FechaDia'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT       *'
      'FROM           ResumDiarioDetallado'
      'ORDER BY'
      #9'FechaDia ASC')
    Left = 704
    Top = 232
    object tbResumenDiarioDetalladoFechaDia: TWideStringField
      FieldName = 'FechaDia'
      Origin = 'FechaDia'
      Size = 4000
    end
    object tbResumenDiarioDetalladoServicios: TWideStringField
      FieldName = 'Servicios'
      Origin = 'Servicios'
      Size = 100
    end
    object tbResumenDiarioDetalladoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 100
    end
    object tbResumenDiarioDetalladoPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
      Origin = 'PrecioCUP'
    end
    object tbResumenDiarioDetalladoCantidad: TCurrencyField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbResumenDiarioDetalladoSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      Origin = 'SubtotalCUP'
    end
    object tbResumenDiarioDetalladoTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      Origin = 'TotalInsumos'
    end
    object tbResumenDiarioDetalladoTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      Origin = 'TotalGenerales'
    end
  end
  object tbResumMensualDetallado: TFDQuery
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM [Resumen MensualOperaciones]'
      ''
      '')
    Left = 712
    Top = 112
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '25 01'
      end>
    object tbResumMensualDetalladoenlace: TWideStringField
      FieldName = 'enlace'
      Origin = 'enlace'
      Size = 4000
    end
    object tbResumMensualDetalladoMes: TWideStringField
      FieldName = 'Mes'
      Origin = 'Mes'
      Size = 4000
    end
    object tbResumMensualDetalladoID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      Size = 4000
    end
    object tbResumMensualDetalladoServicios: TWideStringField
      FieldName = 'Servicios'
      Origin = 'Servicios'
      Size = 100
    end
    object tbResumMensualDetalladoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 100
    end
    object tbResumMensualDetalladoPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
      Origin = 'PrecioCUP'
    end
    object tbResumMensualDetalladoCantidad: TCurrencyField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbResumMensualDetalladoSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      Origin = 'SubtotalCUP'
    end
    object tbResumMensualDetalladoTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      Origin = 'TotalInsumos'
    end
    object tbResumMensualDetalladoTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      Origin = 'TotalGenerales'
    end
  end
  object DSResumenTrimestralDetalles: TDataSource
    DataSet = tbResumenTrimestralDetalles
    Left = 552
    Top = 24
  end
  object tbResumenTrimestralDetalles: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace;Trimestre'
    MasterSource = DSResumenTrimestral
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'id_enlace;Trimestre'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestralDetalles'
      '')
    Left = 368
    Top = 24
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
  object DSResumSemanaldetalles: TDataSource
    DataSet = tbResumSemanaldetalles
    Left = 536
    Top = 96
  end
  object tbResumSemanaldetalles: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlaceMes;ID_Semana'
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_enlaceMes;ID_Semana'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT      *'
      'FROM          ResumenSemanalDetalles'
      'ORDER BY MesSorting')
    Left = 376
    Top = 104
    object tbResumSemanaldetallesid_enlaceMes: TWideStringField
      FieldName = 'id_enlaceMes'
      Size = 4000
    end
    object tbResumSemanaldetallesID_Semana: TIntegerField
      FieldName = 'ID_Semana'
    end
    object tbResumSemanaldetallesMesSorting: TWideStringField
      FieldName = 'MesSorting'
      Size = 4000
    end
    object tbResumSemanaldetallesde: TSQLTimeStampField
      FieldName = 'de'
    end
    object tbResumSemanaldetallesa: TSQLTimeStampField
      FieldName = 'a'
    end
    object tbResumSemanaldetallesf1: TIntegerField
      FieldName = 'f1'
    end
    object tbResumSemanaldetallesf2: TIntegerField
      FieldName = 'f2'
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
    end
    object tbResumSemanaldetallesSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
    end
    object tbResumSemanaldetallesTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
    end
    object tbResumSemanaldetallesTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
    end
  end
  object DSDescripcion: TDataSource
    DataSet = tbDescripcion
    Left = 768
    Top = 728
  end
  object tbDescripcion: TFDTable
    Active = True
    MasterFields = 'Descripcion'
    DetailFields = 'Descripcion'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbServiceDescripC'
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
  object DSCostos: TDataSource
    DataSet = tbCosto
    Left = 786
    Top = 638
  end
  object tbCosto: TFDTable
    Active = True
    MasterSource = DSDescripcion
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '[tbServiceCostos C]'
    Left = 720
    Top = 640
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
  object DSservDecrip: TDataSource
    DataSet = tbservDecrip
    Left = 1072
    Top = 648
  end
  object tbservDecrip: TFDTable
    Active = True
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbServiceDescripC'
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
  object DSQVentasOperaciones: TDataSource
    DataSet = tbQVentasOperaciones
    Left = 800
    Top = 312
  end
  object tbQVentasOperaciones: TFDTable
    Active = True
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'QVentasOperaciones'
    Left = 952
    Top = 392
    object tbQVentasOperacionesID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object tbQVentasOperacionesenlace_id: TLargeintField
      FieldName = 'enlace_id'
      Origin = 'enlace_id'
    end
    object tbQVentasOperacionesenlace_operacion: TStringField
      FieldName = 'enlace_operacion'
      Origin = 'enlace_operacion'
      Size = 10
    end
    object tbQVentasOperacionesFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object tbQVentasOperacioneshora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
    end
    object tbQVentasOperacionesServicios: TWideStringField
      FieldName = 'Servicios'
      Origin = 'Servicios'
      Size = 100
    end
    object tbQVentasOperacionesDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 100
    end
    object tbQVentasOperacionesPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
      Origin = 'PrecioCUP'
    end
    object tbQVentasOperacionesCantidad: TCurrencyField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbQVentasOperacionesSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      Origin = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbQVentasOperacionesGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
      Origin = 'GastosInsumos'
    end
    object tbQVentasOperacionesGastosGenerales: TCurrencyField
      FieldName = 'GastosGenerales'
      Origin = 'GastosGenerales'
    end
    object tbQVentasOperacionesTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      Origin = 'TotalInsumos'
      ReadOnly = True
    end
    object tbQVentasOperacionesTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      Origin = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object DSHistorico_tbVentasConsulta: TDataSource
    DataSet = Historico_tbVentasConsulta
    Left = 960
    Top = 304
  end
  object Historico_tbVentasConsulta: TFDTable
    Active = True
    MasterSource = DSResumenAnualDetallado
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Historico_tbVentasConsulta'
    Left = 816
    Top = 552
    object Historico_tbVentasConsultaNoComp: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'NoComp'
      Origin = 'NoComp'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object Historico_tbVentasConsultaNoOperacion: TStringField
      FieldName = 'NoOperacion'
      Origin = 'NoOperacion'
      Size = 10
    end
    object Historico_tbVentasConsultaIDUser: TIntegerField
      FieldName = 'IDUser'
      Origin = 'IDUser'
    end
    object Historico_tbVentasConsultaFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object Historico_tbVentasConsultaHora: TSQLTimeStampField
      FieldName = 'Hora'
      Origin = 'Hora'
    end
    object Historico_tbVentasConsultaTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      Origin = 'TotalVentaCUP'
    end
    object Historico_tbVentasConsultaEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      Origin = 'EfectivoCUP'
    end
    object Historico_tbVentasConsultaEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      Origin = 'EfectivoEUR'
    end
    object Historico_tbVentasConsultaEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      Origin = 'EfectivoUSD'
    end
    object Historico_tbVentasConsultaEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object Historico_tbVentasConsultaComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      Origin = 'ComercioE_CUP'
    end
    object Historico_tbVentasConsultaComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      Origin = 'ComercioE_USD'
    end
    object Historico_tbVentasConsultaNoTarjetaCredito: TStringField
      FieldName = 'NoTarjetaCredito'
      Origin = 'NoTarjetaCredito'
      Size = 30
    end
    object Historico_tbVentasConsultanameComercio: TStringField
      FieldName = 'nameComercio'
      Origin = 'nameComercio'
      Size = 30
    end
    object Historico_tbVentasConsultaPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object Historico_tbVentasConsultac_eur: TCurrencyField
      FieldName = 'c_eur'
      Origin = 'c_eur'
    end
    object Historico_tbVentasConsultac_mlc: TCurrencyField
      FieldName = 'c_mlc'
      Origin = 'c_mlc'
    end
    object Historico_tbVentasConsultac_usd: TCurrencyField
      FieldName = 'c_usd'
      Origin = 'c_usd'
    end
    object Historico_tbVentasConsultaCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      Origin = 'CambioCUP'
      ReadOnly = True
    end
    object Historico_tbVentasConsultaFondo: TCurrencyField
      FieldName = 'Fondo'
      Origin = 'Fondo'
      ReadOnly = True
    end
    object Historico_tbVentasConsultaIDrow: TLargeintField
      FieldName = 'IDrow'
      Origin = 'IDrow'
    end
    object Historico_tbVentasConsultahistory: TBooleanField
      FieldName = 'history'
      Origin = 'history'
    end
  end
  object tbResumenAnualMonedaCUC: TFDQuery
    Active = True
    MasterFields = 'A'#241'o'
    DetailFields = 'id_enlaceA'#241'o'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       * FROM            dbo.[ResumenAnual MonedaCUC]'
      '')
    Left = 968
    Top = 496
    ParamData = <
      item
        Name = 'A'#241'o'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumenAnualMonedaCUCid_enlaceAño: TWideStringField
      FieldName = 'id_enlaceA'#241'o'
      Origin = '[id_enlaceA'#241'o]'
      Size = 4000
    end
    object tbResumenAnualMonedaCUCIntegerField005: TIntegerField
      FieldName = '0,05'
      Origin = '[0,05]'
    end
    object tbResumenAnualMonedaCUCSubTota005: TFMTBCDField
      FieldName = 'SubTota(0,05)'
      Origin = '[SubTota(0,05)]'
      Precision = 38
      Size = 2
    end
    object tbResumenAnualMonedaCUCIntegerField010: TIntegerField
      FieldName = '0,10'
      Origin = '[0,10]'
    end
    object tbResumenAnualMonedaCUCSubTota010: TFMTBCDField
      FieldName = 'SubTota(0,10)'
      Origin = '[SubTota(0,10)]'
      Precision = 38
      Size = 1
    end
    object tbResumenAnualMonedaCUCIntegerField025: TIntegerField
      FieldName = '0,25'
      Origin = '[0,25]'
    end
    object tbResumenAnualMonedaCUCSubTota025: TFMTBCDField
      FieldName = 'SubTota(0,25)'
      Origin = '[SubTota(0,25)]'
      Precision = 38
      Size = 2
    end
    object tbResumenAnualMonedaCUCIntegerField050: TIntegerField
      FieldName = '0,50'
      Origin = '[0,50]'
    end
    object tbResumenAnualMonedaCUCSubTota050: TFMTBCDField
      FieldName = 'SubTota(0,50)'
      Origin = '[SubTota(0,50)]'
      Precision = 38
      Size = 1
    end
    object tbResumenAnualMonedaCUCIntegerField100: TIntegerField
      FieldName = '1,00'
      Origin = '[1,00]'
    end
    object tbResumenAnualMonedaCUCSubTota100: TIntegerField
      FieldName = 'SubTota(1,00)'
      Origin = '[SubTota(1,00)]'
    end
    object tbResumenAnualMonedaCUCTotal: TFMTBCDField
      FieldName = 'Total'
      Origin = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenAnualMonedaCUC: TDataSource
    DataSet = tbResumenAnualMonedaCUC
    Left = 720
    Top = 440
  end
  object DSResumMensualPorServicios: TDataSource
    DataSet = tbResumMensualPorServicios
    Left = 472
    Top = 352
  end
  object tbResumMensualPorServicios: TFDQuery
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSResumMensual
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumenMensualporServicios'
      ''
      '')
    Left = 472
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '25 01'
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
  object tbResumenAnualPorServicios: TFDQuery
    Active = True
    MasterFields = 'year'
    DetailFields = 'Anual'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM           ResumenAnualPorServicios')
    Left = 488
    Top = 648
    ParamData = <
      item
        Name = 'year'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumenAnualPorServiciosAnual: TWideStringField
      FieldName = 'Anual'
      Origin = 'Anual'
      Size = 4000
    end
    object tbResumenAnualPorServiciosServicios: TWideStringField
      FieldName = 'Servicios'
      Origin = 'Servicios'
      Size = 100
    end
    object tbResumenAnualPorServiciosCantidad: TCurrencyField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbResumenAnualPorServiciosSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      Origin = 'SubtotalCUP'
    end
  end
  object DSResumenAnualPorServicios: TDataSource
    DataSet = tbResumenAnualPorServicios
    Left = 448
    Top = 712
  end
  object tbResumMensualGrafico: TFDQuery
    Active = True
    MasterFields = 'year'
    DetailFields = 'enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenMensual'
      ''
      'ORDER BY enlace, MesSorting')
    Left = 440
    Top = 432
    ParamData = <
      item
        Name = 'year'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2015'
      end>
    object tbResumMensualGraficoenlace: TWideStringField
      FieldName = 'enlace'
      Origin = 'enlace'
      Size = 4000
    end
    object tbResumMensualGraficoenlace2: TIntegerField
      FieldName = 'enlace2'
      Origin = 'enlace2'
    end
    object tbResumMensualGraficoMes: TWideStringField
      FieldName = 'Mes'
      Origin = 'Mes'
      Size = 4000
    end
    object tbResumMensualGraficoID: TWideStringField
      FieldName = 'ID'
      Origin = 'ID'
      Size = 4000
    end
    object tbResumMensualGraficoMesSorting: TWideStringField
      FieldName = 'MesSorting'
      Origin = 'MesSorting'
      Size = 4000
    end
    object tbResumMensualGraficoTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      Origin = 'TotalVentaCUP'
    end
    object tbResumMensualGraficoEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      Origin = 'EfectivoCUP'
    end
    object tbResumMensualGraficoEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object tbResumMensualGraficoEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      Origin = 'EfectivoUSD'
    end
    object tbResumMensualGraficoEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      Origin = 'EfectivoEUR'
    end
    object tbResumMensualGraficoComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      Origin = 'ComercioE_CUP'
    end
    object tbResumMensualGraficoComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      Origin = 'ComercioE_USD'
    end
    object tbResumMensualGraficoCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      Origin = 'CambioCUP'
    end
    object tbResumMensualGraficoPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object tbResumMensualGraficoFondo: TCurrencyField
      FieldName = 'Fondo'
      Origin = 'Fondo'
    end
    object tbResumMensualGraficoGasto: TFMTBCDField
      FieldName = 'Gasto'
      Origin = 'Gasto'
      Precision = 38
      Size = 2
    end
    object tbResumMensualGraficoUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Origin = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object DSResumMensualGrafico: TDataSource
    DataSet = tbResumMensualGrafico
    Left = 640
    Top = 352
  end
  object tbResumenDiarioGrafico: TFDQuery
    Active = True
    MasterSource = DSResumSemanal
    MasterFields = 'id_enlaceMes'
    DetailFields = 'id_EnlaFecha'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.ResumenDiario'
      '')
    Left = 456
    Top = 520
    ParamData = <
      item
        Name = 'id_enlaceMes'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '25 01'
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
    end
    object tbResumenDiarioGraficoEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
    end
    object tbResumenDiarioGraficoEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object tbResumenDiarioGraficoEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object tbResumenDiarioGraficoEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object tbResumenDiarioGraficoComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
    end
    object tbResumenDiarioGraficoComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
    end
    object tbResumenDiarioGraficoCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
    end
    object tbResumenDiarioGraficoPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object tbResumenDiarioGraficoFondo: TCurrencyField
      FieldName = 'Fondo'
    end
    object tbResumenDiarioGraficoGasto: TFMTBCDField
      FieldName = 'Gasto'
      Precision = 38
      Size = 2
    end
    object tbResumenDiarioGraficoUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenDiarioGrafico: TDataSource
    DataSet = tbResumenDiarioGrafico
    Left = 656
    Top = 536
  end
  object DSResumenAnual: TDataSource
    DataSet = tbResumenAnual
    Left = 152
    Top = 16
  end
  object tbResumenAnual: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.[Resumen Anual]'
      '')
    Left = 40
    Top = 24
    object tbResumenAnualyear: TWideStringField
      FieldName = 'year'
      Size = 4000
    end
    object tbResumenAnualTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
    end
    object tbResumenAnualEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
    end
    object tbResumenAnualEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
    end
    object tbResumenAnualEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
    end
    object tbResumenAnualEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
    end
    object tbResumenAnualComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
    end
    object tbResumenAnualComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
    end
    object tbResumenAnualCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
    end
    object tbResumenAnualPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object tbResumenAnualFondo: TCurrencyField
      FieldName = 'Fondo'
    end
    object tbResumenAnualGasto: TFMTBCDField
      FieldName = 'Gasto'
      Precision = 38
      Size = 2
    end
    object tbResumenAnualUtilidad: TFMTBCDField
      FieldName = 'Utilidad'
      Precision = 38
      Size = 2
    end
  end
end
