VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00400000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Employee Directory"
   ClientHeight    =   9045
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   13425
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9045
   ScaleWidth      =   13425
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00400000&
      Caption         =   "Employee's Directory"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   4455
      Left            =   360
      TabIndex        =   19
      Top             =   4080
      Width           =   11055
      Begin MSFlexGridLib.MSFlexGrid fgEmpl 
         Height          =   3495
         Left            =   360
         TabIndex        =   20
         Top             =   480
         Width           =   10335
         _ExtentX        =   18230
         _ExtentY        =   6165
         _Version        =   393216
         Rows            =   8
         Cols            =   6
         FixedRows       =   0
         FixedCols       =   0
         BackColorFixed  =   16777152
         ForeColorFixed  =   0
         BackColorBkg    =   4194304
         FillStyle       =   1
         GridLines       =   2
         AllowUserResizing=   1
         BorderStyle     =   0
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.CommandButton cmdcancel 
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11640
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   7560
      Width           =   1335
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11640
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   5640
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.TextBox txtId 
      BackColor       =   &H00808080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   0
      Text            =   "00001"
      Top             =   600
      Width           =   1815
   End
   Begin VB.CommandButton cmdEdit 
      Caption         =   "&Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11640
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11640
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   6600
      Width           =   1335
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11640
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   4680
      Width           =   1335
   End
   Begin VB.TextBox txtCell 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      MaxLength       =   11
      TabIndex        =   6
      Text            =   "09298759529"
      Top             =   3120
      Width           =   2775
   End
   Begin VB.TextBox txtTel 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      MaxLength       =   8
      TabIndex        =   5
      Text            =   "124-1236"
      Top             =   3120
      Width           =   2775
   End
   Begin VB.TextBox txtAddress 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Text            =   "Bulacan"
      Top             =   1680
      Width           =   10935
   End
   Begin VB.TextBox txtMname 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8640
      TabIndex        =   3
      Text            =   "Dela Cruz"
      Top             =   600
      Width           =   2775
   End
   Begin VB.TextBox txtLname 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Text            =   "Mazo"
      Top             =   600
      Width           =   2775
   End
   Begin VB.TextBox txtFname 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5520
      TabIndex        =   2
      Text            =   "Jaymie"
      Top             =   600
      Width           =   2775
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "CELL NO"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   3720
      TabIndex        =   17
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "TEL NO"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   16
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "ADDRESS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   15
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "MIDDLE NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   8640
      TabIndex        =   14
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "FIRST NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   5520
      TabIndex        =   13
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "LAST NAME"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   2520
      TabIndex        =   12
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "ID Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   10
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim empl(10) As String
Dim i As Integer
Dim j As Integer
Dim a As Integer

Private Sub cmdDelete_Click()
       
        If fgEmpl.Rows = 1 Then
          fgEmpl.rowsel = fgEmpl.Row
            fgEmpl.Rows = 1
        Else
          fgEmpl.rowsel = fgEmpl.Row
        fgEmpl.RemoveItem fgEmpl.rowsel
        
        End If
End Sub


Private Sub cmdEdit_Click()
txtId.Locked = True
cmdAdd.Enabled = False
cmdDelete.Enabled = False
cmdUpdate.Enabled = True
cmdUpdate.Visible = True
cmdEdit.Visible = False
cmdEdit.Enabled = False
fgEmpl.SelectionMode = flexSelectionByRow
fgEmpl.rowsel = fgEmpl.Row

Dim rowsel As Integer
    For rowsel = 0 To fgEmpl.Rows
    txtId = fgEmpl.TextMatrix(fgEmpl.rowsel, 0)
    txtLname = fgEmpl.TextMatrix(fgEmpl.rowsel, 1)
    txtFname = fgEmpl.TextMatrix(fgEmpl.rowsel, 2)
    txtMname = fgEmpl.TextMatrix(fgEmpl.rowsel, 3)
    txtAddress = fgEmpl.TextMatrix(fgEmpl.rowsel, 4)
    txtTel = Left(fgEmpl.TextMatrix(fgEmpl.rowsel, 5), InStr(1, fgEmpl.TextMatrix(fgEmpl.rowsel, 5), " "))
    txtCell = Right(fgEmpl.TextMatrix(fgEmpl.rowsel, 5), InStr(1, StrReverse(fgEmpl.TextMatrix(fgEmpl.rowsel, 5)), " "))
    Next
    
End Sub

Private Sub cmdUpdate_Click()
Dim cell As String
Dim tel As String
    If fgEmpl.TextMatrix(fgEmpl.rowsel, 0) = txtId Then
        fgEmpl.TextMatrix(fgEmpl.rowsel, 1) = txtLname
        fgEmpl.TextMatrix(fgEmpl.rowsel, 2) = txtFname
        fgEmpl.TextMatrix(fgEmpl.rowsel, 3) = txtMname
        fgEmpl.TextMatrix(fgEmpl.rowsel, 4) = txtAddress
        fgEmpl.TextMatrix(fgEmpl.rowsel, 5) = txtTel & " / " & txtCell
    Else
        MsgBox "error"
    End If
    
