VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000006&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Different Triangles"
   ClientHeight    =   5685
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8130
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   8130
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   4440
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   8040
      Width           =   495
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Height          =   1215
      Left            =   1200
      TabIndex        =   9
      Top             =   240
      Width           =   5655
      Begin VB.TextBox txtNum 
         BackColor       =   &H00800000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFC0&
         Height          =   615
         Left            =   240
         TabIndex        =   1
         Text            =   "(Enter any whole number)"
         Top             =   360
         Width           =   5175
      End
   End
   Begin VB.CommandButton cmdLeftRight 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Left and Right Triangle"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   3840
      Width           =   3135
   End
   Begin VB.CommandButton cmdRight 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Right Triangle"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2880
      Width           =   3135
   End
   Begin VB.CommandButton cmdLeft 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Left Triangle"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1920
      Width           =   3135
   End
   Begin VB.CommandButton cmdpyInverted 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Pyramid and Inverted Pyramid"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3720
      Width           =   3135
   End
   Begin VB.CommandButton cmdDiamond 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Diamond"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   4680
      Width           =   3135
   End
   Begin VB.CommandButton cmdInverted 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Inverted Pyramid"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2880
      Width           =   3135
   End
   Begin VB.CommandButton cmdPyramid 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Pyramid"
      BeginProperty Font 
         Name            =   "Georgia"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1920
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim x As Integer
Dim a As Integer
Dim b As Integer
Dim num As Integer
Dim num1 As Integer
Dim ctr1 As Integer
Dim ctr2 As Integer
Dim i As Integer
Dim j As Integer
Dim space As String
Dim c As String
Dim d As String
Dim e As String
Dim f As String
Dim g As String
Dim h As String
Dim bck As ColorConstants
Dim fore As ColorConstants

Private Sub txtnum_GotFocus()
bck = vbBlack
fore = vbCyan
txtNum.BackColor = bck
txtNum.ForeColor = fore
txtNum.Text = ""
End Sub

Private Sub txtnum_LostFocus()
bck = vbBlack
fore = vbCyan
txtNum.BackColor = bck
txtNum.ForeColor = fore

End Sub

Private Sub cmdPyramid_GotFocus()
bck = vbCyan
cmdPyramid.BackColor = bck
End Sub


Private Sub cmdPyramid_LostFocus()
bck = vbWhite
cmdPyramid.BackColor = bck
End Sub


Private Sub cmdinverted_GotFocus()
bck = vbCyan
cmdInverted.BackColor = bck
End Sub


Private Sub cmdinverted_LostFocus()
bck = vbWhite
cmdInverted.BackColor = bck
End Sub


Private Sub cmdDiamond_GotFocus()
bck = vbCyan
cmdDiamond.BackColor = bck
End Sub


Private Sub cmdDiamond_LostFocus()
bck = vbWhite
cmdDiamond.BackColor = bck
End Sub


Private Sub cmdpyInverted_GotFocus()
bck = vbCyan
cmdpyInverted.BackColor = bck
End Sub


Private Sub cmdpyInverted_LostFocus()
bck = vbWhite
cmdpyInverted.BackColor = bck
End Sub

Private Sub cmdLeft_GotFocus()
bck = vbCyan
cmdLeft.BackColor = bck
End Sub

Private Sub cmdLeft_LostFocus()
bck = vbWhite
cmdLeft.BackColor = bck
End Sub

Private Sub cmdRight_GotFocus()
bck = vbCyan
cmdRight.BackColor = bck
End Sub

Private Sub cmdRight_LostFocus()
bck = vbWhite
cmdRight.BackColor = bck
End Sub

Private Sub cmdLeftRight_GotFocus()
bck = vbCyan
cmdLeftRight.BackColor = bck
End Sub

Private Sub cmdLeftRight_LostFocus()
bck = vbWhite
cmdLeftRight.BackColor = bck
End Sub

Private Sub cmdPyramid_Click()
    
    If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else

        num = txtNum
        For a = 1 To txtNum
            
            
            c = ""
            For b = 1 To num
                c = " " & c
            Next
            d = ""
            num = num - 1
            For b = 1 To a
                d = d & " *"
            Next
            Debug.Print c & d
            d = ""
        Next
    End If
End Sub
Private Sub cmdInverted_Click()
      If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else

            num = txtNum
            For a = 1 To txtNum
               d = ""
                For b = 1 To a
                    d = " " & d
                Next
                c = ""
                For b = 1 To num
                    c = c & " *"
                Next
                Debug.Print d & c
                num = num - 1
            
            Next
    End If
End Sub

Private Sub cmdDiamond_Click()
       If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else
    num = txtNum
        For a = 1 To txtNum
            c = ""
            For b = 1 To num
                c = " " & c
            Next
            
        d = ""
        num = num - 1
            For b = 1 To a
                d = d & " *"
            Next
            Debug.Print c & d
        
        Next
             num = txtNum
        For a = 1 To txtNum
               d = ""
                For b = 1 To a + 1
                    d = " " & d
                Next
                c = ""

                For b = 1 To num - 1
                    c = c & " *"
                Next
                Debug.Print d & c
                num = num - 1
        Next
        
End If
End Sub




