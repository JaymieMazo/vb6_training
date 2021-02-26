VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   7605
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   12705
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   1  'CenterOwner
   Begin VB.Menu one 
      Caption         =   "1"
      Begin VB.Menu mshfg 
         Caption         =   "mshfg"
      End
      Begin VB.Menu fg 
         Caption         =   "fg"
      End
   End
   Begin VB.Menu two 
      Caption         =   "2"
      Begin VB.Menu twodot1 
         Caption         =   "2.1"
      End
      Begin VB.Menu twodottwo 
         Caption         =   "2.2"
      End
      Begin VB.Menu twodotthree 
         Caption         =   "2.3"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mshfg_Click()
frmMSHFlexGrid.Show
End Sub

Private Sub ssdf_Click()

End Sub
