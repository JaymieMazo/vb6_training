VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4170
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5280
   LinkTopic       =   "Form1"
   ScaleHeight     =   4170
   ScaleWidth      =   5280
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOk 
      Caption         =   "oK"
      Height          =   735
      Left            =   1440
      TabIndex        =   1
      Top             =   2640
      Width           =   2055
   End
   Begin VB.TextBox txt 
      Height          =   855
      Left            =   1200
      TabIndex        =   0
      Text            =   "I-LOVE-YOU"
      Top             =   480
      Width           =   2415
   End
   Begin VB.Label lbl 
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1200
      TabIndex        =   2
      Top             =   1680
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOk_Click()
Dim a As Integer

For a = 1 To Len(txt)

'lbl = lbl & Mid(txt, a, 1)
'lbl = Mid(txt, InStr(1, txt, "-") + 1, Len(txt))
If Mid(txt, a, 1) = "-" Then
lbl = Mid(txt, InStr(1, txt, "-") + 1, Len(txt))
End If

Next

End Sub

