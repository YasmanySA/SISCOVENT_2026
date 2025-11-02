object Cliente: TCliente
  Left = 452
  Top = 435
  BorderStyle = bsDialog
  Caption = 'Clientes'
  ClientHeight = 743
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 802
    Height = 457
    Align = alTop
    TabOrder = 0
    LayoutLookAndFeel = Themes.dxLayoutSkinLookAndFeel1
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 110
      Top = 10
      DataBinding.DataField = 'ID CLIENTE'
      DataBinding.DataSource = DM_Clientes.DSClientes
      ParentFont = False
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.StyleController = Themes.Style
      StyleHot.BorderStyle = ebsThick
      TabOrder = 0
      Width = 164
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 370
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'name_cliente'
      DataBinding.DataSource = DM_Clientes.DSClientes
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = Themes.Style
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 27
      Width = 422
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 110
      Top = 43
      DataBinding.DataField = 'number_contrato'
      DataBinding.DataSource = DM_Clientes.DSClientes
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = Themes.Style
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 165
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 110
      Top = 74
      AutoSize = False
      DataBinding.DataField = 'direccion'
      DataBinding.DataSource = DM_Clientes.DSClientes
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = Themes.Style
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 49
      Width = 682
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 352
      Top = 43
      AutoSize = False
      DataBinding.DataField = 'date_contrato'
      DataBinding.DataSource = DM_Clientes.DSClientes
      ParentFont = False
      Style.HotTrack = False
      Style.StyleController = Themes.Style
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 25
      Width = 440
    end
    object cxGrid1: TcxGrid
      Left = 10
      Top = 142
      Width = 782
      Height = 203
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DM_Clientes.DSClientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
        end
        object cxGrid1DBTableView1IDCLIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'ID CLIENTE'
        end
        object cxGrid1DBTableView1name_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'name_cliente'
        end
        object cxGrid1DBTableView1number_contrato: TcxGridDBColumn
          DataBinding.FieldName = 'number_contrato'
        end
        object cxGrid1DBTableView1direccion: TcxGridDBColumn
          DataBinding.FieldName = 'direccion'
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
        object cxGrid1DBTableView1date_contrato: TcxGridDBColumn
          DataBinding.FieldName = 'date_contrato'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'ID CLIENTE'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nombre o Entidad'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 338
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Numero de Contrato'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Direccion'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 49
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'date_contrato'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 440
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Control = cxGrid1
      ControlOptions.OriginalHeight = 203
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 3
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = dxLayoutControl1Group_Root
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 5
    end
  end
end
