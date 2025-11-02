object DMUsuario: TDMUsuario
  OldCreateOrder = False
  Height = 567
  Width = 407
  object tbUsuarios: TFDTable
    TableName = 'Usuario'
    Connection = dataVentas.ConexDB
    IndexFieldNames = 'CI'
    Left = 40
    Top = 24
    object tbUsuariosCI: TWideStringField
      DisplayWidth = 11
      FieldName = 'CI'
      Size = 11
    end
    object tbUsuariosNombre: TWideStringField
      DisplayWidth = 15
      FieldName = 'Nombre'
      Size = 15
    end
    object tbUsuariosWideStringField1erApellido: TWideStringField
      DisplayWidth = 15
      FieldName = '1er Apellido'
      Size = 15
    end
    object tbUsuariosWideStringField2doApellido: TWideStringField
      DisplayWidth = 15
      FieldName = '2do Apellido'
      Size = 15
    end
    object tbUsuariosDireccion: TWideMemoField
      DisplayWidth = 10
      FieldName = 'Direccion'
      BlobType = ftWideMemo
    end
    object tbUsuariosCargo: TWideStringField
      DisplayWidth = 30
      FieldName = 'Cargo'
      Size = 30
    end
    object tbUsuariosNoTelCelular: TWideStringField
      DisplayWidth = 20
      FieldName = 'No Tel Celular'
    end
    object tbUsuariosUsuario: TWideStringField
      DisplayWidth = 15
      FieldName = 'Usuario'
      Size = 15
    end
    object tbUsuariosClave: TWideStringField
      DisplayWidth = 15
      FieldName = 'Clave'
      Size = 15
    end
    object tbUsuariosidUsuario: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'idUsuario'
      ReadOnly = True
      Required = True
    end
    object tbUsuariosActivo: TBooleanField
      DisplayWidth = 10
      FieldName = 'Activo'
    end
    object tbUsuariosemail: TWideStringField
      DisplayWidth = 255
      FieldName = 'email'
      Size = 255
    end
    object tbUsuariosimg: TBlobField
      DisplayWidth = 10
      FieldName = 'img'
    end
    object tbUsuariosChangePassword: TIntegerField
      FieldName = 'ChangePassword'
    end
    object tbUsuariosDateCreate: TStringField
      FieldName = 'DateCreate'
      Size = 30
    end
  end
  object DSUsuarios: TDataSource
    DataSet = tbUsuarios
    Left = 40
    Top = 96
  end
  object tbLogon: TFDTable
    TableName = 'Usuario'
    Connection = dataVentas.ConexDB
    Active = True
    IndexFieldNames = 'CI'
    Left = 160
    Top = 24
    object tbLogonCI: TWideStringField
      FieldName = 'CI'
      Size = 11
    end
    object tbLogonNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 15
    end
    object tbLogonWideStringField1erApellido: TWideStringField
      FieldName = '1er Apellido'
      Size = 15
    end
    object tbLogonWideStringField2doApellido: TWideStringField
      FieldName = '2do Apellido'
      Size = 15
    end
    object tbLogonDireccion: TWideMemoField
      FieldName = 'Direccion'
      BlobType = ftWideMemo
    end
    object tbLogonCargo: TWideStringField
      FieldName = 'Cargo'
      Size = 30
    end
    object tbLogonNoTelCelular: TWideStringField
      FieldName = 'No Tel Celular'
    end
    object tbLogonUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 15
    end
    object tbLogonClave: TWideStringField
      FieldName = 'Clave'
      Size = 15
    end
    object tbLogonidUsuario: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idUsuario'
      ReadOnly = True
      Required = True
    end
    object tbLogonActivo: TBooleanField
      FieldName = 'Activo'
    end
    object tbLogonemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object tbLogonimg: TBlobField
      FieldName = 'img'
    end
  end
  object DSLogon: TDataSource
    DataSet = tbLogon
    Left = 160
    Top = 96
  end
end
