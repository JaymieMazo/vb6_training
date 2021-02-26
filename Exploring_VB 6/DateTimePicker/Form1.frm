VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form frmFlexGrid 
   Caption         =   "Form1"
   ClientHeight    =   3885
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4740
   FillColor       =   &H00C0FFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3885
   ScaleWidth      =   4740
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdRemove 
      Caption         =   "&Remove"
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
      Left            =   3360
      TabIndex        =   2
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add Items"
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
      Left            =   1920
      TabIndex        =   1
      Top             =   3360
      Width           =   1215
   End
   Begin MSFlexGridLib.MSFlexGrid fg 
      Height          =   3135
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   5530
      _Version        =   393216
      Rows            =   0
      FixedRows       =   0
   End
End
Attribute VB_Name = "frmFlexGrid"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAdd_Click()
Dim entry, i, msg, z


msg = "Are you sure you want to add 5 Items?"
If MsgBox(msg, vbOKCancel, "Confirmation") = vbOK Then
fg.Cols = 2
    
    For i = 1 To 5
        entry = "Entry" & Chr(9) & i
        fg.AddItem entry
    Next i
    
Else

End If
'fg.Cols = 5
End Sub


Private Sub cmdRemove_Click()
With Me.fg

        If fg.Rows = 1 Then
          fg.RowSel = fg.Row
            fg.Rows = 1
        Else
          fg.RowSel = fg.Row
        fg.RemoveItem fg.RowSel

        End If

End With


End Sub

Private Sub fg_GotFocus()

'fg.CellFontName = Screen.Fonts(4)
'fg.CellFontUnderline = True

End Sub

Private Sub Form_Load()

fg.AllowUserResizing = flexResizeColumns

fg.AllowUserResizing = flexResizeRows

'fg.BackColor = vbBlack
fg.BackColorFixed = vbGreen
fg.CellFontItalic = True
'fg.CellForeColor = 10 ...TO BE STUDY

Dim entry, i
fg.Cols = 2
    For i = 1 To 5
    
    entry = "Entry" & Chr(9) & i
    fg.AddItem entry
    Next i
    
'fg.Cols = 5

End Sub



