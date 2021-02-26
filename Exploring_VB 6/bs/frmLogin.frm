VERSION 5.00
Begin VB.Form frmLogin 
   Caption         =   "Login"
   ClientHeight    =   1890
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3750
   LinkTopic       =   "Form1"
   ScaleHeight     =   1890
   ScaleWidth      =   3750
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   2640
      TabIndex        =   5
      Top             =   1320
      Width           =   975
   End
   Begin VB.CommandButton cmdLogin 
      Caption         =   "&Login"
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Top             =   1320
      Width           =   975
   End
   Begin VB.TextBox txtPword 
      Height          =   375
      Left            =   1200
      TabIndex        =   3
      Top             =   720
      Width           =   2415
   End
   Begin VB.TextBox txtUname 
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   240
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "Password:"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Username:"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdLogin_Click()

End Sub

Private Sub Form_Load()
Call Employees
End Sub



Private Sub Label3_Click()

End Sub
