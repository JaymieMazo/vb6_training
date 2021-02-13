VERSION 5.00
Begin VB.Form frmConvert 
   Caption         =   "Convert"
   ClientHeight    =   3420
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   ScaleHeight     =   3420
   ScaleWidth      =   4815
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtHexadecimal 
      Height          =   375
      Left            =   1680
      TabIndex        =   6
      Top             =   2640
      Width           =   2535
   End
   Begin VB.TextBox txtOctal 
      Height          =   375
      Left            =   1680
      TabIndex        =   5
      Top             =   1680
      Width           =   2535
   End
   Begin VB.TextBox txtDecimal 
      Height          =   375
      Left            =   1680
      TabIndex        =   4
      Top             =   2160
      Width           =   2535
   End
   Begin VB.TextBox txtBinary 
      Height          =   375
      Left            =   1680
      TabIndex        =   3
      Top             =   1200
      Width           =   2535
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "Convert"
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   600
      Width           =   1335
   End
   Begin VB.TextBox txtInput 
      Height          =   375
      Left            =   2160
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
   Begin VB.ComboBox cmbChoose 
      Height          =   315
      ItemData        =   "frmConvert.frx":0000
      Left            =   120
      List            =   "frmConvert.frx":0010
      TabIndex        =   0
      Top             =   120
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "Hexa"
      Height          =   375
      Left            =   240
      TabIndex        =   10
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "Deci"
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   2160
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Octa"
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Binary"
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   1200
      Width           =   1215
   End
End
Attribute VB_Name = "frmConvert"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdConvert_Click()
If cmbChoose.Text = "Binary" Then
        
        txtBinary = txtInput
        Call InDeci
        Call InOcta
        Call inHexa
    
ElseIf cmbChoose.Text = "Deci" Then
    'Decimal to Binary
    Dim intDbLoop As Integer
    txtBinary = ""
    Do
        If (txtInput And 2 ^ intDbLoop) = 2 ^ intDbLoop Then
            txtBinary = "1" & txtBinary
        Else
            txtBinary = "0" & txtBinary
        End If
            intDbLoop = intDbLoop + 1
    Loop Until 2 ^ intDbLoop > txtInput

    'Decimal to binary to OCTAL!
    Dim strDOformat As String, strDOgetMid As String, strDOcta As String, strDOval As String
    Dim intDOconv As Integer, intDOcount As Integer, intDOa1 As Integer, intDOadd As Integer
    
    strDOformat = StrReverse(txtBinary)
    intDOconv = 1
    intDOa1 = 4
    
    For intDOcount = 1 To Len(strDOformat)
        strDOgetMid = Mid(strDOformat, intDOcount, 1)
            For i = intDOa1 To intDOcount
                strDOcta = strDOcta & strDOval
                intDOconv = 1
                intDOadd = 0
                intDOa1 = intDOa1 + 3
            Next
                If strDOgetMid = 1 Then
                    intDOadd = intDOadd + intDOconv
                    
                Else
                    intDOadd = intDOadd + 0
                End If
                    intDOconv = intDOconv * 2
                    strDOval = intDOadd
                        If intDOcount = Len(strDOformat) Then
                            strDOcta = strDOcta & strDOval
                        End If
    Next
        txtOctal = StrReverse(strDOcta)

    'Decimal to Binart to HEXADECIMAL!
    Dim strDHformat As String, strDHgetMid As String, strDHexa As String, strDHval As String
    Dim intDHconv As Integer, intDHa1 As Integer, intDHcount As Integer, intDHadd As Integer
    
    strDHformat = StrReverse(txtBinary)
    intDHconv = 1
    intDHa1 = 5
    
    For intDHcount = 1 To Len(strDHformat)
        strDHgetMid = Mid(strDHformat, intDHcount, 1)
        For i = intDHa1 To intDHcount
            strDHexa = strDHexa & strDHval
            intDHconv = 1
            intDHadd = 0
            intDHa1 = intDHa1 + 4
        Next
            If strDHgetMid = 1 Then
                intDHadd = intDHadd + intDHconv
                    If intDHadd = 10 Then
                        strDHexa = strDHexa & "A"
                        strDHval = ""
                    ElseIf intDHadd = 11 Then
                        strDHexa = strDHexa & "B"
                        strDHval = ""
                    ElseIf intDHadd = 12 Then
                        strDHexa = strDHexa & "C"
                        strDHval = ""
                    ElseIf intDHadd = 13 Then
                        strDHexa = strDHexa & "D"
                        strDHval = ""
                    ElseIf intDHadd = 14 Then
                        strDHexa = strDHexa & "E"
                        strDHval = ""
                    ElseIf intDHadd = 15 Then
                        strDHexa = strDHexa & "F"
                        strDHval = ""
                    Else
                        strDHval = intDHadd
                    End If
            Else
                intDHadd = intDHadd + 0
            End If
                intDHconv = intDHconv * 2
                    If intDHcount = Len(strDHformat) Then
                         strDHexa = strDHexa & strDHval
                    End If
    Next
        txtHexadecimal = StrReverse(strDHexa)
        txtDecimal = txtInput
