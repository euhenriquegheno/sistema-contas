object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 197
  Width = 385
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Database=C:\sistema_de_contas\Sistema de Contas\BANCO\BANCO.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 104
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 224
    Top = 56
  end
end
