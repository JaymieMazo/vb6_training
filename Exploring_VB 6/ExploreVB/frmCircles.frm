VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form frmMSHFlexGrid 
   Caption         =   "Employees"
   ClientHeight    =   5655
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8685
   LinkTopic       =   "Form2"
   ScaleHeight     =   5655
   ScaleWidth      =   8685
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame2 
      Height          =   1215
      Left            =   240
      TabIndex        =   10
      Top             =   4320
      Width           =   5175
   End
   Begin VB.Frame Frame1 
      Height          =   1215
      Left            =   5520
      TabIndex        =   5
      Top             =   4320
      Width           =   3015
      Begin VB.CommandButton cmdExport 
         Caption         =   "E&xport"
         Height          =   375
         Left            =   1560
         TabIndex        =   9
         Top             =   720
         Width           =   1335
      End
      Begin VB.CommandButton cmdAdd 
         Caption         =   "&Add"
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   1335
      End
      Begin VB.CommandButton cmdEdit 
         Caption         =   "&Edit"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   720
         Width           =   1335
      End
      Begin VB.CommandButton cmdDelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   1560
         TabIndex        =   6
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1200
      TabIndex        =   3
      Top             =   120
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1560
      TabIndex        =   2
      Top             =   8160
      Width           =   2175
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid MSHFlexGrid1 
      Height          =   3495
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   6165
      _Version        =   393216
      BeginProperty FontFixed {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.CommandButton cmdPrint 
      Caption         =   "Print"
      Height          =   255
      Left            =   7320
      TabIndex        =   0
      Top             =   7560
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Search:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "frmMSHFlexGrid"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdAdd_Click()
Me.Hide
frmAddEmp.Show
End Sub

Private Sub cmdExport_Click()

Dim fs As Object
Dim a As Object


Set fs = CreateObject("Scripting.FileSystemObject")
Set a = fs.CreateTextFile("C:\Users\smd084\Desktop\aa.txt", True)



a.WriteLine ("")



For Z = 1 To Me.MSHFlexGrid1.Rows - 1
    
    With Me.MSHFlexGrid1
    
        a.WriteLine ("" & .TextMatrix(Z, 0) & Space$(5) & .TextMatrix(Z, 1) & "")
    
    End With
    
Next Z

Call Shell("explorer.exe C:\Users\smd084\Desktop\test\aa.txt", vbNormalFocus)
a.Close

End Sub


Private Sub Command1_Click()
If Me.Text2.Text = "" Then
Call search(True)
Else
Call search(False)
End If
End Sub

Public Sub search(ByVal all As Boolean)

Dim cn As Object
Dim rs As Object

    If all = True Then
    sql = " SELECT EmpId,   EmpLname,   EmpFname,   EmpMname " & _
            " FROM dbo.Employees  "
    Else

    sql = " SELECT EmpId,   EmpLname,   EmpFname,   EmpMname " & _
            " FROM dbo.Employees WHERE EmpId LIKE '%" & Me.Text2.Text & "%' "
    End If


Set cn = New ADODB.Connection


    With cn
        .CursorLocation = adUseClient
        .ConnectionString = "Provider =SQLOLEDB ;Data Source=SD_SQL_TRAINING;Initial Catalog=Jai;UID=sa;PWD=81at84"
        .Open
    End With



Set rs = New ADODB.Recordset
rs.Open sql, cn, adOpenDynamic, adLockReadOnly

    If rs.EOF Then
        MsgBox "No Record Found!!!!!!", vbExclamation, "Message"
        Me.MSHFlexGrid1.Clear
        Exit Sub
    End If
 
'rs.MoveLast
lncnt = rs.RecordCount
'rs.MoveFirst
Me.MSHFlexGrid1.Cols = 3
Me.MSHFlexGrid1.Rows = lncnt + 1

    For a = 1 To lncnt   ' Number of ROWS
        With Me.MSHFlexGrid1
            For B = 0 To .Cols - 1
                .TextMatrix(a, 0) = rs(0).Value
                .TextMatrix(a, 1) = rs(1).Value & " " & rs(2).Value & " " & rs(3).Value
                .TextMatrix(a, 2) = ""
                .ColWidth(1) = 3000
            Next B
            
            
        End With
        rs.MoveNext
    Next a
End Sub

Private Sub Command4_Click()

End Sub

Private Sub Form_Load()
Call search(True)

With Me.MSHFlexGrid1
.TextMatrix(0, 0) = "ID"
.TextMatrix(0, 1) = "Name"
End With
End Sub

Private Sub MSHFlexGrid1_Click()

With Me.MSHFlexGrid1
    If .Col = 2 Then
        .CellBackColor = vbGreen
        Me.Text1.Text = .TextMatrix(.Row, .Col)
        Me.Text1.SetFocus
    End If
End With
End Sub

Private Sub MSHFlexGrid1_LeaveCell()
    With Me.MSHFlexGrid1
        .CellBackColor = vbWhite
    End With
End Sub


Private Sub Text1_Change()
With Me.MSHFlexGrid1
    .TextMatrix(.Row, .Col) = Me.Text1.Text
End With
End Sub

Private Sub Text1_GotFocus()
Me.Text1.SelStart = 0
Me.Text1.SelLength = Len(Me.Text1.Text)
End Sub

Private Sub Text2_Change()
Call search(False)
End Sub
