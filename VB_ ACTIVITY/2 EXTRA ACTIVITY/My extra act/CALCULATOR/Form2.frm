VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00404000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Calculator"
   ClientHeight    =   5175
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5085
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5175
   ScaleWidth      =   5085
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdMul 
      Caption         =   "*"
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
      Left            =   3840
      TabIndex        =   18
      Top             =   2880
      Width           =   975
   End
   Begin VB.CommandButton cmdMinus 
      Caption         =   "-"
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
      Left            =   3840
      TabIndex        =   17
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton cmdDiv 
      Caption         =   "/"
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
      Left            =   3840
      TabIndex        =   16
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton cmdPlus 
      Caption         =   "+"
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
      Left            =   3840
      TabIndex        =   15
      Top             =   4320
      Width           =   975
   End
   Begin VB.CommandButton cmdbck 
      Caption         =   "Backspace"
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
      Left            =   240
      Picture         =   "Form2.frx":0000
      TabIndex        =   14
      Top             =   1320
      Width           =   2175
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "C"
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
      Left            =   2640
      TabIndex        =   13
      Top             =   1320
      Width           =   2175
   End
   Begin VB.CommandButton cmdequal 
      Caption         =   "="
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
      Left            =   2640
      TabIndex        =   12
      Top             =   4320
      Width           =   975
   End
   Begin VB.CommandButton cmd9 
      Caption         =   "9"
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
      Left            =   2640
      TabIndex        =   11
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton cmd0 
      Caption         =   "0"
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
      Left            =   240
      TabIndex        =   1
      Top             =   4320
      Width           =   975
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "2"
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
      Left            =   1440
      TabIndex        =   10
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton cmd5 
      Caption         =   "5"
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
      Left            =   1440
      TabIndex        =   9
      Top             =   2880
      Width           =   975
   End
   Begin VB.CommandButton cmd8 
      Caption         =   "8"
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
      Left            =   1440
      TabIndex        =   8
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton cmdDot 
      Caption         =   "."
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
      Left            =   1440
      TabIndex        =   7
      Top             =   4320
      Width           =   975
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "3"
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
      Left            =   2640
      TabIndex        =   6
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton cmd6 
      Caption         =   "6"
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
      Left            =   2640
      TabIndex        =   5
      Top             =   2880
      Width           =   975
   End
   Begin VB.CommandButton cmd4 
      Caption         =   "4"
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
      Left            =   240
      TabIndex        =   4
      Top             =   2880
      Width           =   975
   End
   Begin VB.CommandButton cmd7 
      Caption         =   "7"
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
      Left            =   240
      TabIndex        =   3
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "1"
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
      Left            =   240
      TabIndex        =   2
      Top             =   3600
      Width           =   975
   End
   Begin VB.TextBox txtNum 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   240
      Width           =   4575
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Operation As Integer
Dim intnum As Double

Private Sub txtnum_KeyPress(KeyAscii As Integer)

  '  MsgBox KeyAscii
    
    If KeyAscii = 8 Then
    If txtNum = "" Then
    txtNum = Trim(txtNum)
    Else
    txtNum = Mid(txtNum, 1, Len(txtNum) - 1)
    End If
     ElseIf KeyAscii = 46 Then
    txtNum = txtNum & "."
    ElseIf KeyAscii = 48 Then
    txtNum = txtNum & 0
    ElseIf KeyAscii = 49 Then
        txtNum.Text = txtNum.Text & 1
    ElseIf KeyAscii = 50 Then
        txtNum.Text = txtNum.Text & 2
    ElseIf KeyAscii = 51 Then
            txtNum.Text = txtNum.Text & 3
    ElseIf KeyAscii = 52 Then
       
        txtNum.Text = txtNum.Text & 4
    
    ElseIf KeyAscii = 53 Then
        
        txtNum.Text = txtNum.Text & 5

    ElseIf KeyAscii = 54 Then
        
        txtNum.Text = txtNum.Text & 6
   
    ElseIf KeyAscii = 55 Then
       
        txtNum.Text = txtNum.Text & 7
   
    ElseIf KeyAscii = 56 Then
        
        txtNum.Text = txtNum.Text & 8

    ElseIf KeyAscii = 57 Then
       
        txtNum.Text = txtNum.Text & 9
   

    End If

    If KeyAscii = 43 Then
        Operation = 1
        intnum = txtNum.Text
        txtNum = ""
    ElseIf KeyAscii = 45 Then
        Operation = 2
        intnum = txtNum.Text
        txtNum = ""
    ElseIf KeyAscii = 42 Then
        Operation = 3
        intnum = txtNum.Text
        txtNum = ""
    ElseIf KeyAscii = 47 Then
        Operation = 4
        intnum = txtNum.Text
        txtNum = ""
       End If
   If KeyAscii = 13 Or KeyAscii = 61 Then
     
    If Operation = 1 Then
        txtNum = intnum + txtNum
    
    ElseIf Operation = 2 Then
        txtNum = intnum - txtNum
    
    ElseIf Operation = 3 Then
        txtNum = intnum * txtNum
        
    ElseIf Operation = 4 Then
       txtNum = intnum / txtNum
    End If
    End If

End Sub

Private Sub cmd1_Click()

txtNum.Text = txtNum.Text & 1

End Sub

Private Sub cmd2_Click()

txtNum.Text = txtNum.Text & 2

End Sub


Private Sub cmd3_Click()

txtNum.Text = txtNum.Text & 3

End Sub

Private Sub cmd4_Click()

txtNum.Text = txtNum.Text & 4


End Sub

Private Sub cmd5_Click()

txtNum.Text = txtNum.Text & 5


End Sub

Private Sub cmd6_Click()

txtNum.Text = txtNum.Text & 6

End Sub

Private Sub cmd7_Click()

txtNum.Text = txtNum.Text & 7

End Sub

Private Sub cmd8_Click()

txtNum.Text = txtNum.Text & 8

End Sub

Private Sub cmd9_Click()

txtNum.Text = txtNum.Text & 9


End Sub

Private Sub cmd0_Click()
If txtNum = 0 Then
txtNum = 0
Else
txtNum.Text = txtNum.Text & 0
End If
End Sub



Private Sub cmdbck_Click()
If Len(txtNum) <> 0 Then
txtNum = Mid(txtNum, 1, Len(txtNum) - 1)
Else
txtNum = ""
End If
End Sub

Private Sub cmdClear_Click()
txtNum = ""
intnum = 0
End Sub
Private Sub cmddot_Click()
txtNum = txtNum & "."
End Sub

Private Sub cmdequal_Click()

If Operation = 1 Then
        txtNum = intnum + txtNum
    
    ElseIf Operation = 2 Then
        txtNum = intnum - txtNum
    
    ElseIf Operation = 3 Then
        txtNum = intnum * txtNum
        
    ElseIf Operation = 4 Then
       txtNum = intnum / txtNum
End If
End Sub
Private Sub cmdPlus_Click()
Operation = 1
intnum = txtNum.Text
txtNum = ""
End Sub

Private Sub cmdMinus_Click()
Operation = 2
intnum = txtNum.Text
txtNum = ""
End Sub

Private Sub cmdMul_Click()
Operation = 3
intnum = txtNum.Text
txtNum = ""
End Sub


Private Sub cmdDiv_Click()
Operation = 4
intnum = txtNum.Text
txtNum = ""
End Sub

