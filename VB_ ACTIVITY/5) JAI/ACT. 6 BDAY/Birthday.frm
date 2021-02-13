VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00400000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Form1"
   ClientHeight    =   4005
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4890
   ForeColor       =   &H8000000B&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4005
   ScaleWidth      =   4890
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   435
      Left            =   2640
      TabIndex        =   2
      Top             =   3120
      Width           =   975
   End
   Begin MSComCtl2.DTPicker dtBday 
      Height          =   495
      Left            =   1080
      TabIndex        =   1
      Top             =   960
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   873
      _Version        =   393216
      Format          =   3670017
      CurrentDate     =   43209
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Select your birthday:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Cmdok_Click()
Dim intDate As Integer
Dim intmonth As Integer
Dim month As Integer
Dim age As Integer

intDate = Int(Format(dtBday.Value, "MMDD"))
intmonth = Int(Format(dtBday.Value, "MM"))
age = Format(Date, "YYYY") - Format(dtBday, "YYYY")

If Format(Date, "MM") >= Format(dtBday, "MM") Then
    month = Format(Date, "MM") - Format(dtBday, "MM")
Else
    age = age - 1
    month = (Format(Date, "MM") + 12) - Format(dtBday, "MM")
End If

    If Format(Date, "DD") < Format(dtBday, "DD") Then
        If month = 0 Then
            month = 11
            age = age - 1
        Else
            month = month - 1
        End If
    End If
    
'AQUARIUS

If intDate > "119" And intDate <= "218" Then

  MsgBox "Your Zodiac Sign is AQUARIUS.  " & age & " years old " & month & " months old"
        
'PISCES
ElseIf intDate >= "219" And intDate <= "319" Then
        MsgBox "Your Zodiac Sign is  PISCES.  " & age & " years old " & month & " months old"


'ARIES
ElseIf intDate >= "320" And intDate <= "419" Then

        
        MsgBox "Your Zodiac Sign is  ARIES.  " & age & " years old " & month & " months old"

'TAURUS
ElseIf intDate >= "420" And intDate <= "519" Then

    MsgBox "Your Zodiac Sign is  TAURUS.  " & age & " years old " & month & " months old"
    
'GEMINI
ElseIf intDate >= "520" And intDate <= "620" Then
 
    MsgBox "Your Zodiac Sign is  GEMINI.  " & age & " years old " & month & " months old"
   
'CANCER
ElseIf intDate >= "621" And intDate <= "721" Then
 MsgBox "Your Zodiac Sign is CANCER.  " & age & " years old " & month & " months old"
 


ElseIf intDate >= "720" And intDate <= "822" Then
 MsgBox "Your Zodiac Sign is LEO.  " & age & " years old " & month & " months old"
 


ElseIf intDate >= "823" And intDate <= "921" Then
 MsgBox "Your Zodiac Sign is VIRGO.  " & age & " years old " & month & " months old"
 

ElseIf intDate >= "922" And intDate <= "1022" Then
 MsgBox "Your Zodiac Sign is LIBRA.  " & age & " years old " & month & " months old"
 

ElseIf intDate >= "1023" And intDate <= "1121" Then
 MsgBox "Your Zodiac Sign is SCORPIO.  " & age & " years old " & month & " months old"
 

ElseIf intDate >= "1122" And intDate <= "1220" Then
 MsgBox "Your Zodiac Sign is SAGITARRIUS.  " & age & " years old " & month & " months old"
 

ElseIf intDate >= "1221" Or intDate < "120" Then
 MsgBox "Your Zodiac Sign is CAPRICORN.  " & age & " years old " & month & " months old"
End If

End Sub

Private Sub Form_Load()
dtBday.Value = Date
End Sub
