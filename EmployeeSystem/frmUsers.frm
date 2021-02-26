VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form frmUsers 
   BackColor       =   &H00400000&
   Caption         =   "Users"
   ClientHeight    =   4500
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7605
   LinkTopic       =   "Form1"
   ScaleHeight     =   4500
   ScaleWidth      =   7605
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command4 
      Caption         =   "&Print"
      Height          =   375
      Left            =   3720
      TabIndex        =   4
      Top             =   3960
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Update"
      Height          =   375
      Left            =   5640
      TabIndex        =   3
      Top             =   3960
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Delete"
      Height          =   375
      Left            =   4680
      TabIndex        =   2
      Top             =   3960
      Width           =   855
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   375
      Left            =   6600
      TabIndex        =   1
      Top             =   3960
      Width           =   855
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid mshUsers 
      Height          =   3495
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   6165
      _Version        =   393216
      BackColor       =   4194304
      ForeColor       =   -2147483639
      FixedCols       =   0
      BackColorFixed  =   8421504
      ForeColorFixed  =   16777215
      BackColorSel    =   16711680
      BackColorBkg    =   4194304
      BackColorUnpopulated=   16761024
      GridColor       =   4194304
      GridColorFixed  =   4194304
      GridColorUnpopulated=   4194304
      GridLinesFixed  =   0
      PictureType     =   1
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
End
Attribute VB_Name = "frmUsers"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAdd_Click()
frmAddUser.Show
End Sub

Private Sub Form_Load()

Call modLoadUsers
End Sub
