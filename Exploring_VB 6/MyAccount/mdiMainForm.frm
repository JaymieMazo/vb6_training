VERSION 5.00
Begin VB.MDIForm mdiMainForm 
   BackColor       =   &H00400000&
   Caption         =   "Main Form"
   ClientHeight    =   5670
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   8205
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   Begin VB.Menu mnuLogTime 
      Caption         =   "LogTime"
   End
   Begin VB.Menu mnuLeave 
      Caption         =   "Leave"
   End
   Begin VB.Menu mnuBirthday 
      Caption         =   "Birthday"
   End
End
Attribute VB_Name = "mdiMainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuLogTime_Click()
frmLogTime.Show
End Sub
