VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form frmEmployees 
   BackColor       =   &H00400000&
   Caption         =   "Employees"
   ClientHeight    =   6855
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9705
   LinkTopic       =   "Form2"
   ScaleHeight     =   6855
   ScaleWidth      =   9705
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00400000&
      Height          =   5775
      Left            =   480
      TabIndex        =   2
      Top             =   840
      Width           =   8775
      Begin MSHierarchicalFlexGridLib.MSHFlexGrid mshEmployees 
         Height          =   5415
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   8535
         _ExtentX        =   15055
         _ExtentY        =   9551
         _Version        =   393216
         _NumberOfBands  =   1
         _Band(0).Cols   =   2
      End
   End
   Begin VB.ComboBox cboViewby 
      Height          =   315
      Left            =   1200
      TabIndex        =   1
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "View By:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "frmEmployees"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
cboViewby.AddItem "EmployeeID"
cboViewby.AddItem "Name"
cboViewby.AddItem "Department"
cboViewby.AddItem "Position"
Call fnEmployees("All")

End Sub




