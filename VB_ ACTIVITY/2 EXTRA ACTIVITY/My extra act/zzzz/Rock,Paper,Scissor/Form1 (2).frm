VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Form1"
   ClientHeight    =   4650
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9555
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4650
   ScaleWidth      =   9555
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton optRock 
      BackColor       =   &H00000000&
      Caption         =   "Rock"
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
      Height          =   255
      Left            =   480
      TabIndex        =   10
      Top             =   1200
      Width           =   1695
   End
   Begin VB.OptionButton optScissors 
      BackColor       =   &H00000000&
      Caption         =   "Scissor"
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
      Height          =   375
      Left            =   480
      TabIndex        =   9
      Top             =   1440
      Width           =   1695
   End
   Begin VB.OptionButton optPaper 
      BackColor       =   &H00000000&
      Caption         =   "Paper"
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
      Height          =   375
      Left            =   480
      TabIndex        =   8
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   3840
      Width           =   1815
   End
   Begin VB.Timer timWinLose 
      Interval        =   100
      Left            =   120
      Top             =   240
   End
   Begin VB.CommandButton cmdPick 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Pick"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   3000
      Width           =   1815
   End
   Begin VB.Label lblP2Score 
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   8280
      TabIndex        =   6
      Top             =   720
      Width           =   855
   End
   Begin VB.Label lblP1Score 
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   0
      Left            =   4200
      TabIndex        =   5
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "VS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   975
      Left            =   5520
      TabIndex        =   4
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label lblP1 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0FF&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "                         "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   975
      Left            =   2640
      TabIndex        =   3
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label lblP2 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0FF&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   975
      Left            =   6720
      TabIndex        =   2
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0FF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   2640
      TabIndex        =   1
      Top             =   240
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdPick_Click()
Dim a As Form
Dim num As Integer

If optRock.Value = True Then
    lblP1.Caption = "Rock"
ElseIf optScissors.Value = True Then
    lblP1.Caption = "Scissor"
ElseIf optPaper.Value = True Then
    lblP1.Caption = "Paper"
End If

num = Int(Rnd * 3) + 1
lbl = num
If num = 1 Then
    lblP2.Caption = "Rock"
ElseIf num = 2 Then
    lblP2.Caption = "Scissor"
ElseIf num = 3 Then
    lblP2.Caption = "Paper"

End If

If lblP2.Caption = "Rock" And lblP1.Caption = "Rock" Then
    Label1.Caption = "Draw"
ElseIf lblP2.Caption = "Scissor" And lblP1.Caption = "Scissor" Then
    Label1.Caption = "Draw"
ElseIf lblP2.Caption = "Paper" And lblP1.Caption = "Paper" Then
    Label1.Caption = "Draw"
    
    
ElseIf lblP2.Caption = "Rock" And lblP1.Caption = "Scissor" Then
    Label1.Caption = "You Lose"
    Label1.BackColor = &HFF&
ElseIf lblP2.Caption = "Scissor" And lblP1.Caption = "Rock" Then
    Label1.Caption = "You Win"
    Label1.BackColor = &HFFFFFF
ElseIf lblP2.Caption = "Scissor" And lblP1.Caption = "Paper" Then
    Label1.Caption = "You Lose"
     Label1.BackColor = &HFF&
ElseIf lblP2.Caption = "Paper" And lblP1.Caption = "Scissor" Then
    Label1.Caption = "You Win"
      Label1.BackColor = &HFFFFFF
ElseIf lblP2.Caption = "Paper" And lblP1.Caption = "Rock" Then
    Label1.Caption = "You Win"
      Label1.BackColor = &HFFFFFF
ElseIf lblP2.Caption = "Rock" And lblP1.Caption = "Paper" Then
    Label1.Caption = "You Win"
     Label1.BackColor = &HFFFFFF
ElseIf lblP2.Caption = "Scissor" And lblP1.Caption = "Paper" Then
    Label1.Caption = "You Lose"
     Label1.BackColor = &HFF&
 End If
    
    If Label1.Caption = "You Win" Then
          lblP1.BackColor = &HFFFFFF
          lbl.BackColor = &HFF&
    ElseIf Label1.Caption = "You Lose" Then
         lblP1.BackColor = &HFF&
        lbl.BackColor = &HFFFFFF
    ElseIf Label1.Caption = "Draw" Then
        lblP1.BackColor = &HFFFF&
        lbl.BackColor = &HFFFF&
        Label1.BackColor = &HFFFF&
    End If
End Sub

Private Sub lblScore_Click()

End Sub