End Sub

Private Sub cmdcancel_Click()
cmdAdd.Enabled = True
cmdEdit.Visible = True
cmdEdit.Enabled = True
cmdUpdate.Visible = False
cmdUpdate.Enabled = False
cmdDelete.Enabled = True
txtId = ""
txtLname = ""
txtFname = ""
txtMname = ""
txtAddress = ""
txtCell = ""
txtTel = ""
txtId = Format(fgEmpl.TextMatrix(fgEmpl.Rows - 1, 0) + 1, "00000")
End Sub

Private Sub fgEmpl_Click()
cmdEdit.Enabled = True
cmdEdit.Visible = True
cmdUpdate.Enabled = False
cmdUpdate.Visible = False
End Sub

Private Sub cmdAdd_Click()

        empl(1) = txtId
        empl(2) = txtLname.Text
        empl(3) = txtFname.Text
        empl(4) = txtMname.Text
        empl(5) = txtAddress.Text
        empl(6) = txtTel.Text
        empl(7) = txtCell.Text
If Trim(txtId) = "" Or Trim(txtLname) = "" Or Trim(txtFname) = "" Or Trim(txtMname) = "" Or Trim(txtAddress) = "" Or Trim(txtCell) = "" Or Trim(txtTel) = "" Then
MsgBox "Please Fill up all fields.", vbInformation, "Warning"
ElseIf fgEmpl.Col = 0 And fgEmpl.Text = "" Then
        fgEmpl.Rows = fgEmpl.Rows + 1
        fgEmpl.Row = i + 1
        fgEmpl.Col = 0
        fgEmpl.Text = empl(1)
        fgEmpl.Row = i + 1
        fgEmpl.Col = 1
        fgEmpl.Text = empl(2)
        fgEmpl.Row = i + 1
        fgEmpl.Col = 2
        fgEmpl.Text = empl(3)
            fgEmpl.Row = i + 1
            fgEmpl.Col = 3
            fgEmpl.Text = empl(4)
        fgEmpl.Row = i + 1
        fgEmpl.Col = 4
        fgEmpl.Text = empl(5)
            fgEmpl.Row = i + 1
            fgEmpl.Col = 5
            fgEmpl.Text = empl(6) & " / " & empl(7)
            i = i + 1


ElseIf IsNumeric(Mid(txtTel, 1, 3)) = False Or IsNumeric(Mid(txtTel, 5, 4)) = False Then

    MsgBox "Invalid Tel No"
    
ElseIf IsNumeric(txtCell) = False Then

    MsgBox "Invalid Cell No"
Else
            j = fgEmpl.Rows
               ' MsgBox j, vbInformation, "Last row"
            fgEmpl.Rows = fgEmpl.Rows + 1
             i = fgEmpl.Row
                'MsgBox j, vbInformation, "added row"
        fgEmpl.Row = i + 1
        fgEmpl.Col = 0
        fgEmpl.Text = empl(1)
            fgEmpl.Row = i + 1
            fgEmpl.Col = 1
            fgEmpl.Text = empl(2)
        fgEmpl.Row = i + 1
        fgEmpl.Col = 2
        fgEmpl.Text = empl(3)
            fgEmpl.Row = i + 1
            fgEmpl.Col = 3
            fgEmpl.Text = empl(4)
        fgEmpl.Row = i + 1
        fgEmpl.Col = 4
        fgEmpl.Text = empl(5)
            fgEmpl.Row = i + 1
            fgEmpl.Col = 5
            fgEmpl.Text = empl(6) & " / " & empl(7)
End If
'txtLname.Text = ""
'txtFname.Text = ""
'txtMname.Text = ""
'txtMname.Text = ""
'txtAddress.Text = ""
'txtCell.Text = ""
'txtTel.Text = ""
txtId = Format(fgEmpl.TextMatrix(fgEmpl.Rows - 1, 0) + 1, "00000")
End Sub


Private Sub Form_Load()
fgEmpl.Row = 0
fgEmpl.Col = 0
fgEmpl.Text = "ID#"
fgEmpl.Row = 0
fgEmpl.Col = 1
fgEmpl.Text = "SURNAME"
fgEmpl.Row = 0
fgEmpl.Col = 2
fgEmpl.Text = "FIRST NAME"
fgEmpl.Row = 0
fgEmpl.Col = 3
fgEmpl.Text = "MIDDLE NAME"
fgEmpl.Row = 0
fgEmpl.Col = 4
fgEmpl.Text = "ADDRESS"
fgEmpl.Row = 0
fgEmpl.Col = 5
fgEmpl.Text = "TELL/CELL NO"

fgEmpl.ColWidth(0) = 1000
fgEmpl.ColWidth(1) = 1500
fgEmpl.ColWidth(2) = 1500
fgEmpl.ColWidth(3) = 1500
fgEmpl.ColWidth(4) = 1800
fgEmpl.ColWidth(5) = 2500


