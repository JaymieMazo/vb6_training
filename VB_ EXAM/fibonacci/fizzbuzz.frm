VERSION 5.00
Begin VB.Form fizzbuzz 
   Caption         =   "Form2"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   2400
      TabIndex        =   1
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "fizzbuzz"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For a = 1 To Text1.Text

    If a Mod 15 = 0 Then
     
     Print a & "  Fizzbuzz"

    ElseIf a Mod 5 = 0 Then
    Print a & " fizz"
    
    ElseIf a Mod 3 = 0 Then
    
        Print a & " buzz"
        End If
    Next

End Sub
