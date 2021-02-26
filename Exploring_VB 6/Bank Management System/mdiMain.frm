VERSION 5.00
Begin VB.MDIForm mdiMain 
   BackColor       =   &H00400000&
   Caption         =   "Bank Management System"
   ClientHeight    =   7320
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   11055
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuNew 
      Caption         =   "New"
   End
   Begin VB.Menu mMaster 
      Caption         =   "Master"
      Begin VB.Menu mnuEmployee 
         Caption         =   "Employee"
      End
      Begin VB.Menu mnuUser 
         Caption         =   "User"
      End
      Begin VB.Menu mnu 
         Caption         =   "Customer"
      End
   End
   Begin VB.Menu mnuPrint 
      Caption         =   "Print"
   End
End
Attribute VB_Name = "mdiMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuNew_Click()

End Sub
