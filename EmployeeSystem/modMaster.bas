Attribute VB_Name = "Module1"

Public Function modLoadUsers()

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim strQry As String
Dim num As Integer
Dim strEmpName As String


strQry = "Select EmpUsers.UserID, EmpUsers.Password,  EmpUsers.UserRights,  Employees.EmpFName,  Employees.EmpLName," & _
" Departments.DepartmentName, Sections.SectionName,Positions.PositionName   FROM EmpUsers INNER JOIN Employees ON Employees.EmpId =EmpUsers.UserID " & _
" INNER JOIN Departments ON Employees.EmpDept=Departments.DepartmentID  INNER JOIN Sections " & _
" ON Employees.Section =Sections.SectionID INNER JOIN Positions  ON Employees.Position =Positions.PositionID "
 



With cn
.CursorLocation = adUseClient
.ConnectionString = "provider =SQLOLEDB ; Data Source=SD_SQL_TRAINING ; Initial Catalog=Jai; UID=sa; PWD=81at84"
.Open
End With


 rs.Open strQry, cn, adOpenDynamic, adLockReadOnly


 With frmUsers.mshUsers
    .Rows = rs.RecordCount + 1
    .Cols = 7
    .ColWidth(3) = 1500
    .TextMatrix(0, 0) = "Username"
    .TextMatrix(0, 1) = "Password"
    .TextMatrix(0, 2) = "UserRights"
    .TextMatrix(0, 3) = "Name"
    .TextMatrix(0, 4) = "Department"
    .TextMatrix(0, 5) = "Section"
    .TextMatrix(0, 6) = "Position"
    
         For num = 1 To rs.RecordCount
         
         .TextMatrix(num, 0) = rs.Fields(0)
         .TextMatrix(num, 1) = rs.Fields(1)
         
         If rs.Fields(2) = 1 Then
         
         .TextMatrix(num, 2) = "Admin"
         
         
         Else
         .TextMatrix(num, 2) = "User"
        
         End If
         
         
       .TextMatrix(num, 3) = rs.Fields(3) & " " & rs.Fields(4)
             
       .TextMatrix(num, 4) = rs.Fields(5)
             
       .TextMatrix(num, 5) = rs.Fields(6)
         
             
       .TextMatrix(num, 6) = rs.Fields(7)
         
         rs.MoveNext
        Next

 End With
 
End Function