ElseIf cmbChoose.Text = "Octa" Then
    'Octal to Binary
    Dim intOBlen As Integer
    Dim strOBFormat As String, strOctToBin
    For intOBlen = 1 To Len(txtInput)
        strOBFormat = Mid(txtInput, intOBlen, 1)
        
            If strOBFormat = "1" Then
                strOctToBin = strOctToBin & "001"
            ElseIf strOBFormat = "2" Then
                strOctToBin = strOctToBin & "010"
            ElseIf strOBFormat = "3" Then
                strOctToBin = strOctToBin & "011"
            ElseIf strOBFormat = "4" Then
                strOctToBin = strOctToBin & "100"
            ElseIf strOBFormat = "5" Then
                strOctToBin = strOctToBin & "101"
            ElseIf strOBFormat = "6" Then
                strOctToBin = strOctToBin & "110"
            ElseIf strOBFormat = "7" Then
                strOctToBin = strOctToBin & "111"
            End If
            txtBinary = strOctToBin
    Next
    'Octal to Binary to Hexadecimal
        Dim strOHformat As String, strOHgetMid As String, strOHexa As String, strOHval As String
        Dim intOHconv As Integer, a As Integer, intOHcount As Integer, intOHadd As Integer
        
        strOHformat = StrReverse(txtBinary)
        intOHconv = 1
        a = 5
            For intOHcount = 1 To Len(strOHformat)
                strOHgetMid = Mid(strOHformat, intOHcount, 1)
                    
                For i = a To intOHcount
                    strOHexa = strOHexa & strOHval
                    intOHconv = 1
                    intOHadd = 0
                    a = a + 4
                Next
                If strOHgetMid = 1 Then
                    intOHadd = intOHadd + intOHconv
                    If intOHadd = 10 Then
                        strOHexa = strOHexa & "A"
                        strOHval = ""
                    ElseIf intOHadd = 11 Then
                        strOHexa = strOHexa & "B"
                        strOHval = ""
                    ElseIf intOHadd = 12 Then
                        strOHexa = strOHexa & "C"
                        strOHval = ""
                    ElseIf intOHadd = 13 Then
                        strOHexa = strOHexa & "D"
                        strOHval = ""
                    ElseIf intOHadd = 14 Then
                        strOHexa = strOHexa & "E"
                        strOHval = ""
                    ElseIf intOHadd = 15 Then
                        strOHexa = strOHexa & "F"
                        strOHval = ""
                    Else
                        strOHval = intOHadd
                    End If
                Else
                intOHadd = intOHadd + 0
                End If
                
                    intOHconv = intOHconv * 2
                        If intOHcount = Len(strOHformat) Then
                            strOHexa = strOHexa & strOHval
                            
                        End If
                        
            Next
        txtHexadecimal = StrReverse(strOHexa)
    'Octal to Decimal
    Dim strODformat As String, strODgetMid As String, strODval As String
    Dim intODconv As Long, intODcount As Integer, intODadd As Long

        strODformat = StrReverse(txtBinary)
        intODconv = 1
            For intODcount = 1 To Len(strODformat)
                strODgetMid = Mid(strODformat, intODcount, 1)
                    
                    If strODgetMid = 1 Then
                        intODadd = intODadd + intODconv
                    Else
                        intODadd = intODadd + 0
                    End If
            strODval = intODadd
            
            intODconv = intODconv * 2
            Next
                txtDecimal = strODval
        
                txtOctal = txtInput
                
