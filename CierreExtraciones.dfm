object F_CierreExtraciones: TF_CierreExtraciones
  Left = 788
  Top = 406
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entradas de Efectivo'
  ClientHeight = 842
  ClientWidth = 442
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object LayoutCUP: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 442
    Height = 842
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object dxDBDateTimeWheelPicker1: TdxDBDateTimeWheelPicker
      Left = 10
      Top = 10
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentColor = False
      Properties.ImmediatePost = True
      Properties.Use24HourFormat = False
      Properties.ValidateOnEnter = True
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
      Properties.LineCount = 3
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 119
      Width = 422
    end
    object cxButton2: TcxButton
      Left = 9990
      Top = 9976
      Width = 617
      Height = 25
      Caption = 'Cancelar'
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      TabOrder = 31
      TabStop = False
      Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
    object btEntrar: TcxButton
      Left = 10
      Top = 710
      Width = 422
      Height = 25
      Caption = 'Guardar'
      LookAndFeel.NativeStyle = False
      TabOrder = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btEntrarClick
    end
    object cxButton1: TcxButton
      Left = 247
      Top = 679
      Width = 185
      Height = 25
      Caption = 'Nuevo Conteo'
      LookAndFeel.NativeStyle = False
      TabOrder = 28
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 679
      Width = 108
      Height = 25
      Action = DatasetPrior1
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F637373223E2E426C75
        657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C706F6C7967
        6F6E20636C6173733D22426C75652220706F696E74733D2232322C362031302C
        31362032322C323620222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 26
      TabStop = False
    end
    object cxButton4: TcxButton
      Left = 124
      Top = 679
      Width = 117
      Height = 25
      Action = DatasetNext1
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F637373223E2E426C75
        657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C672069643D
        22D0A1D0BBD0BED0B95F32223E0D0A09093C706F6C79676F6E20636C6173733D
        22426C75652220706F696E74733D2231302C362032322C31362031302C323620
        2623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 27
      TabStop = False
    end
    object edTotal: TcxDBCurrencyEdit
      Left = 278
      Top = 647
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Total'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Height = 26
      Width = 154
    end
    object cxButton5: TcxButton
      Left = 9990
      Top = 9976
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 32
      TabStop = False
      Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
    object cxButton6: TcxButton
      Left = 9990
      Top = 9976
      Width = 78
      Height = 39
      Caption = 'Entrar'
      TabOrder = 33
      Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btEntrarClick
    end
    object ed1: TcxDBCurrencyEdit
      Left = 211
      Top = 487
      AutoSize = False
      DataBinding.DataField = '1,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 19
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed3: TcxDBCurrencyEdit
      Left = 211
      Top = 455
      AutoSize = False
      DataBinding.DataField = '3,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 17
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed5: TcxDBCurrencyEdit
      Left = 211
      Top = 423
      AutoSize = False
      DataBinding.DataField = '5,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 15
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed10: TcxDBCurrencyEdit
      Left = 211
      Top = 391
      AutoSize = False
      DataBinding.DataField = '10,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 13
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed20: TcxDBCurrencyEdit
      Left = 211
      Top = 359
      AutoSize = False
      DataBinding.DataField = '20,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 11
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed50: TcxDBCurrencyEdit
      Left = 211
      Top = 327
      AutoSize = False
      DataBinding.DataField = '50,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 9
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed12: TcxDBCurrencyEdit
      Left = 211
      Top = 295
      AutoSize = False
      DataBinding.DataField = '100,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 7
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed200: TcxDBCurrencyEdit
      Left = 211
      Top = 263
      AutoSize = False
      DataBinding.DataField = '200,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 5
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed500: TcxDBCurrencyEdit
      Left = 211
      Top = 231
      AutoSize = False
      DataBinding.DataField = '500,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 3
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object ed1000: TcxDBCurrencyEdit
      Left = 211
      Top = 199
      AutoSize = False
      DataBinding.DataField = '1000,00'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Style.Color = clWhite
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 71
    end
    object cxDBCurrencyEdit12: TcxDBCurrencyEdit
      Left = 311
      Top = 487
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_1'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit13: TcxDBCurrencyEdit
      Left = 311
      Top = 455
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_3'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit14: TcxDBCurrencyEdit
      Left = 311
      Top = 423
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_5'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit15: TcxDBCurrencyEdit
      Left = 311
      Top = 391
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_10'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit21: TcxDBCurrencyEdit
      Left = 311
      Top = 359
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_20'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit22: TcxDBCurrencyEdit
      Left = 311
      Top = 327
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_50'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit25: TcxDBCurrencyEdit
      Left = 311
      Top = 295
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_100'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit26: TcxDBCurrencyEdit
      Left = 311
      Top = 263
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_200'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit27: TcxDBCurrencyEdit
      Left = 311
      Top = 231
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_500'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 26
      Width = 121
    end
    object cxDBCurrencyEdit28: TcxDBCurrencyEdit
      Left = 311
      Top = 199
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Subtotal_1000'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 26
      Width = 121
    end
    object edBancoCUP: TcxDBCurrencyEdit
      Left = 311
      Top = 519
      AutoSize = False
      DataBinding.DataField = 'CUP_Banco'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 21
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 121
    end
    object edBANCOMLC: TcxDBCurrencyEdit
      Left = 311
      Top = 551
      AutoSize = False
      DataBinding.DataField = 'MLC_Banco'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 22
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 121
    end
    object edEUR: TcxDBCurrencyEdit
      Left = 311
      Top = 615
      AutoSize = False
      DataBinding.DataField = 'EUR'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 24
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 121
    end
    object edUSD: TcxDBCurrencyEdit
      Left = 311
      Top = 583
      AutoSize = False
      DataBinding.DataField = 'USD'
      DataBinding.DataSource = DMCierre.DSCierreExtraciones
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'LcdD'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 23
      OnKeyDown = ed1000KeyDown
      Height = 26
      Width = 121
    end
    object atContabilizar: TcxButton
      Left = 10
      Top = 741
      Width = 422
      Height = 25
      Caption = 'Contabilizar'
      LookAndFeel.NativeStyle = False
      TabOrder = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = atContabilizarClick
    end
    object LayoutCUPGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      Hidden = True
      ItemIndex = 14
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem64: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem65: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      AlignVert = avClient
      Control = ed1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem66: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahRight
      AlignVert = avClient
      Control = ed3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem67: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahRight
      AlignVert = avClient
      Control = ed5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem68: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      Control = ed10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem69: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      Control = ed20
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem70: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avClient
      Control = ed50
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object Ed100: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup16
      AlignVert = avClient
      Control = ed12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object e200: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup14
      AlignVert = avClient
      Control = ed200
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object e500: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      AlignmentConstraint = dxLayoutAlignmentConstraint1
      Control = ed500
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem71: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit12
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem72: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit13
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem73: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit14
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem74: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit15
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem75: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit21
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem76: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object S100: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup16
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit25
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object S200: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup14
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit26
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object S500: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      AlignmentConstraint = dxLayoutAlignmentConstraint1
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit27
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object L200: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]200.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object L500: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignmentConstraint = dxLayoutAlignmentConstraint1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]500.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem12: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]3.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem13: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]10.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem14: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup12
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]50.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem15: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]5.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object L100: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup16
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]100.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem18: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]20.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem20: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]1.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutItem77: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'edSubBilletes'
      CaptionOptions.Visible = False
      Control = edTotal
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup15
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]TOTAL CUP [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]BILLETES [/B][/SIZE][/FONT]'
      Index = 0
    end
    object dxLayoutLabeledItem6: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]SUBTOTAL [/B][/SIZE][/FONT]'
      Index = 2
    end
    object dxLayoutLabeledItem7: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]CANTIDAD [/B][/SIZE][/FONT]'
      Index = 1
    end
    object e1000: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = ed1000
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object L1000: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]$ 1000.00 X [/B][/SIZE][/FONT]'
      Index = 0
    end
    object S1000: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]= [/B][/SIZE][/FONT]'
      Control = cxDBCurrencyEdit28
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 10
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 11
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 12
    end
    object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahRight
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahRight
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahRight
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 9
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahRight
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahCenter
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]DESGLOSE CUP [/B][/SIZE][/FONT]'
      Index = 1
    end
    object dxLayoutItem78: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup19
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]BANCO CUP [/B][/SIZE][/FONT]'
      Control = edBancoCUP
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahRight
      AlignVert = avTop
      Index = 13
    end
    object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup11
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = LayoutCUPGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btEntrar'
      CaptionOptions.Visible = False
      Control = btEntrar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 15
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup18
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 108
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
      Parent = LayoutCUPGroup_Root
      LayoutDirection = ldHorizontal
      Index = 14
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup18
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup19
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]BANCO MLC [/B][/SIZE][/FONT]'
      Control = edBANCOMLC
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup19
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]EUR EFECTIVO [/B][/SIZE][/FONT]'
      Control = edEUR
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup19
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = '[FONT=Arial][B][SIZE=16]USD EFECTIVO [/B][/SIZE][/FONT]'
      Control = edUSD
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = LayoutCUPGroup_Root
      CaptionOptions.Visible = False
      Control = atContabilizar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 16
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = LayoutCUPGroup_Root
      Control = dxDBDateTimeWheelPicker1
      ControlOptions.OriginalHeight = 119
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAlignmentConstraint1: TdxLayoutAlignmentConstraint
    end
  end
  object cxLabel13: TcxLabel
    Left = 0
    Top = 1144
    Caption = 'Comercio CUP'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 0
    Top = 1188
    Caption = '$1000.00'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Transparent = True
  end
  object cxLabel12: TcxLabel
    Left = 0
    Top = 1210
    Caption = 'SubTotal'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.LookAndFeel.NativeStyle = False
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    Transparent = True
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 12
    Top = 429
  end
  object Timer1: TTimer
    Top = 505
  end
  object ActionList1: TActionList
    Left = 56
    Top = 549
    object DatasetPrior1: TDataSetPrior
      Category = 'Dataset'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = DMCierre.DSCierreCUP
    end
    object DatasetNext1: TDataSetNext
      Category = 'Dataset'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = DMCierre.DSCierreCUP
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      LookAndFeel.SkinName = 'Black'
      PixelsPerInch = 96
    end
  end
end
