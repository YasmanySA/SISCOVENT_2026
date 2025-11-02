object DMResumenGastos: TDMResumenGastos
  Height = 726
  Width = 1013
  object ResumenTrimestralGastosDetallados: TFDQuery
    Active = True
    MasterFields = 'id_enlace;Trimestre'
    DetailFields = 'id_enlace;Trimestre'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenTrimestralGastosDetalles'
      ''
      '')
    Left = 104
    Top = 456
    ParamData = <
      item
        Name = 'id_enlace'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Trimestre'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object ResumenTrimestralGastosDetalladosid_enlace: TWideStringField
      FieldName = 'id_enlace'
      Size = 4000
    end
    object ResumenTrimestralGastosDetalladosTrimestre: TIntegerField
      FieldName = 'Trimestre'
    end
    object ResumenTrimestralGastosDetalladostype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object ResumenTrimestralGastosDetalladosTiposdeGasto: TStringField
      FieldName = 'Tipos de Gasto'
      Size = 100
    end
    object ResumenTrimestralGastosDetalladosDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 100
    end
    object ResumenTrimestralGastosDetalladosFormato: TStringField
      FieldName = 'Formato'
      ReadOnly = True
      Size = 100
    end
    object ResumenTrimestralGastosDetalladostamaño: TStringField
      FieldName = 'tama'#241'o'
      ReadOnly = True
      Size = 50
    end
    object ResumenTrimestralGastosDetalladosCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object ResumenTrimestralGastosDetalladosTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenTrimestralGastosDetallados: TDataSource
    DataSet = ResumenTrimestralGastosDetallados
    Left = 336
    Top = 440
  end
  object ResumenGastosDetalladosMensual: TFDQuery
    Active = True
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenGastosDetalladosMensual'
      '')
    Left = 104
    Top = 552
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
      end>
    object ResumenGastosDetalladosMensualenlace: TWideStringField
      FieldName = 'enlace'
      Size = 4000
    end
    object ResumenGastosDetalladosMensualMes: TWideStringField
      FieldName = 'Mes'
      Size = 4000
    end
    object ResumenGastosDetalladosMensualID: TWideStringField
      FieldName = 'ID'
      Size = 4000
    end
    object ResumenGastosDetalladosMensualtype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object ResumenGastosDetalladosMensualTiposdeGasto: TStringField
      FieldName = 'Tipos de Gasto'
      Size = 100
    end
    object ResumenGastosDetalladosMensualDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 100
    end
    object ResumenGastosDetalladosMensualFormato: TStringField
      FieldName = 'Formato'
      ReadOnly = True
      Size = 100
    end
    object ResumenGastosDetalladosMensualtamaño: TStringField
      FieldName = 'tama'#241'o'
      ReadOnly = True
      Size = 50
    end
    object ResumenGastosDetalladosMensualCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object ResumenGastosDetalladosMensualTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenGastosDetalladosMensual: TDataSource
    DataSet = ResumenGastosDetalladosMensual
    Left = 296
    Top = 544
  end
  object ResumenGastosDetalladosSemanal: TFDQuery
    Active = True
    MasterFields = 'id_enlaceMes;ID_Semana'
    DetailFields = 'id_enlaceMes;ID_Semana'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * from ResumenGastosDetalladosSemanal')
    Left = 88
    Top = 608
    ParamData = <
      item
        Name = 'id_enlaceMes'
        DataType = ftWideString
        ParamType = ptInput
      end
      item
        Name = 'ID_Semana'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object ResumenGastosDetalladosSemanalid_enlaceMes: TWideStringField
      FieldName = 'id_enlaceMes'
      Size = 4000
    end
    object ResumenGastosDetalladosSemanalID_Semana: TIntegerField
      FieldName = 'ID_Semana'
    end
    object ResumenGastosDetalladosSemanalMesSorting: TWideStringField
      FieldName = 'MesSorting'
      Size = 4000
    end
    object ResumenGastosDetalladosSemanaltype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object ResumenGastosDetalladosSemanalTiposdeGasto: TStringField
      FieldName = 'Tipos de Gasto'
      Size = 100
    end
    object ResumenGastosDetalladosSemanalDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 100
    end
    object ResumenGastosDetalladosSemanalFormato: TStringField
      FieldName = 'Formato'
      ReadOnly = True
      Size = 100
    end
    object ResumenGastosDetalladosSemanaltamaño: TStringField
      FieldName = 'tama'#241'o'
      ReadOnly = True
      Size = 50
    end
    object ResumenGastosDetalladosSemanalCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object ResumenGastosDetalladosSemanalTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenGastosDetalladosSemanal: TDataSource
    DataSet = ResumenGastosDetalladosSemanal
    Left = 272
    Top = 608
  end
  object ResumenGastosDetalladosDiario: TFDQuery
    Active = True
    MasterFields = 'id_EnlaFecha;id_enlacesemana;FechaDia'
    DetailFields = 'id_EnlaFecha;id_enlacesemana;FechaDia'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM ResumenGastosDetalladosDiario'
      '')
    Left = 96
    Top = 672
    ParamData = <
      item
        Name = 'id_EnlaFecha'
        DataType = ftWideString
        ParamType = ptInput
      end
      item
        Name = 'id_enlacesemana'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FechaDia'
        DataType = ftWideString
        ParamType = ptInput
      end>
    object ResumenGastosDetalladosDiarioid_EnlaFecha: TWideStringField
      FieldName = 'id_EnlaFecha'
      Size = 4000
    end
    object ResumenGastosDetalladosDiarioid_enlacesemana: TIntegerField
      FieldName = 'id_enlacesemana'
    end
    object ResumenGastosDetalladosDiarioFechaDia: TWideStringField
      FieldName = 'FechaDia'
      Size = 4000
    end
    object ResumenGastosDetalladosDiariotype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object ResumenGastosDetalladosDiarioTiposdeGasto: TStringField
      FieldName = 'Tipos de Gasto'
      Size = 100
    end
    object ResumenGastosDetalladosDiarioDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 100
    end
    object ResumenGastosDetalladosDiarioFormato: TStringField
      FieldName = 'Formato'
      ReadOnly = True
      Size = 100
    end
    object ResumenGastosDetalladosDiariotamaño: TStringField
      FieldName = 'tama'#241'o'
      ReadOnly = True
      Size = 50
    end
    object ResumenGastosDetalladosDiarioCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object ResumenGastosDetalladosDiarioTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object DSResumenGastosDetalladosDiario: TDataSource
    DataSet = ResumenGastosDetalladosDiario
    Left = 264
    Top = 672
  end
  object DSResAnualGastosDetalles: TDataSource
    DataSet = tbResAnualGastosDetalles
    Left = 264
    Top = 328
  end
  object tbResAnualGastosDetalles: TFDQuery
    Active = True
    MasterFields = 'year'
    DetailFields = 'A'#241'o'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT *'
      '  FROM Q_resumenAnualGastos_Detallados')
    Left = 104
    Top = 328
    ParamData = <
      item
        Name = 'year'
        DataType = ftWideString
        ParamType = ptInput
      end>
    object tbResAnualGastosDetallesAño: TWideStringField
      FieldName = 'A'#241'o'
      Size = 4000
    end
    object tbResAnualGastosDetallestype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object tbResAnualGastosDetallesTiposdeGasto: TStringField
      FieldName = 'Tipos de Gasto'
      Size = 100
    end
    object tbResAnualGastosDetallesDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 100
    end
    object tbResAnualGastosDetallesFormato: TStringField
      FieldName = 'Formato'
      ReadOnly = True
      Size = 100
    end
    object tbResAnualGastosDetallestamaño: TStringField
      FieldName = 'tama'#241'o'
      ReadOnly = True
      Size = 50
    end
    object tbResAnualGastosDetallesCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object tbResAnualGastosDetallesTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object ResumendDiario_pordetalles: TFDQuery
    Active = True
    MasterSource = DSResumenGastosDetalladosMensual
    MasterFields = 'ID;Descripcion'
    DetailFields = 'id_EnlaFecha;Descripcion'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT  * FROM ResumendDiario_pordetalles'
      '')
    Left = 592
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftWideString
        ParamType = ptInput
        Size = 4000
        Value = '22 09'
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = 'Scaner Portable'
      end>
    object ResumendDiario_pordetallesid_EnlaFecha: TWideStringField
      FieldName = 'id_EnlaFecha'
      Size = 4000
    end
    object ResumendDiario_pordetallesid_enlacesemana: TIntegerField
      FieldName = 'id_enlacesemana'
    end
    object ResumendDiario_pordetallesFechaDia: TWideStringField
      FieldName = 'FechaDia'
      Size = 4000
    end
    object ResumendDiario_pordetallestype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object ResumendDiario_pordetallesTiposdeGasto: TStringField
      FieldName = 'Tipos de Gasto'
      Size = 100
    end
    object ResumendDiario_pordetallesDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 100
    end
    object ResumendDiario_pordetallesFormato: TStringField
      FieldName = 'Formato'
      ReadOnly = True
      Size = 100
    end
    object ResumendDiario_pordetallestamaño: TStringField
      FieldName = 'tama'#241'o'
      ReadOnly = True
      Size = 50
    end
    object ResumendDiario_pordetallesCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object ResumendDiario_pordetallesTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 38
      Size = 2
    end
  end
  object DSResumendDiario_pordetalles: TDataSource
    DataSet = ResumendDiario_pordetalles
    Left = 760
    Top = 272
  end
end
