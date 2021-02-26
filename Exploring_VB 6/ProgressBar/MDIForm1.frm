VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   6810
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   10695
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuAdd 
         Caption         =   "Add"
      End
      Begin VB.Menu mnuEdit 
         Caption         =   "Edit"
      End
      Begin VB.Menu mnuDelete 
         Caption         =   "Delete"
      End
   End
   Begin VB.Menu mnuMaster 
      Caption         =   "Master"
      Begin VB.Menu mnuEmployees 
         Caption         =   "Employees"
      End
      Begin VB.Menu mnuDepartment 
         Caption         =   "Department"
      End
      Begin VB.Menu mnuSections 
         Caption         =   "Sections"
      End
      Begin VB.Menu mnuPositions 
         Caption         =   "Positions"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuEmployees_Click()
frmEmployees.Show
End Sub
