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
   Begin VB.CommandButton c 
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin VB.TextBox t 
      Height          =   405
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label l 
      Height          =   735
      Left            =   840
      TabIndex        =   2
      Top             =   1680
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub c_Click()
Dim i As Integer

'For i = 1 To Len(t)
'l = l & Mid(t.Text, i, 1)
'Next

For i = Len(t) To 1
l = l & Mid(t.Text, i, 1)
Next
End Sub
