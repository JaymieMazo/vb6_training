VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4050
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6270
   LinkTopic       =   "Form1"
   ScaleHeight     =   4050
   ScaleWidth      =   6270
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox cboSubjects 
      Height          =   315
      Left            =   720
      TabIndex        =   1
      Text            =   "---Subjects-----"
      Top             =   840
      Width           =   3495
   End
   Begin VB.ComboBox cbocategory 
      Height          =   315
      Left            =   720
      TabIndex        =   0
      Text            =   "--Category-----"
      Top             =   360
      Width           =   3495
   End
   Begin VB.Label lblindex 
      BorderStyle     =   1  'Fixed Single
      Height          =   375
      Left            =   4440
      TabIndex        =   2
      Top             =   360
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cbocategory_Click()
lblindex.Caption = cbocategory.ListIndex
cboSubjects.Clear
If cbocategory.ListIndex = 0 Then

    cboSubjects.AddItem "Algebra"
    cboSubjects.AddItem "Trigonometry"

ElseIf cbocategory.ListIndex = 1 Then

    cboSubjects.AddItem "Communication Arts I"
    cboSubjects.AddItem "Literature"


ElseIf cbocategory.ListIndex = 2 Then

    cboSubjects.AddItem "Turbo C++"
    cboSubjects.AddItem "Java Eclipse"


End If
End Sub
Private Sub Form_Load()
cbocategory.AddItem "Math"
cbocategory.AddItem "English"
cbocategory.AddItem "ICT"
End Sub


