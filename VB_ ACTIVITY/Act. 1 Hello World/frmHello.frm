VERSION 5.00
Begin VB.Form frmHello 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Hello World"
   ClientHeight    =   990
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2715
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   990
   ScaleWidth      =   2715
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdGreet 
      Caption         =   "Greet"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
End
Attribute VB_Name = "frmHello"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()

End Sub

Private Sub cmdGreet_Click()
MsgBox "Hello World", vbInformation, "System Message"
End Sub
