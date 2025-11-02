object DM_Clasif_U: TDM_Clasif_U
  Height = 719
  Width = 655
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
    Left = 226
    Top = 214
  end
  object DSOfertas: TDataSource
    DataSet = tbOfertas
    Left = 226
    Top = 274
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
    object Tb_serviciocolor: TStringField
      FieldName = 'color'
      Size = 30
    end
    object Tb_servicioHabilitado: TBooleanField
      FieldName = 'Habilitado'
    end
    object Tb_servicioicon: TBlobField
      FieldName = 'icon'
    end
  end
  object tb_Precios: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT        *'
      'FROM            dbo.tbPrecios')
    Left = 85
    Top = 155
    object tb_PreciosID_codigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_codigo'
      ReadOnly = True
      Required = True
    end
    object tb_Preciosid_enlace: TLargeintField
      FieldName = 'id_enlace'
      KeyFields = 'ID_codigo'
    end
    object tb_PreciosDetalles: TWideStringField
      FieldName = 'Detalles'
      Size = 75
    end
    object tb_PreciosPrecio: TCurrencyField
      FieldName = 'Precio'
      Precision = 10
    end
    object tb_PreciosCantidad: TSmallintField
      FieldName = 'Cantidad'
    end
    object tb_PreciosReglaCarrito: TLargeintField
      FieldName = 'ReglaCarrito'
    end
    object tb_PreciosPrecioRegla: TCurrencyField
      FieldName = 'PrecioRegla'
    end
  end
  object tbOfertas: TFDTable
    Active = True
    IndexFieldNames = 'id'
    MasterSource = DMCaja.DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '[tb_Ofertas Consulta]'
    Left = 88
    Top = 280
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
    Left = 496
    Top = 112
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
    ReportOptions.LastChange = 43564.689078449100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 410
    Top = 113
    Datasets = <>
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
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
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
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
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
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
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."Servicio"'
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'Servicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            '[frxDBDataset1."Servicio"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 464.882190000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo6: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        Columns = 3
        ColumnWidth = 245.669291338583000000
        RowCount = 0
        object frxDBDataset2Descripcion: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Descripcion'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."Descripcion"]')
        end
      end
    end
  end
  object costosGeneralesSUM: TFDQuery
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT        id_enlace, TipoGasto, SUM(Gasto) AS Gasto'
      'FROM            dbo.[tbServiceCostos C]'
      'GROUP BY id_enlace, TipoGasto'
      'HAVING        (TipoGasto = N'#39'Generales'#39')')
    Left = 216
    Top = 424
    ParamData = <
      item
        Name = 'Cod_Descrip'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object costosGeneralesSUMid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object costosGeneralesSUMTipoGasto: TWideStringField
      FieldName = 'TipoGasto'
      FixedChar = True
      Size = 25
    end
    object costosGeneralesSUMGasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object costosInsumosSUM: TFDQuery
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT        id_enlace, TipoGasto, SUM(Gasto) AS Gasto'
      'FROM            dbo.[tbServiceCostos C]'
      'GROUP BY id_enlace, TipoGasto'
      'HAVING        (TipoGasto = N'#39'Insumos'#39')')
    Left = 216
    Top = 504
    ParamData = <
      item
        Name = 'Cod_Descrip'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object costosInsumosSUMid_enlace: TIntegerField
      FieldName = 'id_enlace'
    end
    object costosInsumosSUMTipoGasto: TWideStringField
      FieldName = 'TipoGasto'
      FixedChar = True
      Size = 25
    end
    object costosInsumosSUMGasto: TCurrencyField
      FieldName = 'Gasto'
      ReadOnly = True
    end
  end
  object DScostosGeneralesSUM: TDataSource
    DataSet = costosGeneralesSUM
    Left = 370
    Top = 446
  end
  object DScostosInsumosSUM: TDataSource
    DataSet = costosInsumosSUM
    Left = 370
    Top = 514
  end
  object DSReglas: TDataSource
    DataSet = tbReglas
    Left = 194
    Top = 346
  end
  object tbReglas: TFDQuery
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Precios
    MasterFields = 'ID_codigo'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'#9'*FROM'#9'dbo.tbReglasDescuentos')
    Left = 85
    Top = 347
    ParamData = <
      item
        Name = 'ID_codigo'
        DataType = ftInteger
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
    object tbReglascantI: TCurrencyField
      FieldName = 'cantI'
    end
    object tbReglasCantF: TCurrencyField
      FieldName = 'CantF'
    end
    object tbReglasprecio: TCurrencyField
      FieldName = 'precio'
    end
    object tbReglasdescuento: TCurrencyField
      FieldName = 'descuento'
    end
  end
  object Tbdescrip: TFDQuery
    Active = True
    Connection = dataconex.ConexDB
    SQL.Strings = (
      'SELECT        *'
      'FROM            dbo.tbServiceDescripC'
      'WHERE        (Habilitado = 1)')
    Left = 85
    Top = 93
    object Tbdescripid_enlace: TIntegerField
      FieldName = 'id_enlace'
      Origin = 'id_enlace'
    end
    object Tbdescripfrequently_use: TBooleanField
      FieldName = 'frequently_use'
      Origin = 'frequently_use'
    end
    object Tbdescripusedate: TSQLTimeStampField
      FieldName = 'usedate'
      Origin = 'usedate'
    end
    object TbdescripDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 50
    end
    object TbdescripHabilitado: TBooleanField
      FieldName = 'Habilitado'
      Origin = 'Habilitado'
      Required = True
    end
    object TbdescripCod_Descrip: TIntegerField
      FieldName = 'Cod_Descrip'
      Origin = 'Cod_Descrip'
      Required = True
    end
    object TbdescripCodigoProducto: TWideStringField
      FieldName = 'CodigoProducto'
      Origin = 'CodigoProducto'
      Size = 25
    end
    object Tbdescripcolor: TStringField
      FieldName = 'color'
      Origin = 'color'
      Size = 30
    end
    object TbdescripServicio: TWideStringField
      FieldName = 'Servicio'
      Origin = 'Servicio'
      Size = 50
    end
    object TbdescripProducto: TWideStringField
      FieldName = 'Producto'
      Origin = 'Producto'
      ReadOnly = True
      Required = True
      Size = 101
    end
  end
  object tbCosto: TFDTable
    Active = True
    IndexFieldNames = 'id_enlace'
    MasterSource = DSClasif_Descrip
    MasterFields = 'Cod_Descrip'
    DetailFields = 'id_enlace'
    Connection = dataconex.ConexDB
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = '[tbServiceCostos C]'
    Left = 88
    Top = 224
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
end
