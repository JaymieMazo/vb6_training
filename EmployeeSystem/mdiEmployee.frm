VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H00400000&
   Caption         =   "Employee Management System"
   ClientHeight    =   5520
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   8250
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuEmployees 
      Caption         =   "Employees"
   End
   Begin VB.Menu mnuMaster 
      Caption         =   "Master"
      Begin VB.Menu mnuUsers 
         Caption         =   "Users"
      End
      Begin VB.Menu mnuDepartments 
         Caption         =   "Departments"
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
Private Sub mnuUsers_Click()
frmUsers.Show
End Sub
