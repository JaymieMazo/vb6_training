Attribute VB_Name = "modEmployees"
Option Explicit



Public Function fnEmployees(strView As String)
Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim strQuery As String
Dim i As Integer


        If strView = "All" Then
            strQuery = "Select Empid, emplname, empfname  from Employees"
            
        Else
        MsgBox "Error"
        End If

With cn
    .CursorLocation = adUseClient
    .ConnectionString = "Provider=SQLOLEDB ; Data Source = SD_SQL_TRAINING; Initial Catalog =Jai; UID =sa; PWD = 81at84"
    .Open
End With

    rs.Open strQuery, cn, adOpenDynamic, adLockReadOnly



With frmEmployees.mshEmployees
    .Rows = rs.RecordCount
    .Cols = 5
    .TextMatrix(0, 0) = "EmpID"
    .TextMatrix(0, 1) = "Name"
    .TextMatrix(0, 2) = "EmpID"
    .TextMatrix(0, 0) = "Department"
    .TextMatrix(0, 0) = "Section"
    .TextMatrix(0, 0) = "Position"

        
        For i = 1 To rs.RecordCount
        
        .TextMatrix(i, 0) = rs.Fields(0)
        .TextMatrix(i, 1) = rs.Fields(2) & "  " & rs.Fields(1)
        Next
        
        End With

End Function

