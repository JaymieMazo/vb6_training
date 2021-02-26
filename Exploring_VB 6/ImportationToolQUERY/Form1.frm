VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3075
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5475
   LinkTopic       =   "Form1"
   ScaleHeight     =   3075
   ScaleWidth      =   5475
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd1 
      Caption         =   "ok"
      Height          =   735
      Left            =   3960
      TabIndex        =   1
      Top             =   360
      Width           =   1095
   End
   Begin VB.TextBox txt1 
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Text            =   "100010"
      Top             =   360
      Width           =   2895
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Height          =   1095
      Left            =   720
      TabIndex        =   2
      Top             =   1440
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd1_Click()
Dim a As Integer
Dim strsql As String
Dim mida As String
Dim ArrivFrom As String



strsql = ""
ArrivFrom = ""
strsql = "Select * from ImportExport where "



For a = 1 To Len(txt1.Text)

mida = mid(txt1.Text, a, 1)




            If a = 1 And mida = 1 Then
            
              strsql = strsql & " and itemacc =chassis"
            Else: End If
            
            
                 If a = 2 And mida = 1 Then
            
            ArrivFrom = strsql & " and arrivefrom =2018/01/01"
            
            Else: End If
            
            
                           
            If a = 3 And mida = 1 And ArrivFrom <> "" Then
            
  
                
                strsql = strsql & " and arrivaldate >=2018/01/01 and arrivaldate <=2018/01/04"
                
                Else
                
                 strsql = strsql & " and arrivaldate =2018/01/01"
          
            
            End If
            
            
            
            If a = 4 And mida = 1 Then
            
              strsql = strsql & "and supplier =sup_1"
            Else: End If
            
            
            
            
            If a = 5 And mida = 1 Then
            
              strsql = strsql & "and Invoice =Inv_1"
              
            Else: End If
            
            
            If a = 6 And mida = 1 Then
            
              strsql = strsql & "and BL =BL_1"
              
            Else: End If
            
            
                      
       
            
            

Next



MsgBox strsql

End Sub



Sub ImportExtract()

Dim cn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim a As Integer
Dim sql As String


sql = "Select itemofaccountName,  arrivaldate , Suppliername  , invoiceno,  blno from ImportationDataExtractionView"


With cn
.CursorLocation = adUseClient
.ConnectionString = "Provider=SQLOLEDB; Data Source=Impex-SV4 ; InitialCatalog =Importation ; UID=sa"
.Open
End With


rs.Open sql, cn, adOpenDynamic, adLockReadOnly


With msh1
.Rows = rs.RecordCount + 1
.Cols = 5
.TextMatrix(0, 0) = "ItemAcc"
.TextMatrix(0, 1) = "ArrivalDate"
.TextMatrix(0, 2) = "Supplier"
.TextMatrix(0, 3) = "Invoice"
.TextMatrix(0, 4) = "BLNo"

For a = 1 To rs.RecordCount
.TextMatrix(a, 0) = rs.Fields(0)
.TextMatrix(a, 1) = rs.Fields(1)
.TextMatrix(a, 2) = rs.Fields(2)
.TextMatrix(a, 3) = rs.Fields(3)
.TextMatrix(a, 4) = rs.Fields(4)
rs.MoveNext
Next


End With

End Sub

Private Sub Text1_Change()

End Sub

