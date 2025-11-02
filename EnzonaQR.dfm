object dataEnzonaQR: TdataEnzonaQR
  Height = 599
  Width = 634
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.enzona.net/qr/v1.0.0'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    SynchronizedEvents = False
    Left = 264
    Top = 104
  end
  object RESTRequestQR: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 'Bearer 9cd0a7df-ad83-39be-994d-3d058b0dfbd0'
      end
      item
        Name = 'amount'
        Options = [poDoNotEncode]
        Value = '5.00'
      end
      item
        Name = 'currency'
        Options = [poDoNotEncode]
        Value = 'cup'
      end
      item
        Name = 'description'
        Options = [poDoNotEncode]
      end>
    Resource = 'qr/account'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 400
    Top = 184
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 464
    Top = 96
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tbtempcode
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 152
    Top = 232
  end
  object tbtempcode: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'fault'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'vendor_identity_code'
        DataType = ftWideString
        Size = 34
      end
      item
        Name = 'create_at'
        DataType = ftWideString
        Size = 19
      end
      item
        Name = 'update_at'
        DataType = ftWideString
        Size = 19
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
    Left = 408
    Top = 320
    object tbtempcodevendor_identity_code: TWideStringField
      FieldName = 'vendor_identity_code'
      Size = 34
    end
    object tbtempcodecreate_at: TWideStringField
      FieldName = 'create_at'
      Size = 19
    end
    object tbtempcodeupdate_at: TWideStringField
      FieldName = 'update_at'
      Size = 19
    end
  end
  object DStoken: TDataSource
    DataSet = tbtempcode
    Left = 216
    Top = 328
  end
end
