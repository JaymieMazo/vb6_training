VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Menu for  Today"
   ClientHeight    =   6000
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10710
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6000
   ScaleWidth      =   10710
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdGenerate 
      BackColor       =   &H00C0E0FF&
      Caption         =   "&GENERATE"
      Height          =   615
      Left            =   8520
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5040
      UseMaskColor    =   -1  'True
      Width           =   1815
   End
   Begin VB.Frame fraOrder 
      BackColor       =   &H00000000&
      Caption         =   "ORDER"
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
      Height          =   4095
      Left            =   6360
      TabIndex        =   3
      Top             =   600
      Width           =   4095
      Begin VB.TextBox txtOrder 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3375
         Left            =   240
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   4
         Top             =   480
         Width           =   3495
      End
   End
   Begin VB.Frame fraMenu 
      BackColor       =   &H00000000&
      Caption         =   "MENU FOR TODAY"
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
      Height          =   4095
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   6015
      Begin VB.Frame Frame4 
         BackColor       =   &H80000008&
         Caption         =   "Dishes"
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
         Height          =   2415
         Left            =   2760
         TabIndex        =   9
         Top             =   1320
         Width           =   3015
         Begin VB.CheckBox chkAdobo 
            BackColor       =   &H80000012&
            Caption         =   "Adobong Manok = P21:00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   120
            TabIndex        =   13
            Top             =   360
            Width           =   2655
         End
         Begin VB.CheckBox chkMenudo 
            BackColor       =   &H80000012&
            Caption         =   "Menudo = P22.00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   120
            TabIndex        =   12
            Top             =   840
            Width           =   1935
         End
         Begin VB.CheckBox chkBicol 
            BackColor       =   &H80000012&
            Caption         =   "Bicol Express = P22.00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   120
            TabIndex        =   11
            Top             =   1320
            Width           =   2415
         End
         Begin VB.CheckBox chkLiver 
            BackColor       =   &H80000012&
            Caption         =   "Liver with Gizzard = P25.00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   120
            TabIndex        =   10
            Top             =   1800
            Width           =   2775
         End
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H80000008&
         Caption         =   "Rice"
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
         Height          =   2415
         Left            =   240
         TabIndex        =   5
         Top             =   1320
         Width           =   2295
         Begin VB.CheckBox chkExtra 
            BackColor       =   &H80000012&
            Caption         =   "Extra    = P7:00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   240
            TabIndex        =   8
            Top             =   1680
            Width           =   1815
         End
         Begin VB.CheckBox chkMed 
            BackColor       =   &H80000012&
            Caption         =   "Medium =P15.00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   240
            TabIndex        =   7
            Top             =   960
            Width           =   1815
         End
         Begin VB.CheckBox chkReg 
            BackColor       =   &H80000012&
            Caption         =   "Regular = P10.00"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   375
            Left            =   240
            TabIndex        =   6
            Top             =   360
            Width           =   1935
         End
      End
      Begin VB.TextBox txtName 
         BackColor       =   &H80000007&
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
         Left            =   1200
         TabIndex        =   2
         Top             =   480
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "NAME"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   495
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   975
      End
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   3
      X1              =   0
      X2              =   3960
      Y1              =   5760
      Y2              =   5760
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   3
      X1              =   5160
      X2              =   10680
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFF80&
      BorderWidth     =   3
      X1              =   0
      X2              =   6120
      Y1              =   5640
      Y2              =   5640
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFF80&
      BorderWidth     =   3
      X1              =   7560
      X2              =   10680
      Y1              =   120
      Y2              =   120
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim strRice As String
Dim strDish As String
Dim Dish As String
Dim intRice As Double
Dim intDish As Double
Dim intTotal As Double
Dim a As ColorConstants
Dim bck As ColorConstants



Private Sub chkAdobo_Click()
If chkAdobo.Value = 1 Then
a = vbCyan
chkAdobo.ForeColor = a

strDish = strDish & " " & vbCrLf & chkAdobo.Caption
intDish = intDish + 21

Else
a = vbRed
chkAdobo.ForeColor = a
    strDish = Replace(strDish, " " & vbCrLf & chkAdobo.Caption, "")
    intDish = intDish - 21
End If
End Sub

