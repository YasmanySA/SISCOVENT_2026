object FBackUp: TFBackUp
  Left = 0
  Top = 0
  Caption = 'FBackUp'
  ClientHeight = 275
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Button1: TButton
    Left = 48
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object ScrollBar1: TScrollBar
    Left = 376
    Top = 224
    Width = 121
    Height = 17
    PageSize = 0
    TabOrder = 1
  end
  object BackUp: TFDScript
    SQLScripts = <
      item
        SQL.Strings = (
          #39'BACKUP DATABASE [SISCOVENT]'#39
          '          '#39'TO'#39
          '          '
          
            '            '#39'  DISK = N'#39'#39'#39'D:\Personal\Contabilidad\Sistema\SQL' +
            'Data\SISCOVENTv3.'#39' +'
          '            '#39'bak'#39'#39'
          '          '#39'WITH'#39
          '          '#39'  COMPRESSION,'#39
          '          '#39'  NAME = N'#39'#39'#39'SISCOVENTv3.0_2022 - Backup'#39'#39'#39','#39
          '          '#39'  NOFORMAT, NOINIT, SKIP,'#39
          '          '#39'  STATS = 5'#39')')
      end>
    Connection = dataconex.ConexDB
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 248
    Top = 152
  end
  object Timer1: TTimer
    Left = 56
    Top = 120
  end
end
