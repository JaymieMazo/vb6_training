VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmDTPicker 
   Caption         =   "Form1"
   ClientHeight    =   4560
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4935
   LinkTopic       =   "Form1"
   ScaleHeight     =   4560
   ScaleWidth      =   4935
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOk 
      Caption         =   "ok"
      Height          =   375
      Left            =   3840
      TabIndex        =   13
      Top             =   240
      Width           =   735
   End
   Begin VB.Frame fraEvents 
      Caption         =   "Event"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   240
      TabIndex        =   10
      Top             =   3480
      Visible         =   0   'False
      Width           =   4335
      Begin VB.ComboBox cboEvent 
         Height          =   315
         Left            =   720
         TabIndex        =   11
         Text            =   "                   [ Select Event ]"
         Top             =   360
         Width           =   2895
      End
   End
   Begin VB.Frame fraProperties 
      Caption         =   "Properties"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Visible         =   0   'False
      Width           =   4335
      Begin VB.ComboBox cboProperty 
         Height          =   315
         Left            =   2520
         TabIndex        =   12
         Text            =   "Others"
         Top             =   1920
         Width           =   1695
      End
      Begin VB.CheckBox chkCustomFormat 
         Caption         =   "CustomFormat"
         Height          =   375
         Left            =   2520
         TabIndex        =   9
         Top             =   1440
         Width           =   1575
      End
      Begin VB.CheckBox chkBackCol 
         Caption         =   "BackCol"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   480
         Width           =   1575
      End
      Begin VB.CheckBox chkForeCol 
         Caption         =   "ForeCol"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   960
         Width           =   1575
      End
      Begin VB.CheckBox chkTitBack 
         Caption         =   "TitBackCol"
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   1440
         Width           =   1575
      End
      Begin VB.CheckBox chklTitForeCol 
         Caption         =   "TitForeCol"
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   1920
         Width           =   1575
      End
      Begin VB.CheckBox chkTrailingForeCol 
         Caption         =   "TrailingForeCol"
         Height          =   375
         Left            =   2520
         TabIndex        =   4
         Top             =   480
         Width           =   1575
      End
      Begin VB.CheckBox chkChkBox 
         Caption         =   "ChkBox"
         Height          =   375
         Left            =   2520
         TabIndex        =   3
         Top             =   960
         Width           =   1575
      End
   End
   Begin MSComCtl2.DTPicker DTDate 
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   240
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   661
      _Version        =   393216
      Format          =   122159107
      CurrentDate     =   43412
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Date:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   615
   End
End
Attribute VB_Name = "frmDTPicker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Base 1
Private sSpanishMonthLong(12) As String
Private sTagalog(12) As String



Private Sub cmdOk_Click()
fraProperties.Visible = True
fraEvents.Visible = True

End Sub
Private Sub DTDate_FormatSize(ByVal CallbackField As String, Size As Integer)
'SIZE OF FORMAT
Dim imaxmonthlen As Integer
If CallbackField = "XXXX" Then

imaxmonthlen = 0
    For i = 1 To 12

        If imaxmonthlen < Len(sSpanishMonthLong(i)) Then
          ' MsgBox i & imaxmonthlen & " " & Len(sSpanishMonthLong(i))
        imaxmonthlen = Len(sSpanishMonthLong(i))
        End If
    Next
 Size = imaxmonthlen
 Else
 Size = 2
End If

End Sub
Private Sub DTDate_Format(ByVal CallbackField As String, FormattedString As String)
If CallbackField = "XXXX" Then
FormattedString = sSpanishMonthLong(DTDate.Month)
Else
FormattedString = sTagalog(DTDate.Month)
End If
End Sub

Private Sub Form_Load()
Dim today As Variant
today = Now



DTDate.CustomFormat = "MMMM (XXXX) dd, yyy"
DTDate.Format = dtpCustom

'2nd (CallBackField)
'Callbackfield="XXXX"
sSpanishMonthLong(1) = "Enero"
sSpanishMonthLong(2) = "Pebrero"
sSpanishMonthLong(3) = "Marzo"
sSpanishMonthLong(4) = "Abril"
sSpanishMonthLong(5) = "Mayo"
sSpanishMonthLong(6) = "Junio"
sSpanishMonthLong(7) = "Julio"
sSpanishMonthLong(8) = "Agosto"
sSpanishMonthLong(9) = "Septiembre"
sSpanishMonthLong(10) = "Octubre"
sSpanishMonthLong(11) = "Noviembre"
sSpanishMonthLong(12) = "Diciembre"


'Callbackfield="XX"
sTagalog(1) = "01"
sTagalog(2) = "02"
sTagalog(3) = "03"
sTagalog(4) = "04"
sTagalog(5) = "05"
sTagalog(6) = "06"
sTagalog(7) = "07"
sTagalog(8) = "08"
sTagalog(9) = "09"
sTagalog(10) = "10"
sTagalog(11) = "11"
sTagalog(12) = "12"


'1st V1 Properties and Events
cboEvent.AddItem "CloseUp"
cboEvent.AddItem "CallbackKeyDown"
cboEvent.AddItem "DropDown"
cboEvent.AddItem "FormatSize"

cboProperty.AddItem "Hour"
cboProperty.AddItem "Minute"
cboProperty.AddItem "Second"
cboProperty.AddItem "Year"
cboProperty.AddItem "Format"
cboProperty.AddItem "UpDown"



'1ST (DTPICKER Properties)

With DTDate
'.CalendarBackColor = vbYellow
'        .CalendarTitleBackColor = vbRed
'        .CalendarTitleForeColor = vbWhite
'        .CalendarTrailingForeColor = vbGreen
'        .CheckBox = True
'        .CustomFormat = "yyy/MM/dd"
'.Hour = Hour(today)
'.Minute = Minute(today)
'.Second = Second(today)
'.Year = "2019"
'.UpDown = True
   End With
End Sub

Private Sub DTDate_CloseUp()
'MsgBox "Close Up event", vbOKOnly, "Information"
End Sub