Private Sub chkBicol_Click()
If chkBicol.Value = 1 Then

a = vbCyan
chkBicol.ForeColor = a

strDish = strDish & " " & vbCrLf & chkBicol.Caption
intDish = intDish + 22
Else

a = vbRed
chkBicol.ForeColor = a
    strDish = Replace(strDish, " " & vbCrLf & chkBicol.Caption, "")
    intDish = intDish - 22
End If
End Sub

Private Sub chkLiver_Click()
If chkLiver.Value = 1 Then

a = vbCyan
chkLiver.ForeColor = a

strDish = strDish & " " & vbCrLf & chkLiver.Caption
intDish = intDish + 25
Else
a = vbRed
chkLiver.ForeColor = a

 strDish = Replace(strDish, " " & vbCrLf & chkLiver.Caption, "")
intDish = intDish - 25
End If

End Sub

Private Sub chkMenudo_Click()
If chkMenudo.Value = 1 Then
a = vbCyan
chkMenudo.ForeColor = a

strDish = strDish & " " & vbCrLf & chkMenudo.Caption
intDish = intDish + 22
Else
a = vbRed
chkMenudo.ForeColor = a
 strDish = Replace(strDish, " " & vbCrLf & chkMenudo.Caption, "")
intDish = intDish - 22
End If

End Sub

Private Sub chkExtra_Click()

If chkExtra.Value = 1 Then
a = vbCyan
chkExtra.ForeColor = a

strRice = strRice & " " & vbCrLf & chkExtra.Caption
intRice = intRice + 7

Else
a = vbRed
chkExtra.ForeColor = a

 strRice = Replace(strRice, " " & vbCrLf & chkExtra.Caption, "")
intRice = intRice - 7
End If

'MsgBox strRice
End Sub

Private Sub chkMed_Click()
If chkMed.Value = 1 Then
a = vbCyan
chkMed.ForeColor = a

strRice = strRice & " " & vbCrLf & chkMed.Caption
intRice = intRice + 15
Else
a = vbRed
chkMed.ForeColor = a


 strRice = Replace(strRice, " " & vbCrLf & chkMed.Caption, "")
intRice = intRice - 15
End If
'MsgBox strRice
End Sub
Private Sub chkReg_Click()
If chkReg.Value = 1 Then
a = vbCyan
chkReg.ForeColor = a
strRice = strRice & " " & vbCrLf & chkReg.Caption
intRice = intRice + 10

Else
a = vbRed
chkReg.ForeColor = a
 strRice = Replace(strRice, " " & vbCrLf & chkReg.Caption, "")
intRice = intRice - 10
End If
'MsgBox strRice
End Sub

Private Sub cmdGenerate_Click()
'bck = vbCyan
'cmdGenerate.BackColor = bck

bck = vbBlack
a = vbCyan

txtOrder.Text = " "
intTotal = intDish + intRice
txtOrder.BackColor = bck


If Trim(txtName.Text) = "" Then
MsgBox "Please Input your Name", vbInformation, "Warning"
txtOrder.Text = ""

End If

If (chkReg.Value = 0 And chkMed.Value = 0 And chkExtra.Value = 0) And (chkAdobo.Value = 0 And chkMenudo.Value = 0 And chkBicol.Value = 0 And chkLiver.Value = 0) Then
MsgBox "Please Select Rice or Dishes", vbInformation, "Warning"


ElseIf txtName.Text = "" Or txtName.Text = " " Then
txtOrder.Text = " "

Else
If txtOrder.Text <> "" Or txtOrder.Text <> "" Then
bck = vbBlack
txtOrder.ForeColor = a
txtOrder.BackColor = bck
txtOrder.Text = "Name: " & txtName.Text & vbCrLf & vbCrLf & "Rice: " & strRice & vbCrLf & vbCrLf & "Dish:" & strDish & vbCrLf & vbCrLf & "Total: " & vbCrLf & "P" & intTotal & ".00"

End If
End If
txtName.Text = ""
chkReg.Value = 0
chkMed.Value = 0
chkExtra.Value = 0
chkAdobo.Value = 0
chkMenudo.Value = 0
chkBicol.Value = 0
chkLiver.Value = 0
End Sub

Private Sub Form_Load()
a = vbBlue
End Sub