ElseIf cmbChoose.Text = "Hexa" Then
    'Hexadecimal to Binary
    Dim intHBlen As Integer
    Dim strHBformat As String, strHexBin As String
        For intHBlen = 1 To Len(txtInput)
            strHBformat = Mid(txtInput, intHBlen, 1)
                If strHBformat = "1" Then
                    strHexBin = strHexBin & "0001"
                ElseIf strHBformat = "2" Then
                    strHexBin = strHexBin & "0010"
                ElseIf strHBformat = "3" Then
                    strHexBin = strHexBin & "0011"
                ElseIf strHBformat = "4" Then
                    strHexBin = strHexBin & "0100"
                ElseIf strHBformat = "5" Then
                    strHexBin = strHexBin & "0101"
                ElseIf strHBformat = "6" Then
                    strHexBin = strHexBin & "0110"
                ElseIf strHBformat = "7" Then
                    strHexBin = strHexBin & "0111"
                ElseIf strHBformat = "8" Then
                    strHexBin = strHexBin & "1000"
                ElseIf strHBformat = "9" Then
                    strHexBin = strHexBin & "1001"
                ElseIf strHBformat = "A" Then
                    strHexBin = strHexBin & "1010"
                ElseIf strHBformat = "B" Then
                    strHexBin = strHexBin & "1011"
                ElseIf strHBformat = "C" Then
                    strHexBin = strHexBin & "1100"
                ElseIf strHBformat = "D" Then
                    strHexBin = strHexBin & "1101"
                ElseIf strHBformat = "E" Then
                    strHexBin = strHexBin & "1110"
                ElseIf strHBformat = "F" Then
                    strHexBin = strHexBin & "1111"
                End If
        Next
            txtBinary = strHexBin
    'Hexadecimal to binary to OCTAL!
    Dim strHOformat As String, strHOgetMid As String, strHOctal As String, strHOval As String
    Dim intHOconv As Integer, intHOlen As Integer, A1 As Integer, intHOadd As Integer
    
    intHOconv = 1
    A1 = 4
        strHOformat = StrReverse(txtBinary)
            For intHOlen = 1 To Len(strHOformat)
                strHOgetMid = Mid(strHOformat, intHOlen, 1)
                    For i = A1 To intHOlen
                        strHOctal = strHOctal & strHOval
                        intHOconv = 1
                        intHOadd = 0
                        A1 = A1 + 3
                    Next
            
                If strHOgetMid = 1 Then
                    intHOadd = intHOadd + intHOconv
                Else
                    intHOadd = intHOadd + 0
                End If
                    intHOconv = intHOconv * 2
                    strHOval = intHOadd
                        If intHOlen = Len(strHOformat) Then
                            strHOctal = strHOctal & strHOval
                        End If
            Next
            txtOctal = StrReverse(strHOctal)
    'Hexadecimal to DECIMAL!
    Dim strHDformat As String, strHDgetMid As String, strHDval As String
    Dim intHDlen As Integer, intHDconv As Long, intHDadd As Long
    intHDconv = 1
        strHDformat = StrReverse(txtBinary)
            For intHDlen = 1 To Len(strHDformat)
                strHDgetMid = Mid(strHDformat, intHDlen, 1)
                    If strHDgetMid = 1 Then
                        intHDadd = intHDadd + intHDconv
                    Else
                        intHDadd = intHDadd + 0
                    End If
            
                    strHDval = intHDadd
                    intHDconv = intHDconv * 2
            Next
            txtDecimal = strHDval
            txtHexadecimal = txtInput
                    
End If

End Sub

Sub InDeci()
Dim strGetDeci As String
Dim intCount As Integer
Dim intConv As Integer
Dim strFormat As String
Dim hldVal As Integer
Dim intAdd As Integer

strFormat = StrReverse(txtInput)
intConv = 1

 For intCount = 1 To Len(strFormat)
    strGetDeci = Mid(strFormat, intCount, 1)
    
        
        If strGetDeci = 0 Then
            intAdd = intAdd + 0
        Else
            If strGetDeci = 1 Then
                intAdd = intAdd + intConv
          End If
            
                
        End If
         
    hldVal = intAdd
    intConv = intConv * 2
Next
   
    txtDecimal = hldVal
                
End Sub

Sub InOcta()
Dim strGetDeci As String
Dim intCount As Integer
Dim intConv As Integer
Dim strFormat As String
Dim hldVal As Integer
Dim intAdd As Integer
Dim strOcta As String, a As Integer

strFormat = StrReverse(txtInput)
intConv = 1
a = 4
 For intCount = 1 To Len(strFormat)
    strGetDeci = Mid(strFormat, intCount, 1)
        For i = a To intCount
            strOcta = strOcta & hldVal
            intConv = 1
            intAdd = 0
            a = a + 3
        Next
            If strGetDeci = 1 Then
                intAdd = intAdd + intConv
            Else
            intAdd = intAdd + 0
            End If
         
            intConv = intConv * 2
            hldVal = intAdd
    If intCount = Len(strFormat) Then
        strOcta = strOcta & hldVal
    End If
Next
   
    txtOctal = StrReverse(strOcta)
