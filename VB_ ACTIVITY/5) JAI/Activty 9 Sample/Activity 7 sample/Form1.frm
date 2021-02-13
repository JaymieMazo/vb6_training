VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6510
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11685
   LinkTopic       =   "Form1"
   ScaleHeight     =   6510
   ScaleWidth      =   11685
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdright 
      Caption         =   "Right"
      Height          =   495
      Left            =   6360
      TabIndex        =   11
      Top             =   4920
      Width           =   2295
   End
   Begin VB.TextBox txtinput 
      Height          =   735
      Left            =   2760
      TabIndex        =   10
      Top             =   4920
      Width           =   2895
   End
   Begin VB.TextBox txtOrder 
      Height          =   4095
      Left            =   5640
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   9
      Top             =   480
      Width           =   4335
   End
   Begin VB.CommandButton cmdGenerate 
      Caption         =   "Generate"
      Height          =   735
      Left            =   1320
      TabIndex        =   8
      Top             =   3600
      Width           =   2415
   End
   Begin VB.CheckBox chkDishes 
      Caption         =   "Liver Gizzard = P 25.00"
      Height          =   375
      Index           =   3
      Left            =   2880
      TabIndex        =   7
      Top             =   2640
      Width           =   2415
   End
   Begin VB.CheckBox chkDishes 
      Caption         =   "Bicol Express = P 22.00"
      Height          =   375
      Index           =   2
      Left            =   2880
      TabIndex        =   6
      Top             =   2160
      Width           =   2415
   End
   Begin VB.CheckBox chkDishes 
      Caption         =   "Menudo = P 22.00"
      Height          =   375
      Index           =   1
      Left            =   2880
      TabIndex        =   5
      Top             =   1680
      Width           =   2415
   End
   Begin VB.CheckBox chkDishes 
      Caption         =   "Adobong Manok = P 21.00"
      Height          =   375
      Index           =   0
      Left            =   2880
      TabIndex        =   4
      Top             =   1200
      Width           =   2415
   End
   Begin VB.CheckBox chkRice 
      Caption         =   "Extra = P 7.00"
      Height          =   375
      Index           =   2
      Left            =   240
      TabIndex        =   3
      Top             =   2160
      Width           =   2055
   End
   Begin VB.CheckBox chkRice 
      Caption         =   "Medium = P 15.00"
      Height          =   375
      Index           =   1
      Left            =   240
      TabIndex        =   2
      Top             =   1680
      Width           =   2055
   End
   Begin VB.CheckBox chkRice 
      Caption         =   "Regular = P 10.00"
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   2055
   End
   Begin VB.TextBox txtName 
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdGenerate_Click()
Dim i As Integer
Dim blnWRice As Boolean
Dim blnWDishes As Boolean
Dim dblTotal As Double
Dim strAmmount As String
If txtName = "" Then MsgBox "Please Enter Name": Exit Sub
txtOrder = "Name : " & txtName & vbCrLf & "------------------" & vbCrLf
txtOrder = vbCrLf & vbCrLf & txtOrder & "RICE :" & vbCrLf
For i = 0 To chkRice.Count - 1
    If chkRice(i).Value = 1 Then
        dblAmmount = Right(chkRice(i).Caption, InStr(1, StrReverse(chkRice(i).Caption), "P"))
        dblTotal = dblTotal + CDbl(Replace(dblAmmount, "P", ""))
        blnWRice = True
        txtOrder = txtOrder & chkRice(i).Caption & vbCrLf
    End If
Next
txtOrder = vbCrLf & vbCrLf & txtOrder & "DISHES :" & vbCrLf
For i = 0 To chkDishes.Count - 1
    If chkDishes(i).Value = 1 Then
        dblAmmount = Right(chkDishes(i).Caption, InStr(1, StrReverse(chkDishes(i).Caption), "P"))
        dblTotal = dblTotal + CDbl(Replace(dblAmmount, "P", ""))
        blnWDishes = True
        txtOrder = txtOrder & chkDishes(i).Caption & vbCrLf
    End If
Next


If blnWRice = False And blnWDishes = False Then _
            MsgBox "Please Select Rice and/or dishes": txtOrder = "": Exit Sub

txtOrder.Text = txtOrder.Text & "------------------" & vbCrLf
txtOrder.Text = txtOrder.Text & "Total : " & Format(dblTotal, "0.00")
End Sub
