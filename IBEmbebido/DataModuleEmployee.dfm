object dmEmployee: TdmEmployee
  OldCreateOrder = False
  Height = 271
  Width = 470
  object EmployeeConnection: TFDConnection
    Params.Strings = (
      'Database=C:\DelphiBDD\IBEmbebido\EMPLOYEE.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IBLite')
    Connected = True
    LoginPrompt = False
    BeforeConnect = EmployeeConnectionBeforeConnect
    Left = 42
    Top = 14
  end
  object DepartmentTable: TFDQuery
    Active = True
    ConstraintsEnabled = True
    Connection = EmployeeConnection
    SQL.Strings = (
      'SELECT * FROM DEPARTMENT')
    Left = 66
    Top = 86
  end
  object EmployeeTable: TFDQuery
    ConstraintsEnabled = True
    MasterSource = dsDepartment
    MasterFields = 'DEPT_NO'
    DetailFields = 'DEPT_NO'
    Connection = EmployeeConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM EMPLOYEE'
      'WHERE DEPT_NO = :DEPT_NO')
    Left = 189
    Top = 83
    ParamData = <
      item
        Name = 'DEPT_NO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 4
        Value = '000'
      end>
  end
  object dsDepartment: TDataSource
    DataSet = DepartmentTable
    Left = 72
    Top = 144
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 160
    Top = 14
  end
  object SalaryHistoryTable: TFDQuery
    ConstraintsEnabled = True
    MasterSource = dsEmployee
    MasterFields = 'EMP_NO'
    DetailFields = 'EMP_NO'
    Connection = EmployeeConnection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT * FROM SALARY_HISTORY'
      'WHERE EMP_NO = :EMP_NO')
    Left = 320
    Top = 83
    ParamData = <
      item
        Name = 'EMP_NO'
        DataType = ftSmallint
        ParamType = ptInput
        Size = 2
        Value = 12
      end>
  end
  object dsEmployee: TDataSource
    DataSet = EmployeeTable
    Left = 192
    Top = 144
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 280
    Top = 16
  end
end
