object dataconex: Tdataconex
  Height = 628
  Width = 597
  object ConexDB: TFDConnection
    Params.Strings = (
      'Server=localhost\SQLSERVER'
      'Database=SISCOVENT'
      'User_Name=developer'
      'Password=developer'
      'DriverID=MSSQL')
    ResourceOptions.AssignedValues = [rvCmdExecTimeout, rvDirectExecute]
    ResourceOptions.CmdExecTimeout = 5000
    ResourceOptions.DirectExecute = True
    UpdateOptions.AssignedValues = [uvLockMode]
    ConnectedStoredUsage = [auRunTime]
    Connected = True
    LoginPrompt = False
    BeforeConnect = ConexDBBeforeConnect
    Left = 348
    Top = 136
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 216
    Top = 264
  end
end
