VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6825
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12855
   LinkTopic       =   "Form1"
   ScaleHeight     =   6825
   ScaleWidth      =   12855
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtWord 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3975
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   3
      Top             =   3120
      Width           =   12255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   1215
      Left            =   9600
      TabIndex        =   2
      Top             =   1080
      Width           =   2895
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "Convert"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   3255
   End
   Begin VB.TextBox txtNumber 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   12375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdConvert_Click()
Dim strSet As String
Dim intDigit As Integer
Dim strNumber As String
Dim i As Integer

txtWord = ""
strNumber = Format(txtNumber, "000000000000")

For i = 1 To Len(strNumber)
    intDigit = Mid(strNumber, i, 1)
    Select Case i
        Case 3, 6, 9, 12
            strSet = strSet & Choose(intDigit, "One", "Two", "Three", "Four", _
                                    "Five", "Six", "Seven", "Eight", "Nine")
            Debug.Print strSet
showword:
            If Int(Mid(strNumber, i - 2, 3)) <> 0 Then
                If i = 3 Then
                    strSet = strSet & " Billion "
                ElseIf i = 6 Then
                    strSet = strSet & " Million "
                ElseIf i = 9 Then
                    strSet = strSet & " Thousand "
                ElseIf i = 12 Then
                    strSet = strSet & ""
                End If
            End If

            txtWord = txtWord & strSet
        
            strSet = ""
        Case 2, 5, 8, 11
            If intDigit = 1 Then
                i = i + 1
                intDigit = Mid(strNumber, i, 1)
                strSet = strSet & Choose(intDigit + 1, "Ten", "Eleven", "Twelve", _
                                    "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen")
                GoTo showword
            Else
        
            strSet = strSet & Choose(intDigit, "Ten", "Twenty", "Thirty", _
                                    "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety")
            End If
            Debug.Print strSet
        Case 1, 4, 7, 10
            strSet = strSet & Choose(intDigit, "One Hundred ", "Two Hundred ", "Three Hundred ", _
                                    "Four Hundred ", "Five Hundred ", "Six Hundred ", _
                                    "Seven Hundred ", "Eight Hundred ", "Nine Hundred ")
            Debug.Print strSet
            
            
    End Select
Next
End Sub
