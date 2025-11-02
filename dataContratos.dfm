object DMContratos: TDMContratos
  Height = 870
  Width = 937
  object QPreReservaPrincipal: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      '  SELECT '
      '*'
      '  FROM'
      '  Q_PreReservaPrincipal')
    Left = 80
    Top = 40
    object QPreReservaPrincipalID_Contrato: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_Contrato'
      ReadOnly = True
      Required = True
    end
    object QPreReservaPrincipalFechaContrato: TDateField
      FieldName = 'FechaContrato'
    end
    object QPreReservaPrincipalHora: TTimeField
      FieldName = 'Hora'
    end
    object QPreReservaPrincipalNombreClienteAdulta: TWideStringField
      FieldName = 'NombreClienteAdulta'
      FixedChar = True
      Size = 60
    end
    object QPreReservaPrincipalTelefono1: TWideStringField
      FieldName = 'Telefono 1'
      FixedChar = True
      Size = 45
    end
    object QPreReservaPrincipalTelefono2: TWideStringField
      FieldName = 'Telefono 2'
      FixedChar = True
      Size = 45
    end
    object QPreReservaPrincipalDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object QPreReservaPrincipalNombre: TWideStringField
      FieldName = 'Nombre'
      FixedChar = True
      Size = 60
    end
    object QPreReservaPrincipalProvincia: TStringField
      FieldName = 'Provincia'
      Size = 50
    end
    object QPreReservaPrincipalMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 60
    end
    object QPreReservaPrincipalPoblado: TStringField
      FieldName = 'Poblado'
      Size = 30
    end
    object QPreReservaPrincipalEvento: TWideStringField
      FieldName = 'Evento'
      FixedChar = True
      Size = 45
    end
    object QPreReservaPrincipalTipoContratacion: TWideStringField
      FieldName = 'TipoContratacion'
      FixedChar = True
      Size = 30
    end
    object QPreReservaPrincipalLugar: TWideStringField
      FieldName = 'Lugar'
      FixedChar = True
      Size = 70
    end
    object QPreReservaPrincipalOferta: TWideStringField
      FieldName = 'Oferta'
      FixedChar = True
      Size = 45
    end
    object QPreReservaPrincipalSubOferta: TWideStringField
      FieldName = 'SubOferta'
      FixedChar = True
      Size = 45
    end
    object QPreReservaPrincipalPortada: TStringField
      FieldName = 'Portada'
      Size = 30
    end
    object QPreReservaPrincipalImporte: TCurrencyField
      FieldName = 'Importe'
    end
    object QPreReservaPrincipalFechaEstudio: TDateField
      FieldName = 'Fecha Estudio'
    end
    object QPreReservaPrincipalFechaExteriores: TDateField
      FieldName = 'FechaExteriores'
    end
    object QPreReservaPrincipalGarantia: TCurrencyField
      FieldName = 'Garantia'
    end
    object QPreReservaPrincipalTotalaPagar: TCurrencyField
      FieldName = 'Total a Pagar'
      ReadOnly = True
    end
    object QPreReservaPrincipalPagoGarantia: TBooleanField
      FieldName = 'PagoGarantia'
    end
    object QPreReservaPrincipalTiempoRecogida: TIntegerField
      FieldName = 'TiempoRecogida'
    end
  end
  object DSPreReservaPrincipal: TDataSource
    DataSet = QPreReservaPrincipal
    Left = 208
    Top = 40
  end
  object tbTipoContratos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbTiposContratos'
    Left = 464
    Top = 184
    object tbTipoContratosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbTipoContratosTiposEventos: TWideStringField
      FieldName = 'TiposEventos'
      FixedChar = True
      Size = 30
    end
  end
  object DSTipoContratos: TDataSource
    DataSet = tbTipoContratos
    Left = 592
    Top = 184
  end
  object tbProvincia: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Provincias'
    Left = 464
    Top = 32
    object tbProvinciaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbProvinciaProvincias: TWideStringField
      FieldName = 'Provincias'
      Size = 255
    end
  end
  object DSProvincia: TDataSource
    DataSet = tbProvincia
    Left = 584
    Top = 16
  end
  object Municipio: TFDTable
    Active = True
    MasterSource = DSProvincia
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Municipios'
    Left = 464
    Top = 96
    object MunicipioID: TIntegerField
      FieldName = 'ID'
    end
    object MunicipioMunicipio: TWideStringField
      FieldName = 'Municipio'
      FixedChar = True
      Size = 255
    end
  end
  object DSMunicipio: TDataSource
    DataSet = Municipio
    Left = 584
    Top = 80
  end
  object tbTipoEvento: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbTiposContratos'
    Left = 544
    Top = 384
    object tbTipoEventoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object tbTipoEventoTiposEventos: TWideStringField
      FieldName = 'TiposEventos'
      Origin = 'TiposEventos'
      FixedChar = True
      Size = 30
    end
    object tbTipoEventodefinedcolor: TSingleField
      FieldName = 'definedcolor'
      Origin = 'definedcolor'
    end
  end
  object DSTipoEvento: TDataSource
    DataSet = tbTipoEvento
    Left = 688
    Top = 384
  end
  object tbTamañoEvento: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSTipoEvento
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '[tbTama'#241'oEvento]'
    Left = 544
    Top = 464
    object tbTamañoEventoid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbTamañoEventoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbTamañoEventoDiasOfertados: TWideStringField
      FieldName = 'DiasOfertados'
      Size = 30
    end
  end
  object DSTamañoEvento: TDataSource
    DataSet = tbTamañoEvento
    Left = 688
    Top = 464
  end
  object tbOfertasContratos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSTamañoEvento
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbOfertasContratos'
    Left = 544
    Top = 552
    object tbOfertasContratosid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbOfertasContratosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbOfertasContratosOferta: TWideStringField
      FieldName = 'Oferta'
      FixedChar = True
      Size = 100
    end
    object tbOfertasContratosIdLaminado: TIntegerField
      FieldName = 'IdLaminado'
    end
  end
  object DSOfertasContratos: TDataSource
    DataSet = tbOfertasContratos
    Left = 688
    Top = 552
  end
  object tbSubOfertasContratos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSOfertasContratos
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbSubOfertasContratos'
    Left = 544
    Top = 616
    object tbSubOfertasContratosid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbSubOfertasContratosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbSubOfertasContratosSubOferta: TStringField
      FieldName = 'SubOferta'
      Size = 50
    end
    object tbSubOfertasContratosPrecio: TCurrencyField
      FieldName = 'Precio'
    end
    object tbSubOfertasContratosGasto: TCurrencyField
      FieldName = 'Gasto'
    end
  end
  object DSSubOfertasContratos: TDataSource
    DataSet = tbSubOfertasContratos
    Left = 688
    Top = 616
  end
  object tbOfertaDetalles: TFDTable
    IndexFieldNames = 'ID'
    MasterSource = DSSubOfertasContratos
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbOfertaDetalles'
    Left = 544
    Top = 688
    object tbOfertaDetallesid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbOfertaDetallesID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tbOfertaDetallesIncluye: TStringField
      FieldName = 'Incluye'
      Size = 5000
    end
  end
  object DSOfertaDetalles: TDataSource
    DataSet = tbOfertaDetalles
    Left = 688
    Top = 688
  end
  object tbTiposLaminados: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSOfertasContratos
    MasterFields = 'IdLaminado'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbTiposLaminados'
    Left = 536
    Top = 752
    object tbTiposLaminadosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbTiposLaminadosid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbTiposLaminadosPortada: TStringField
      FieldName = 'Portada'
      Size = 50
    end
  end
  object DSTiposLaminados: TDataSource
    DataSet = tbTiposLaminados
    Left = 680
    Top = 752
  end
  object tbOfertasContratos2: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSPreReservaPrincipal
    MasterFields = 'Oferta'
    DetailFields = 'Oferta'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbOfertasContratos'
    Left = 72
    Top = 112
    object tbOfertasContratos2id_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbOfertasContratos2ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbOfertasContratos2Oferta: TWideStringField
      FieldName = 'Oferta'
      FixedChar = True
      Size = 100
    end
    object tbOfertasContratos2IdLaminado: TIntegerField
      FieldName = 'IdLaminado'
    end
  end
  object DSOfertasContratos2: TDataSource
    DataSet = tbOfertasContratos2
    Left = 216
    Top = 112
  end
  object tbSubOfertasContratos2: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSPreReservaPrincipal
    MasterFields = 'SubOferta'
    DetailFields = 'SubOferta'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbSubOfertasContratos'
    Left = 72
    Top = 176
    object IntegerField3: TIntegerField
      FieldName = 'id_enlace'
    end
    object IntegerField4: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'SubOferta'
      Size = 50
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Precio'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'Gasto'
    end
  end
  object DSSubOfertasContratos2: TDataSource
    DataSet = tbSubOfertasContratos2
    Left = 216
    Top = 176
  end
  object tbOfertaDetalles2: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    MasterSource = DSSubOfertasContratos2
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbOfertaDetalles'
    Left = 72
    Top = 248
    object tbOfertaDetalles2id_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbOfertaDetalles2ID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tbOfertaDetalles2Incluye: TStringField
      FieldName = 'Incluye'
      Size = 5000
    end
  end
  object DSOfertaDetalles2: TDataSource
    DataSet = tbOfertaDetalles2
    Left = 224
    Top = 248
  end
  object tbPreReservaHistorico: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      '  SELECT '
      '*'
      '  FROM'
      '  tbPreReservaHistorico')
    Left = 80
    Top = 416
    object tbPreReservaHistoricoID_Contrato: TLargeintField
      FieldName = 'ID_Contrato'
      Required = True
    end
    object tbPreReservaHistoricoFechaContrato: TDateField
      FieldName = 'FechaContrato'
    end
    object tbPreReservaHistoricoHora: TTimeField
      FieldName = 'Hora'
    end
    object tbPreReservaHistoricoNombreClienteAdulta: TWideStringField
      FieldName = 'NombreClienteAdulta'
      FixedChar = True
      Size = 60
    end
    object tbPreReservaHistoricoTelefono1: TWideStringField
      FieldName = 'Telefono 1'
      FixedChar = True
      Size = 45
    end
    object tbPreReservaHistoricoTelefono2: TWideStringField
      FieldName = 'Telefono 2'
      FixedChar = True
      Size = 45
    end
    object tbPreReservaHistoricoNombre: TWideStringField
      FieldName = 'Nombre'
      FixedChar = True
      Size = 60
    end
    object tbPreReservaHistoricoDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object tbPreReservaHistoricoProvincia: TStringField
      FieldName = 'Provincia'
      Size = 50
    end
    object tbPreReservaHistoricoMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 60
    end
    object tbPreReservaHistoricoPoblado: TStringField
      FieldName = 'Poblado'
      Size = 30
    end
    object tbPreReservaHistoricoEvento: TWideStringField
      FieldName = 'Evento'
      FixedChar = True
      Size = 45
    end
    object tbPreReservaHistoricoTipoContratacion: TWideStringField
      FieldName = 'TipoContratacion'
      FixedChar = True
      Size = 30
    end
    object tbPreReservaHistoricoLugar: TWideStringField
      FieldName = 'Lugar'
      FixedChar = True
      Size = 70
    end
    object tbPreReservaHistoricoOferta: TWideStringField
      FieldName = 'Oferta'
      FixedChar = True
      Size = 45
    end
    object tbPreReservaHistoricoSubOferta: TWideStringField
      FieldName = 'SubOferta'
      FixedChar = True
      Size = 45
    end
    object tbPreReservaHistoricoPortada: TStringField
      FieldName = 'Portada'
      Size = 30
    end
    object tbPreReservaHistoricoImporte: TCurrencyField
      FieldName = 'Importe'
    end
    object tbPreReservaHistoricoFechaEstudio: TDateField
      FieldName = 'Fecha Estudio'
    end
    object tbPreReservaHistoricoFechaExteriores: TDateField
      FieldName = 'FechaExteriores'
    end
    object tbPreReservaHistoricoGarantia: TCurrencyField
      FieldName = 'Garantia'
    end
    object tbPreReservaHistoricoTotalaPagar: TCurrencyField
      FieldName = 'Total a Pagar'
    end
    object tbPreReservaHistoricoPagoGarantia: TBooleanField
      FieldName = 'PagoGarantia'
    end
    object tbPreReservaHistoricoTiempoRecogida: TIntegerField
      FieldName = 'TiempoRecogida'
    end
  end
  object DSPreReservaHistorico: TDataSource
    DataSet = tbPreReservaHistorico
    Left = 224
    Top = 416
  end
  object tbReservaHistorico: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      '  SELECT '
      '*'
      '  FROM'
      '  tbReservaHistorico')
    Left = 72
    Top = 608
    object tbReservaHistoricoID_Contrato: TIntegerField
      FieldName = 'ID_Contrato'
      Required = True
    end
    object tbReservaHistoricoFechaContrato: TDateField
      FieldName = 'FechaContrato'
    end
    object tbReservaHistoricoHora: TTimeField
      FieldName = 'Hora'
    end
    object tbReservaHistoricoNombreClienteAdulta: TWideStringField
      FieldName = 'NombreClienteAdulta'
      FixedChar = True
      Size = 60
    end
    object tbReservaHistoricoTelefono1: TWideStringField
      FieldName = 'Telefono 1'
      FixedChar = True
      Size = 45
    end
    object tbReservaHistoricoTelefono2: TWideStringField
      FieldName = 'Telefono 2'
      FixedChar = True
      Size = 45
    end
    object tbReservaHistoricoNombre: TWideStringField
      FieldName = 'Nombre'
      FixedChar = True
      Size = 60
    end
    object tbReservaHistoricoDireccion: TStringField
      FieldName = 'Direccion'
      Size = 120
    end
    object tbReservaHistoricoProvincia: TStringField
      FieldName = 'Provincia'
      Size = 50
    end
    object tbReservaHistoricoMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 60
    end
    object tbReservaHistoricoPoblado: TStringField
      FieldName = 'Poblado'
      Size = 30
    end
    object tbReservaHistoricoEvento: TWideStringField
      FieldName = 'Evento'
      FixedChar = True
      Size = 45
    end
    object tbReservaHistoricoTipoContratacion: TWideStringField
      FieldName = 'TipoContratacion'
      FixedChar = True
      Size = 30
    end
    object tbReservaHistoricoLugar: TWideStringField
      FieldName = 'Lugar'
      FixedChar = True
      Size = 70
    end
    object tbReservaHistoricoOferta: TWideStringField
      FieldName = 'Oferta'
      FixedChar = True
      Size = 45
    end
    object tbReservaHistoricoSubOferta: TWideStringField
      FieldName = 'SubOferta'
      FixedChar = True
      Size = 45
    end
    object tbReservaHistoricoPortada: TStringField
      FieldName = 'Portada'
      Size = 30
    end
    object tbReservaHistoricoImporte: TCurrencyField
      FieldName = 'Importe'
    end
    object tbReservaHistoricoFechaEstudio: TDateField
      FieldName = 'Fecha Estudio'
    end
    object tbReservaHistoricoFechaExteriores: TDateField
      FieldName = 'FechaExteriores'
    end
    object tbReservaHistoricoGarantia: TCurrencyField
      FieldName = 'Garantia'
    end
    object tbReservaHistoricoTotalaPagar: TCurrencyField
      FieldName = 'Total a Pagar'
    end
    object tbReservaHistoricoPagoGarantia: TBooleanField
      FieldName = 'PagoGarantia'
    end
    object tbReservaHistoricoTiempoRecogida: TIntegerField
      FieldName = 'TiempoRecogida'
    end
  end
  object DSReservaHistorico: TDataSource
    DataSet = tbReservaHistorico
    Left = 216
    Top = 608
  end
end
