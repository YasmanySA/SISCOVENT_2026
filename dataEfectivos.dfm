object data_efectivo: Tdata_efectivo
  Height = 839
  Width = 1105
  object tbEnEfectCUC: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseCUC_BilletesC'
    Left = 72
    Top = 24
    object tbEnEfectCUCid_enlace: TLargeintField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object tbEnEfectCUCFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Origin = 'Fecha'
    end
    object tbEnEfectCUCIntegerField100: TIntegerField
      FieldName = '1,00'
      Origin = '[1,00]'
    end
    object tbEnEfectCUCSubTotal100: TIntegerField
      FieldName = 'SubTotal(1,00)'
      Origin = '[SubTotal(1,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField300: TIntegerField
      FieldName = '3,00'
      Origin = '[3,00]'
    end
    object tbEnEfectCUCSubTotal300: TIntegerField
      FieldName = 'SubTotal(3,00)'
      Origin = '[SubTotal(3,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField500: TIntegerField
      FieldName = '5,00'
      Origin = '[5,00]'
    end
    object tbEnEfectCUCSubTotal500: TIntegerField
      FieldName = 'SubTotal(5,00)'
      Origin = '[SubTotal(5,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField1000: TIntegerField
      FieldName = '10,00'
      Origin = '[10,00]'
    end
    object tbEnEfectCUCSubTotal1000: TIntegerField
      FieldName = 'SubTotal(10,00)'
      Origin = '[SubTotal(10,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField2000: TIntegerField
      FieldName = '20,00'
      Origin = '[20,00]'
    end
    object tbEnEfectCUCSubTotal2000: TIntegerField
      FieldName = 'SubTotal(20,00)'
      Origin = '[SubTotal(20,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField5000: TIntegerField
      FieldName = '50,00'
      Origin = '[50,00]'
    end
    object tbEnEfectCUCSubTotal5000: TIntegerField
      FieldName = 'SubTotal(50,00)'
      Origin = '[SubTotal(50,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCIntegerField10000: TIntegerField
      FieldName = '100,00'
      Origin = '[100,00]'
    end
    object tbEnEfectCUCSubTotal10000: TIntegerField
      FieldName = 'SubTotal(100,00)'
      Origin = '[SubTotal(100,00)]'
      ReadOnly = True
    end
    object tbEnEfectCUCTotal: TIntegerField
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
  end
  object tbEnMonCUC: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseCUC_MonedaC'
    Left = 72
    Top = 88
    object tbEnMonCUCid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object tbEnMonCUCFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object tbEnMonCUCIntegerField005: TIntegerField
      FieldName = '0,05'
    end
    object tbEnMonCUCSubTota005: TBCDField
      FieldName = 'SubTota(0,05)'
      ReadOnly = True
      Precision = 13
      Size = 2
    end
    object tbEnMonCUCIntegerField010: TIntegerField
      FieldName = '0,10'
    end
    object tbEnMonCUCSubTota010: TBCDField
      FieldName = 'SubTota(0,10)'
      ReadOnly = True
      Precision = 12
      Size = 1
    end
    object tbEnMonCUCIntegerField025: TIntegerField
      FieldName = '0,25'
    end
    object tbEnMonCUCSubTota025: TBCDField
      FieldName = 'SubTota(0,25)'
      ReadOnly = True
      Precision = 13
      Size = 2
    end
    object tbEnMonCUCIntegerField050: TIntegerField
      FieldName = '0,50'
    end
    object tbEnMonCUCSubTota050: TBCDField
      FieldName = 'SubTota(0,50)'
      ReadOnly = True
      Precision = 12
      Size = 1
    end
    object tbEnMonCUCIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object tbEnMonCUCSubTota100: TIntegerField
      FieldName = 'SubTota(1,00)'
      ReadOnly = True
    end
    object tbEnMonCUCTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 17
      Size = 2
    end
  end
  object tbEnEfectCUP: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;id_operacion;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;NoOperacion;Fecha'
    DetailFields = 'id_enlace;id_operacion;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseCUP_BilletesC'
    Left = 72
    Top = 168
    object tbEnEfectCUPid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object tbEnEfectCUPid_operacion: TStringField
      FieldName = 'id_operacion'
      Size = 10
    end
    object tbEnEfectCUPFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object tbEnEfectCUPid_row: TLargeintField
      FieldName = 'id_row'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField1cup: TIntegerField
      FieldName = '1cup'
    end
    object tbEnEfectCUPSubTotal1cup: TIntegerField
      FieldName = 'SubTotal(1cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField3cup: TIntegerField
      FieldName = '3cup'
    end
    object tbEnEfectCUPSubTotal3cup: TIntegerField
      FieldName = 'SubTotal(3cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField5cup: TIntegerField
      FieldName = '5cup'
    end
    object tbEnEfectCUPSubTotal5cup: TIntegerField
      FieldName = 'SubTotal(5cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField10cup: TIntegerField
      FieldName = '10cup'
    end
    object tbEnEfectCUPSubTotal10cup: TIntegerField
      FieldName = 'SubTotal(10cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField20cup: TIntegerField
      FieldName = '20cup'
    end
    object tbEnEfectCUPSubTotal20cup: TIntegerField
      FieldName = 'SubTotal(20cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField50cup: TIntegerField
      FieldName = '50cup'
    end
    object tbEnEfectCUPSubTotal50cup: TIntegerField
      FieldName = 'SubTotal(50cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField100cup: TIntegerField
      FieldName = '100cup'
    end
    object tbEnEfectCUPSubTotal100cup: TIntegerField
      FieldName = 'SubTotal(100cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField200cup: TIntegerField
      FieldName = '200cup'
    end
    object tbEnEfectCUPSubTotal200cup: TIntegerField
      FieldName = 'SubTotal(200cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField500cup: TIntegerField
      FieldName = '500cup'
    end
    object tbEnEfectCUPSubTotal500cup: TIntegerField
      FieldName = 'SubTotal(500cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPIntegerField1000cup: TIntegerField
      FieldName = '1000cup'
    end
    object tbEnEfectCUPSubTotal1000cup: TIntegerField
      FieldName = 'SubTotal(1000cup)'
      ReadOnly = True
    end
    object tbEnEfectCUPTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DSEnEfectCUC: TDataSource
    DataSet = tbEnEfectCUC
    Left = 216
    Top = 40
  end
  object DSEnMonCUC: TDataSource
    DataSet = tbEnMonCUC
    Left = 216
    Top = 96
  end
  object DSEnEfectMN: TDataSource
    DataSet = tbEnEfectCUP
    Left = 208
    Top = 168
  end
  object tbDesgloseUSD_BilletesC: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseUSD_BilletesC'
    Left = 384
    Top = 40
    object tbDesgloseUSD_BilletesCid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object tbDesgloseUSD_BilletesCFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Required = True
    end
    object tbDesgloseUSD_BilletesCIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal100: TIntegerField
      FieldName = 'SubTotal(1,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCIntegerField200: TIntegerField
      FieldName = '2,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal200: TIntegerField
      FieldName = 'SubTotal(2,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCIntegerField500: TIntegerField
      FieldName = '5,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal500: TIntegerField
      FieldName = 'SubTotal(5,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCIntegerField1000: TIntegerField
      FieldName = '10,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal1000: TIntegerField
      FieldName = 'SubTotal(10,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCIntegerField2000: TIntegerField
      FieldName = '20,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal2000: TIntegerField
      FieldName = 'SubTotal(20,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCIntegerField5000: TIntegerField
      FieldName = '50,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal5000: TIntegerField
      FieldName = 'SubTotal(50,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCIntegerField10000: TIntegerField
      FieldName = '100,00'
    end
    object tbDesgloseUSD_BilletesCSubTotal10000: TIntegerField
      FieldName = 'SubTotal(100,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_BilletesCTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object tbDesgloseUSD_MonedaC: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseUSD_MonedaC'
    Left = 392
    Top = 112
    object tbDesgloseUSD_MonedaCid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object tbDesgloseUSD_MonedaCFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Required = True
    end
    object tbDesgloseUSD_MonedaCIntegerField001: TIntegerField
      FieldName = '0,01'
    end
    object tbDesgloseUSD_MonedaCSubTota001: TBCDField
      FieldName = 'SubTota(0,01)'
      ReadOnly = True
      Precision = 13
      Size = 2
    end
    object tbDesgloseUSD_MonedaCIntegerField005: TIntegerField
      FieldName = '0,05'
    end
    object tbDesgloseUSD_MonedaCSubTota005: TBCDField
      FieldName = 'SubTota(0,05)'
      ReadOnly = True
      Precision = 13
      Size = 2
    end
    object tbDesgloseUSD_MonedaCIntegerField010: TIntegerField
      FieldName = '0,10'
    end
    object tbDesgloseUSD_MonedaCSubTota010: TBCDField
      FieldName = 'SubTota(0,10)'
      ReadOnly = True
      Precision = 12
      Size = 1
    end
    object tbDesgloseUSD_MonedaCIntegerField025: TIntegerField
      FieldName = '0,25'
    end
    object tbDesgloseUSD_MonedaCSubTota025: TBCDField
      FieldName = 'SubTota(0,25)'
      ReadOnly = True
      Precision = 13
      Size = 2
    end
    object tbDesgloseUSD_MonedaCIntegerField050: TIntegerField
      FieldName = '0,50'
    end
    object tbDesgloseUSD_MonedaCSubTota050: TBCDField
      FieldName = 'SubTota(0,50)'
      ReadOnly = True
      Precision = 12
      Size = 1
    end
    object tbDesgloseUSD_MonedaCIntegerField100: TIntegerField
      FieldName = '1,00'
    end
    object tbDesgloseUSD_MonedaCSubTota100: TIntegerField
      FieldName = 'SubTota(1,00)'
      ReadOnly = True
    end
    object tbDesgloseUSD_MonedaCTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object DSDesgloseUSD_BilletesC: TDataSource
    DataSet = tbDesgloseUSD_BilletesC
    Left = 544
    Top = 40
  end
  object DSDesgloseUSD_MonedaC: TDataSource
    DataSet = tbDesgloseUSD_MonedaC
    Left = 552
    Top = 112
  end
  object DesgloseEUR_BilletesC: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseEUR_BilletesC'
    Left = 80
    Top = 360
    object DesgloseEUR_BilletesCid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object DesgloseEUR_BilletesCFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object DesgloseEUR_BilletesCIntegerField500: TIntegerField
      FieldName = '5,00'
    end
    object DesgloseEUR_BilletesCSubTotal500: TIntegerField
      FieldName = 'SubTotal(5,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCIntegerField1000: TIntegerField
      FieldName = '10,00'
    end
    object DesgloseEUR_BilletesCSubTotal1000: TIntegerField
      FieldName = 'SubTotal(10,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCIntegerField2000: TIntegerField
      FieldName = '20,00'
    end
    object DesgloseEUR_BilletesCSubTotal2000: TIntegerField
      FieldName = 'SubTotal(20,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCIntegerField5000: TIntegerField
      FieldName = '50,00'
    end
    object DesgloseEUR_BilletesCSubTotal5000: TIntegerField
      FieldName = 'SubTotal(50,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCIntegerField10000: TIntegerField
      FieldName = '100,00'
    end
    object DesgloseEUR_BilletesCSubTotal10000: TIntegerField
      FieldName = 'SubTotal(100,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCIntegerField20000: TIntegerField
      FieldName = '200,00'
    end
    object DesgloseEUR_BilletesCSubTotal20000: TIntegerField
      FieldName = 'SubTotal(200,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCIntegerField50000: TIntegerField
      FieldName = '500,00'
    end
    object DesgloseEUR_BilletesCSubTotal50000: TIntegerField
      FieldName = 'SubTotal(500,00)'
      ReadOnly = True
    end
    object DesgloseEUR_BilletesCTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object DesgloseEUR_MonedaC: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseEUR_MonedaC'
    Left = 72
    Top = 504
    object DesgloseEUR_MonedaCid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object DesgloseEUR_MonedaCFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object DesgloseEUR_MonedaCCurrencyField001: TCurrencyField
      FieldName = '0,01'
    end
    object DesgloseEUR_MonedaCSubTota001: TFMTBCDField
      FieldName = 'SubTota(0,01)'
      ReadOnly = True
      Precision = 22
      Size = 6
    end
    object DesgloseEUR_MonedaCCurrencyField005: TCurrencyField
      FieldName = '0,05'
    end
    object DesgloseEUR_MonedaCSubTota005: TFMTBCDField
      FieldName = 'SubTota(0,05)'
      ReadOnly = True
      Precision = 22
      Size = 6
    end
    object DesgloseEUR_MonedaCCurrencyField010: TCurrencyField
      FieldName = '0,10'
    end
    object DesgloseEUR_MonedaCSubTota010: TFMTBCDField
      FieldName = 'SubTota(0,10)'
      ReadOnly = True
      Precision = 21
      Size = 5
    end
    object DesgloseEUR_MonedaCCurrencyField020: TCurrencyField
      FieldName = '0,20'
    end
    object DesgloseEUR_MonedaCSubTota020: TFMTBCDField
      FieldName = 'SubTota(0,20)'
      ReadOnly = True
      Precision = 22
      Size = 6
    end
    object DesgloseEUR_MonedaCCurrencyField050: TCurrencyField
      FieldName = '0,50'
    end
    object DesgloseEUR_MonedaCSubTota050: TFMTBCDField
      FieldName = 'SubTota(0,50)'
      ReadOnly = True
      Precision = 21
      Size = 5
    end
    object DesgloseEUR_MonedaCCurrencyField100: TCurrencyField
      FieldName = '1,00'
    end
    object DesgloseEUR_MonedaCSubTota100: TCurrencyField
      FieldName = 'SubTota(1,00)'
      ReadOnly = True
    end
    object DesgloseEUR_MonedaCCurrencyField200: TCurrencyField
      FieldName = '2,00'
    end
    object DesgloseEUR_MonedaCSubTota200: TCurrencyField
      FieldName = 'SubTota(2,00)'
      ReadOnly = True
    end
    object DesgloseEUR_MonedaCTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 28
      Size = 6
    end
  end
  object DSDesgloseEUR_BilletesC: TDataSource
    DataSet = DesgloseEUR_BilletesC
    Left = 256
    Top = 336
  end
  object DSDesgloseEUR_MonedaC: TDataSource
    DataSet = DesgloseEUR_MonedaC
    Left = 280
    Top = 408
  end
  object DesgloseComercioDigital: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace;Fecha'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp;Fecha'
    DetailFields = 'id_enlace;Fecha'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'DesgloseTarjetaCredito'
    Left = 392
    Top = 232
    object DesgloseComercioDigitalid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object DesgloseComercioDigitalFecha: TSQLTimeStampField
      FieldName = 'Fecha'
      Required = True
    end
    object DesgloseComercioDigitalCliente: TStringField
      FieldName = 'Cliente'
      Size = 30
    end
    object DesgloseComercioDigitalNoTelefono: TStringField
      FieldName = 'No. Telefono'
      Size = 30
    end
    object DesgloseComercioDigitalPlataforma: TStringField
      FieldName = 'Plataforma'
      Size = 30
    end
    object DesgloseComercioDigitalSucursalBancaria: TStringField
      FieldName = 'Sucursal Bancaria'
      Size = 30
    end
    object DesgloseComercioDigitalMoneda: TStringField
      FieldName = 'Moneda'
      Size = 30
    end
    object DesgloseComercioDigitalNoTransaccion: TStringField
      FieldName = 'No.Transaccion'
      Size = 30
    end
    object DesgloseComercioDigitalCredito: TCurrencyField
      FieldName = 'Credito'
    end
  end
  object DSDesgloseComercioDigital: TDataSource
    DataSet = DesgloseComercioDigital
    Left = 552
    Top = 232
  end
  object Cuentas: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select * from [tbCuentas Bancarias]'
      'where Moneda= :Moneda'
      ''
      '')
    Left = 520
    Top = 376
    ParamData = <
      item
        Name = 'Moneda'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object CuentasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CuentasCuentaBancaria: TWideStringField
      FieldName = 'Cuenta Bancaria'
      Origin = '[Cuenta Bancaria]'
      FixedChar = True
      Size = 16
    end
    object CuentasMoneda: TWideStringField
      FieldName = 'Moneda'
      Origin = 'Moneda'
      FixedChar = True
      Size = 3
    end
  end
  object QInsert: TFDQuery
    Connection = dataconex.ConexDB
    Left = 480
    Top = 464
  end
  object tbLink: TFDMemTable
    FieldDefs = <
      item
        Name = 'rel'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'method'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'href'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 397
    Top = 612
    object tbLinkrel: TStringField
      FieldName = 'rel'
    end
    object tbLinkmethod: TStringField
      FieldName = 'method'
      Size = 50
    end
    object tbLinkhref: TStringField
      FieldName = 'href'
      Size = 255
    end
  end
  object tbOperacion: TFDQuery
    Active = True
    IndexFieldNames = 'id_Caja'
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp'
    DetailFields = 'id_Caja'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM tbpayment_Enzona')
    Left = 248
    Top = 620
    ParamData = <
      item
        Name = 'NoComp'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 38023
      end>
    object tbOperacionid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object tbOperacionmerchant_uuid: TStringField
      FieldName = 'merchant_uuid'
      Size = 255
    end
    object tbOperacionmerchant_op_id: TStringField
      FieldName = 'merchant_op_id'
      Size = 12
    end
    object tbOperaciondescription: TStringField
      FieldName = 'description'
      Size = 255
    end
    object tbOperacionreturn_url: TStringField
      FieldName = 'return_url'
      Size = 255
    end
    object tbOperacioncurrency: TStringField
      FieldName = 'currency'
      Size = 255
    end
    object tbOperacioninvoice_number: TStringField
      FieldName = 'invoice_number'
      Size = 1
    end
    object tbOperacioncancel_url: TStringField
      FieldName = 'cancel_url'
      Size = 255
    end
    object tbOperacionbuyer_identity_code: TStringField
      FieldName = 'buyer_identity_code'
      Size = 255
    end
    object tbOperacionterminal_id: TStringField
      FieldName = 'terminal_id'
      Size = 1
    end
    object tbOperacionid_Caja: TLargeintField
      FieldName = 'id_Caja'
      Visible = False
    end
  end
  object UniQuery1: TFDQuery
    Connection = dataconex.ConexDB
    Left = 512
    Top = 644
  end
  object PaymentCreate: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = paymentenzona.RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 'Bearer 4a59c00c-d112-3895-9ca3-1848482824c1'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'Input'
        ContentTypeStr = 'application/json'
      end>
    Resource = 'payments'
    Response = paymentenzona.RESTResponse1
    SynchronizedEvents = False
    Left = 928
    Top = 440
  end
  object paymentGet: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = paymentenzona.RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 'Bearer fad585a5-7f20-36b1-8e8f-b4f021c26bb4'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'transaction_uuid'
        Options = [poDoNotEncode]
        Value = '592ae858661b4330847fc70907c23a3f'
      end>
    Resource = 'payments/{transaction_uuid}'
    Response = paymentenzona.RESTResponseGetPayment
    SynchronizedEvents = False
    Left = 816
    Top = 632
  end
  object PaymentResponse_Data: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 948
    Top = 608
    object PaymentResponse_Datatransaction_uuid: TWideStringField
      FieldName = 'transaction_uuid'
      Origin = 'transaction_uuid'
      Size = 32
    end
    object PaymentResponse_Datacurrency: TWideStringField
      FieldName = 'currency'
      Origin = 'currency'
      Size = 3
    end
    object PaymentResponse_Datacreated_at: TWideStringField
      FieldName = 'created_at'
      Origin = 'created_at'
      Size = 29
    end
    object PaymentResponse_Dataupdated_at: TWideStringField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      Size = 29
    end
    object PaymentResponse_Datastatus_code: TFloatField
      FieldName = 'status_code'
      Origin = 'status_code'
    end
    object PaymentResponse_Datastatus_denom: TWideStringField
      FieldName = 'status_denom'
      Origin = 'status_denom'
      Size = 9
    end
    object PaymentResponse_Datadescription: TWideStringField
      FieldName = 'description'
      Origin = 'description'
      Size = 28
    end
    object PaymentResponse_Datainvoice_number: TWideStringField
      FieldName = 'invoice_number'
      Origin = 'invoice_number'
      Size = 0
    end
    object PaymentResponse_Datamerchant_op_id: TWideStringField
      FieldName = 'merchant_op_id'
      Origin = 'merchant_op_id'
      Size = 12
    end
    object PaymentResponse_Dataterminal_id: TWideStringField
      FieldName = 'terminal_id'
      Origin = 'terminal_id'
      Size = 0
    end
    object PaymentResponse_Dataamount: TWideStringField
      FieldName = 'amount'
      Origin = 'amount'
      Size = 255
    end
    object PaymentResponse_Dataitems: TWideStringField
      FieldName = 'items'
      Origin = 'items'
      Size = 255
    end
    object PaymentResponse_Datalinks: TWideStringField
      DisplayWidth = 1000
      FieldName = 'links'
      Origin = 'links'
      Size = 10000
    end
    object PaymentResponse_Datacommission: TWideStringField
      FieldName = 'commission'
      Origin = 'commission'
      Size = 0
    end
    object PaymentResponse_Datatransaction_signature: TWideStringField
      FieldName = 'transaction_signature'
      Origin = 'transaction_signature'
      Size = 0
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 680
    Top = 512
  end
  object ResponseData: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'transaction_uuid'
        DataType = ftWideString
        Size = 32
      end
      item
        Name = 'currency'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'created_at'
        DataType = ftDateTime
      end
      item
        Name = 'updated_at'
        DataType = ftDateTime
      end
      item
        Name = 'status_code'
        DataType = ftFloat
      end
      item
        Name = 'status_denom'
        DataType = ftWideString
        Size = 9
      end
      item
        Name = 'description'
        DataType = ftWideString
        Size = 28
      end
      item
        Name = 'invoice_number'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'merchant_op_id'
        DataType = ftLargeint
      end
      item
        Name = 'terminal_id'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'amount'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'items'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'links'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'commission'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'transaction_signature'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 824
    Top = 536
    object ResponseDatatransaction_uuid: TWideStringField
      FieldName = 'transaction_uuid'
      Size = 32
    end
    object ResponseDatacurrency: TWideStringField
      FieldName = 'currency'
      Size = 3
    end
    object ResponseDatacreated_at: TDateTimeField
      FieldName = 'created_at'
    end
    object ResponseDataupdated_at: TDateTimeField
      FieldName = 'updated_at'
    end
    object ResponseDatastatus_code: TFloatField
      FieldName = 'status_code'
    end
    object ResponseDatastatus_denom: TWideStringField
      FieldName = 'status_denom'
      Size = 9
    end
    object ResponseDatadescription: TWideStringField
      FieldName = 'description'
      Size = 28
    end
    object ResponseDatainvoice_number: TWideStringField
      FieldName = 'invoice_number'
      Size = 0
    end
    object ResponseDatamerchant_op_id: TLargeintField
      FieldName = 'merchant_op_id'
    end
    object ResponseDataterminal_id: TWideStringField
      FieldName = 'terminal_id'
      Size = 0
    end
    object ResponseDataamount: TWideStringField
      FieldName = 'amount'
      Size = 255
    end
    object ResponseDataitems: TWideStringField
      FieldName = 'items'
      Size = 255
    end
    object ResponseDatalinks: TWideStringField
      FieldName = 'links'
      Size = 255
    end
    object ResponseDatacommission: TWideStringField
      FieldName = 'commission'
      Size = 0
    end
    object ResponseDatatransaction_signature: TWideStringField
      FieldName = 'transaction_signature'
      Size = 0
    end
  end
end
