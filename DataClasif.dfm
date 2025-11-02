object DM_Clasif_E: TDM_Clasif_E
  Height = 815
  Width = 1100
  object PDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 880
    Top = 128
  end
  object ReportCode: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43564.689078449100000000
    ReportOptions.LastChange = 43576.499029930600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 786
    Top = 137
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 778.205227000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Codigos de Barras para Venta')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 105.826840000000000000
        Width = 778.205227000000000000
        Condition = 'frxDBDataset1."Servicio"'
        KeepTogether = True
        OutlineText = 'frxDBDataset1."Servicio"'
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 154.960730000000000000
        Width = 778.205227000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 778.205227000000000000
          Height = 22.677180000000000000
          DataField = 'Servicio'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15652241
          Memo.UTF8W = (
            '[frxDBDataset1."Servicio"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 204.094620000000000000
        Width = 778.205227000000000000
        Columns = 5
        ColumnWidth = 151.181102362205000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 117.165430000000000000
          Frame.Typ = []
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 114.338590000000000000
          Height = 52.913420000000000000
          AutoSize = False
          BarType = bcCodeEAN13
          CalcCheckSum = True
          DataField = 'CodigoProducto'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.110083398058252000
          ColorBar = clBlack
          BarcodeText.TextSettings.BarTextPos = btpBottom
          BarcodeText.SupSettings.BarTextPos = btpTop
        end
        object frxDBDataset2Descripcion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.255875000000000000
          Top = 64.252010000000000000
          Width = 143.622140000000000000
          Height = 52.913420000000000000
          DataField = 'Descripcion'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset3Precio: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'Precio'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset3."Precio"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'Servicio=Servicio')
    DataSet = Tb_servicioPrint
    BCDToCurrency = False
    DataSetOptions = []
    Left = 664
    Top = 56
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_enlace=id_enlace'
      'Habilitado=Habilitado'
      'Servicio=Servicio'
      'Cod_Descrip=Cod_Descrip'
      'CodigoProducto=CodigoProducto'
      'Producto=Producto'
      'Descripcion=Descripcion')
    DataSet = TbdescripPrint
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 128
  end
  object DStbDetallesGastosC: TDataSource
    DataSet = tbDetallesGastosC
    Left = 562
    Top = 490
  end
  object tbTiposGastos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbTiposGastos'
    Left = 448
    Top = 408
    object tbTiposGastosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbTiposGastosTiposGastos: TStringField
      FieldName = 'TiposGastos'
      Size = 30
    end
  end
  object DSTiposGastos: TDataSource
    DataSet = tbTiposGastos
    Left = 554
    Top = 414
  end
  object tbDetallesGastosC: TFDTable
    Active = True
    AfterPost = tbDetallesGastosCAfterPost
    MasterSource = DSTiposGastos
    MasterFields = 'ID'
    DetailFields = 'enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbDetallesGastosC'
    Left = 448
    Top = 488
    object tbDetallesGastosCenlace: TIntegerField
      FieldName = 'enlace'
    end
    object tbDetallesGastosCDetallesGastos: TWideStringField
      FieldName = 'DetallesGastos'
      Size = 50
    end
    object tbDetallesGastosCCosto: TCurrencyField
      FieldName = 'Costo'
    end
    object tbDetallesGastosCCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbDetallesGastosCGasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object tbDetallesGastosC_Lookup: TFDTable
    Active = True
    MasterSource = DSTiposGastos2
    MasterFields = 'ID'
    DetailFields = 'enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbDetallesGastosC'
    Left = 80
    Top = 480
    object tbDetallesGastosC_Lookupenlace: TIntegerField
      FieldName = 'enlace'
    end
    object tbDetallesGastosC_LookupDetallesGastos: TWideStringField
      FieldName = 'DetallesGastos'
      Size = 50
    end
    object tbDetallesGastosC_LookupCosto: TCurrencyField
      FieldName = 'Costo'
    end
    object tbDetallesGastosC_LookupCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbDetallesGastosC_LookupGasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object DSDetallesGastosC_Lookup: TDataSource
    DataSet = tbDetallesGastosC_Lookup
    Left = 250
    Top = 482
  end
  object tbDetallesGastosC_Lookup2: TFDTable
    Active = True
    MasterSource = DSDetallesGastosC_Lookup
    MasterFields = 'DetallesGastos'
    DetailFields = 'DetallesGastos'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbDetallesGastosC'
    Left = 88
    Top = 560
    object tbDetallesGastosC_Lookup2enlace: TIntegerField
      FieldName = 'enlace'
    end
    object tbDetallesGastosC_Lookup2DetallesGastos: TWideStringField
      FieldName = 'DetallesGastos'
      Size = 50
    end
    object tbDetallesGastosC_Lookup2Costo: TCurrencyField
      FieldName = 'Costo'
    end
    object tbDetallesGastosC_Lookup2Cantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbDetallesGastosC_Lookup2Gasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object DSDetallesGastosC_Lookup2: TDataSource
    DataSet = tbDetallesGastosC_Lookup2
    Left = 250
    Top = 562
  end
  object tbTiposGastos2: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbTiposGastos'
    Left = 72
    Top = 408
    object tbTiposGastos2ID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbTiposGastos2TiposGastos: TStringField
      FieldName = 'TiposGastos'
      Size = 30
    end
  end
  object DSTiposGastos2: TDataSource
    DataSet = tbTiposGastos2
    Left = 242
    Top = 406
  end
  object DSClasif_Servicio: TDataSource
    DataSet = Tb_servicio
    Left = 226
    Top = 34
  end
  object DSClasif_Descrip: TDataSource
    DataSet = Tbdescrip
    Left = 226
    Top = 94
  end
  object DSClasif_Precios: TDataSource
    DataSet = tb_Precios
    Left = 226
    Top = 154
  end
  object DSCostos: TDataSource
    DataSet = tbCosto
    Left = 226
    Top = 214
  end
  object DSOfertas: TDataSource
    DataSet = tbOfertas
    Left = 226
    Top = 274
  end
  object Tbdescrip: TFDQuery
    Active = True
    AfterPost = TbdescripAfterPost
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Servicio
    MasterFields = 'id'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM tbServiceDescripC')
    Left = 85
    Top = 93
    object Tbdescripid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object Tbdescripfrequently_use: TBooleanField
      FieldName = 'frequently_use'
    end
    object Tbdescripusedate: TSQLTimeStampField
      FieldName = 'usedate'
    end
    object TbdescripDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object TbdescripHabilitado: TBooleanField
      FieldName = 'Habilitado'
      Required = True
    end
    object TbdescripCod_Descrip: TIntegerField
      FieldName = 'Cod_Descrip'
      Required = True
    end
    object TbdescripCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Size = 25
    end
    object Tbdescripcolor: TStringField
      FieldName = 'color'
      Size = 30
    end
    object TbdescripServicio: TWideStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object TbdescripProducto: TWideStringField
      FieldName = 'Producto'
      ReadOnly = True
      Required = True
      Size = 101
    end
  end
  object tb_Precios: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM            dbo.tbPrecios')
    Left = 85
    Top = 163
    ParamData = <
      item
        Name = 'Cod_Descrip'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tb_PreciosID_codigo: TFDAutoIncField
      FieldName = 'ID_codigo'
      Origin = 'ID_codigo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_Preciosid_enlace: TLargeintField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object tb_PreciosPrecio: TCurrencyField
      FieldName = 'Precio'
      Origin = 'Precio'
    end
    object tb_PreciosCantidad: TSmallintField
      FieldName = 'Cantidad'
      Origin = 'Cantidad'
    end
    object tb_PreciosDetalles: TWideStringField
      FieldName = 'Detalles'
      Origin = 'Detalles'
      Size = 75
    end
    object tb_PreciosReglaCarrito: TLargeintField
      FieldName = 'ReglaCarrito'
      Origin = 'ReglaCarrito'
    end
    object tb_PreciosPrecioRegla: TCurrencyField
      FieldName = 'PrecioRegla'
      Origin = 'PrecioRegla'
    end
  end
  object tbCosto: TFDTable
    Active = True
    AfterPost = tbCostoAfterPost
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '[tbServiceCostos C]'
    Left = 88
    Top = 216
    object tbCostoid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbCostoTipoGasto: TWideStringField
      FieldName = 'TipoGasto'
      FixedChar = True
      Size = 25
    end
    object tbCostoDetalles: TWideStringField
      FieldName = 'Detalles'
      FixedChar = True
      Size = 50
    end
    object tbCostoCosto: TCurrencyField
      FieldName = 'Costo'
    end
    object tbCostoCantidad: TCurrencyField
      FieldName = 'Cantidad'
    end
    object tbCostoGasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object tbOfertas: TFDTable
    Active = True
    MasterSource = DSClasif_Precios
    MasterFields = 'ID_codigo'
    DetailFields = 'id'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '[tb_Ofertas Consulta]'
    Left = 88
    Top = 288
    object tbOfertasid: TIntegerField
      FieldName = 'id'
    end
    object tbOfertasOfertas: TWideStringField
      FieldName = 'Ofertas'
      Size = 50
    end
    object tbOfertasCantidadHojas: TIntegerField
      FieldName = 'Cantidad Hojas'
    end
    object tbOfertasCantidad_Tarjetas: TIntegerField
      FieldName = 'Cantidad_Tarjetas'
    end
    object tbOfertasCantidadOfertada: TIntegerField
      FieldName = 'Cantidad Ofertada'
      ReadOnly = True
    end
  end
  object Tb_servicio: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tb_ServicioC')
    Left = 85
    Top = 39
    object Tb_servicioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object Tb_servicioServicio: TWideStringField
      FieldName = 'Servicio'
      Origin = 'Servicio'
      Size = 50
    end
    object Tb_servicioHabilitado: TBooleanField
      FieldName = 'Habilitado'
      Origin = 'Habilitado'
    end
    object Tb_serviciocolor: TStringField
      FieldName = 'color'
      Origin = 'color'
      Size = 30
    end
    object Tb_servicioicon: TBlobField
      FieldName = 'icon'
      Origin = 'icon'
    end
  end
  object tbCodigoEAN: TFDTable
    Active = True
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbCodigoEanC'
    Left = 448
    Top = 344
    object tbCodigoEANCodigoPais: TWideStringField
      FieldName = 'CodigoPais'
      Origin = 'CodigoPais'
      FixedChar = True
      Size = 3
    end
    object tbCodigoEANCodigoEmpresa: TWideStringField
      FieldName = 'CodigoEmpresa'
      Origin = 'CodigoEmpresa'
      FixedChar = True
      Size = 4
    end
    object tbCodigoEANCodigo: TWideStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
  end
  object DSCodigoEAN: TDataSource
    DataSet = tbCodigoEAN
    Left = 722
    Top = 242
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_codigo=ID_codigo'
      'id_enlace=id_enlace'
      'Detalles=Detalles'
      'Precio=Precio'
      'Cantidad=Cantidad')
    DataSet = tb_PreciosPrint
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 232
  end
  object tbInventario: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'tbInventario'
    Left = 448
    Top = 592
    object tbInventarioID: TFDAutoIncField
      FieldName = 'ID'
    end
    object tbInventarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object tbInventarioINSUMO: TStringField
      FieldName = 'INSUMO'
      Size = 50
    end
    object tbInventarioEntrada: TFMTBCDField
      FieldName = 'Entrada'
      Precision = 18
      Size = 0
    end
    object tbInventarioFechaEntrada: TDateField
      FieldName = 'Fecha Entrada'
    end
    object tbInventarioConsumo: TFMTBCDField
      FieldName = 'Consumo'
      Precision = 18
      Size = 0
    end
    object tbInventarioFechaConsumo: TDateField
      FieldName = 'Fecha Consumo'
    end
    object tbInventarioExistenciaFinal: TFMTBCDField
      FieldName = 'Existencia Final'
      Precision = 18
      Size = 0
    end
  end
  object DSInventario: TDataSource
    DataSet = tbInventario
    Left = 554
    Top = 598
  end
  object DS_servicioPrint: TDataSource
    DataSet = Tb_servicioPrint
    Left = 578
    Top = 58
  end
  object DSdescripPrint: TDataSource
    DataSet = TbdescripPrint
    Left = 586
    Top = 118
  end
  object DS_PreciosPrint: TDataSource
    DataSet = tb_PreciosPrint
    Left = 586
    Top = 170
  end
  object Tb_servicioPrint: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT * FROM tb_ServicioC')
    Left = 437
    Top = 79
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Servicio'
      Origin = 'Servicio'
      Size = 50
    end
  end
  object TbdescripPrint: TFDQuery
    Active = True
    MasterSource = DS_servicioPrint
    MasterFields = 'id'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT        id_enlace, Habilitado, Servicio, Cod_Descrip, Codi' +
        'goProducto, Producto, Descripcion'
      'FROM            dbo.tbServiceDescripC'
      'WHERE        (Habilitado = 1)')
    Left = 437
    Top = 133
    ParamData = <
      item
        Name = 'id'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object TbdescripPrintid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object TbdescripPrintHabilitado: TBooleanField
      FieldName = 'Habilitado'
      Required = True
    end
    object TbdescripPrintServicio: TWideStringField
      FieldName = 'Servicio'
      ReadOnly = True
      Size = 50
    end
    object TbdescripPrintCod_Descrip: TIntegerField
      FieldName = 'Cod_Descrip'
      Required = True
    end
    object TbdescripPrintCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Size = 25
    end
    object TbdescripPrintProducto: TWideStringField
      FieldName = 'Producto'
      ReadOnly = True
      Required = True
      Size = 101
    end
    object TbdescripPrintDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object tb_PreciosPrint: TFDQuery
    Active = True
    MasterSource = DSdescripPrint
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT        *'
      'FROM            dbo.tbPrecios')
    Left = 437
    Top = 219
    ParamData = <
      item
        Name = 'Cod_Descrip'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object IntegerField3: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_codigo'
      ReadOnly = True
      Required = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'id_enlace'
      KeyFields = 'ID_codigo'
    end
    object WideStringField6: TWideStringField
      FieldName = 'Detalles'
      Size = 75
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Precio'
      Precision = 10
    end
    object SmallintField1: TSmallintField
      FieldName = 'Cantidad'
    end
  end
  object tbReglas: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Precios
    MasterFields = 'ID_codigo'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT       *'
      'FROM           tbReglasDescuentos')
    Left = 109
    Top = 347
    ParamData = <
      item
        Name = 'ID_codigo'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 77
      end>
    object tbReglasID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbReglasid_enlace: TLargeintField
      FieldName = 'id_enlace'
    end
    object tbReglasprecio: TCurrencyField
      FieldName = 'precio'
    end
    object tbReglasdescuento: TCurrencyField
      FieldName = 'descuento'
    end
    object tbReglascantI: TCurrencyField
      FieldName = 'cantI'
    end
    object tbReglasCantF: TCurrencyField
      FieldName = 'CantF'
    end
  end
  object DSReglas: TDataSource
    DataSet = tbReglas
    Left = 250
    Top = 354
  end
  object Tb_servicioScript: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'UPDATE '
      '  dbo.tbServiceDescrip'
      'SET '
      '  color = :color'
      ' '
      'WHERE dbo.tbServiceDescrip.id_enlace = :ID')
    Left = 237
    Top = 663
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInputOutput
        Value = Null
      end
      item
        Name = 'color'
        DataType = ftString
        ParamType = ptInputOutput
        Value = ''
      end>
  end
  object Insert: TFDQuery
    Connection = dataconex.ConexDB
    Left = 1024
    Top = 376
  end
  object q_InsertTypeProducto: TFDQuery
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'INSERT INTO tbType_Gasto'
      '  (lang, id_Usable)'
      'VALUES'
      '  (:lang, :id_Usable)')
    Left = 808
    Top = 632
    ParamData = <
      item
        Name = 'lang'
        DataType = ftString
        Value = Null
      end
      item
        Name = 'id_Usable'
        Value = Null
      end>
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'lang'
      Size = 100
    end
  end
  object tb_typeMP: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DStype_gasto
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select *'
      'from Q_typeMP')
    Left = 904
    Top = 472
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
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
    object tb_typeMPprice_unit: TCurrencyField
      FieldName = 'price_unit'
      ReadOnly = True
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
    Left = 968
    Top = 624
    ParamData = <
      item
        Name = 'id_usable'
        DataType = ftString
        ParamType = ptInput
        Value = '99ZB7OPV6D'
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
  object tbtype_gasto: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT'
      #9'*'
      'FROM'
      #9'tbType_Gasto'
      '')
    Left = 784
    Top = 344
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
    object tbtype_gastoGastosFijos: TBooleanField
      FieldName = 'GastosFijos'
    end
    object tbtype_gastoid_Usable: TStringField
      FieldName = 'id_Usable'
      FixedChar = True
      Size = 10
    end
  end
  object UniQuery1: TFDQuery
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'INSERT INTO tbGastosFijos'
      '  (id_enlace, ImporteTotal, frecuency, date_time)'
      'VALUES'
      '  (:id_enlace, :ImporteTotal, :frecuency, :date_time)')
    Left = 929
    Top = 680
    ParamData = <
      item
        Name = 'id_enlace'
        DataType = ftInteger
      end
      item
        Name = 'ImporteTotal'
        DataType = ftCurrency
      end
      item
        Name = 'frecuency'
        DataType = ftString
      end
      item
        Name = 'date_time'
      end>
  end
  object DS_typeMP: TDataSource
    DataSet = tb_typeMP
    Left = 1008
    Top = 472
  end
  object DSFormat: TDataSource
    DataSet = tbFormat
    Left = 1040
    Top = 624
  end
  object DSGastosFijos: TDataSource
    DataSet = tbGastosFijos
    Left = 824
    Top = 520
  end
  object DStype_gasto: TDataSource
    DataSet = tbtype_gasto
    Left = 880
    Top = 344
  end
  object tbGastosFijos: TFDQuery
    Active = True
    MasterFields = 'ID'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'select *'
      'from tbGastosFijos')
    Left = 720
    Top = 432
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object tbGastosFijosid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object tbGastosFijosImporteTotal: TCurrencyField
      FieldName = 'ImporteTotal'
    end
    object tbGastosFijosfrecuency: TMemoField
      FieldName = 'frecuency'
      BlobType = ftMemo
    end
    object tbGastosFijosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object tbGastosFijosactive: TStringField
      FieldName = 'active'
      Size = 255
    end
    object tbGastosFijosdefaultAmount: TLargeintField
      FieldName = 'defaultAmount'
    end
  end
end
