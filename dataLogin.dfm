object dmLogin: TdmLogin
  Height = 716
  Width = 841
  object tbUserConect: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM'
      #9'dbo.tbUsuarios'
      'WHERE'
      #9'username = :username')
    Left = 608
    Top = 184
    ParamData = <
      item
        Name = 'username'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = 'YasmaSA'
      end>
    object tbUserConectID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tbUserConectDateCreate: TDateField
      FieldName = 'DateCreate'
      Origin = 'DateCreate'
    end
    object tbUserConectCI: TStringField
      FieldName = 'CI'
      Origin = 'CI'
      Size = 11
    end
    object tbUserConectNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'Nombre'
      Size = 255
    end
    object tbUserConectApellidos: TStringField
      FieldName = 'Apellidos'
      Origin = 'Apellidos'
      Size = 255
    end
    object tbUserConectdireccion: TStringField
      FieldName = 'direccion'
      Origin = 'direccion'
      Size = 255
    end
    object tbUserConectmovil: TStringField
      FieldName = 'movil'
      Origin = 'movil'
      Size = 255
    end
    object tbUserConectemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 255
    end
    object tbUserConectCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Size = 255
    end
    object tbUserConectusername: TStringField
      FieldName = 'username'
      Origin = 'username'
    end
    object tbUserConectNumeroPIN: TStringField
      FieldName = 'NumeroPIN'
      Origin = 'NumeroPIN'
      Size = 6
    end
    object tbUserConectclave_sha: TStringField
      FieldName = 'clave_sha'
      Origin = 'clave_sha'
      Size = 255
    end
    object tbUserConectChangePassword: TDateField
      FieldName = 'ChangePassword'
      Origin = 'ChangePassword'
    end
    object tbUserConectPassExpire: TDateField
      FieldName = 'PassExpire'
      Origin = 'PassExpire'
    end
    object tbUserConectcode_activation: TStringField
      FieldName = 'code_activation'
      Origin = 'code_activation'
      Size = 6
    end
    object tbUserConecttype_code: TStringField
      FieldName = 'type_code'
      Origin = 'type_code'
      Size = 255
    end
    object tbUserConectpermiss: TMemoField
      FieldName = 'permiss'
      Origin = 'permiss'
      BlobType = ftMemo
      Size = 2147483647
    end
    object tbUserConectenabled: TIntegerField
      FieldName = 'enabled'
      Origin = 'enabled'
    end
    object tbUserConectpassword: TStringField
      FieldName = 'password'
      Origin = 'password'
      Size = 255
    end
    object tbUserConectpass_changue: TIntegerField
      FieldName = 'pass_changue'
      Origin = 'pass_changue'
    end
    object tbUserConectblockadmin: TIntegerField
      FieldName = 'blockadmin'
      Origin = 'blockadmin'
    end
    object tbUserConectonline: TIntegerField
      FieldName = 'online'
      Origin = 'online'
    end
  end
  object tbUsuarios: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tbusuarios')
    Left = 104
    Top = 184
    object tbUsuariosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbUsuariosDateCreate: TDateField
      FieldName = 'DateCreate'
    end
    object tbUsuariosCI: TStringField
      FieldName = 'CI'
      Size = 11
    end
    object tbUsuariosNombre: TStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object tbUsuariosApellidos: TStringField
      FieldName = 'Apellidos'
      Size = 255
    end
    object tbUsuariosdireccion: TStringField
      FieldName = 'direccion'
      Size = 255
    end
    object tbUsuariosmovil: TStringField
      FieldName = 'movil'
      Size = 255
    end
    object tbUsuariosemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object tbUsuariosCargo: TStringField
      FieldName = 'Cargo'
      Size = 255
    end
    object tbUsuariosusername: TStringField
      FieldName = 'username'
    end
    object tbUsuariosNumeroPIN: TStringField
      FieldName = 'NumeroPIN'
      Size = 6
    end
    object tbUsuariosclave_sha: TStringField
      FieldName = 'clave_sha'
      Size = 255
    end
    object tbUsuariosChangePassword: TDateField
      FieldName = 'ChangePassword'
    end
    object tbUsuariosPassExpire: TDateField
      FieldName = 'PassExpire'
    end
    object tbUsuarioscode_activation: TStringField
      FieldName = 'code_activation'
      Size = 6
    end
    object tbUsuariostype_code: TStringField
      FieldName = 'type_code'
      Size = 255
    end
    object tbUsuariospermiss: TMemoField
      FieldName = 'permiss'
      BlobType = ftMemo
      Size = 2147483647
    end
    object tbUsuariosenabled: TIntegerField
      FieldName = 'enabled'
    end
    object tbUsuariospassword: TStringField
      FieldName = 'password'
      Size = 255
    end
    object tbUsuariosblockadmin: TIntegerField
      FieldName = 'blockadmin'
    end
    object tbUsuariospass_changue: TIntegerField
      FieldName = 'pass_changue'
    end
  end
  object update_pass: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      
        'UPDATE [dbo].[tbUsuarios] SET [password] = :password_changue WHE' +
        'RE [username] = :username')
    Left = 328
    Top = 144
    ParamData = <
      item
        Name = 'password_changue'
        DataType = ftString
        ParamType = ptInputOutput
        Value = Null
      end
      item
        Name = 'username'
        DataType = ftString
        ParamType = ptInputOutput
        Value = Null
      end>
  end
  object DSUserConect: TDataSource
    DataSet = tbUserConect
    Left = 48
    Top = 560
  end
  object DSUsuarios: TDataSource
    DataSet = tbUsuarios
    Left = 168
    Top = 448
  end
end
