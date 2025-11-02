object Control_Agentes: TControl_Agentes
  Left = 628
  Top = 446
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cuentas de Agentes de Promoci'#243'n'
  ClientHeight = 437
  ClientWidth = 1017
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 237
    Width = 1017
    Height = 200
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DM_promo.DSCuentas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Cuentas'
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid2DBTableView1deCuentas: TcxGridDBColumn
        DataBinding.FieldName = '# de Cuentas'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.EchoMode = eemPassword
        Width = 70
      end
      object cxGrid2DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 171
      end
      object cxGrid2DBTableView1Hora: TcxGridDBColumn
        DataBinding.FieldName = 'Hora'
        PropertiesClassName = 'TcxTimeEditProperties'
        Width = 48
      end
      object cxGrid2DBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
        Width = 66
      end
      object cxGrid2DBTableView1Apellidos: TcxGridDBColumn
        DataBinding.FieldName = 'Apellidos'
        Width = 91
      end
      object cxGrid2DBTableView1Direccion: TcxGridDBColumn
        DataBinding.FieldName = 'Direccion'
        Width = 257
      end
      object cxGrid2DBTableView1TelefonoFijo: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono Fijo'
        Width = 129
      end
      object cxGrid2DBTableView1TelefonoCelular: TcxGridDBColumn
        DataBinding.FieldName = 'Telefono Celular'
        Width = 79
      end
      object cxGrid2DBTableView1PIN: TcxGridDBColumn
        DataBinding.FieldName = 'PIN'
        Width = 104
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Caption = 'Datos de Cuenta'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Transparent = True
    Height = 233
    Width = 1017
    object Ocultar: TcxCheckBox
      Left = 368
      Top = 14
      Caption = 'No. de Cuenta'
      Properties.ImmediatePost = True
      State = cbsChecked
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Transparent = True
    end
    object edFecha: TcxDBDateEdit
      Left = 8
      Top = 32
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = DM_promo.DSCuentas
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taBottomJustify
      Properties.ClearKey = 16449
      Properties.Kind = ckDateTime
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 249
    end
    object cxLabel4: TcxLabel
      Left = 8
      Top = 16
      Caption = 'Fecha'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edTime: TcxDBTimeEdit
      Left = 264
      Top = 32
      DataBinding.DataField = 'Hora'
      DataBinding.DataSource = DM_promo.DSCuentas
      Properties.Use24HourFormat = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 3
      Width = 97
    end
    object cxLabel5: TcxLabel
      Left = 264
      Top = 16
      Caption = 'Hora'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object gnCuenta: TcxDBMaskEdit
      Left = 368
      Top = 32
      DataBinding.DataField = '# de Cuentas'
      DataBinding.DataSource = DM_promo.DSCuentas
      Enabled = False
      Properties.Alignment.Horz = taCenter
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clWindowText
      StyleDisabled.BorderColor = clHighlight
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = clHighlight
      StyleDisabled.TextStyle = [fsBold]
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 113
    end
    object cxLabel3: TcxLabel
      Left = 488
      Top = 16
      Caption = 'Codigo de Acceso'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxGroupBox2: TcxGroupBox
      Left = 8
      Top = 64
      Caption = 'Generales'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
      Height = 113
      Width = 593
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 8
        Top = 32
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = DM_promo.DSCuentas
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Nombre'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 136
        Top = 32
        DataBinding.DataField = 'Apellidos'
        DataBinding.DataSource = DM_promo.DSCuentas
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.NativeStyle = False
        TabOrder = 2
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 136
        Top = 16
        Caption = 'Apellidos'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxDBMemo1: TcxDBMemo
        Left = 8
        Top = 72
        DataBinding.DataField = 'Direccion'
        DataBinding.DataSource = DM_promo.DSCuentas
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        StyleReadOnly.LookAndFeel.NativeStyle = False
        TabOrder = 4
        Height = 33
        Width = 513
      end
      object cxLabel8: TcxLabel
        Left = 8
        Top = 56
        Caption = 'Direcci'#243'n'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        Transparent = True
      end
      object cxGroupBox3: TcxGroupBox
        Left = 272
        Top = 8
        Caption = 'Telefonos'
        ParentBackground = False
        ParentColor = False
        Style.Color = clSkyBlue
        TabOrder = 6
        Transparent = True
        Height = 57
        Width = 249
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 104
          Top = 32
          DataBinding.DataField = 'Telefono Celular'
          DataBinding.DataSource = DM_promo.DSCuentas
          Properties.EditMask = '(+53)50-000000'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          StyleReadOnly.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 105
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 16
          Caption = 'Fijo'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'Telefono Fijo'
          DataBinding.DataSource = DM_promo.DSCuentas
          Properties.EditMask = '(+53)00-00-0000'
          Properties.MaxLength = 0
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          StyleReadOnly.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 89
        end
        object cxLabel6: TcxLabel
          Left = 107
          Top = 16
          Caption = 'Celular'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          Transparent = True
        end
      end
    end
    object cxButton2: TcxButton
      Left = 896
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Guardar'
      LookAndFeel.NativeStyle = False
      TabOrder = 8
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 896
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Agregar'
      LookAndFeel.NativeStyle = False
      TabOrder = 9
      OnClick = cxButton1Click
    end
    object cxDBImage1: TcxDBImage
      Left = 607
      Top = 17
      DataBinding.DataField = 'Identidad'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Height = 129
      Width = 137
    end
    object cxLabel9: TcxLabel
      Left = 640
      Top = 152
      Caption = 'IDENTIDAD'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 784
      Top = 161
      Caption = 'CODIGO QR'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxButton3: TcxButton
      Left = 896
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Guardar QR'
      LookAndFeel.NativeStyle = False
      TabOrder = 13
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 896
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Generar QR'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      TabOrder = 14
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 896
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Gen PIN'
      LookAndFeel.NativeStyle = False
      TabOrder = 15
      OnClick = cxButton5Click
    end
    object codePIN: TcxDBMaskEdit
      Left = 488
      Top = 32
      DataBinding.DataField = 'PIN'
      DataBinding.DataSource = DM_promo.DSCuentas
      Enabled = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clWindowText
      StyleDisabled.BorderColor = clHighlight
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = clHighlight
      StyleDisabled.TextStyle = [fsBold]
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 16
      OnDblClick = cxButton5Click
      Width = 113
    end
    object cxButton6: TcxButton
      Left = 424
      Top = 183
      Width = 153
      Height = 42
      Caption = 'Exportar Identidad'
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000002B0000004D0000004D0000004D0000
        004D0000004D0000004D0000004D0000004D0000004D0000004D0000004D0000
        004D0000004D0000004D0000004D0000004D0000004D0000004D0000004D0000
        004D0000004D0000004D0000004D0000004D0000002B00000000000000000000
        000000000000000000005959598F6A6A6AFF7B7B7BFF7D7D7DFF7E7E7EFF7F7F
        7FFF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8181
        81FF818181FF828282FF828282FF828282FF828282FF828282FF828282FF8282
        82FF818181FF818181FF6C6C6CFF565656B10000004D00000000000000000000
        000000000000000000005A5A5AFFD6D6D6FFDDDDDDFFDCDCDCFFDBDBDBFFDADA
        DAFFD8D8D8FFD5D5D5FFD2D2D2FFCECECEFFCACACAFFC5C5C5FFC0C0C0FFBEBE
        BEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
        BEFFBEBEBEFFBEBEBEFFB9B9B9FF6F6F6FFF0000004D00000000000000000000
        000000000000000000005D5D5DFFDFDFDFFFDADADAFFD8D8D8FFD7D7D7FFD5D5
        D5FFD4D4D4FFD2D2D2FFD1D1D1FFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FFC8C8C8FFC7C7
        C7FFC6C6C6FFC5C5C5FFBEBEBEFF727272FF0000004D00000000000000000000
        00000000000000000000606060FFE2E2E2FFDDDDDDFFDBDBDBFF8888E8FF1B1B
        FAFF1B1BFAFFADADDDFFD4D4D4FFD2D2D2FFD1D1D1FFCFCFCFFFCDCDCDFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCACACAFFCACACAFFC9C9C9FFC8C8
        C8FFC7C7C7FFC6C6C6FFBEBEBEFF767676FF0000004D00000000000000000000
        00000000000000000000636363FFE4E4E4FFDFDFDFFFDEDEDEFF1C1CFBFFC0C0
        E0FF5252F1FF0E0EFDFFCACADAFFD5D5D5FFD4D4D4FFD2D2D2FFD0D0D0FFCFCF
        CFFFCDCDCDFFCCCCCCFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FFC9C9
        C9FFC8C8C8FFC6C6C6FFBEBEBEFF7A7A7AFF0000004D00000000000000000000
        00000000000000000000666666FFE7E7E7FFE2E2E2FFE0E0E0FF3838F7FF5454
        F3FFCECEDEFF2929F8FF5252F1FFD8D8D8FFD7D7D7FFD5D5D5FFD4D4D4FFD2D2
        D2FFD0D0D0FFCFCFCFFFCDCDCDFFCBCBCBFFCBCBCBFFCACACAFFCACACAFFC8C8
        C8FFC7C7C7FFC6C6C6FFBEBEBEFF7E7E7EFF0000004D00000000000000000000
        00000000000000000000686868FFE9E9E9FFE4E4E4FFE3E3E3FFD4D4E4FF3838
        F7FF2A2AF9FF7C7CECFF0000FFFFC0C0E0FFDADADAFFD8D8D8FFD7D7D7FFD5D5
        D5FFD4D4D4FFD1D1D1FFCFCFCFFFCDCDCDFFBEBECEFF9797D7FFC9C9C9FFC8C8
        C8FFC7C7C7FFC6C6C6FFBEBEBEFF818181FF0000004D00000000000000000000
        000000000000000000006B6B6BFFEBEBEBFFE6E6E6FFE5E5E5FFE4E4E4FFE3E3
        E3FF8D8DEDFF1C1CFBFF0000FFFF4646F5FFB3B3E3FFDBDBDBFFDADADAFFD8D8
        D8FFD6D6D6FFD4D4D4FFD2D2D2FF6868E8FF2727F6FF4040EFFF2626F5FFC8C8
        C8FFC7C7C7FFC5C5C5FFBEBEBEFF858585FF0000004D00000000000000000000
        000000000000000000006E6E6EFFEDEDEDFFE8E8E8FFE7E7E7FFE6E6E6FFE5E5
        E5FFE4E4E4FFE3E3E3FFB7B7E7FF0E0EFDFF1C1CFBFF0000FFFF3737F6FF6D6D
        EDFF9494E4FFBBBBDBFF5050EFFF4F4FEEFFC3C3D3FFC1C1D1FF3333F2FFC9C9
        C9FFC6C6C6FFC5C5C5FFBEBEBEFF888888FF0000004D00000000000000000000
        00000000000000000000707070FFEEEEEEFFEBEBEBFFE9E9E9FFE8E8E8FFE7E7
        E7FFE6E6E6FFE5E5E5FFE4E4E4FF7171F1FF5555F4FFE0E0E0FFA6A6E6FF6E6E
        EEFF3737F6FF0000FFFF0000FFFF0000FFFF0D0DFCFF4141F0FFA6A6D6FFCBCB
        CBFFC8C8C8FFC5C5C5FFBEBEBEFF8C8C8CFF0000004D00000000000000000000
        00000000000000000000737373FFF0F0F0FFECECECFFEBEBEBFFEAEAEAFFE9E9
        E9FFE8E8E8FFE7E7E7FFE6E6E6FFC8C8E8FF0000FFFFD4D4E4FFE0E0E0FFDEDE
        DEFF7C7CECFF5252F1FFD8D8D8FFD6D6D6FFD3D3D3FFD1D1D1FFCFCFCFFFCCCC
        CCFFC9C9C9FFC7C7C7FFC1C1C1FF909090FF0000004D00000000000000000000
        00000000000000000000757575FFF2F2F2FFEEEEEEFFEDEDEDFFECECECFFEBEB
        EBFFEAEAEAFFE9E9E9FFE8E8E8FFE7E7E7FF4848F7FF8080F0FFE2E2E2FFB6B6
        E6FF5454F3FFDCDCDCFFDADADAFFD7D7D7FFD5D5D5FFD2D2D2FFD0D0D0FFCDCD
        CDFFCACACAFFC8C8C8FFC9C9C9FF939393FF0000004D00000000000000000000
        00000000000000000000777777FFF3F3F3FFF0F0F0FFEFEFEFFFEEEEEEFFEDED
        EDFFECECECFFEBEBEBFFEAEAEAFFE8E8E8FF9F9FEFFF2B2BFAFFE3E3E3FF5555
        F4FFDFDFDFFFDDDDDDFFDBDBDBFFD8D8D8FFD6D6D6FFD3D3D3FFD1D1D1FFCECE
        CEFFCBCBCBFFC8C8C8FFCFCFCFFF969696FF0000004D00000000000000000000
        00000000000000000000797979FFF5F5F5FFF2F2F2FFF1F1F1FFF0F0F0FFEFEF
        EFFFEEEEEEFFEDEDEDFFEBEBEBFFEAEAEAFFE8E8E8FF0000FFFF8080F0FFA9A9
        E9FFE0E0E0FFDEDEDEFFDCDCDCFFD9D9D9FFD7D7D7FFD4D4D4FFD1D1D1FFCECE
        CEFFCBCBCBFFC9C9C9FFD4D4D4FF9A9A9AFF0000004D00000000000000000000
        000000000000000000007B7B7BFFF6F6F6FFF3F3F3FFF2F2F2FFF2F2F2FFF1F1
        F1FFF0F0F0FFEEEEEEFFEDEDEDFFEBEBEBFFE9E9E9FF4848F7FF3A3AF9FFE3E3
        E3FFE1E1E1FFDFDFDFFFDCDCDCFFDADADAFFD7D7D7FFD4D4D4FFD2D2D2FFCECE
        CEFFCCCCCCFFC9C9C9FFD7D7D7FF9D9D9DFF0000004D00000000000000000000
        000000000000000000007D7D7DFFF7F7F7FFF5F5F5FFF4F4F4FFF3F3F3FFF2F2
        F2FFF1F1F1FFEFEFEFFFEEEEEEFFECECECFFEAEAEAFF7474F4FF4848F7FFE4E4
        E4FFE2E2E2FFDFDFDFFFDCDCDCFFDADADAFFD7D7D7FFD4D4D4FFD1D1D1FFCECE
        CEFFCBCBCBFFC8C8C8FFDADADAFFA0A0A0FF0000004D000000000000004D0000
        004D0000004D0000004D595959FFADADADFFACACACFFABABABFFAAAAAAFFAAAA
        AAFFA9A9A9FFA8A8A8FFA7A7A7FFA5A5A5FFA4A4A4FF2828AEFF0A0AB1FF9F9F
        9FFF9D9D9DFF9C9C9CFFDCDCDCFFD9D9D9FFD7D7D7FFD4D4D4FFD1D1D1FFCECE
        CEFFCBCBCBFFC8C8C8FFDCDCDCFFA3A3A3FF0000004D0000ECFF0000E7FF0000
        E7FF0000E2FF0000DCFF0000D7FF0000D2FF0000CDFF0000C8FF0000C2FF0000
        BDFF0000B8FF0000B3FF0000ADFF0000A8FF0000A3FF0000A0FF0000A0FF0000
        A0FF0000A0FF9C9C9CFFDCDCDCFFD9D9D9FFD6D6D6FFD3D3D3FFD0D0D0FFCDCD
        CDFFCACACAFFC7C7C7FFDCDCDCFFA6A6A6FF0000004D0075FFFF0000FFFF0000
        FFFF0000FDFF0000F9FF0000F6FF0000F5FF0000F1FF0000ECFF0000E6FF0000
        E3FF0000E1FF0000DEFF0000D8FF0000D2FF0000D2FF0000D3FF0000CFFF0000
        CBFF0000A0FF9B9B9BFFDCDCDCFFD9D9D9FFD6D6D6FFD3D3D3FFD0D0D0FFCCCC
        CCFFC9C9C9FFC5C5C5FFDDDDDDFFA9A9A9FF0000004D007BFFFF0000FFFF0000
        FFFF5555FDFFFFFFFFFF0000F5FF0000F5FF0000F0FF5555EFFFFFFFFFFFFFFF
        FFFFBBBBF5FF0000D9FF0000D0FFFFFFFFFF5555DCFF0000D1FF0000CFFF0000
        CBFF0000A0FF9A9A9AFFDBDBDBFFD7D7D7FFD5D5D5FFD1D1D1FFCECECEFFCACA
        CAFFC6C6C6FFBFBFBFFFDDDDDDFFABABABFF0000004D0080FFFF0000FFFF0000
        FFFF6666FDFFFFFFFFFF0000F4FF0000F3FF0000EFFF6666EFFFFFFFFFFF4444
        E3FFFFFFFFFF5555E3FF0000CEFFFFFFFFFF6666DCFF0000C8FF0000CAFF0000
        CBFF0000A0FF979797FFD5D5D5FFD2D2D2FFCFCFCFFFCBCBCBFFC8C8C8FFC4C4
        C4FFBEBEBEFFB5B5B5FFE5E5E5FFADADADFF0000004D0084FFFF0000FFFF0000
        FFFF6666FDFFFFFFFFFFFFFFFFFFCCCCFCFF1111EEFF6666EFFFFFFFFFFF0000
        DCFFFFFFFFFF7777E8FF0000CEFFFFFFFFFFFFFFFFFFFFFFFFFF2222CBFF0000
        CAFF0000A3FF939393FFCACACAFFC7C7C7FFC5C5C5FFC2C2C2FFBDBDBDFFBABA
        BAFFB4B4B4FFAAAAAAFFE7E7E7FFAFAFAFFF000000430089FFFF0000FFFF0000
        FFFF6666FDFFFFFFFFFF3333F5FFFFFFFFFF7777F4FF6666EFFFFFFFFFFF0000
        DDFFFFFFFFFF7777E7FF0000CEFFFFFFFFFF7777DCFF2222C8FF0000C6FF0000
        CAFF0000A8FF919191FFC4C4C4FFB8B8B8FFB5B5B5FFB2B2B2FFAFAFAFFFAEAE
        AEFFA9A9A9FFC0C0C0FFDEDEDEFFA8A8A8E900000030008DFFFF0000FFFF0000
        FFFF6666FDFFFFFFFFFF3333F5FFFFFFFFFF7777F4FF6666EFFFFFFFFFFF4444
        E5FFFFFFFFFF5555E2FF0000CEFFFFFFFFFF7777DEFF2222CBFF0000C8FF0000
        CBFF0000ADFF909090FFC2C2C2FFB3B3B3FFEDEDEDFFE7E7E7FFE5E5E5FFE7E7
        E7FFEDEDEDFFE8E8E8FFBEBEBEFF9A9A9AB7000000050090FFFF0000FFFF0000
        FFFF5555FDFFFFFFFFFFFFFFFFFFDDDDFDFF1111EDFF5555EEFFFFFFFFFFFFFF
        FFFFBBBBF4FF0000D6FF0000CEFFFFFFFFFFFFFFFFFFFFFFFFFF2222CBFF0000
        CAFF0000B3FF8F8F8FFFC0C0C0FFB1B1B1FFF3F3F3FFDADADAFFD0D0D0FFCCCC
        CCFFC9C9C9FFB9B9B9FFABABABDB87878715000000000093FFFF0024FFFF0020
        FFFF0017FCFF0012F9FF0012F6FF0015F4FF0019F2FF0015EFFF0010E9FF0011
        E6FF0014E5FF0018E5FF0013DDFF000ED5FF000ED1FF000FD0FF0014D4FF0018
        D8FF0000B8FF8D8D8DFFBEBEBEFFAFAFAFFFF5F5F5FFD1D1D1FFC9C9C9FFC9C9
        C9FFC5C5C5FFAEAEAED8A7A7A71000000000000000000095FFFF0094FFFF0091
        FFFF0089FFFF0083FFFF0081FFFF0082FFFF0082FFFF007CFFFF0074FFFF0072
        FFFF0074FFFF0074FFFF006CFFFF0065FFFF0062FFFF0060FFFF0061FFFF0062
        FFFF0000BDFFC6C6C6FFB9B9B9FFB1B1B1FFF6F6F6FFCFCFCFFFC9C9C9FFCBCB
        CBFFACACACB10000000000000000000000000000000000000000000000000000
        00000000000000000000848484FFFCFCFCFFF3F3F3FFF1F1F1FFEFEFEFFFEDED
        EDFFEAEAEAFFE7E7E7FFE5E5E5FFE2E2E2FFDEDEDEFFDBDBDBFFD8D8D8FFD4D4
        D4FFCDCDCDFFC1C1C1FFB5B5B5FFC8C8C8FFF7F7F7FFC2C2C2FFC7C7C7FFAFAF
        AFAE000000000000000000000000000000000000000000000000000000000000
        00000000000000000000838383FFFCFCFCFFF2F2F2FFEFEFEFFFEDEDEDFFEBEB
        EBFFE8E8E8FFE5E5E5FFE2E2E2FFDFDFDFFFDBDBDBFFD8D8D8FFD5D5D5FFD0D0
        D0FFC5C5C5FFB9B9B9FFC0C0C0FFF4F4F4FFE5E5E5FFBBBBBBFFACACAC8E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000919191FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFFF8F8
        F8FFF8F8F8FFFBFBFBFFF2F2F2FFD8D8D8FFBBBBBBFFA3A3A36C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008181818F848484FF888888FF8B8B8BFF8F8F8FFF9393
        93FF969696FF9A9A9AFF9D9D9DFFA0A0A0FFA4A4A4FFA7A7A7FFA9A9A9FFACAC
        ACFFAEAEAEFFB0B0B0FFB2B2B2DFB3B3B39FB4B4B44000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 17
      OnClick = cxButton6Click
    end
    object dxDBBarCode1: TdxDBBarCode
      Left = 751
      Top = 16
      DataBinding.DataField = '# de Cuentas'
      DataBinding.DataSource = DM_promo.DSCuentas
      Properties.BarCodeSymbologyClassName = 'TdxBarCodeQRCodeSymbology'
      Properties.FitMode = ifmProportionalStretch
      Properties.ModuleWidth = 5
      Properties.ShowText = False
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 232
    Top = 216
  end
  object SaveDialog1: TSaveDialog
    Left = 328
    Top = 208
  end
  object savetext: TfrxReport
    Version = '2023.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42345.695100335700000000
    ReportOptions.LastChange = 42345.695100335700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 184
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
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
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Width = 230.551330000000000000
        Height = 120.944960000000000000
        DisplayFormat.DecimalSeparator = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Cuenta:[frxDBDataset1."# de Cuentas"]'
          'PIN:[frxDBDataset1."PIN"]')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DM_promo.DSCuentas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 248
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    ShowDialog = False
    FileName = 
      'D:\02Trabajo\Contabilidad\SISCOVENT\Aplicacion\DataBase\Administ' +
      'racion\Identidad\Codigos QR.txt'
    UseFileCache = True
    DefaultPath = 
      'D:\02Trabajo\Contabilidad\SISCOVENT\Aplicacion\DataBase\Administ' +
      'racion\Identidad\'
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PageBreaks = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = True
    DeleteEmptyColumns = True
    Left = 616
    Top = 224
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 
      'D:\02Trabajo\Contabilidad\SISCOVENT\Aplicacion\Promocion\Agentes' +
      '\Impresion de Documentos\Impresion de QR.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = True
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
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
    Left = 656
    Top = 224
  end
end
