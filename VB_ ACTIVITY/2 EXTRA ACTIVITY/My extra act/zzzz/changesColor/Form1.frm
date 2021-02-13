VERSION 5.00
Begin VB.Form frmcolorchanger 
   Caption         =   " "
   ClientHeight    =   5670
   ClientLeft      =   3045
   ClientTop       =   2580
   ClientWidth     =   7815
   LinkTopic       =   "Form1"
   ScaleHeight     =   5670
   ScaleWidth      =   7815
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   3600
      TabIndex        =   9
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CommandButton cmdcolor 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Change Color"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2640
      Width           =   1695
   End
   Begin VB.TextBox txtBlue 
      Height          =   375
      Left            =   1200
      MaxLength       =   3
      TabIndex        =   6
      Text            =   "0"
      Top             =   2040
      Width           =   1575
   End
   Begin VB.TextBox txtGreen 
      Height          =   375
      Left            =   1200
      MaxLength       =   3
      TabIndex        =   4
      Text            =   "0"
      Top             =   1440
      Width           =   1575
   End
   Begin VB.TextBox txtred 
      Height          =   375
      Left            =   1200
      MaxLength       =   3
      TabIndex        =   2
      Text            =   "0"
      Top             =   960
      Width           =   1575
   End
   Begin VB.ComboBox cmbcolor 
      Height          =   315
      ItemData        =   "Form1.frx":0000
      Left            =   1200
      List            =   "Form1.frx":0002
      TabIndex        =   0
      Top             =   120
      Width           =   5295
   End
   Begin VB.Label Label4 
      Caption         =   "Object :"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   1095
   End
   Begin VB.Shape shpCircle 
      BackStyle       =   1  'Opaque
      Height          =   1215
      Left            =   4680
      Shape           =   3  'Circle
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Shape shproundeds 
      BackStyle       =   1  'Opaque
      Height          =   1215
      Left            =   6000
      Shape           =   5  'Rounded Square
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Shape shpsquare 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      Height          =   1215
      Left            =   3120
      Top             =   1200
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Blue :"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Green :"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1560
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Red :"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   855
   End
End
Attribute VB_Name = "frmcolorchanger"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub cmdcolor_Click()
 If txtBlue.Text > 255 Or txtred.Text > 255 Or txtGreen.Text > 255 Then
   txtBlue = 0
   txtred = 0
   txtGreen = 0

   MsgBox "invalid input number!", vbCritical, "Error"
   Exit Sub
 End If



If cmbcolor = "" Then
 MsgBox "Please input Object", vbInformation, "System message"
 Exit Sub
 End If


Me.Controls(cmbcolor).BackColor = RGB(txtred, txtGreen, txtBlue)



End Sub

 Private Function checkint(intAscii As Integer, textboxSamp As TextBox) As Integer
If (intAscii >= 48 And intAscii <= 57) Or intAscii = 8 Then
    checkint = intAscii
Else
    checkint = 0
End If
End Function





Private Sub Form_Load()
For Each test In Me
    cmbcolor.AddItem test.Name
Next



End Sub



Private Sub txtBlue_Change()
If txtBlue.Text = "" Then
 txtBlue.Text = 0
End If
 If txtBlue.Text > 255 Then
 txtBlue.Text = 0
End If
End Sub

Private Sub txtGreen_Change()
If txtGreen.Text = "" Then
 txtGreen.Text = 0
End If
 If txtGreen.Text > 255 Then
 txtGreen.Text = 0
End If
End Sub

Private Sub txtred_Change()
If txtred.Text = "" Then
 txtred.Text = 0
End If
 If txtred.Text > 255 Then
 txtred.Text = 0
End If
End Sub

Private Sub txtred_KeyPress(KeyAscii As Integer)

KeyAscii = checkint(KeyAscii, txtred)
If txtred.Text = "" Then
 txtred.Text = 0
End If

  
End Sub
Private Sub txtGreen_KeyPress(KeyAscii As Integer)
KeyAscii = checkint(KeyAscii, txtGreen)
End Sub
Private Sub txtBlue_KeyPress(KeyAscii As Integer)
KeyAscii = checkint(KeyAscii, txtBlue)
End Sub
