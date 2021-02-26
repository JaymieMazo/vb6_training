VERSION 5.00
Begin VB.Form frmAddEmp 
   Caption         =   "Form1"
   ClientHeight    =   2970
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4995
   LinkTopic       =   "Form1"
   ScaleHeight     =   2970
   ScaleWidth      =   4995
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   9
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3600
      TabIndex        =   8
      Top             =   2160
      Width           =   1095
   End
   Begin VB.TextBox txtMname 
      Height          =   285
      Left            =   1800
      TabIndex        =   7
      Top             =   1680
      Width           =   2895
   End
   Begin VB.TextBox txtFname 
      Height          =   285
      Left            =   1800
      TabIndex        =   5
      Top             =   1200
      Width           =   2895
   End
   Begin VB.TextBox txtLName 
      Height          =   285
      Left            =   1800
      TabIndex        =   3
      Top             =   720
      Width           =   2895
   End
   Begin VB.TextBox txtID 
      Height          =   285
      Left            =   1800
      TabIndex        =   1
      Top             =   240
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Middle Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "First Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Last Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label lblID 
      Caption         =   "Employee ID:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "frmAddEmp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
Unload Me
frmMSHFlexGrid.Show
End Sub

Private Sub Form_Load()



With frmMSHFlexGrid.MSHFlexGrid1

txtID.Text = .TextMatrix(.Rows - 1, 0) + 1
End With


End Sub
