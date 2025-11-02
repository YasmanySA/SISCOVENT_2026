object DM_VHS: TDM_VHS
  OldCreateOrder = False
  Height = 628
  Width = 638
  object tbVHS: TFDTable
    TableName = 'Registros VHS'
    Connection = dataconex.ConexDB
    Active = True
    IndexFieldNames = 'Cod_casete'
    Left = 48
    Top = 32
    object tbVHSCod_casete: TIntegerField
      FieldName = 'Cod_casete'
      Required = True
    end
    object tbVHSFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object tbVHSServicio: TWideStringField
      FieldName = 'Servicio'
      Size = 25
    end
    object tbVHSNombreCliente: TWideStringField
      FieldName = 'Nombre Cliente'
      Size = 25
    end
    object tbVHSEntradasVHS: TIntegerField
      FieldName = 'Entradas VHS'
    end
  end
  object tbOfertas: TFDTable
    TableName = 'OfertasVHS'
    Connection = dataconex.ConexDB
    Active = True
    IndexFieldNames = 'ID'
    Left = 48
    Top = 160
    object tbOfertasID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbOfertasOfertas: TWideStringField
      FieldName = 'Ofertas'
      Origin = 'Ofertas'
      Size = 255
    end
    object tbOfertasDuracion: TIntegerField
      FieldName = 'Duracion'
      Origin = 'Duracion'
    end
    object tbOfertasImporte: TCurrencyField
      FieldName = 'Importe'
      Origin = 'Importe'
    end
    object tbOfertasCosto: TCurrencyField
      FieldName = 'Costo'
      Origin = 'Costo'
    end
  end
  object DSVHS: TDataSource
    DataSet = tbVHS
    Left = 176
    Top = 32
  end
  object DSDetallesVHS: TDataSource
    DataSet = tbDetallesVHS
    Left = 184
    Top = 96
  end
  object DStbOfertas: TDataSource
    DataSet = tbOfertas
    Left = 176
    Top = 168
  end
  object tbDetallesVHS: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      
        'SELECT        id_enlace, [Codigo VHS], Titulo, Oferta, Duracion,' +
        ' Limpiesa, Estado, Importe, format(Duracion, '#39'hh'#39') * 60 + format' +
        '(Duracion, '#39'mm'#39') AS Minutos'
      'FROM            dbo.tbDetallesVHS')
    MasterSource = DSVHS
    MasterFields = 'Cod_casete'
    DetailFields = 'id_enlace'
    Active = True
    Left = 64
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Cod_casete'
        ParamType = ptInput
        Value = 5
      end>
    object tbDetallesVHSid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbDetallesVHSCodigoVHS: TIntegerField
      FieldName = 'Codigo VHS'
      Required = True
    end
    object tbDetallesVHSTitulo: TWideStringField
      FieldName = 'Titulo'
      Size = 50
    end
    object tbDetallesVHSOferta: TWideStringField
      FieldName = 'Oferta'
      Size = 25
    end
    object tbDetallesVHSDuracion: TDateTimeField
      FieldName = 'Duracion'
    end
    object tbDetallesVHSLimpiesa: TBooleanField
      FieldName = 'Limpiesa'
      Required = True
    end
    object tbDetallesVHSEstado: TFloatField
      FieldName = 'Estado'
      Precision = 3
    end
    object tbDetallesVHSImporte: TCurrencyField
      FieldName = 'Importe'
    end
    object tbDetallesVHSMinutos: TIntegerField
      FieldName = 'Minutos'
      ReadOnly = True
    end
  end
end