End Sub
Sub inHexa()
   Dim strGetDeci As String
Dim intCount As Integer
Dim intConv As Integer
Dim strFormat As String, strBHexa As String
Dim hldVal As String
Dim intAdd As Integer
Dim strOcta As String, a As Integer

strFormat = StrReverse(txtInput)
intConv = 1
a = 5
 For intCount = 1 To Len(strFormat)
    strGetDeci = Mid(strFormat, intCount, 1)
        For i = a To intCount
            strOcta = strOcta & hldVal
            intConv = 1
            intAdd = 0
            a = a + 4
        Next
            If strGetDeci = 1 Then
                intAdd = intAdd + intConv
                If intAdd = 10 Then
                    strOcta = strOcta & "A"
                    hldVal = ""
                ElseIf intAdd = 11 Then
                    strOcta = strOcta & "B"
                    hldVal = ""
                ElseIf intAdd = 12 Then
                    strOcta = strOcta & "C"
                    hldVal = ""
                ElseIf intAdd = 13 Then
                    strOcta = strOcta & "D"
                    hldVal = ""
                ElseIf intAdd = 14 Then
                    strOcta = strOcta & "E"
                    hldVal = ""
                ElseIf intAdd = 15 Then
                    strOcta = strOcta & "F"
                    hldVal = ""
                Else
                     hldVal = intAdd
                End If
            Else
            intAdd = intAdd + 0
            End If
         
            intConv = intConv * 2
           
    If intCount = Len(strFormat) Then
        strOcta = strOcta & hldVal
    End If
Next
    txtHexadecimal = StrReverse(strOcta)
    


End Sub
Sub cLeAr()
    txtInput = ""
    txtBinary = ""
    txtDecimal = ""
    txtOctal = ""
    txtHexadecimal = ""
End Sub
Private Sub txtInput_Change()
If txtInput = "" Then
    txtBinary = ""
    txtDecimal = ""
    txtOctal = ""
    txtHexadecimal = ""
End If


End Sub

Private Sub txtInput_KeyPress(KeyAscii As Integer)
If cmbChoose = "Binary" Then
    If (KeyAscii = VBRUN.vbKey0 Or KeyAscii = VBRUN.vbKey1 Or KeyAscii = VBRUN.vbKeyBack _
    Or KeyAscii = VBRUN.vbKeyExecute Or KeyAscii = VBRUN.vbKeyTab) Then
    txtInput.Locked = False
    Else
    txtInput.Locked = True
    End If
    
ElseIf cmbChoose = "Octa" Or cmbChoose = "Deci" Then
    If (KeyAscii = VBRUN.vbKey0 Or KeyAscii = VBRUN.vbKey1 Or KeyAscii = VBRUN.vbKey2 Or _
        KeyAscii = VBRUN.vbKey3 Or KeyAscii = VBRUN.vbKey4 Or KeyAscii = VBRUN.vbKey5 Or _
        KeyAscii = VBRUN.vbKey6 Or KeyAscii = VBRUN.vbKey7 Or KeyAscii = VBRUN.vbKey8 Or KeyAscii = VBRUN.vbKey9 _
        Or KeyAscii = VBRUN.vbKeyBack Or KeyAscii = VBRUN.vbKeyExecute Or KeyAscii = VBRUN.vbKeyTab) Then
    txtInput.Locked = False
    Else
    txtInput.Locked = True
    End If
ElseIf cmbChoose = "Hexa" Then
    If (KeyAscii = VBRUN.vbKey0 Or KeyAscii = VBRUN.vbKey1 Or KeyAscii = VBRUN.vbKey2 Or _
        KeyAscii = VBRUN.vbKey3 Or KeyAscii = VBRUN.vbKey4 Or KeyAscii = VBRUN.vbKey5 Or _
        KeyAscii = VBRUN.vbKey6 Or KeyAscii = VBRUN.vbKey7 Or KeyAscii = VBRUN.vbKey8 Or KeyAscii = VBRUN.vbKey9 _
        Or KeyAscii = VBRUN.vbKeyBack Or KeyAscii = VBRUN.vbKeyExecute Or KeyAscii = VBRUN.vbKeyTab Or _
        KeyAscii = VBRUN.vbKeyA Or KeyAscii = VBRUN.vbKeyB Or KeyAscii = VBRUN.vbKeyC Or KeyAscii = VBRUN.vbKeyD Or _
        KeyAscii = VBRUN.vbKeyE Or KeyAscii = VBRUN.vbKeyF) Then
    txtInput.Locked = False
    Else
    txtInput.Locked = True
    End If
End If
End Sub
