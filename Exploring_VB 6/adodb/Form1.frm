VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5115
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7485
   LinkTopic       =   "Form1"
   ScaleHeight     =   5115
   ScaleWidth      =   7485
   StartUpPosition =   3  'Windows Default
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid msh 
      Height          =   2775
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   4895
      _Version        =   393216
      Rows            =   3
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim cn As Object
Dim rs As Object




sql = "Select empid, emplname, empfname from Employees"


Set cn = New ADODB.Connection

With cn
.CursorLocation = adUseClient
.ConnectionString = "Provider=SQLOLEDB ; Data Source=SD_SQL_TRAINING; Initial Catalog= Jai; UID=sa ; PWD=81at84"
.Open
End With



Set rs = New ADODB.Recordset

rs.Open sql, cn, adOpenDynamic, adLockReadOnly

'
    
'rs.MoveLast

'rs.MoveFirst
lncnt = rs.RecordCount
Me.msh.Cols = 2
Me.msh.Rows = lncnt + 1

For a = 1 To lncnt
    
    
    With msh
    .TextMatrix(a, 0) = rs(0).Value
    .TextMatrix(a, 1) = rs(2).Value
    rs.MoveNext
    End With
    
    
Next
 
End Sub
