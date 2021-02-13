VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   ClientHeight    =   7170
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   ScaleHeight     =   7170
   ScaleWidth      =   4815
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   3240
      Top             =   3600
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3240
      Top             =   2400
   End
   Begin VB.Timer timStop 
      Left            =   3240
      Top             =   1080
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000008&
      Height          =   4335
      Left            =   960
      TabIndex        =   0
      Top             =   480
      Width           =   1935
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         FillColor       =   &H0000FF00&
         FillStyle       =   0  'Solid
         Height          =   855
         Index           =   2
         Left            =   240
         Shape           =   3  'Circle
         Top             =   1680
         Width           =   1335
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         FillColor       =   &H0000FFFF&
         FillStyle       =   0  'Solid
         Height          =   855
         Index           =   1
         Left            =   240
         Shape           =   3  'Circle
         Top             =   3000
         Width           =   1335
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H000000FF&
         BorderColor     =   &H00FFFFFF&
         BorderWidth     =   2
         FillColor       =   &H000000FF&
         FillStyle       =   0  'Solid
         Height          =   855
         Index           =   0
         Left            =   240
         Shape           =   3  'Circle
         Top             =   480
         Width           =   1335
      End
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FF80&
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   6240
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackColor       =   &H0080FF80&
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   5880
      Width           =   1335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H008080FF&
      BorderWidth     =   10
      X1              =   1920
      X2              =   1920
      Y1              =   5880
      Y2              =   4800
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub
