object Service3: TService3
  OldCreateOrder = False
  DisplayName = 'SISCOVENT'
  OnExecute = ServiceExecute
  Height = 689
  Width = 703
  object ConexDB: TfdConnection
    ProviderName = 'SQL Server'
    Database = 'SISCOVENTv2.0'
    Debug = True
    Username = 'siscovent'
    Server = 'SPA\SQL'
    Connected = True
    ConnectDialog = dialogconex
    LoginPrompt = False
    Left = 272
    Top = 24
    EncryptedPassword = '8CFF96FF8CFF9CFF90FF'
  end
  object dialogconex: TUniConnectDialog
    DatabaseLabel = 'Base de datos'
    PortLabel = 'Puerto'
    ProviderLabel = 'Abastecedor'
    SavePassword = True
    Caption = 'Conectar'
    UsernameLabel = 'Usuario'
    PasswordLabel = 'Clave de BD'
    ServerLabel = 'Cadena Conexi'#243'n'
    ConnectButton = 'Ok'
    CancelButton = 'Cancelar'
    LabelSet = lsCustom
    Left = 352
    Top = 32
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 520
    Top = 176
  end
  object temporizador: TTimer
    Interval = 100
    OnTimer = temporizadorTimer
    Left = 384
    Top = 320
  end
  object TrayIcon1: TTrayIcon
    Left = 192
    Top = 360
  end
  object tbCalendario: TFDQuery
    Connection = ConexDB
    SQL.Strings = (
      'SELECT      *,'
      ''
      'CONVERT(int,FechaDelete-GETDATE()) as remanin '
      'FROM            CalendarioQ')
    DetailFields = 'ID'
    Active = True
    Left = 63
    Top = 176
    object tbCalendarioID: TFloatField
      FieldName = 'ID'
    end
    object tbCalendarioParentID: TWideStringField
      FieldName = 'ParentID'
      FixedChar = True
      Size = 30
    end
    object tbCalendarioType: TWideStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 30
    end
    object tbCalendarioStart: TDateTimeField
      FieldName = 'Start'
    end
    object tbCalendarioFinish: TDateTimeField
      FieldName = 'Finish'
    end
    object tbCalendarioOptions: TStringField
      FieldName = 'Options'
      Size = 30
    end
    object tbCalendarioCaption: TStringField
      FieldName = 'Caption'
      Size = 250
    end
    object tbCalendarioRecurrenceIndex: TStringField
      FieldName = 'RecurrenceIndex'
      Size = 30
    end
    object tbCalendarioRecurrenceInfo: TStringField
      FieldName = 'RecurrenceInfo'
      Size = 30
    end
    object tbCalendarioResourceID: TStringField
      FieldName = 'ResourceID'
      Size = 30
    end
    object tbCalendarioLocation: TStringField
      FieldName = 'Location'
      Size = 80
    end
    object tbCalendarioMessage: TStringField
      FieldName = 'Message'
      Size = 250
    end
    object tbCalendarioReminderDate: TStringField
      FieldName = 'ReminderDate'
      Size = 30
    end
    object tbCalendarioReminderMinutes: TStringField
      FieldName = 'ReminderMinutes'
      Size = 30
    end
    object tbCalendarioState: TStringField
      FieldName = 'State'
      Size = 30
    end
    object tbCalendarioLabelColor: TStringField
      FieldName = 'LabelColor'
      Size = 30
    end
    object tbCalendarioActualStart: TStringField
      FieldName = 'ActualStart'
      Size = 30
    end
    object tbCalendarioActualFinish: TStringField
      FieldName = 'ActualFinish'
      Size = 30
    end
    object tbCalendarioSyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 30
    end
    object tbCalendarioFechaDelete: TDateTimeField
      FieldName = 'FechaDelete'
    end
    object tbCalendarioestadoExpire: TIntegerField
      FieldName = 'estadoExpire'
    end
    object tbCalendarioremanin: TIntegerField
      FieldName = 'remanin'
      ReadOnly = True
    end
  end
  object DSCalendario: TDataSource
    DataSet = tbCalendario
    Left = 63
    Top = 264
  end
end
