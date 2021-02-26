Attribute VB_Name = "modInOut"
Option Explicit


Public Function LogInOut()

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim sql As String
Dim a As Integer



sql = "Select employeecode , logdate, timein, timeout from logtime where employeecode='34782'"

With cn
.CursorLocation = adUseClient
.ConnectionString = "Provider=SQLOLEDB; Data Source=HRDSQL; Initial Catalog=CompanyInformation; UID=sa; PWD=81at84"
.Open

End With


rs.Open sql, cn, adOpenDynamic, adLockReadOnly

With frmLogTime.mshLogTime
        
        .Rows = rs.RecordCount + 1
        .Cols = 5
        .TextMatrix(0, 0) = "Day"
        .TextMatrix(0, 1) = "LogDate"
        .TextMatrix(0, 2) = "LogIn"
        .TextMatrix(0, 3) = "LogOut"
           .TextMatrix(0, 3) = "Leave"
        .ColWidth(1) = 1000
        
        
        For a = 1 To rs.RecordCount
        
             .TextMatrix(a, 0) = WeekdayName(Weekday(rs.Fields(1)), False, vbSunday)
            .TextMatrix(a, 1) = rs.Fields(1)
            .TextMatrix(a, 2) = Format(rs.Fields(2), "hh:mm:ss")
            If IsNull(rs.Fields(3)) = True Then
             .TextMatrix(a, 3) = ""
            Else
            
            .TextMatrix(a, 3) = Mid(Format(Format(rs.Fields(3), "hh:mm:ss"), "Medium Time"), 1, 5) & ":" & Format(rs.Fields(3), "ss")
           End If
           
         
            
            
            If .TextMatrix(a, 0) = "Sunday" Then
             .RowHeight(a) = 0
             Else
             
                If .TextMatrix(a, 2) = "" And .TextMatrix(a, 3) = "" Then
                
                 .TextMatrix(a, 4) = "Leave"
            
                End If

            End If
            
               rs.MoveNext
        Next

End With


End Function
