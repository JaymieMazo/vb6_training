VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Main Form"
   ClientHeight    =   6315
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   9375
   LinkTopic       =   "Form1"
   ScaleHeight     =   6315
   ScaleWidth      =   9375
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuEmployees 
      Caption         =   "Employees"
   End
   Begin VB.Menu mnuUsers 
      Caption         =   "Users"
   End
   Begin VB.Menu mnuDepartments 
      Caption         =   "Departments"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuEmployees_Click()
'Me.Hide
ViewEmployees.Show
End Sub
