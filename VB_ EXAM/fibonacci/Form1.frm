VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOk 
      Caption         =   "Command1"
      Height          =   615
      Left            =   2400
      TabIndex        =   1
      Top             =   1920
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Height          =   735
      Left            =   1440
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOk_Click()
Dim num1 As Integer
Dim num2 As Integer
Dim ans As Integer
Dim a As Integer


num1 = 1
num2 = 0
ans = 0
Cls

For a = 1 To txt.Text
num2 = num1
num1 = ans
ans = num1 + num2
Print ans
Next

End Sub