'PYRAMID AND INVERTED PYRAMID
Private Sub cmdpyInverted_Click()
Dim ctr As Integer
Dim ctr1 As Integer
Dim ctr2 As Integer
Dim e As String
Dim f As String
Dim g As String
      
    If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else

      
        d = ""
        num = txtNum
        For a = 1 To txtNum
''''''''''' pyramid
            c = ""
            For b = 1 To num
                c = " " & c
            Next
            
            num = num - 1
            For b = 1 To a
                d = d & " *"
            Next
            
'''''''''''space
              e = ""
            For b = 1 To num + 1
                
                For ctr1 = 1 To b
               e = " "
               
               '---inverted pyramid
                    f = ""
                    For ctr2 = 1 To ctr1
                    
                    f = " *" & f
                    
                    Next
               '--------------------
    
                 Next
                e = " " & e
                
            Next


            Debug.Print c & d & e & f & g
            d = ""
    
        Next
End If

End Sub

Private Sub cmdLeft_Click()
Dim ans As Double
Dim i As Integer
Dim x As Integer
Dim mode As Integer

    If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else

For i = 1 To txtNum

    If i Mod 2 = 1 Then
        c = "*" & c
    Else
        c = " " & c
    End If

    Debug.Print c
Next


x = txtNum - 1
For b = 1 To txtNum
c = ""
For a = 1 To x

    If a Mod 2 = 1 Then
        c = "*" & c
    Else
        c = " " & c
    End If
    
Next

Debug.Print c
x = x - 1
Next

End If
End Sub
Private Sub cmdRight_Click()
Dim f As String
Dim c As String
Dim g As String
Dim space As String
Dim ctr1 As Integer

    If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else

    x = txtNum.Text
    For b = 1 To txtNum - 1
    c = ""
            '---space
            For a = 1 To x
            c = c & " "
              
            Next
         
            
            '----right Tri
            
             f = ""
            For ctr2 = 1 To b
                If ctr2 Mod 2 = 1 Then
                f = f & "*"
                 Else
                f = f & " "
                End If
                
            Next
            
              Debug.Print c & f
    x = x - 1
    Next


      
       num = txtNum
       space = ""
   ' ---inverted space
        For num1 = 1 To txtNum
               
             num = num - 1
            space = ""
            For b = 1 To num1
                space = space & " "
            Next
    '--Inverted right tri
            g = ""
        
            For ctr1 = 1 To num + 1
            
               If ctr1 Mod 2 = 1 Then
                g = g & "*"
                Else
                 g = g & " "
                 End If
          
            Next

              Debug.Print space & g
             ' num = num - 1
                   
        Next
End If
End Sub




Private Sub cmdLeftRight_Click()
Dim num As Integer
Dim i As Integer
Dim x As Integer
Dim j As Integer
Dim e As String
Dim ctr1 As Integer
Dim bb As String



    If Trim(txtNum) = "" Then
    MsgBox "Input any whole number", vbInformation, "Warning"
    
    ElseIf IsNumeric(txtNum) = False Then
    
    MsgBox "Oops! Invalid Input", vbInformation, "Warning"
    
    Else

 '''''''UPPER LEFT & RIGHT TRIANGLE'''''''
    For i = 1 To txtNum

            'UPPER LEFT TRIANGLE
           
            If i Mod 2 = 1 Then
                c = "*" & c
            Else
                c = " " & c
            End If


            '---INVERTED PYRAMID AS SPACE1
            num = txtNum
             For j = 1 To i
            e = ""
                 For x = 1 To num
                 e = e & " "
                Next
            num = num - 1
            Next
             
            '---INVERTED PYRAMID AS SPACE2
             num = txtNum
            For num1 = 1 To i
            d = ""
                 For a = 1 To num - 1
                 d = d & " "
                Next
                num = num - 1
                
            Next
            
            '--UPPER RIGHT TRIANGLE
            f = ""
             For ctr2 = 1 To i

                If ctr2 Mod 2 = 1 Then
                f = f & "*"
                 Else
                f = f & " "
                End If
           Next
    Debug.Print c & e & d & f
    Next
 
 
 '''''''LOWER LEFT & RIGHT TRIANGLE'''''''

x = txtNum - 1
num = txtNum
For b = 1 To txtNum
c = ""
            For a = 1 To x
            
                If a Mod 2 = 1 Then
                    c = "*" & c
                Else
                    c = " " & c
                End If
            Next

        num = txtNum
      ' space = ""
   ' ---inverted space1
        For num1 = 1 To b

             num = num - 1
            space = ""
            
            For j = 1 To num1 + 1
                space = space & " "
            Next
            
        Next
        
        
     ' ---inverted space2
          num = txtNum
          For ctr1 = 1 To b
               
             num = num - 1
             h = ""
                For ctr2 = 1 To num1 - 1
                   h = h & " "
                Next
               
                
            Next


' --Inverted right tri
            g = ""
        
            For ctr1 = 1 To num
            
               If ctr1 Mod 2 = 1 Then
                g = g & "*"
                Else
                 g = g & " "
                 End If
      
            Next
                
            Debug.Print c & space & h & g
            x = x - 1
Next


End If
End Sub






