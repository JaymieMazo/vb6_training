VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4065
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6360
   LinkTopic       =   "Form1"
   ScaleHeight     =   4065
   ScaleWidth      =   6360
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox num1 
      Height          =   495
      Left            =   2880
      TabIndex        =   2
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "ok"
      Height          =   615
      Left            =   1920
      TabIndex        =   1
      Top             =   1560
      Width           =   975
   End
   Begin VB.TextBox txt 
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOk_Click()
num1 = Sqr(txt)
If txt Mod Sqr(txt) = 0 Then
MsgBox "PERFECT"
Else
MsgBox "NOT PERFECT"
End If
End Sub

