VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Converting number to words"
   ClientHeight    =   4590
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7440
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4590
   ScaleWidth      =   7440
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      BackColor       =   &H80000008&
      BorderStyle     =   0  'None
      Height          =   615
      Left            =   480
      TabIndex        =   8
      Top             =   1560
      Width           =   2415
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "words:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   1560
         TabIndex        =   10
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Convert into"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF80&
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000008&
      BorderStyle     =   0  'None
      Height          =   735
      Left            =   480
      TabIndex        =   5
      Top             =   720
      Width           =   2055
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Enter"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF80&
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Numbers: "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   375
         Left            =   840
         TabIndex        =   6
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Timer Timer2 
      Interval        =   300
      Left            =   1440
      Top             =   5160
   End
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   720
      Top             =   5160
   End
   Begin VB.TextBox txtWords 
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
      Height          =   1815
      Left            =   3120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   4
      Top             =   1920
      Width           =   3615
   End
   Begin VB.CommandButton cmdClear 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Clear"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5280
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3960
      Width           =   1335
   End
   Begin VB.CommandButton cmdConvert 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Convert"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3240
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   3960
      Width           =   1335
   End
   Begin VB.TextBox txtnum 
      BackColor       =   &H80000007&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3120
      MaxLength       =   12
      TabIndex        =   0
      Top             =   960
      Width           =   3615
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FF80FF&
      BorderWidth     =   3
      X1              =   240
      X2              =   240
      Y1              =   0
      Y2              =   4680
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF80FF&
      BorderWidth     =   3
      X1              =   0
      X2              =   7560
      Y1              =   240
      Y2              =   240
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00C0FFFF&
      BorderWidth     =   3
      X1              =   0
      X2              =   7560
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0080FFFF&
      BorderWidth     =   3
      X1              =   120
      X2              =   120
      Y1              =   0
      Y2              =   4680
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "*Maximum digit is 12"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   375
      Left            =   4080
      TabIndex        =   3
      Top             =   600
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim intnum As Integer
Dim num As String


Private Sub cmdClear_Click()
txtnum.Text = ""
End Sub

Private Sub cmdConvert_Click()
Dim strCollect As String
Dim strNum As String

