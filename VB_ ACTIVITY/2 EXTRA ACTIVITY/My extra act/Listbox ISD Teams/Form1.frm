VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00400000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Form1"
   ClientHeight    =   5595
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12210
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5595
   ScaleWidth      =   12210
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdLeft 
      Caption         =   "<<"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   7440
      TabIndex        =   7
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmdRight 
      Caption         =   ">>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   7440
      TabIndex        =   6
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00400000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   4815
      Left            =   9000
      TabIndex        =   4
      Top             =   360
      Width           =   2775
      Begin VB.ListBox lstSelected 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4140
         ItemData        =   "Form1.frx":0000
         Left            =   240
         List            =   "Form1.frx":0002
         MultiSelect     =   2  'Extended
         TabIndex        =   5
         Top             =   360
         Width           =   2295
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00400000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   4815
      Left            =   4320
      TabIndex        =   2
      Top             =   360
      Width           =   2775
      Begin VB.ListBox lstNames 
         CausesValidation=   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4140
         ItemData        =   "Form1.frx":0004
         Left            =   240
         List            =   "Form1.frx":0006
         MultiSelect     =   2  'Extended
         TabIndex        =   3
         Top             =   360
         Width           =   2295
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00400000&
      Caption         =   "ISD System Development"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   4815
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   3495
      Begin VB.ListBox lstTeam 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4260
         ItemData        =   "Form1.frx":0008
         Left            =   240
         List            =   "Form1.frx":0015
         TabIndex        =   1
         Top             =   360
         Width           =   3015
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim bck As ColorConstants
Dim fore As ColorConstants


Private Sub cmdLeft_Click()
Dim b As Integer
'
'While b <= lstSelected.ListCount - 1
'      If lstSelected.Selected(b) = True Then
'        lstNames.AddItem lstSelected.List(b)
'        lstSelected.RemoveItem b
'        End If
'        'b = b + 1
'Wend

b = lstSelected.ListCount - 1
While b >= 0
    If lstSelected.Selected(b) = True Then
        lstNames.AddItem lstSelected.List(b)
        lstSelected.RemoveItem b
        Else
    End If
        b = b - 1
Wend


End Sub

Private Sub cmdRight_Click()
Dim b As Integer



b = lstNames.ListCount - 1
While b >= 0
    If lstNames.Selected(b) = True Then
        lstSelected.AddItem lstNames.List(b)
        lstNames.RemoveItem b
    End If
        b = b - 1
Wend



If lstTeam.ListIndex = 0 Then

bck = vbMagenta
fore = vbWhite
lstSelected.BackColor = bck
lstSelected.ForeColor = fore

ElseIf lstTeam.ListIndex = 1 Then

bck = vbYellow
fore = vbBlack
lstSelected.BackColor = bck
lstSelected.ForeColor = fore


ElseIf lstTeam.ListIndex = 2 Then

bck = vbGreen
fore = vbBlack
lstSelected.BackColor = bck
lstSelected.ForeColor = fore


End If
End Sub
Private Sub lstTeam_Click()
If lstTeam.ListIndex = 0 Then
fore = vbWhite
lstNames.ForeColor = fore
bck = vbMagenta
lstNames.BackColor = bck
lstNames.Clear
lstNames.AddItem "LAARS"
lstNames.AddItem "Dems"
lstNames.AddItem "Leng"
lstNames.AddItem "Dan"
lstNames.AddItem "RB"
lstNames.AddItem "Krizzia"
lstNames.AddItem "Tubs"
lstNames.AddItem "Yani"
lstNames.AddItem "Clyde"
lstNames.AddItem "Gerald"
lstNames.AddItem "Carl"
lstNames.AddItem "Gio"
lstNames.AddItem "Jay"
lstNames.AddItem "Nessa"
lstNames.AddItem "Aira"
lstNames.AddItem "Jai"

lstSelected.Clear
bck = vbMagenta
fore = vbWhite
lstSelected.BackColor = bck
lstSelected.ForeColor = fore

ElseIf lstTeam.ListIndex = 1 Then
bck = vbYellow
lstNames.BackColor = bck
fore = vbBlack
lstNames.ForeColor = fore
lstNames.Clear
lstNames.AddItem "EJ"
lstNames.AddItem "Aldrin"
lstNames.AddItem "Drex"
lstNames.AddItem "Junar"
lstNames.AddItem "Daryl"
lstNames.AddItem "Ian"
lstNames.AddItem "Nathan"
lstNames.AddItem "Emil"
lstNames.AddItem "Rena"
lstNames.AddItem "Shalom"
lstNames.AddItem "Vic"
lstNames.AddItem "Wami"
lstNames.AddItem "Jhoy"
lstNames.AddItem "Kev"
lstNames.AddItem "Ram"
lstNames.AddItem "Norman"

lstSelected.Clear
bck = vbYellow
fore = vbBlack
lstSelected.BackColor = bck
lstSelected.ForeColor = fore
ElseIf lstTeam.ListIndex = 2 Then
fore = vbBlack
lstNames.ForeColor = fore
bck = vbGreen
lstNames.BackColor = bck
lstNames.Clear
lstNames.AddItem "JAE-ANN"
lstNames.AddItem "Sally"
lstNames.AddItem "Chan"
lstNames.AddItem "Angelo"
lstNames.AddItem "Paul"
lstNames.AddItem "Ton"
lstNames.AddItem "James"
lstNames.AddItem "Trisha"
lstNames.AddItem "Dhel"
lstNames.AddItem "Jaypee"
lstNames.AddItem "Marwin"
lstNames.AddItem "Leen"
lstNames.AddItem "Macriz"
lstNames.AddItem "Mark"
lstNames.AddItem "Lian"
lstNames.AddItem "Isay"
lstNames.AddItem "Chester"
lstNames.AddItem "Austien"
lstNames.AddItem "Trish"

lstSelected.Clear
bck = vbGreen
fore = vbBlack
lstSelected.BackColor = bck
lstSelected.ForeColor = fore
End If
End Sub
