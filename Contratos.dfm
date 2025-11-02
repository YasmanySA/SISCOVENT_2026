object Fcontratos: TFcontratos
  Left = 0
  Top = 0
  Caption = 'Contratos'
  ClientHeight = 719
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 921
    Height = 158
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Ofertas'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object Button1: TButton
    Left = 160
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 360
    Top = 296
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Ni'#241'os'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 957
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Album 8x12'
      Category = 0
      Hint = 'Album 8x12'
      Visible = ivAlways
    end
  end
end