txtWords = ""
strNum = Format(txtnum, "000000000000")
    
    
For intnum = 1 To Len(strNum)

    num = ""
    num = Int(Mid(StrReverse(strNum), intnum, 1))

        If intnum = 1 Or intnum = 4 Or intnum = 7 Or intnum = 10 Then
        
             
                    If num = 1 Then
        
                    strCollect = "one" & strCollect
                    
                    ElseIf num = 2 Then
                    strCollect = "two" & strCollect
        
                    ElseIf num = 3 Then
                    strCollect = "three" & strCollect
        
                    ElseIf num = 4 Then
                    strCollect = "four" & strCollect
        
                    ElseIf num = 5 Then
                    strCollect = "five" & strCollect
        
                    ElseIf num = 6 Then
                    strCollect = "six" & strCollect
        
                    ElseIf num = 7 Then
                    strCollect = "seven" & strCollect
        
        
                    ElseIf num = 8 Then
                    strCollect = "eight" & strCollect
                            
                    ElseIf num = 9 Then
                    strCollect = "nine" & strCollect
                          
                 '   ElseIf num = 0 Then
                 '  txtWords.Text = "zero"
                    
                    End If
        
        
                    If Mid(StrReverse(txtnum.Text), intnum + 1, 1) = 1 Then
                                intnum = intnum + 1
        
                            If num = 1 Then
        
                               strCollect = "eleven"
        
                            ElseIf num = 2 Then
        
                               strCollect = "twelve"
        
                            ElseIf num = 3 Then
        
                              strCollect = "thirteen"
        
                            ElseIf num = 4 Then
                            strCollect = "fourteen"
        
                            ElseIf num = 5 Then
                              strCollect = "fifteen"
        
                            ElseIf num = 6 Then
                                strCollect = "sixteen"
        
                            ElseIf num = 7 Then
                             strCollect = "seventeen"
        
                            ElseIf num = 8 Then
                               strCollect = "eighteen"
                            ElseIf num = 9 Then
                             strCollect = "nineteen"
                            ElseIf num = 0 Then
                            strCollect = "ten"
                            End If
                            
                    ElseIf Mid(StrReverse(txtnum.Text), intnum + 1, 1) = 0 Then
                        If num = 1 Then
        
                        strCollect = "one"
                        
                        ElseIf num = 2 Then
                        strCollect = "two"
            
                        ElseIf num = 3 Then
                        strCollect = "three"
            
                        ElseIf num = 4 Then
                        strCollect = "four"
            
                        ElseIf num = 5 Then
                        strCollect = "five"
            
                        ElseIf num = 6 Then
                        strCollect = "six"
            
                        ElseIf num = 7 Then
                        strCollect = "seven"
            
            
                        ElseIf num = 8 Then
                        strCollect = "eight"
                                
                        ElseIf num = 9 Then
                        strCollect = "nine"
                         
                        End If
                    End If
        ElseIf intnum = 2 Or intnum = 5 Or intnum = 8 Or intnum = 11 Then
        
        
              
                               If num = 1 Then
                              'MsgBox Mid(txtnum.Text, intnum, 1)
                             
        
        
                                ElseIf num = 2 Then
        
                                strCollect = "twenty" & "  " & strCollect
        
                                ElseIf num = 3 Then
        
                                      strCollect = "thirty" & "  " & strCollect
        
                                ElseIf num = 4 Then
                                  strCollect = "fourty" & "  " & strCollect
        
                                ElseIf num = 5 Then
                                   strCollect = "fifty" & "  " & strCollect
        
                                ElseIf num = 6 Then
                             strCollect = "sixty" & "  " & strCollect
        
                                ElseIf num = 7 Then
                                 strCollect = "seventy" & "  " & strCollect
                                ElseIf num = 8 Then
        
                                   strCollect = "eighty" & "  " & strCollect
        
                                ElseIf num = 9 Then
                                   strCollect = "ninety" & "  " & strCollect
                                   End If
        
        
        
        ElseIf intnum = 3 Or intnum = 6 Or intnum = 9 Or intnum = 12 Then
        
        
        
                                 If num = 1 Then
                                   strCollect = "One hundred" & " " & strCollect
        
                                    ElseIf num = 2 Then
                                      strCollect = "two hundred" & " " & strCollect
                                    ElseIf num = 3 Then
                                      strCollect = "three hundred" & " " & strCollect
        
                                    ElseIf num = 4 Then
                                     strCollect = "four hundred" & " " & strCollect
        
                                    ElseIf num = 5 Then
                                    strCollect = "five hundred" & " " & strCollect
                                    ElseIf num = 6 Then
                                     strCollect = "six hundred" & " " & strCollect
        
                                    ElseIf num = 7 Then
                                     strCollect = "seven hundred" & " " & strCollect
        
                                    ElseIf num = 8 Then
                                    strCollect = "eight hundred" & " " & strCollect
        
                                    ElseIf num = 9 Then
                                    strCollect = "nine hundred" & " " & strCollect
        
                                    End If
                                    
                                    
                                    If strCollect <> "" Then
        
                                        If intnum = 3 Then
        
                                        txtWords.Text = strCollect & txtWords.Text
        
                                        ElseIf intnum = 6 Then
        
                                             txtWords.Text = strCollect & " " & "thousand  " & txtWords.Text
                                             
        
                                         ElseIf intnum = 9 Then
        
                                             txtWords.Text = strCollect & " " & "million " & txtWords.Text
        
                                         ElseIf intnum = 12 Then
        
                                             txtWords.Text = strCollect & " " & "billion " & txtWords.Text
        
                                        End If
                                        strCollect = ""
                                   End If
                                   
                                
        End If

Next
End Sub
Private Sub cmdConvert_LostFocus()
Dim a As ColorConstants
a = vbWhite

cmdConvert.BackColor = a


End Sub

Private Sub cmdClear_LostFocus()
Dim a As ColorConstants
a = vbWhite

cmdClear.BackColor = a


End Sub

Private Sub Timer1_Timer()

Dim a As ColorConstants
Dim B As ColorConstants
a = vbMagenta
B = vbWhite

Label1.ForeColor = a
Label2.ForeColor = B
End Sub

Private Sub Timer2_Timer()

Dim a As ColorConstants
Dim B As ColorConstants
a = vbMagenta
B = vbWhite
Label1.ForeColor = B
Label2.ForeColor = a

End Sub

Private Sub txtnum_Change()
If IsNumeric(txtnum.Text) = True Then

ElseIf txtnum.Text = "" Then

Else
MsgBox "Enter number only", vbInformation, "Warning"
txtnum.Text = ""
End If
txtWords.Text = ""
End Sub

Private Sub cmdconvert_gotfocus()
Dim a As ColorConstants
a = vbCyan
If txtnum <> "" Then
cmdConvert.BackColor = a

Else
End If
End Sub


Private Sub cmdclear_gotfocus()
Dim a As ColorConstants
a = vbCyan
If txtnum <> "" Then
cmdClear.BackColor = a

Else
End If
End Sub



