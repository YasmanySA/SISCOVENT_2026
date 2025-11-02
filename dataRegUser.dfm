object dmRegUser: TdmRegUser
  Height = 809
  Width = 1040
  object tb_validated: TFDQuery
    SQLInsert.Strings = (
      'INSERT INTO dbo.tbUsuarios'
      
        '  (Nombre, Apellidos, movil, email, Cargo, user, password, Numer' +
        'oPIN, clave_sha, ChangePassword, DateCreate, PassExpire, code_ac' +
        'tivation, type_code, permiss)'
      'VALUES'
      
        '  (:Nombre, :Apellidos, :movil, :email, :Cargo, :user, :password' +
        ', :NumeroPIN, :clave_sha, :ChangePassword, :DateCreate, :PassExp' +
        'ire, :code_activation, :type_code, :permiss)'
      '')
    Connection = dataconex.ConexDB
    SQL.Strings = (
      
        'SELECT movil,email ,username, password , NumeroPin FROM [dbo].[t' +
        'bUsuarios]'
      'where movil= :movil or email = :email')
    Left = 456
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'movil'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'email'
        ParamType = ptInputOutput
        Value = Null
      end>
    object tb_validatedmovil: TStringField
      FieldName = 'movil'
      Size = 255
    end
    object tb_validatedemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object tb_validatedusername: TStringField
      FieldName = 'username'
    end
    object tb_validatedpassword: TStringField
      FieldName = 'password'
      Size = 255
    end
    object tb_validatedNumeroPin: TStringField
      FieldName = 'NumeroPin'
      Size = 6
    end
  end
  object tbMail: TFDQuery
    SQLInsert.Strings = (
      'INSERT INTO dbo.tbUsuarios'
      
        '  (Nombre, Apellidos, movil, email, Cargo, user, password, Numer' +
        'oPIN, clave_sha, ChangePassword, DateCreate, PassExpire, code_ac' +
        'tivation, type_code, permiss)'
      'VALUES'
      
        '  (:Nombre, :Apellidos, :movil, :email, :Cargo, :user, :password' +
        ', :NumeroPIN, :clave_sha, :ChangePassword, :DateCreate, :PassExp' +
        'ire, :code_activation, :type_code, :permiss)'
      '')
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tb_mailHost'
      ' WHERE [producer] = :active')
    Left = 584
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'active'
        ParamType = ptInputOutput
        Value = Null
      end>
    object tbMailID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbMailproducer: TBooleanField
      FieldName = 'producer'
    end
    object tbMailHost: TStringField
      FieldName = 'Host'
      Size = 50
    end
    object tbMailServer: TStringField
      FieldName = 'Server'
      Size = 50
    end
    object tbMailmail_user: TStringField
      FieldName = 'mail_user'
      Size = 30
    end
    object tbMailmail_pass: TStringField
      FieldName = 'mail_pass'
      Size = 30
    end
    object tbMaile_mail: TStringField
      FieldName = 'e_mail'
      Size = 30
    end
    object tbMailname: TStringField
      FieldName = 'name'
      Size = 30
    end
    object tbMailport: TIntegerField
      FieldName = 'port'
    end
  end
  object tbUserSelect: TFDQuery
    SQLInsert.Strings = (
      'INSERT INTO dbo.tbUsuarios'
      
        '  (Nombre, Apellidos, movil, email, Cargo, user, password, Numer' +
        'oPIN, clave_sha, ChangePassword, DateCreate, PassExpire, code_ac' +
        'tivation, type_code, permiss)'
      'VALUES'
      
        '  (:Nombre, :Apellidos, :movil, :email, :Cargo, :user, :password' +
        ', :NumeroPIN, :clave_sha, :ChangePassword, :DateCreate, :PassExp' +
        'ire, :code_activation, :type_code, :permiss)'
      '')
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tbUsuarios'
      ''
      'where ')
    Left = 200
    Top = 56
    object IntegerField1: TIntegerField
      FieldName = 'idUsuario'
      ReadOnly = True
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CI'
      Size = 11
    end
    object StringField2: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Apellido1'
      Required = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'Apellido2'
      Required = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'Direccion'
      Required = True
      Size = 255
    end
    object StringField6: TStringField
      FieldName = 'Celular'
      Required = True
      Size = 15
    end
    object StringField7: TStringField
      FieldName = 'email'
      Required = True
      Size = 255
    end
    object StringField8: TStringField
      FieldName = 'Cargo'
      Required = True
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'Usuario'
      Required = True
      Size = 15
    end
    object MemoField1: TMemoField
      FieldName = 'Clave'
      Required = True
      BlobType = ftMemo
    end
    object StringField10: TStringField
      FieldName = 'clave_sha'
      Size = 16
    end
    object StringField11: TStringField
      FieldName = 'NumeroPIN'
      Required = True
      Size = 4
    end
    object BooleanField1: TBooleanField
      FieldName = 'Activo'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ChangePassword'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DateCreate'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'PassExpire'
    end
  end
  object tbUsuarios: TFDQuery
    SQLInsert.Strings = (
      'INSERT INTO dbo.tbUsuarios'
      
        '  (Nombre, Apellidos, movil, email, Cargo, user, password, Numer' +
        'oPIN, clave_sha, ChangePassword, DateCreate, PassExpire, code_ac' +
        'tivation, type_code, permiss)'
      'VALUES'
      
        '  (:Nombre, :Apellidos, :movil, :email, :Cargo, :user, :password' +
        ', :NumeroPIN, :clave_sha, :ChangePassword, :DateCreate, :PassExp' +
        'ire, :code_activation, :type_code, :permiss)'
      '')
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'INSERT INTO dbo.tbUsuarios'
      
        '  (DateCreate, CI, Nombre, Apellidos, direccion, movil, email, C' +
        'argo, username, NumeroPIN, clave_sha, ChangePassword, PassExpire' +
        ', code_activation, type_code, permiss, enabled, password, pass_c' +
        'hangue)'
      'VALUES'
      
        '  (:DateCreate, :CI, :Nombre, :Apellidos, :direccion, :movil, :e' +
        'mail, :Cargo, :username, :NumeroPIN, :clave_sha, :ChangePassword' +
        ', :PassExpire, :code_activation, :type_code, :permiss, :enabled,' +
        ' :password, :pass_changue)'
      '')
    Left = 312
    Top = 56
    ParamData = <
      item
        DataType = ftDate
        Name = 'DateCreate'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CI'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'Nombre'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'Apellidos'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'direccion'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'movil'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'email'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'Cargo'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'username'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'NumeroPIN'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'clave_sha'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftDate
        Name = 'ChangePassword'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftDate
        Name = 'PassExpire'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'code_activation'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'type_code'
        Value = Null
      end
      item
        DataType = ftString
        Name = 'permiss'
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'enabled'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftString
        Name = 'password'
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'pass_changue'
        ParamType = ptInputOutput
        Value = Null
      end>
    object tbUsuariosidUsuario: TIntegerField
      FieldName = 'idUsuario'
      ReadOnly = True
      Required = True
    end
    object tbUsuariosCI: TStringField
      FieldName = 'CI'
      Size = 11
    end
    object tbUsuariosNombre: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 50
    end
    object tbUsuariosApellido1: TStringField
      FieldName = 'Apellido1'
      Required = True
      Size = 15
    end
    object tbUsuariosApellido2: TStringField
      FieldName = 'Apellido2'
      Required = True
      Size = 15
    end
    object tbUsuariosDireccion: TStringField
      FieldName = 'Direccion'
      Required = True
      Size = 255
    end
    object tbUsuariosCelular: TStringField
      FieldName = 'Celular'
      Required = True
      Size = 15
    end
    object tbUsuariosemail: TStringField
      FieldName = 'email'
      Required = True
      Size = 255
    end
    object tbUsuariosCargo: TStringField
      FieldName = 'Cargo'
      Required = True
      Size = 15
    end
    object tbUsuariosUsuario: TStringField
      FieldName = 'Usuario'
      Required = True
      Size = 15
    end
    object tbUsuariosClave: TMemoField
      FieldName = 'Clave'
      Required = True
      BlobType = ftMemo
    end
    object tbUsuariosclave_sha: TStringField
      FieldName = 'clave_sha'
      Size = 16
    end
    object tbUsuariosNumeroPIN: TStringField
      FieldName = 'NumeroPIN'
      Required = True
      Size = 4
    end
    object tbUsuariosActivo: TBooleanField
      FieldName = 'Activo'
    end
    object tbUsuariosChangePassword: TIntegerField
      FieldName = 'ChangePassword'
    end
    object tbUsuariosDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object tbUsuariosPassExpire: TDateTimeField
      FieldName = 'PassExpire'
    end
  end
  object UniQuery1: TFDQuery
    SQLInsert.Strings = (
      'INSERT INTO dbo.tbUsuarios'
      
        '  (Nombre, Apellidos, movil, email, Cargo, user, password, Numer' +
        'oPIN, clave_sha, ChangePassword, DateCreate, PassExpire, code_ac' +
        'tivation, type_code, permiss)'
      'VALUES'
      
        '  (:Nombre, :Apellidos, :movil, :email, :Cargo, :user, :password' +
        ', :NumeroPIN, :clave_sha, :ChangePassword, :DateCreate, :PassExp' +
        'ire, :code_activation, :type_code, :permiss)'
      '')
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tbUsuarios]')
    Left = 416
    Top = 304
    object UniQuery1ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object UniQuery1DateCreate: TDateField
      FieldName = 'DateCreate'
    end
    object UniQuery1CI: TStringField
      FieldName = 'CI'
      Size = 11
    end
    object UniQuery1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object UniQuery1Apellidos: TStringField
      FieldName = 'Apellidos'
      Size = 255
    end
    object UniQuery1direccion: TStringField
      FieldName = 'direccion'
      Size = 255
    end
    object UniQuery1movil: TStringField
      FieldName = 'movil'
      Size = 255
    end
    object UniQuery1email: TStringField
      FieldName = 'email'
      Size = 255
    end
    object UniQuery1Cargo: TStringField
      FieldName = 'Cargo'
      Size = 255
    end
    object UniQuery1username: TStringField
      FieldName = 'username'
    end
    object UniQuery1password: TStringField
      FieldName = 'password'
      Size = 255
    end
    object UniQuery1NumeroPIN: TStringField
      FieldName = 'NumeroPIN'
      Size = 6
    end
    object UniQuery1clave_sha: TStringField
      FieldName = 'clave_sha'
      Size = 255
    end
    object UniQuery1ChangePassword: TDateField
      FieldName = 'ChangePassword'
    end
    object UniQuery1PassExpire: TDateField
      FieldName = 'PassExpire'
    end
    object UniQuery1code_activation: TStringField
      FieldName = 'code_activation'
      Size = 6
    end
    object UniQuery1type_code: TStringField
      FieldName = 'type_code'
      Size = 255
    end
    object UniQuery1permiss: TMemoField
      FieldName = 'permiss'
      BlobType = ftMemo
    end
    object UniQuery1enabled: TIntegerField
      FieldName = 'enabled'
    end
  end
  object UniQuery2: TFDQuery
    Connection = dataconex.ConexDB
    Left = 296
    Top = 352
  end
  object UniQuery3: TFDQuery
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM dbo.tbUsuarios'
      ')')
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM [dbo].[tbUsuarios]')
    Left = 280
    Top = 232
    object IntegerField3: TIntegerField
      FieldName = 'idUsuario'
      ReadOnly = True
      Required = True
    end
    object StringField12: TStringField
      FieldName = 'CI'
      Size = 11
    end
    object StringField13: TStringField
      FieldName = 'Nombre'
      Required = True
      Size = 255
    end
    object StringField14: TStringField
      FieldName = 'Apellido1'
      Required = True
      Size = 15
    end
    object StringField15: TStringField
      FieldName = 'Apellido2'
      Required = True
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'Direccion'
      Required = True
      Size = 255
    end
    object StringField17: TStringField
      FieldName = 'Celular'
      Required = True
      Size = 15
    end
    object StringField18: TStringField
      FieldName = 'email'
      Required = True
      Size = 255
    end
    object StringField19: TStringField
      FieldName = 'Cargo'
      Required = True
      Size = 255
    end
    object StringField20: TStringField
      FieldName = 'Usuario'
      Required = True
      Size = 15
    end
    object MemoField2: TMemoField
      FieldName = 'Clave'
      Required = True
      BlobType = ftMemo
    end
    object StringField21: TStringField
      FieldName = 'clave_sha'
      Size = 255
    end
    object StringField22: TStringField
      FieldName = 'NumeroPIN'
      Required = True
      Size = 6
    end
    object BooleanField2: TBooleanField
      FieldName = 'Activo'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ChangePassword'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DateCreate'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'PassExpire'
    end
  end
  object DataSource1: TDataSource
    Left = 800
    Top = 304
  end
end
