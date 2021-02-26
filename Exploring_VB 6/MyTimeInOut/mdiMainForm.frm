VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "Main Form"
   ClientHeight    =   7620
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   10860
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   Begin VB.Menu mnuSearch 
      Caption         =   "Search"
   End
   Begin VB.Menu mnuLogTime 
      Caption         =   "Log Time"
   End
   Begin VB.Menu mnuPA 
      Caption         =   "Perfect Attendance"
   End
   Begin VB.Menu mnubday 
      Caption         =   "Birthday"
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Click()
frmLogTime.Hide
End Sub

Private Sub mnuLogTime_Click()
frmLogTime.Show
End Sub
