VERSION 5.00
Begin VB.Form frmStopWatch 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stopwatch Application"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5535
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   5535
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton cmdEnd 
      Caption         =   "&End Timing"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "&Start Timing"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label lblElapsed 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   3720
      TabIndex        =   8
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label lblEnd 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   3720
      TabIndex        =   7
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label lblETime 
      Caption         =   "End Time"
      Height          =   255
      Left            =   2280
      TabIndex        =   6
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblElTime 
      Caption         =   "Elapsed Time"
      Height          =   375
      Left            =   2280
      TabIndex        =   5
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label lblStart 
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   3720
      TabIndex        =   4
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label lblSTime 
      Caption         =   "Start Time"
      Height          =   375
      Left            =   2280
      TabIndex        =   3
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "frmStopWatch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim StartTime   As Variant
Dim EndTime     As Variant
Dim ElapsedTime As Variant





Private Sub cmdEnd_Click()
EndTime = Now
ElapsedTime = EndTime - StartTime
lblEnd.Caption = Format(EndTime, "hh:mm:ss")
lblElapsed.Caption = Format(ElapsedTime, "hh:mm:ss")

End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdStart_Click()
StartTime = Now
lblStart.Caption = Format(StartTime, "hh:mm:ss")
lblEnd.Caption = ""
lblElapsed.Caption = ""
End Sub


