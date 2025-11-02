object DMCaja: TDMCaja
  Height = 900
  Width = 1500
  object DSVentasCaja: TDataSource
    DataSet = tbCaja
    Left = 48
    Top = 128
  end
  object DSHistorico_Ventas: TDataSource
    Left = 912
    Top = 496
  end
  object tbCaja: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT *'
      'FROM tbVentasCajaQ'
      '-- WHERE IDUser = :idUser AND history = 0 OR share = 1'
      '')
    Left = 48
    Top = 32
    object tbCajaNoComp: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'NoComp'
      Origin = 'NoComp'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object tbCajaNoOperacion: TStringField
      FieldName = 'NoOperacion'
      Origin = 'NoOperacion'
      Size = 10
    end
    object tbCajaIDUser: TIntegerField
      FieldName = 'IDUser'
      Origin = 'IDUser'
    end
    object tbCajaFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object tbCajaHora: TSQLTimeStampField
      FieldName = 'Hora'
      Origin = 'Hora'
    end
    object tbCajaTotalVentaCUP: TCurrencyField
      FieldName = 'TotalVentaCUP'
      Origin = 'TotalVentaCUP'
    end
    object tbCajaEfectivoCUP: TCurrencyField
      FieldName = 'EfectivoCUP'
      Origin = 'EfectivoCUP'
    end
    object tbCajaEfectivoEUR: TCurrencyField
      FieldName = 'EfectivoEUR'
      Origin = 'EfectivoEUR'
    end
    object tbCajaEfectivoUSD: TCurrencyField
      FieldName = 'EfectivoUSD'
      Origin = 'EfectivoUSD'
    end
    object tbCajaEfectivoCUC: TCurrencyField
      FieldName = 'EfectivoCUC'
      Origin = 'EfectivoCUC'
    end
    object tbCajaComercioE_CUP: TCurrencyField
      FieldName = 'ComercioE_CUP'
      Origin = 'ComercioE_CUP'
    end
    object tbCajaComercioE_USD: TCurrencyField
      FieldName = 'ComercioE_USD'
      Origin = 'ComercioE_USD'
    end
    object tbCajaNoTarjetaCredito: TStringField
      FieldName = 'NoTarjetaCredito'
      Origin = 'NoTarjetaCredito'
      Size = 30
    end
    object tbCajanameComercio: TStringField
      FieldName = 'nameComercio'
      Origin = 'nameComercio'
      Size = 30
    end
    object tbCajaPropina: TCurrencyField
      FieldName = 'Propina'
      Origin = 'Propina'
    end
    object tbCajaCambioCUP: TCurrencyField
      FieldName = 'CambioCUP'
      Origin = 'CambioCUP'
      ReadOnly = True
    end
    object tbCajaGastosGenerales: TCurrencyField
      FieldName = 'GastosGenerales'
      Origin = 'GastosGenerales'
    end
    object tbCajaGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
      Origin = 'GastosInsumos'
    end
    object tbCajahistory: TBooleanField
      FieldName = 'history'
      Origin = 'history'
    end
    object tbCajaShare: TBooleanField
      FieldName = 'Share'
      Origin = 'Share'
    end
    object tbCajac_usd: TCurrencyField
      FieldName = 'c_usd'
      Origin = 'c_usd'
    end
    object tbCajac_eur: TCurrencyField
      FieldName = 'c_eur'
      Origin = 'c_eur'
    end
    object tbCajac_mlc: TCurrencyField
      FieldName = 'c_mlc'
      Origin = 'c_mlc'
    end
    object tbCajadate_openbox: TSQLTimeStampField
      FieldName = 'date_openbox'
      Origin = 'date_openbox'
    end
  end
  object tbVentasOperaciones: TFDQuery
    Active = True
    IndexFieldNames = 'enlace_id;enlace_operacion;Fecha'
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp;NoOperacion;Fecha'
    DetailFields = 'enlace_id;enlace_operacion;Fecha'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM QVentasOperaciones'
      '')
    Left = 176
    Top = 40
    object tbVentasOperacionesID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tbVentasOperacionesenlace_id: TLargeintField
      FieldName = 'enlace_id'
    end
    object tbVentasOperacionesenlace_operacion: TStringField
      FieldName = 'enlace_operacion'
      Size = 10
    end
    object tbVentasOperacionesFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object tbVentasOperacioneshora: TTimeField
      FieldName = 'hora'
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
    object tbVentasOperacionesCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbVentasOperacionesSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
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
    Left = 176
    Top = 128
  end
  object tbOperacionesTotal: TFDQuery
    Active = True
    IndexFieldNames = 'enlace_id'
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp'
    DetailFields = 'enlace_id'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT        enlace_id, SUM(TotalGenerales) AS TotalGenerales, ' +
        'SUM(TotalInsumos) AS TotalInsumos, SUM(SubtotalCUP) AS SubtotalC' +
        'UP'
      'FROM            dbo.QVentasOperaciones'
      'GROUP BY enlace_id')
    Left = 480
    Top = 392
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
  object Tbdescrip: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].tbServiceDescripC'
      
        'WHERE [frequently_use] = N'#39'1'#39' AND [Habilitado] = N'#39'1'#39' and Produc' +
        'to = :Producto or Cod_Descrip=:Cod_Descrip ORDER BY [usedate] DE' +
        'SC ')
    Left = 829
    Top = 255
    ParamData = <
      item
        Name = 'Producto'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'Cod_Descrip'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Tbdescripid_enlace: TIntegerField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object Tbdescripfrequently_use: TBooleanField
      FieldName = 'frequently_use'
      Origin = 'frequently_use'
    end
    object Tbdescripusedate: TSQLTimeStampField
      FieldName = 'usedate'
      Origin = 'usedate'
    end
    object TbdescripDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 50
    end
    object TbdescripHabilitado: TBooleanField
      FieldName = 'Habilitado'
      Origin = 'Habilitado'
      Required = True
    end
    object TbdescripCod_Descrip: TIntegerField
      FieldName = 'Cod_Descrip'
      Origin = 'Cod_Descrip'
      Required = True
    end
    object TbdescripCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Origin = 'CodigoProducto'
      Size = 25
    end
    object Tbdescripcolor: TStringField
      FieldName = 'color'
      Origin = 'color'
      Size = 30
    end
    object TbdescripServicio: TWideStringField
      FieldName = 'Servicio'
      Origin = 'Servicio'
      Size = 50
    end
    object TbdescripProducto: TWideStringField
      FieldName = 'Producto'
      Origin = 'Producto'
      ReadOnly = True
      Required = True
      Size = 101
    end
  end
  object DSClasif_Descrip: TDataSource
    DataSet = Tbdescrip
    Left = 922
    Top = 262
  end
  object q_clearservices_usefrecuenty: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'UPDATE '
      '  dbo.tbServiceDescrip'
      'SET'
      '  frequently_use = '#39'0'#39','
      '  usedate = null'
      'WHERE'
      '  dbo.tbServiceDescrip.frequently_use = 1 AND '
      '  dbo.tbServiceDescrip.usedate IS NOT NULL')
    Left = 725
    Top = 39
    object IntegerField1: TIntegerField
      FieldName = 'id_enlace'
    end
    object BooleanField2: TBooleanField
      FieldName = 'frequently_use'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'usedate'
    end
    object WideStringField2: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object BooleanField3: TBooleanField
      FieldName = 'Habilitado'
      Required = True
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Descrip'
      ReadOnly = True
      Required = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'CodigoProducto'
      Size = 25
    end
    object WideStringField4: TWideStringField
      FieldName = 'Producto'
      FixedChar = True
      Size = 75
    end
    object WideStringField5: TWideStringField
      FieldName = 'Servicio'
      FixedChar = True
      Size = 75
    end
    object StringField4: TStringField
      FieldName = 'color'
      Size = 30
    end
  end
  object tbVentaOperacionesFind: TFDQuery
    Active = True
    IndexFieldNames = 'enlace_id;enlace_operacion;Fecha'
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp;NoOperacion;Fecha'
    DetailFields = 'enlace_id;enlace_operacion;Fecha'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  dbo.QVentasOperaciones'
      'WHERE'
      '  Descripcion = :descripcion')
    Left = 656
    Top = 520
    ParamData = <
      item
        Name = 'DESCRIPCION'
        DataType = ftInteger
        ParamType = ptInput
        StreamMode = smOpenReadWrite
        Value = Null
      end>
    object tbVentaOperacionesFindID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object tbVentaOperacionesFindenlace_id: TLargeintField
      FieldName = 'enlace_id'
      Origin = 'enlace_id'
    end
    object tbVentaOperacionesFindenlace_operacion: TStringField
      FieldName = 'enlace_operacion'
      Origin = 'enlace_operacion'
      Size = 10
    end
    object tbVentaOperacionesFindFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object tbVentaOperacionesFindhora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
    end
    object tbVentaOperacionesFindServicios: TWideStringField
      FieldName = 'Servicios'
      Origin = 'Servicios'
      Size = 100
    end
    object tbVentaOperacionesFindDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 100
    end
    object tbVentaOperacionesFindPrecioCUP: TCurrencyField
      FieldName = 'PrecioCUP'
      Origin = 'PrecioCUP'
    end
    object tbVentaOperacionesFindCantidad: TCurrencyField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbVentaOperacionesFindSubtotalCUP: TCurrencyField
      FieldName = 'SubtotalCUP'
      Origin = 'SubtotalCUP'
      ReadOnly = True
    end
    object tbVentaOperacionesFindGastosInsumos: TCurrencyField
      FieldName = 'GastosInsumos'
      Origin = 'GastosInsumos'
    end
    object tbVentaOperacionesFindGastosGenerales: TCurrencyField
      FieldName = 'GastosGenerales'
      Origin = 'GastosGenerales'
    end
    object tbVentaOperacionesFindTotalInsumos: TCurrencyField
      FieldName = 'TotalInsumos'
      Origin = 'TotalInsumos'
      ReadOnly = True
    end
    object tbVentaOperacionesFindTotalGenerales: TCurrencyField
      FieldName = 'TotalGenerales'
      Origin = 'TotalGenerales'
      ReadOnly = True
    end
  end
  object DStbVentaOperacionesFind: TDataSource
    DataSet = tbVentaOperacionesFind
    Left = 768
    Top = 552
  end
  object tbServices: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT        Servicio'
      'FROM            dbo.tbServiceDescripC'
      'WHERE        (frequently_use = N'#39'1'#39') AND (Habilitado = N'#39'1'#39')'
      'GROUP BY Servicio')
    Left = 901
    Top = 151
    object tbServicesServicio: TWideStringField
      FieldName = 'Servicio'
      FixedChar = True
      Size = 75
    end
  end
  object DStbServices: TDataSource
    DataSet = tbServices
    Left = 1010
    Top = 150
  end
  object qlastnumber: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT        MAX(NoComp) AS lastnumber'
      'FROM            dbo.Historico_tbVentasCaja')
    Left = 877
    Top = 31
    object qlastnumberlastnumber: TLargeintField
      FieldName = 'lastnumber'
      ReadOnly = True
    end
  end
  object qreset_inc: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'dbcc CHECKIDENT (Historico_tbVentasCaja,RESEED,:rest)')
    Left = 741
    Top = 135
    ParamData = <
      item
        Name = 'rest'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object tbApis: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT TOP 1000 * FROM [dbo].[tbApis]'
      ''
      'where enabled = 1')
    Left = 568
    Top = 664
    object tbApisID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbApisname: TStringField
      FieldName = 'name'
      Size = 255
    end
    object tbApisConsumerKey: TStringField
      FieldName = 'Consumer Key'
      Size = 255
    end
    object tbApisConsumerSecret: TStringField
      FieldName = 'Consumer Secret'
      Size = 255
    end
    object tbApisscope: TStringField
      FieldName = 'scope'
      Size = 255
    end
    object tbApisgrant_type: TStringField
      FieldName = 'grant_type'
      Size = 255
    end
    object tbApisComercio: TStringField
      FieldName = 'Comercio'
      Size = 255
    end
    object tbApismerchant_uuid: TStringField
      FieldName = 'merchant_uuid'
      Size = 255
    end
    object tbApisenabled: TIntegerField
      FieldName = 'enabled'
    end
    object tbApistype: TStringField
      FieldName = 'type'
      Size = 50
    end
  end
  object DSApis: TDataSource
    DataSet = tbApis
    Left = 530
    Top = 574
  end
  object tbDescripLoadServices: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].tbServiceDescripC'
      
        'WHERE [frequently_use] = N'#39'1'#39' AND [Habilitado] = N'#39'1'#39' ORDER BY [' +
        'usedate] DESC ')
    Left = 557
    Top = 31
    object tbDescripLoadServicesid_enlace: TIntegerField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object tbDescripLoadServicesfrequently_use: TBooleanField
      FieldName = 'frequently_use'
      Origin = 'frequently_use'
    end
    object tbDescripLoadServicesusedate: TSQLTimeStampField
      FieldName = 'usedate'
      Origin = 'usedate'
    end
    object tbDescripLoadServicesDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 50
    end
    object tbDescripLoadServicesHabilitado: TBooleanField
      FieldName = 'Habilitado'
      Origin = 'Habilitado'
      Required = True
    end
    object tbDescripLoadServicesCod_Descrip: TIntegerField
      FieldName = 'Cod_Descrip'
      Origin = 'Cod_Descrip'
      Required = True
    end
    object tbDescripLoadServicesCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Origin = 'CodigoProducto'
      Size = 25
    end
    object tbDescripLoadServicescolor: TStringField
      FieldName = 'color'
      Origin = 'color'
      Size = 30
    end
    object tbDescripLoadServicesServicio: TWideStringField
      FieldName = 'Servicio'
      Origin = 'Servicio'
      Size = 50
    end
    object tbDescripLoadServicesProducto: TWideStringField
      FieldName = 'Producto'
      Origin = 'Producto'
      ReadOnly = True
      Required = True
      Size = 101
    end
  end
  object UniQuery1: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT        Servicio'
      'FROM            dbo.tbServiceDescripC'
      'WHERE        (frequently_use = N'#39'1'#39') AND (Habilitado = N'#39'1'#39')'
      '')
    Left = 1021
    Top = 263
    object WideStringField1: TWideStringField
      FieldName = 'Servicio'
      FixedChar = True
      Size = 75
    end
  end
  object tbCambioActual: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tb_divisas]')
    Left = 256
    Top = 432
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
  object Taskbar1: TTaskbar
    TaskBarButtons = <>
    TabProperties = []
    Left = 1304
    Top = 680
  end
  object Q_insertmedidas: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'INSERT INTO dbo.tbPlasticados'
      '  (id_enlaceCaja, Largo, Ancho, Id_Operacion, id_date)'
      'VALUES'
      '  (:id_enlaceCaja, :Largo, :Ancho, :Id_Operacion, :id_date)')
    Left = 1344
    Top = 552
    ParamData = <
      item
        Name = 'id_enlaceCaja'
        Value = Null
      end
      item
        Name = 'Largo'
        Value = Null
      end
      item
        Name = 'Ancho'
        Value = Null
      end
      item
        Name = 'Id_Operacion'
        Value = Null
      end
      item
        Name = 'id_date'
        Value = Null
      end>
  end
  object Q_Plasicado: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlaceCaja;Id_Operacion;id_date'
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp;NoOperacion;Fecha'
    DetailFields = 'id_enlaceCaja;Id_Operacion;id_date'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from Q_Plasicado'
      '')
    Left = 1205
    Top = 40
    object Q_Plasicadoid_enlaceCaja: TLargeintField
      FieldName = 'id_enlaceCaja'
    end
    object Q_PlasicadoId_Operacion: TStringField
      FieldName = 'Id_Operacion'
      Size = 255
    end
    object Q_Plasicadoid_date: TSQLTimeStampField
      FieldName = 'id_date'
    end
    object Q_PlasicadoLargo: TFMTBCDField
      FieldName = 'Largo'
      Precision = 18
      Size = 2
    end
    object Q_PlasicadoAncho: TFMTBCDField
      FieldName = 'Ancho'
      Precision = 18
      Size = 2
    end
    object Q_PlasicadoArea: TFMTBCDField
      FieldName = 'Area'
      ReadOnly = True
      Precision = 37
      Size = 4
    end
    object Q_PlasicadoPrecio: TFMTBCDField
      FieldName = 'Precio'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object Q_PlasticadoResumen: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlaceCaja;Id_Operacion;id_date'
    MasterSource = DSVentasCaja
    MasterFields = 'NoComp;NoOperacion;Fecha'
    DetailFields = 'id_enlaceCaja;Id_Operacion;id_date'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from Q_PlasticadoResumen')
    Left = 677
    Top = 216
    ParamData = <
      item
        Name = 'NoComp'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'NoOperacion'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end
      item
        Name = 'Fecha'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = '06/02/2015'
      end>
    object Q_PlasticadoResumenid_enlaceCaja: TLargeintField
      FieldName = 'id_enlaceCaja'
      Origin = 'id_enlaceCaja'
    end
    object Q_PlasticadoResumenId_Operacion: TStringField
      FieldName = 'Id_Operacion'
      Origin = 'Id_Operacion'
      Size = 255
    end
    object Q_PlasticadoResumenid_date: TSQLTimeStampField
      FieldName = 'id_date'
      Origin = 'id_date'
    end
    object Q_PlasticadoResumenArea: TFMTBCDField
      FieldName = 'Area'
      Origin = 'Area'
      Precision = 38
      Size = 4
    end
    object Q_PlasticadoResumenPrecio: TFMTBCDField
      FieldName = 'Precio'
      Origin = 'Precio'
      Precision = 38
      Size = 6
    end
  end
  object DSQ_Plasicado: TDataSource
    DataSet = Q_Plasicado
    Left = 1300
    Top = 48
  end
  object DSQ_PlasticadoResumen: TDataSource
    DataSet = Q_PlasticadoResumen
    Left = 676
    Top = 296
  end
  object tbInsertPrecio: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'INSERT INTO dbo.tbPrecios'
      '  (id_enlace, Precio, Cantidad, Detalles)'
      'VALUES'
      '  (:id_enlace, :Precio, :Cantidad, :Detalles)')
    Left = 1056
    Top = 488
    ParamData = <
      item
        Name = 'id_enlace'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'Cantidad'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end
      item
        Name = 'Detalles'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object QMedidasPlasticado2: TFDQuery
    Active = True
    MasterSource = DSVentasCaja
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select *'
      'from QMedidasPlasticado'
      '')
    Left = 1181
    Top = 240
    object QMedidasPlasticado2ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QMedidasPlasticado2PrecioBase: TFMTBCDField
      FieldName = 'PrecioBase'
      Origin = 'PrecioBase'
      Precision = 18
      Size = 0
    end
    object QMedidasPlasticado2Tipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Size = 255
    end
    object QMedidasPlasticado2Largo: TCurrencyField
      FieldName = 'Largo'
      Origin = 'Largo'
    end
    object QMedidasPlasticado2Ancho: TCurrencyField
      FieldName = 'Ancho'
      Origin = 'Ancho'
    end
    object QMedidasPlasticado2unit: TIntegerField
      FieldName = 'unit'
      Origin = 'unit'
    end
    object QMedidasPlasticado2Preciocm2: TFMTBCDField
      FieldName = 'Preciocm2'
      Origin = 'Preciocm2'
      ReadOnly = True
      Precision = 38
      Size = 14
    end
  end
  object DSMedidasPlasticado: TDataSource
    DataSet = QMedidasPlasticado2
    Left = 1360
    Top = 240
  end
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    BaseURL = 'http://spa2:9109'
    Params = <>
    SecureProtocols = [SSL2, SSL3, TLS1, TLS11, TLS12, TLS13]
    SynchronizedEvents = False
    Left = 48
    Top = 584
  end
  object ApiOpenBox: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body3A7FC0DBB0584053A4B689C607CF56F7'
        Value = '{'#13#10'  "com": 1'#13#10'}'
      end>
    Resource = 'datasnap/rest/TBox/openbox'
    Response = RESTResponse1
    OnBeforeExecute = ApiOpenBoxBeforeExecute
    SynchronizedEvents = False
    Left = 56
    Top = 520
  end
  object RESTResponse1: TRESTResponse
    Left = 320
    Top = 568
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = 'admin'
    Password = '1234'
    Left = 88
    Top = 680
  end
  object tbsetting: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbsetting'
    Left = 416
    Top = 216
    object tbsettingid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object tbsettingkey: TStringField
      FieldName = 'key'
    end
    object tbsettingvalue: TStringField
      FieldName = 'value'
      Size = 255
    end
  end
  object tbPreciosInsert: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      '                          SELECT        *'
      'FROM            dbo.tbPrecios'
      ''
      '')
    Left = 909
    Top = 347
    object tbPreciosInsertID_codigo: TFDAutoIncField
      FieldName = 'ID_codigo'
      Origin = 'ID_codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tbPreciosInsertid_enlace: TLargeintField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object tbPreciosInsertPrecio: TCurrencyField
      FieldName = 'Precio'
      Origin = 'Precio'
    end
    object tbPreciosInsertCantidad: TSmallintField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tbPreciosInsertDetalles: TWideStringField
      FieldName = 'Detalles'
      Origin = 'Detalles'
      Size = 75
    end
    object tbPreciosInsertReglaCarrito: TLargeintField
      FieldName = 'ReglaCarrito'
      Origin = 'ReglaCarrito'
    end
    object tbPreciosInsertPrecioRegla: TCurrencyField
      FieldName = 'PrecioRegla'
      Origin = 'PrecioRegla'
    end
  end
  object Q_Prices_list: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSVentasOperaciones
    MasterFields = 'Descripcion'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      '                          SELECT        *'
      'FROM            dbo.tbPrecios'
      ''
      '')
    Left = 725
    Top = 395
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'ID_codigo'
      Origin = 'ID_codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object LargeintField1: TLargeintField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Precio'
      Origin = 'Precio'
    end
    object SmallintField1: TSmallintField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object WideStringField6: TWideStringField
      FieldName = 'Detalles'
      Origin = 'Detalles'
      Size = 75
    end
    object LargeintField2: TLargeintField
      FieldName = 'ReglaCarrito'
      Origin = 'ReglaCarrito'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'PrecioRegla'
      Origin = 'PrecioRegla'
    end
  end
  object DSPrices_list: TDataSource
    DataSet = Q_Prices_list
    Left = 808
    Top = 440
  end
end
