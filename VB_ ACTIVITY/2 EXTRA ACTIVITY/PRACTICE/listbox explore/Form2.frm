VERSION 5.00
Begin VB.Form frmCat 
   BackColor       =   &H80000008&
   Caption         =   "Add Category"
   ClientHeight    =   2880
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6855
   LinkTopic       =   "Form2"
   ScaleHeight     =   2880
   ScaleWidth      =   6855
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&Ok"
      Height          =   615
      Left            =   4440
      TabIndex        =   2
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox txtCat 
      Height          =   375
      Left            =   2520
      TabIndex        =   1
      Top             =   600
      Width           =   3135
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000008&
      BackStyle       =   0  'Transparent
      Caption         =   "Category Name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   735
      Left            =   480
      TabIndex        =   0
      Top             =   720
      Width           =   2175
   End
End
Attribute VB_Name = "frmCat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
