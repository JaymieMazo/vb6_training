VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form frmMSHFLEXGRID 
   Caption         =   "MSHFlexGrid"
   ClientHeight    =   4035
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5625
   LinkTopic       =   "Form1"
   ScaleHeight     =   4035
   ScaleWidth      =   5625
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdEdit 
      Caption         =   "&Edit"
      Height          =   375
      Left            =   1440
      TabIndex        =   5
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmdDelete 
      Caption         =   "&Delete"
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmdPrint 
      Caption         =   "&Print"
      Height          =   375
      Left            =   4080
      TabIndex        =   3
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "&Add"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   3240
      Width           =   1215
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   1800
      TabIndex        =   1
      Top             =   4320
      Width           =   2415
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid FG1 
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   5106
      _Version        =   393216
      Rows            =   5
      Cols            =   5
      _NumberOfBands  =   1
      _Band(0).Cols   =   5
   End
End
Attribute VB_Name = "frmMSHFLEXGRID"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub FG1_Click()

With Me.FG1
If .Col = 4 Then
txt1.Text = .TextMatrix(.Row, .Col)
 txt1.SetFocus
.CellBackColor = vbYellow
 End If
End With
End Sub

Private Sub Form_Load()


With Me.FG1

'.Text = "HERE"
'.TextMatrix(2, 2) = "THERE"
.ColWidth(2) = 1200
.RowHeight(0) = 500
.ColAlignmentFixed(0) = 4
.ColAlignmentFixed(1) = 4
.ColAlignmentFixed(2) = 4
.ColAlignmentFixed(3) = 4
.ColAlignmentFixed(4) = 4
.TextMatrix(0, 0) = "ID"
.TextMatrix(0, 1) = "FirstName"
.TextMatrix(0, 2) = "MiddleName"
.TextMatrix(0, 3) = "LastName"
.TextMatrix(0, 4) = "Age"

.TextMatrix(1, 0) = "1"
.TextMatrix(2, 0) = "2"
.TextMatrix(3, 0) = "3"
.TextMatrix(4, 0) = "4"

.TextMatrix(1, 1) = "Anna"
.TextMatrix(2, 1) = "Elizabeth"
.TextMatrix(3, 1) = "Jophridale"
.TextMatrix(4, 1) = "Caressa"


.TextMatrix(1, 2) = "Gadon"
.TextMatrix(2, 2) = "Solis"
.TextMatrix(3, 2) = "Santos"
.TextMatrix(4, 2) = "Manzo"

.TextMatrix(1, 3) = "Magay"
.TextMatrix(2, 3) = "Caliben"
.TextMatrix(3, 3) = "Montero"
.TextMatrix(4, 3) = "Marquina"



End With
End Sub

Private Sub Image1_Click()
End Sub

Private Sub txt1_Change()

With Me.FG1
.TextMatrix(.Row, .Col) = txt1.Text
End With
End Sub


Private Sub FG1_LeaveCell()
FG1.CellBackColor = vbWhite
End Sub
