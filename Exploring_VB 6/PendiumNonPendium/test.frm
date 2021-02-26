VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   Caption         =   "BALIKTARAN"
   ClientHeight    =   1830
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6210
   LinkTopic       =   "Form1"
   ScaleHeight     =   1830
   ScaleWidth      =   6210
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton c 
      Caption         =   "&Ok"
      Height          =   495
      Left            =   960
      TabIndex        =   1
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox t 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   645
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
   Begin VB.Label L3 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3600
      TabIndex        =   4
      Top             =   1320
      Width           =   2535
   End
   Begin VB.Label l2 
      BackColor       =   &H00000000&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Left            =   3600
      TabIndex        =   3
      Top             =   720
      Width           =   2535
   End
   Begin VB.Label l1 
      BackColor       =   &H00000000&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Left            =   3600
      TabIndex        =   2
      Top             =   240
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub c_Click()
Dim i As Integer
Dim b As Integer

l1 = ""
l2 = ""
    
    For i = 1 To Len(t)
    l1 = UCase(l1) & UCase(Mid(t.Text, i, 1))
    Next

    For b = 1 To Len(t)
    l2 = UCase(Mid(t.Text, b, 1)) & UCase(l2)
    Next

If l2 = l1 Then
L3 = "YES, IT IS!"
Else
L3 = "NO, IT'S NOT!"
End If
End Sub

