Attribute VB_Name = "Module1"
Option Explicit


Sub Employees()
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim sql As String

sql = "Select * from employees"

With cn
.CursorLocation = adUseClient
.ConnectionString = "Provider =SQLOLEDB; Data Source=SD_SQL_TRAINING; Initial Catalog=Jai; " & _
"UID=sa; PWD=81at84;"
.Open

End With
rs.Open sql, cn, adOpenDynamic, adLockReadOnly


frmLogin.Label3 = rs(1).Value

End Sub


