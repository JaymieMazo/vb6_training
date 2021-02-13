VERSION 5.00
Begin VB.Form lblCurTime 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   3825
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5295
   LinkTopic       =   "Form1"
   ScaleHeight     =   3825
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Choose Language"
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
      Height          =   2295
      Left            =   1680
      TabIndex        =   3
      Top             =   600
      Width           =   2655
      Begin VB.OptionButton optEnglish 
         BackColor       =   &H00000000&
         Caption         =   "English"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   480
         Width           =   2055
      End
      Begin VB.OptionButton optJapanese 
         BackColor       =   &H00000000&
         Caption         =   "Japanese"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   1080
         Width           =   2055
      End
      Begin VB.OptionButton optFilipino 
         BackColor       =   &H00000000&
         Caption         =   "Filipino"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   1680
         Width           =   2055
      End
   End
   Begin VB.Timer timDisplay 
      Interval        =   1000
      Left            =   4440
      Top             =   120
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "OK"
      Height          =   375
      Left            =   3600
      TabIndex        =   0
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Current Time: "
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
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label lblTime 
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "00: 00: 00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   120
      Width           =   2655
   End
End
Attribute VB_Name = "lblCurTime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Today As Variant

Private Sub cmdOk_Click()
If lblTime.Caption < "12:00" Then

      If optEnglish.Value = True Then
        MsgBox (" Good Morning")
        ElseIf optJapanese.Value = True Then
        MsgBox " Ohayo Gozaimasu"
        ElseIf optFilipino.Value = True Then
        MsgBox " Magandang Umaga"

      End If

ElseIf lblTime.Caption >= "12:00" And lblTime.Caption <= "17:59" Then
     If optEnglish.Value = True Then
    MsgBox (" Good Afternoon")
     ElseIf optJapanese.Value = True Then
        MsgBox (" Konnichiwa")
    ElseIf optFilipino.Value = True Then
        MsgBox (" Magandang Hapon")
   End If


ElseIf lblTime.Caption > "18:00" Then

      If optEnglish.Value = True Then
    MsgBox (" Good Evening")
     ElseIf optJapanese.Value = True Then
        MsgBox (" Konbanwa")
    ElseIf optFilipino.Value = True Then
        MsgBox (" Magandang Gabi")

    End If
Else
    MsgBox "error!"
End If

End Sub





Private Sub timDisplay_Timer()
Today = Now
lblTime.Caption = Format(Today, "hh:mm:ss")
End Sub

