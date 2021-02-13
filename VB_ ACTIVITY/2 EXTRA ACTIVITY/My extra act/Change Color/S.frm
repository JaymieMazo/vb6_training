VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5385
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11745
   LinkTopic       =   "Form1"
   ScaleHeight     =   5385
   ScaleWidth      =   11745
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Change Color"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   720
      TabIndex        =   8
      Top             =   3600
      Width           =   2295
   End
   Begin VB.TextBox txtGreen 
      Height          =   375
      Left            =   1800
      TabIndex        =   7
      Top             =   2400
      Width           =   2415
   End
   Begin VB.TextBox txtBlue 
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   1800
      Width           =   2415
   End
   Begin VB.TextBox txtRed 
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   1200
      Width           =   2415
   End
   Begin VB.ComboBox cmbObj 
      Height          =   315
      Left            =   1440
      TabIndex        =   0
      Text            =   "Combo1"
      Top             =   360
      Width           =   2775
   End
   Begin VB.Shape Shape3 
      Height          =   1215
      Left            =   9240
      Shape           =   5  'Rounded Square
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Shape Shape2 
      Height          =   1215
      Left            =   7200
      Shape           =   3  'Circle
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      Height          =   1215
      Left            =   5040
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "BLUE:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   600
      TabIndex        =   4
      Top             =   1800
      Width           =   1815
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "GREEN:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   600
      TabIndex        =   3
      Top             =   2520
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "RED:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   600
      TabIndex        =   2
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Object: "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Combo1_Change()

End Sub

Private Sub Command1_Click()
Command1.CausesValidation
End Sub

Private Sub Form_Load()
Dim a As Variant

For Each a In Me
cmbObj.AddItem a.Name
Next
End Sub

