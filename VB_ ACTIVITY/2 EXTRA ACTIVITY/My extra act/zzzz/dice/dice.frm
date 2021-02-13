VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5400
   ClientLeft      =   4440
   ClientTop       =   4065
   ClientWidth     =   8655
   LinkTopic       =   "Form1"
   ScaleHeight     =   5400
   ScaleWidth      =   8655
   Begin MSFlexGridLib.MSFlexGrid msfg 
      Height          =   2775
      Left            =   3240
      TabIndex        =   2
      Top             =   960
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   4895
      _Version        =   393216
      Rows            =   1
   End
   Begin VB.TextBox txtnumber 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "DejaVu Sans Condensed"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   720
      TabIndex        =   1
      Top             =   1560
      Width           =   1815
   End
   Begin VB.CommandButton cmdroll 
      Caption         =   "Roll a dice"
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   720
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdroll_Click()
Dim x As Integer
Randomize
Do
x = Int(6 * Rnd + 1)
txtnumber = x
Loop Until x
Time = Now
Time = Format(Now, "HH:MM:SS")

    
With msfg
    .AddItem txtnumber
    .TextMatrix(.Rows - 1, 1) = Time
End With
End Sub

Private Sub Form_Load()
Randomize (i)

With msfg
    .TextMatrix(0, 0) = "Score"
    .TextMatrix(0, 1) = "Time Rolled"
End With
End Sub

