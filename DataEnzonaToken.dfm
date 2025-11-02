object EnzonaToken: TEnzonaToken
  Height = 798
  Width = 812
  object RESTClient1: TRESTClient
    Authenticator = OAuthBasic
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.enzona.net/token'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    SynchronizedEvents = False
    Left = 272
    Top = 136
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Name = 'grant_type'
        Value = 'client_credentials'
      end
      item
        Name = 'scope'
        Options = [poDoNotEncode]
        Value = 'enzona_business_payment '
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 296
    Top = 32
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 384
    Top = 160
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tbtemp
    FieldDefs = <>
    Response = RESTResponse1
    ObjectView = True
    TypesMode = JSONOnly
    Left = 128
    Top = 304
  end
  object tbtemp: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'error_description'
        DataType = ftWideString
        Size = 97
      end
      item
        Name = 'error'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'access_token'
        DataType = ftWideString
        Size = 36
      end
      item
        Name = 'scope'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'token_type'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'expires_in'
        DataType = ftFloat
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
    Left = 320
    Top = 504
    object tbtempaccess_token: TWideStringField
      FieldName = 'access_token'
      Size = 36
    end
    object tbtempscope: TWideStringField
      FieldName = 'scope'
      Size = 44
    end
    object tbtemptoken_type: TWideStringField
      FieldName = 'token_type'
      Size = 6
    end
    object tbtempexpires_in: TFloatField
      FieldName = 'expires_in'
    end
  end
  object OAuthBasic: THTTPBasicAuthenticator
    Left = 616
    Top = 184
  end
  object tbComerceEnzona: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tbcomerceEnzona]')
    Active = True
    Left = 552
    Top = 432
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
end
