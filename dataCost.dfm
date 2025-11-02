object dmCost: TdmCost
  Height = 660
  Width = 857
  object q_Gastos: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT'
      #9'*'
      'FROM'
      #9'q_gastos'
      ''
      'where history_check = 0')
    Left = 576
    Top = 96
    object q_GastosID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object q_GastosID_Operación: TStringField
      FieldName = 'ID_Operaci'#243'n'
      Size = 10
    end
    object q_Gastosdate_ID: TSQLTimeStampField
      FieldName = 'date_ID'
    end
    object q_Gastoscodebar: TStringField
      FieldName = 'codebar'
      Size = 30
    end
    object q_GastosTipoMateriaPrima: TIntegerField
      FieldName = 'TipoMateriaPrima'
    end
    object q_GastosCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object q_GastosCosto: TFMTBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 2
    end
    object q_GastosFormato: TStringField
      FieldName = 'Formato'
      Size = 50
    end
    object q_GastosTamaño: TStringField
      FieldName = 'Tama'#241'o'
      Size = 50
    end
    object q_Gastosdescrip: TStringField
      FieldName = 'descrip'
      Size = 1000
    end
    object q_Gastoshistory_check: TBooleanField
      FieldName = 'history_check'
    end
    object q_Gastostype_gasto: TIntegerField
      FieldName = 'type_gasto'
    end
    object q_GastosImgComprobante: TBlobField
      FieldName = 'ImgComprobante'
    end
    object q_GastosTotal: TFMTBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 29
      Size = 2
    end
  end
  object tb_typeMP: TFDQuery
    Active = True
    MasterFields = 'type_gasto'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select *'
      'from tb_typeMP')
    Left = 560
    Top = 216
    ParamData = <
      item
        Name = 'type_gasto'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tb_typeMPID: TFDAutoIncField
      FieldName = 'ID'
    end
    object tb_typeMPlang: TStringField
      FieldName = 'lang'
      Size = 100
    end
    object tb_typeMPid_usable: TStringField
      FieldName = 'id_usable'
      Size = 10
    end
    object tb_typeMPid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tb_typeMPPrecio: TCurrencyField
      FieldName = 'Precio'
    end
    object tb_typeMPCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object tb_typeMPcodebar: TStringField
      FieldName = 'codebar'
      Size = 13
    end
    object tb_typeMPId_date: TSQLTimeStampField
      FieldName = 'Id_date'
    end
  end
  object tbFormat: TFDQuery
    Active = True
    MasterFields = 'id_usable'
    DetailFields = 'id_usable'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select *'
      'from tbFormato_Gasto')
    Left = 608
    Top = 416
    ParamData = <
      item
        Name = 'id_usable'
        DataType = ftString
        ParamType = ptInput
      end>
    object tbFormatID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbFormatid_tipoGasto: TIntegerField
      FieldName = 'id_tipoGasto'
    end
    object tbFormatlang: TStringField
      FieldName = 'lang'
      Size = 100
    end
    object tbFormatsize: TStringField
      FieldName = 'size'
      Size = 50
    end
    object tbFormatid_usable: TStringField
      FieldName = 'id_usable'
      Size = 255
    end
  end
  object tbPrecio: TFDQuery
    Active = True
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select *'
      'from tb_typeMP')
    Left = 392
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object tbPrecioID: TFDAutoIncField
      FieldName = 'ID'
    end
    object tbPreciolang: TStringField
      FieldName = 'lang'
      Size = 100
    end
    object tbPrecioid_usable: TStringField
      FieldName = 'id_usable'
      Size = 10
    end
    object tbPrecioid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbPrecioPrecio: TCurrencyField
      FieldName = 'Precio'
    end
    object tbPrecioCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object tbPreciocodebar: TStringField
      FieldName = 'codebar'
      Size = 13
    end
    object tbPrecioId_date: TSQLTimeStampField
      FieldName = 'Id_date'
    end
  end
  object tbtip: TFDQuery
    Active = True
    MasterFields = 'date_ID'
    DetailFields = 'Fecha'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT'
      #9'Q_ResumenDiarioData.Fecha, '
      
        #9'SUM(Q_ResumenDiarioData.Propina/Q_cantidad_trabajadores.Cantida' +
        'dTrabajadores)  AS Tip'
      #9
      'FROM'
      #9'dbo.Q_ResumenDiarioData,'
      #9'dbo.Q_cantidad_trabajadores'
      'GROUP BY'
      #9'Q_ResumenDiarioData.Fecha')
    Left = 496
    Top = 448
    ParamData = <
      item
        Name = 'date_ID'
        DataType = ftDateTime
        ParamType = ptInput
      end>
    object tbtipFecha: TSQLTimeStampField
      FieldName = 'Fecha'
    end
    object tbtipTip: TCurrencyField
      FieldName = 'Tip'
      ReadOnly = True
    end
  end
  object tbtype_gasto: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT'
      #9'*'
      'FROM'
      #9'tbType_Gasto'
      '')
    Left = 704
    Top = 208
    object tbtype_gastoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbtype_gastolang: TStringField
      FieldName = 'lang'
      Size = 100
    end
  end
end
