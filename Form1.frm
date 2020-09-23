VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00808080&
   Caption         =   "Welcome..."
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   4680
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command5 
      Caption         =   "Options"
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Exit"
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   2640
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Instructions"
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Level Editor"
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Play!"
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "By Ed Rackham"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000016&
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   4215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Maze of DOOM!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000016&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   4215
   End
   Begin VB.Menu mnuf 
      Caption         =   "&File"
      Begin VB.Menu mnuabt 
         Caption         =   "About"
      End
      Begin VB.Menu hhh 
         Caption         =   "-"
      End
      Begin VB.Menu mnueeeksi 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuhlpp 
      Caption         =   "&Help"
      Begin VB.Menu mnuinstruct 
         Caption         =   "Instructions"
      End
      Begin VB.Menu mnucontact 
         Caption         =   "Contact"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form3.Show
Form1.Hide

End Sub

Private Sub Command2_Click()
Form2.Show
Form1.Hide
End Sub

Private Sub Command3_Click()
Form5.Show
Form1.Hide
End Sub

Private Sub Command4_Click()
End
End Sub

Private Sub Command5_Click()
Form6.Show
Form1.Hide
End Sub

Private Sub Form_Load()
Load Form6

End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
StopMIDI App.Path & "\sounds" & Form6.File1.filename
End
End Sub

Private Sub mnuabt_Click()
MsgBox "This game is all about moving boulders to clear your path for a safe journey home", vbQuestion, "About..."
End Sub

Private Sub mnucontact_Click()
MsgBox "Send me an E-Mail with any comments regarding this game or any VB question, to Eddrackham@aol.com", , "Contact me"
End Sub

Private Sub mnueeeksi_Click()
End
End Sub

Private Sub mnuinstruct_Click()
Form5.Show
Form1.Hide
End Sub
