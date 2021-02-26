VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form ViewEmployees 
   Caption         =   "View Employees"
   ClientHeight    =   5880
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8595
   LinkTopic       =   "Form2"
   ScaleHeight     =   5880
   ScaleWidth      =   8595
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "&Delete"
      Height          =   615
      Left            =   4320
      TabIndex        =   3
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Add"
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Update"
      Height          =   615
      Left            =   2280
      TabIndex        =   1
      Top             =   4920
      Width           =   1935
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid mshEmployees 
      Height          =   4575
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   8070
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
End
Attribute VB_Name = "ViewEmployees"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Load()

With mshEmployees
.TextMatrix(0, 0) = "Employee ID"
.TextMatrix(0, 1) = "Name"
.ColWidth(0) = 1000
.ColWidth(1) = 2000
.ColAlignmentFixed = 3
'.ColAlignment(1) = 5



Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset

sql = "select * from employees"

With cn
.CursorLocation = adUseClient
.ConnectionString = "Provider=sqloledb; Data Source=SD_SQL_TRAINING; Initial Catalog=Jai;  UID=sa; PWD=81at84"
.Open
End With


rs.Open sql, cn, adOpenDynamic, adLockReadOnly
mshEmployees.Rows = mshEmployees.Rows + 1



.Cols = 3
.Rows = rs.RecordCount + 1

For a = 1 To rs.RecordCount

'For b = 0 To mshEmployees.Cols - 1

.TextMatrix(a, 0) = rs(0).Value
.TextMatrix(a, 1) = rs(2).Value & " " & rs(1).Value
'.TextMatrix(a, 2) = rs(3).Value

'Next b

rs.MoveNext

Next

End With
End Sub
 