fgEmpl.Row = 1
fgEmpl.Col = 0
fgEmpl.Text = "00001"
fgEmpl.Col = 1
fgEmpl.Text = "RIZAL"
fgEmpl.Col = 2
fgEmpl.Text = "JOSE"
fgEmpl.Col = 3
fgEmpl.Text = "MERCADO"
fgEmpl.Col = 4
fgEmpl.Text = "BAGONG BAYAN"
fgEmpl.Col = 5
fgEmpl.Text = "431-6041 / 09158897272"


fgEmpl.Row = 2
fgEmpl.Col = 0
fgEmpl.Text = "00002"
fgEmpl.Col = 1
fgEmpl.Text = "BONIFACIO"
fgEmpl.Col = 2
fgEmpl.Text = "ANDRES"
fgEmpl.Col = 3
fgEmpl.Text = "PAKITO"
fgEmpl.Col = 4
fgEmpl.Text = "BALINTAWAK"
fgEmpl.Col = 5
fgEmpl.Text = "504-3256 / 09211459856"


fgEmpl.Row = 3
fgEmpl.Col = 0
fgEmpl.Text = "00003"
fgEmpl.Col = 1
fgEmpl.Text = "AGUINALDO"
fgEmpl.Col = 2
fgEmpl.Text = "EMILIO"
fgEmpl.Col = 3
fgEmpl.Text = "MAY"
fgEmpl.Col = 4
fgEmpl.Text = "KAWIT CAVITE"
fgEmpl.Col = 5
fgEmpl.Text = "436-9851 / 09221589631"


fgEmpl.Row = 4
fgEmpl.Col = 0
fgEmpl.Text = "00004"
fgEmpl.Col = 1
fgEmpl.Text = "LUNA"
fgEmpl.Col = 2
fgEmpl.Text = "JUAN"
fgEmpl.Col = 3
fgEmpl.Text = "TWO"
fgEmpl.Col = 4
fgEmpl.Text = "LAGUNA"
fgEmpl.Col = 5
fgEmpl.Text = "434-6529 / 09097891235"


fgEmpl.Row = 5
fgEmpl.Col = 0
fgEmpl.Text = "00005"
fgEmpl.Col = 1
fgEmpl.Text = "LUNA"
fgEmpl.Col = 2
fgEmpl.Text = "ANTONIO"
fgEmpl.Col = 3
fgEmpl.Text = "SAN"
fgEmpl.Col = 4
fgEmpl.Text = "LAGUNA"
fgEmpl.Col = 5
fgEmpl.Text = "434-6529 / 09097891238"

fgEmpl.Row = 6
fgEmpl.Col = 0
fgEmpl.Text = "00006"
fgEmpl.Col = 1
fgEmpl.Text = "JACINTO"
fgEmpl.Col = 2
fgEmpl.Text = "EMILIO"
fgEmpl.Col = 3
fgEmpl.Text = "SANTOS"
fgEmpl.Col = 4
fgEmpl.Text = "BATANGAS"
fgEmpl.Col = 5
fgEmpl.Text = "519-6023 / 09151532459"

fgEmpl.Row = 7
fgEmpl.Col = 0
fgEmpl.Text = "00007"
fgEmpl.Col = 1
fgEmpl.Text = "SILANG"
fgEmpl.Col = 2
fgEmpl.Text = "GABRIELA"
fgEmpl.Col = 3
fgEmpl.Text = "DIEGO"
fgEmpl.Col = 4
fgEmpl.Text = "SILANG CAVITE"
fgEmpl.Col = 5
fgEmpl.Text = "956-2365 / 09123654785"


txtId = Format(fgEmpl.TextMatrix(fgEmpl.Rows - 1, 0) + 1, "00000")
End Sub



Private Sub txtLname_KeyPress(KeyAscii As Integer)

If KeyAscii >= 48 And KeyAscii <= 57 Then
KeyAscii = 0
Else

End If

End Sub

Private Sub txtfname_KeyPress(KeyAscii As Integer)

If KeyAscii >= 48 And KeyAscii <= 57 Then
KeyAscii = 0
Else

End If

End Sub
Private Sub txtmname_KeyPress(KeyAscii As Integer)
If KeyAscii >= 48 And KeyAscii <= 57 Then
KeyAscii = 0
Else
End If
End Sub

Private Sub txtTel_lostfocus()
txtTel = Format(txtTel, "000-0000")

If IsNumeric(Mid(txtTel, 1, 3)) = False Or IsNumeric(Mid(txtTel, 5, 4)) = False Then

    MsgBox "Invalid Tel No"
Else
txtTel = Format(txtTel, "000-0000")
End If
End Sub


Private Sub txtcell_lostfocus()

If IsNumeric(txtCell) = False Then

    MsgBox "Invalid Cell No"
Else

End If
End Sub

