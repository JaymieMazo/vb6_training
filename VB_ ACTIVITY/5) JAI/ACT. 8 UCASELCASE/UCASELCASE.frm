VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   Caption         =   "Uppercase/Lowercase"
   ClientHeight    =   5115
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5955
   LinkTopic       =   "Form1"
   ScaleHeight     =   5115
   ScaleWidth      =   5955
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H00000000&
      Height          =   1215
      Left            =   840
      TabIndex        =   5
      Top             =   3600
      Width           =   3735
      Begin VB.TextBox txtOutput 
         BackColor       =   &H00C0FFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   615
         Left            =   480
         TabIndex        =   6
         Top             =   360
         Width           =   2775
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Height          =   1215
      Left            =   840
      TabIndex        =   3
      Top             =   480
      Width           =   3735
      Begin VB.TextBox txtInput 
         BackColor       =   &H00C0FFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   615
         Left            =   480
         TabIndex        =   4
         Top             =   360
         Width           =   2775
      End
   End
   Begin VB.CommandButton cmdOk 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Ok"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1920
      TabIndex        =   0
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Output:"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   615
      Left            =   480
      TabIndex        =   2
      Top             =   3240
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Input:"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim bck As ColorConstants
Dim Fore As ColorConstants

Private Sub cmdOk_Click()
Dim intnum As Integer

Fore = vbYellow
bck = vbBlack

txtOutput.Text = ""

For intnum = 1 To Len(txtInput.Text)
    If Mid(txtInput.Text, intnum, 1) = UCase(Mid(txtInput.Text, intnum, 1)) Then

    txtOutput.Text = txtOutput.Text & LCase((Mid(txtInput.Text, intnum, 1)))
    txtOutput.BackColor = bck
    txtOutput.ForeColor = Fore
    Else
    txtOutput.Text = txtOutput.Text & UCase((Mid(txtInput.Text, intnum, 1)))
       txtOutput.BackColor = bck
           txtOutput.ForeColor = Fore
    End If
Next

End Sub

Private Sub txtInput_Change()
Fore = vbBlack
bck = vbYellow
txtOutput.Text = ""
End Sub

