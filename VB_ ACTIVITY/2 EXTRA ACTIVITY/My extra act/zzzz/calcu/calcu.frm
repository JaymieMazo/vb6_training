VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5235
   ClientLeft      =   3030
   ClientTop       =   6285
   ClientWidth     =   6330
   LinkTopic       =   "Form1"
   ScaleHeight     =   5235
   ScaleWidth      =   6330
   Begin VB.TextBox txtanswer 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
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
      Left            =   3000
      TabIndex        =   22
      Top             =   720
      Width           =   615
   End
   Begin VB.TextBox txtnum2 
      BorderStyle     =   0  'None
      Height          =   365
      Left            =   840
      TabIndex        =   21
      Top             =   960
      Width           =   2775
   End
   Begin VB.TextBox txtnum 
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   840
      MaxLength       =   2
      TabIndex        =   18
      Top             =   720
      Width           =   2775
   End
   Begin VB.CommandButton cmdadd 
      Caption         =   "+"
      Height          =   495
      Left            =   3120
      TabIndex        =   17
      Top             =   4440
      Width           =   615
   End
   Begin VB.CommandButton cmdanswer 
      Caption         =   "="
      Height          =   495
      Left            =   2280
      TabIndex        =   16
      Top             =   4440
      Width           =   615
   End
   Begin VB.CommandButton Command16 
      Caption         =   "."
      Height          =   495
      Left            =   1440
      TabIndex        =   15
      Top             =   4440
      Width           =   615
   End
   Begin VB.CommandButton cmd0 
      Caption         =   "0"
      Height          =   495
      Left            =   600
      TabIndex        =   14
      Top             =   4440
      Width           =   615
   End
   Begin VB.CommandButton cmdsubtract 
      Caption         =   "-"
      Height          =   495
      Left            =   3120
      TabIndex        =   13
      Top             =   3840
      Width           =   615
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "3"
      Height          =   495
      Left            =   2280
      TabIndex        =   12
      Top             =   3840
      Width           =   615
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "2"
      Height          =   495
      Left            =   1440
      TabIndex        =   11
      Top             =   3840
      Width           =   615
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "1"
      Height          =   495
      Left            =   600
      TabIndex        =   10
      Top             =   3840
      Width           =   615
   End
   Begin VB.CommandButton cmdmultiply 
      Caption         =   "*"
      Height          =   495
      Left            =   3120
      TabIndex        =   9
      Top             =   3240
      Width           =   615
   End
   Begin VB.CommandButton cmd6 
      Caption         =   "6"
      Height          =   495
      Left            =   2280
      TabIndex        =   8
      Top             =   3240
      Width           =   615
   End
   Begin VB.CommandButton cmd5 
      Caption         =   "5"
      Height          =   495
      Left            =   1440
      TabIndex        =   7
      Top             =   3240
      Width           =   615
   End
   Begin VB.CommandButton cmd4 
      Caption         =   "4"
      Height          =   495
      Left            =   600
      TabIndex        =   6
      Top             =   3240
      Width           =   615
   End
   Begin VB.CommandButton cmddivide 
      Caption         =   "/"
      Height          =   495
      Left            =   3120
      TabIndex        =   5
      Top             =   2640
      Width           =   615
   End
   Begin VB.CommandButton cmd9 
      Caption         =   "9"
      Height          =   495
      Left            =   2280
      TabIndex        =   4
      Top             =   2640
      Width           =   615
   End
   Begin VB.CommandButton cmd8 
      Caption         =   "8"
      Height          =   495
      Left            =   1440
      TabIndex        =   3
      Top             =   2640
      Width           =   615
   End
   Begin VB.CommandButton cmd7 
      Caption         =   "7"
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   2640
      Width           =   615
   End
   Begin VB.CommandButton cmddeleteall 
      Caption         =   "C"
      Height          =   495
      Left            =   2280
      TabIndex        =   1
      Top             =   1920
      Width           =   1455
   End
   Begin VB.CommandButton cmddelete 
      Caption         =   "Backspace"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label lbloperation 
      Height          =   495
      Left            =   4320
      TabIndex        =   20
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblanswer 
      Alignment       =   2  'Center
      Height          =   735
      Left            =   4080
      TabIndex        =   19
      Top             =   720
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim a As String
Dim b As String
Dim c As String

Private Sub cmd0_Click()
If txtnum <> "" Then
    txtnum = Val(txtnum) & 0
Else: txtnum2 = ""
    txtnum2 = Val(txtnum2) & 0
    End If
End Sub

Private Sub cmd1_Click()
Dim a As String


If txtnum = "" Then
    txtnum = 1
    ElseIf txtnum <> "" Then
    txtnum = Val(txtnum) & 1
    
ElseIf txtnum2 = "" Then
    txtnum2 = Val(txtnum2) & 1
    ElseIf txtnum2 <> "" Then
    txtnum2 = Val(txtnum2) & 1
    End If

End Sub

Private Sub cmd2_Click()
Dim c As String
If txtnum = "" Then
    txtnum = 2
Else: txtnum2 = ""
     txtnum2 = 2
    End If
End Sub

Private Sub cmd3_Click()
If txtnum = "" Then
    txtnum = 3
Else:  txtnum2 = ""
     txtnum2 = 3
    End If
End Sub

Private Sub cmd4_Click()
If txtnum = "" Then
    txtnum = 4
Else: txtnum2 = ""
    txtnum2 = 4
    End If
End Sub

Private Sub cmd5_Click()
If txtnum = "" Then
    txtnum = 5
Else: txtnum2 = ""
    txtnum2 = 5
    End If
End Sub

Private Sub cmd6_Click()
If txtnum = "" Then
    txtnum = 6
Else: txtnum2 = ""
    txtnum2 = 6
    End If
End Sub

Private Sub cmd7_Click()
If txtnum = "" Then
    txtnum = 7
Else: txtnum2 = ""
    txtnum2 = 7
    End If
End Sub

Private Sub cmd8_Click()
If txtnum = "" Then
    txtnum = 8
Else: txtnum2 = ""
    txtnum2 = 8
    End If
End Sub

Private Sub cmd9_Click()
If txtnum = "" Then
    txtnum = 9
Else: txtnum2 = ""
    txtnum2 = 9
    End If
End Sub

Private Sub cmdadd_Click()
Dim b As String

lbloperation.Caption = "+"
b = lbloperation.Caption

End Sub

Private Sub cmdanswer_Click()
Dim a As String
Dim b As String
Dim c As String

cmdadd.Caption = "+"
b = lbloperation.Caption
a = txtnum.Text
c = txtnum2.Text


If a <> "" And b = "+" Then
    txtanswer.Text = Val(a) + Val(c)
ElseIf a <> "" And b = "-" Then
    txtanswer.Text = Val(a) - Val(c)

End If
End Sub

Private Sub cmddeleteall_Click()
txtnum = ""
txtnum2 = ""
txtanswer.Text = ""
lbloperation = ""
End Sub



Private Sub cmdsubtract_Click()
Dim b As String

lbloperation.Caption = "-"
b = lbloperation.Caption
End Sub



Private Sub Form_Load()
Dim a As String
Dim b As String
Dim c As String

End Sub

