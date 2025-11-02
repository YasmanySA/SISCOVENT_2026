object DM_Clientes: TDM_Clientes
  Height = 784
  Width = 744
  object DSClientes: TDataSource
    DataSet = tbClientes
    Left = 328
    Top = 112
  end
  object DSDetallesClientes: TDataSource
    Left = 328
    Top = 200
  end
  object DSCodigos: TDataSource
    Left = 336
    Top = 280
  end
  object DSClientes1: TDataSource
    Left = 400
    Top = 136
  end
  object tbLogos: TClientDataSet
    Aggregates = <>
    FileName = 
      'D:\02Trabajo\Contabilidad\SISCOVENT\Aplicacion\DataBase\LogoClie' +
      'ntes\Logos.cds'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Logo'
        Attributes = [faUnNamed]
        DataType = ftGraphic
      end>
    IndexDefs = <>
    IndexFieldNames = 'id'
    MasterFields = 'id_cliente'
    MasterSource = DSClientes
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 296
    object tbLogosid: TFloatField
      FieldName = 'id'
    end
    object tbLogosLogo: TGraphicField
      FieldName = 'Logo'
      BlobType = ftGraphic
    end
  end
  object DSLogos: TDataSource
    DataSet = tbLogos
    Left = 240
    Top = 296
  end
  object tbClientes: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tbClientes')
    Left = 64
    Top = 32
    object tbClientesid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object tbClientesIDCLIENTE: TStringField
      FieldName = 'ID CLIENTE'
      Size = 15
    end
    object tbClientesname_cliente: TStringField
      FieldName = 'name_cliente'
      Size = 50
    end
    object tbClientesnumber_contrato: TStringField
      FieldName = 'number_contrato'
    end
    object tbClientesdireccion: TStringField
      FieldName = 'direccion'
      Size = 255
    end
    object tbClientesestado: TIntegerField
      FieldName = 'estado'
    end
    object tbClientesdate_contrato: TSQLTimeStampField
      FieldName = 'date_contrato'
    end
    object tbClientesTelefonomovil: TStringField
      FieldName = 'Telefono movil'
    end
    object tbClientesTelefonofijo: TStringField
      FieldName = 'Telefono fijo'
    end
  end
end
