object dmAdmin: TdmAdmin
  Height = 480
  Width = 640
  object DSNew: TDataSource
    DataSet = tbAdmin
    Left = 256
    Top = 120
  end
  object tbAdmin: TFDTable
    Active = True
    IndexFieldNames = 'Clave'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Admin'
    Left = 269
    Top = 37
    object tbAdminUsuario: TWideStringField
      FieldName = 'Usuario'
    end
    object tbAdminClave: TWideStringField
      FieldName = 'Clave'
      Required = True
    end
  end
end
