object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 423
  Width = 569
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'User_Name=SYSDBA'
      
        'Database=C:\Users\Vitor\Documents\Embarcadero\Studio\Projects\Tr' +
        'aineeDev_Delphi\Projeto_AppFolha\Win32\Debug\APPFOLHA.FDB')
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 56
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 176
    Top = 64
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 48
    Top = 168
  end
end
