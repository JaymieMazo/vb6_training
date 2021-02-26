VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmLogTime 
   Caption         =   "Log Time"
   ClientHeight    =   4710
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3780
   LinkTopic       =   "Form1"
   ScaleHeight     =   4710
   ScaleWidth      =   3780
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdFind 
      Caption         =   "Find"
      Height          =   375
      Left            =   2880
      TabIndex        =   2
      Top             =   120
      Width           =   735
   End
   Begin MSComCtl2.DTPicker dtSearch 
      Height          =   375
      Left            =   1440
      TabIndex        =   1
      Top             =   120
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      _Version        =   393216
      Format          =   41418753
      CurrentDate     =   43495
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid MSH1 
      Height          =   3855
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   6800
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.Label lblLogDate 
      Caption         =   "Log Date:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "frmLogTime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub Search(ByVal aa As Integer)

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset

Dim a As Integer
With cn
.CursorLocation = adUseClient
.ConnectionString = "Provider=SQLOLEDB; Data Source =HRDSQL; Initial Catalog=CompanyInformation; UID=sa; PWD=81at84"
.Open
End With

If aa = 1 Then
sql = "Select  employeeCode, convert (VARCHAR(8), logdate ,1),timein,timeout from logtime where employeecode ='34782' " & _
"and timein is not null and timeout is not null and convert (VARCHAR(8), logdate ,1)=" & "'" & _
Format(dtSearch.Value, "MM/DD/YY") & "'"




ElseIf aa = 2 Then

sql = "Select  employeeCode, convert (VARCHAR(8), logdate ,1),timein,timeout from logtime where employeecode ='34782' " & _
"and timein is not null and timeout is not null "
End If




rs.Open sql, cn, adOpenDynamic, adLockReadOnly

With MSH1
.Rows = rs.RecordCount + 1
.Cols = 3



.TextMatrix(0, 0) = "LogDate"
.TextMatrix(0, 1) = "Time-IN"
.TextMatrix(0, 2) = "Time-OUT"

For a = 1 To rs.RecordCount
.TextMatrix(a, 0) = rs.Fields(1)
.TextMatrix(a, 1) = Format(Mid(rs.Fields(2), InStr(1, rs.Fields(2) + 1, " "), 8), "hh:mm:ss")
.TextMatrix(a, 2) = Mid(Format(Mid(rs.Fields(3), InStr(1, rs.Fields(3) + 1, " "), 9), "Medium Time"), 1, 5) & ":" & Format(rs.Fields(3), "ss")
rs.MoveNext
Next

End With
End Sub

Private Sub cmdFind_Click()

Call Search(1)

End Sub




Private Sub Form_Load()
Call Search(2)


End Sub

'
Sub Employees()

End Sub
'Dim cn As New ADODB.Connection
'Dim rs As New ADODB.Recordset
'
'Dim a As Integer
'With cn
'.CursorLocation = adUseClient
'.ConnectionString = "Provider=SQLOLEDB; Data Source =HRDSQL; Initial Catalog=CompanyInformation; UID=sa; PWD=81at84"
'.Open
'End With
'
'sql = "Select EmployeeCode, EmployeeName from employees where employeeCode='" & txtEmpID & "'"
'
'rs.Open sql, cn, adOpenDynamic, adLockReadOnly
'
'
'lblEmpName.Caption = rs.Fields(1)
End Sub

Private Sub MSH1_Click()
Call Search(2)
End Sub
