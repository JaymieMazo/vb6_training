VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   7035
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFF00&
      Caption         =   "Fight!"
      Height          =   615
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2280
      Width           =   1695
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00FFFF00&
      Caption         =   "Paper"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   1560
      Width           =   1575
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00FFFF00&
      Caption         =   "Scissor"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   1695
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00FFFF00&
      Caption         =   "Rock"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      Caption         =   "                         "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2280
      TabIndex        =   6
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label lbl 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   4680
      TabIndex        =   5
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFF00&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   4
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As Form
Dim num As Integer

If Option1.Value = True Then
    Label2.Caption = "Rock"
ElseIf Option2.Value = True Then
    Label2.Caption = "Scissor"
ElseIf Option3.Value = True Then
    Label2.Caption = "Paper"
End If

'num = Int(Rnd * 3) + 1
num = Int(Rnd)

lbl = num
MsgBox num
If num = 1 Then
    lbl.Caption = "Rock"
ElseIf num = 2 Then
    lbl.Caption = "Scissor"
ElseIf num = 3 Then
    lbl.Caption = "Paper"

End If

If lbl.Caption = "Rock" And Label2.Caption = "Rock" Then
    Label1.Caption = "Draw"
ElseIf lbl.Caption = "Scissor" And Label2.Caption = "Scissor" Then
    Label1.Caption = "Draw"
ElseIf lbl.Caption = "Paper" And Label2.Caption = "Paper" Then
    Label1.Caption = "Draw"
    
    
ElseIf lbl.Caption = "Rock" And Label2.Caption = "Scissor" Then
    Label1.Caption = "You Lose"
    Label1.BackColor = &HFF&
ElseIf lbl.Caption = "Scissor" And Label2.Caption = "Rock" Then
    Label1.Caption = "You Win"
    Label1.BackColor = &HFFFFFF
ElseIf lbl.Caption = "Scissor" And Label2.Caption = "Paper" Then
    Label1.Caption = "You Lose"
     Label1.BackColor = &HFF&
ElseIf lbl.Caption = "Paper" And Label2.Caption = "Scissor" Then
    Label1.Caption = "You Win"
      Label1.BackColor = &HFFFFFF
ElseIf lbl.Caption = "Paper" And Label2.Caption = "Rock" Then
    Label1.Caption = "You Win"
      Label1.BackColor = &HFFFFFF
ElseIf lbl.Caption = "Rock" And Label2.Caption = "Paper" Then
    Label1.Caption = "You Win"
     Label1.BackColor = &HFFFFFF
ElseIf lbl.Caption = "Scissor" And Label2.Caption = "Paper" Then
    Label1.Caption = "You Lose"
     Label1.BackColor = &HFF&
 End If
    
    If Label1.Caption = "You Win" Then
          Label2.BackColor = &HFFFFFF
          lbl.BackColor = &HFF&
    ElseIf Label1.Caption = "You Lose" Then
         Label2.BackColor = &HFF&
        lbl.BackColor = &HFFFFFF
    ElseIf Label1.Caption = "Draw" Then
        Label2.BackColor = &HFFFF&
        lbl.BackColor = &HFFFF&
        Label1.BackColor = &HFFFF&
    End If
End Sub

