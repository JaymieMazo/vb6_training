VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   8400
   ClientLeft      =   4605
   ClientTop       =   3885
   ClientWidth     =   8805
   LinkTopic       =   "Form1"
   ScaleHeight     =   8400
   ScaleWidth      =   8805
   Begin VB.TextBox txtremove 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   7560
      TabIndex        =   7
      Top             =   3240
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton cmdreset 
      Caption         =   "RESET"
      BeginProperty Font 
         Name            =   "Open Sans"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5400
      TabIndex        =   2
      Top             =   6000
      Width           =   1215
   End
   Begin MSFlexGridLib.MSFlexGrid msfg2 
      Height          =   3255
      Left            =   4680
      TabIndex        =   1
      Top             =   2520
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   5741
      _Version        =   393216
      Rows            =   1
      Cols            =   1
      FixedRows       =   0
   End
   Begin VB.CommandButton cmddraw 
      Caption         =   "DRAW"
      BeginProperty Font 
         Name            =   "Open Sans"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5400
      TabIndex        =   3
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton cmdadd 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      TabIndex        =   4
      Top             =   840
      Width           =   975
   End
   Begin MSFlexGridLib.MSFlexGrid msfg1 
      Height          =   4815
      Left            =   720
      TabIndex        =   0
      Top             =   1800
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   8493
      _Version        =   393216
      Rows            =   1
      Cols            =   1
      FixedRows       =   0
      BackColor       =   16777215
      BackColorFixed  =   12632256
      BackColorBkg    =   14737632
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Open Sans"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox txtname 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Candara"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   720
      TabIndex        =   5
      Top             =   840
      Width           =   2175
   End
   Begin VB.Shape Shape30 
      BorderColor     =   &H000080FF&
      Height          =   975
      Left            =   9240
      Top             =   7440
      Width           =   375
   End
   Begin VB.Shape Shape29 
      BorderColor     =   &H00FF00FF&
      Height          =   375
      Left            =   8520
      Top             =   7920
      Width           =   855
   End
   Begin VB.Shape Shape28 
      BorderColor     =   &H00FFFF80&
      Height          =   975
      Left            =   8280
      Top             =   7200
      Width           =   375
   End
   Begin VB.Shape Shape27 
      BorderColor     =   &H0000FFFF&
      Height          =   615
      Left            =   7920
      Top             =   7680
      Width           =   1095
   End
   Begin VB.Shape Shape26 
      BorderColor     =   &H0080FFFF&
      Height          =   1095
      Left            =   6480
      Top             =   7320
      Width           =   255
   End
   Begin VB.Shape Shape25 
      BorderColor     =   &H00FF00FF&
      Height          =   735
      Left            =   6840
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Shape Shape24 
      BorderColor     =   &H0000FF00&
      Height          =   975
      Left            =   7680
      Top             =   7440
      Width           =   375
   End
   Begin VB.Shape Shape23 
      BorderColor     =   &H00FFFF00&
      Height          =   495
      Left            =   6600
      Top             =   7920
      Width           =   1215
   End
   Begin VB.Shape Shape22 
      BorderColor     =   &H000080FF&
      Height          =   855
      Left            =   6240
      Top             =   7440
      Width           =   615
   End
   Begin VB.Shape Shape21 
      BorderColor     =   &H00FF00FF&
      Height          =   375
      Left            =   5520
      Top             =   7920
      Width           =   855
   End
   Begin VB.Shape Shape20 
      BorderColor     =   &H00FFFF80&
      Height          =   975
      Left            =   5280
      Top             =   7200
      Width           =   375
   End
   Begin VB.Shape Shape19 
      BorderColor     =   &H0000FFFF&
      Height          =   615
      Left            =   4920
      Top             =   7680
      Width           =   1095
   End
   Begin VB.Shape Shape18 
      BorderColor     =   &H0080FFFF&
      Height          =   1215
      Left            =   3480
      Top             =   7200
      Width           =   255
   End
   Begin VB.Shape Shape17 
      BorderColor     =   &H00FF00FF&
      Height          =   735
      Left            =   3840
      Top             =   7320
      Width           =   1095
   End
   Begin VB.Shape Shape16 
      BorderColor     =   &H0000FF00&
      Height          =   975
      Left            =   4680
      Top             =   7440
      Width           =   375
   End
   Begin VB.Shape Shape15 
      BorderColor     =   &H00FFFF00&
      Height          =   495
      Left            =   3600
      Top             =   7920
      Width           =   1215
   End
   Begin VB.Shape Shape14 
      BorderColor     =   &H000080FF&
      Height          =   855
      Left            =   2880
      Top             =   7440
      Width           =   615
   End
   Begin VB.Shape Shape13 
      BorderColor     =   &H00FF00FF&
      Height          =   375
      Left            =   2160
      Top             =   7920
      Width           =   855
   End
   Begin VB.Shape Shape12 
      BorderColor     =   &H00FFFF80&
      Height          =   975
      Left            =   1920
      Top             =   7200
      Width           =   375
   End
   Begin VB.Shape Shape11 
      BorderColor     =   &H0000FFFF&
      Height          =   615
      Left            =   1560
      Top             =   7680
      Width           =   1095
   End
   Begin VB.Shape Shape10 
      BorderColor     =   &H0080FFFF&
      Height          =   1095
      Left            =   120
      Top             =   7320
      Width           =   255
   End
   Begin VB.Line Line4 
      BorderColor     =   &H0080FFFF&
      X1              =   4800
      X2              =   7560
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Line Line3 
      BorderColor     =   &H0080FFFF&
      X1              =   4800
      X2              =   7560
      Y1              =   1440
      Y2              =   1440
   End
   Begin VB.Line Line2 
      BorderColor     =   &H0080FFFF&
      X1              =   4680
      X2              =   7440
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0080FFFF&
      X1              =   4680
      X2              =   7440
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "ENTER NAME:"
      BeginProperty Font 
         Name            =   "Open Sans"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   480
      TabIndex        =   8
      Top             =   360
      Width           =   2055
   End
   Begin VB.Shape Shape8 
      BorderColor     =   &H00FF80FF&
      Height          =   375
      Left            =   5160
      Shape           =   4  'Rounded Rectangle
      Top             =   5880
      Width           =   1455
   End
   Begin VB.Shape Shape7 
      BorderColor     =   &H0080FFFF&
      Height          =   495
      Left            =   5280
      Shape           =   4  'Rounded Rectangle
      Top             =   6000
      Width           =   1455
   End
   Begin VB.Shape Shape6 
      BorderColor     =   &H00FFFF00&
      Height          =   4935
      Left            =   480
      Top             =   1560
      Width           =   3855
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H0000FFFF&
      Height          =   4935
      Left            =   600
      Top             =   1680
      Width           =   3615
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H0000FF00&
      Height          =   975
      Left            =   1320
      Top             =   7440
      Width           =   375
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FF00FF&
      Height          =   615
      Left            =   5280
      Shape           =   4  'Rounded Rectangle
      Top             =   720
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFF00&
      Height          =   615
      Left            =   5160
      Shape           =   4  'Rounded Rectangle
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label lblname 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Open Sans"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   4920
      TabIndex        =   6
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Shape Shape5 
      BorderColor     =   &H00FFFF00&
      Height          =   495
      Left            =   240
      Top             =   7920
      Width           =   1215
   End
   Begin VB.Shape Shape9 
      BorderColor     =   &H00FF00FF&
      Height          =   735
      Left            =   480
      Top             =   7320
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdadd_Click()
If txtname = "" Then
Exit Sub
End If

With msfg1
    .AddItem txtname
    txtname = ""
    End With
End Sub

Private Sub cmddraw_Click()
Randomize
If msfg1.Rows > 1 Then
Do
x = Int(((msfg1.Rows - 1) * Rnd) + 1)
lblname = msfg1.TextMatrix(x, 0)
With msfg2
    .AddItem lblname
     End With
With msfg1
    .RemoveItem x
    
    End With
Loop Until x

Else
MsgBox "invalid! Please enter name."
lblname = ""
End If


End Sub

Private Sub cmdreset_Click()
For i = 1 To msfg2.Rows - 1
txtremove = msfg2.TextMatrix(1, 0)
With msfg2
.RemoveItem msfg2.Row + 1
End With
With msfg1
.AddItem txtremove
End With
Next
lblname = ""
End Sub

Private Sub Form_Load()
With msfg1
    .TextMatrix(0, 0) = "Name"
    End With
With msfg2
    .TextMatrix(0, 0) = "Finished"
    End With
End Sub


