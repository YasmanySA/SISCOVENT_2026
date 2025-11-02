object paymentenzona: Tpaymentenzona
  Height = 744
  Width = 1063
  object tbOperacion: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM tbpayment_Enzona')
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp'
    DetailFields = 'id_Caja'
    Active = True
    Left = 56
    Top = 40
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NoComp'
        ParamType = ptInput
        Value = nil
      end>
    object tbOperacionid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ReadOnly = True
      Required = True
      Visible = False
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
  object DSOperacion: TDataSource
    DataSet = tbOperacion
    Left = 912
    Top = 328
  end
  object DSamount: TDataSource
    DataSet = amount
    Left = 912
    Top = 208
  end
  object items: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT TOP 1000 * FROM [dbo].[tbpaymentenzona_items]')
    MasterSource = DSOperacion
    MasterFields = 'id_Caja'
    DetailFields = 'enlace_id'
    Active = True
    Left = 360
    Top = 64
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_Caja'
        ParamType = ptInput
        Value = nil
      end>
    object itemsenlace_id: TLargeintField
      FieldName = 'enlace_id'
      Visible = False
    end
    object itemsname: TWideStringField
      FieldName = 'name'
      Size = 100
    end
    object itemsdescription: TWideStringField
      FieldName = 'description'
      ReadOnly = True
      Size = 50
    end
    object itemsquantity: TIntegerField
      FieldName = 'quantity'
      ReadOnly = True
    end
    object itemsprice: TCurrencyField
      FieldName = 'price'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object itemstax: TStringField
      FieldName = 'tax'
      ReadOnly = True
      Size = 10
    end
  end
  object amount: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT  * FROM [dbo].[tbpaymentenzona_amountQ]')
    MasterSource = DSOperacion
    MasterFields = 'id_Caja'
    DetailFields = 'id_Caja'
    Active = True
    Left = 160
    Top = 48
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_Caja'
        ParamType = ptInput
        Value = nil
      end>
    object amountid_Caja: TLargeintField
      FieldName = 'id_Caja'
    end
    object amounttotal: TStringField
      FieldName = 'total'
      ReadOnly = True
      Size = 10
    end
  end
  object details: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tbpaymentenzona_detailsQ')
    MasterSource = DSamount
    MasterFields = 'id_Caja'
    DetailFields = 'id_caja'
    Active = True
    Left = 256
    Top = 56
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id_Caja'
        ParamType = ptInput
        Value = nil
      end>
    object detailsid_caja: TIntegerField
      FieldName = 'id_caja'
      Visible = False
    end
    object detailsshipping: TCurrencyField
      FieldName = 'shipping'
    end
    object detailsdiscount: TCurrencyField
      FieldName = 'discount'
    end
    object detailstip: TCurrencyField
      FieldName = 'tip'
    end
    object detailstax: TStringField
      FieldName = 'tax'
      ReadOnly = True
      Size = 10
    end
  end
  object tbDetails: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tbpaymentenzona_details]')
    MasterSource = DMCaja.DSVentasCaja
    MasterFields = 'NoComp'
    DetailFields = 'id_caja'
    Active = True
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'NoComp'
        ParamType = ptInput
        Value = nil
      end>
    object tbDetailsid_caja: TIntegerField
      FieldName = 'id_caja'
      Visible = False
    end
    object tbDetailsshipping: TCurrencyField
      FieldName = 'shipping'
      Visible = False
    end
    object tbDetailsdiscount: TCurrencyField
      FieldName = 'discount'
      Visible = False
    end
    object tbDetailstax: TCurrencyField
      FieldName = 'tax'
      Visible = False
    end
    object tbDetailstip: TCurrencyField
      FieldName = 'tip'
      Visible = False
    end
  end
  object DStbDetails: TDataSource
    DataSet = details
    Left = 40
    Top = 352
  end
  object tbComerceEnzona: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tbcomerceEnzona]')
    Active = True
    Left = 344
    Top = 184
    object tbComerceEnzonaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbComerceEnzonaproducer: TIntegerField
      FieldName = 'producer'
    end
    object tbComerceEnzonacomercio: TStringField
      FieldName = 'comercio'
      Size = 50
    end
    object tbComerceEnzonamerchant_uuid: TStringField
      FieldName = 'merchant_uuid'
      Size = 255
    end
    object tbComerceEnzonaConsumer_Key: TStringField
      FieldName = ' Consumer_Key'
      Size = 255
    end
    object tbComerceEnzonaConsumer_Secret: TStringField
      FieldName = ' Consumer_Secret'
      Size = 255
    end
    object tbComerceEnzonascope: TStringField
      FieldName = 'scope'
      Size = 255
    end
    object tbComerceEnzonareturn_url: TStringField
      FieldName = 'return_url'
      Size = 255
    end
    object tbComerceEnzonacancel_url: TStringField
      FieldName = 'cancel_url'
      Size = 255
    end
    object tbComerceEnzonacurrency: TStringField
      FieldName = 'currency'
      Size = 3
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.enzona.net/payment/v1.0.0'
    Params = <>
    SynchronizedEvents = False
    Left = 680
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    Left = 816
    Top = 56
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = DesgloseCredito.PaymentResponse_Data
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = JSONOnly
    Left = 912
    Top = 424
  end
  object GetPay: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
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
    Response = RESTResponseGetPayment
    SynchronizedEvents = False
    Left = 216
    Top = 424
  end
  object RESTResponseGetPayment: TRESTResponse
    ContentType = 'application/json'
    Left = 384
    Top = 592
  end
  object RESTResponseDataSetAdapterGEtPay: TRESTResponseDataSetAdapter
    Active = True
    Dataset = DataResponse_GetPay
    FieldDefs = <>
    Response = RESTResponseGetPayment
    TypesMode = JSONOnly
    NestedElements = True
    Left = 416
    Top = 472
  end
  object DataResponse_GetPay: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'transaction_uuid'
        DataType = ftWideString
        Size = 32
      end
      item
        Name = 'leaf'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'currency'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'created_at'
        DataType = ftWideString
        Size = 29
      end
      item
        Name = 'updated_at'
        DataType = ftWideString
        Size = 29
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
        DataType = ftWideString
        Size = 12
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
        Name = 'amount.total'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'amount.details'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'amount.details.shipping'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'amount.details.tax'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'amount.details.discount'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'amount.details.tip'
        DataType = ftWideString
        Size = 4
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
        Size = 4
      end
      item
        Name = 'user_name'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'user_lastname'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'user_avatar'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'merchant_name'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'user_uuid'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'transaction_code'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'transaction_denom'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'user_username'
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
    Left = 208
    Top = 536
  end
end
