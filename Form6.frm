VERSION 5.00
Begin VB.Form Form6 
   BackColor       =   &H8000000C&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Choose your option..."
   ClientHeight    =   4095
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4680
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check2 
      BackColor       =   &H8000000C&
      Caption         =   "Hard (Get every rock down a hole!)"
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
      Height          =   735
      Left            =   2520
      TabIndex        =   9
      Top             =   2880
      Width           =   1815
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H8000000C&
      Caption         =   "Easy (Just get to the exit)"
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
      Height          =   735
      Left            =   960
      TabIndex        =   8
      Top             =   2880
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ok"
      Height          =   255
      Left            =   1920
      TabIndex        =   6
      Top             =   3720
      Width           =   855
   End
   Begin VB.FileListBox File1 
      Height          =   1065
      Left            =   1200
      Pattern         =   "*.mid*"
      TabIndex        =   5
      Top             =   1560
      Width           =   2175
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H80000010&
      Caption         =   "Off"
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
      Left            =   2280
      TabIndex        =   3
      Top             =   960
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H80000010&
      Caption         =   "On"
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
      Left            =   1320
      TabIndex        =   2
      Top             =   960
      Value           =   -1  'True
      Width           =   975
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Difficulty:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000016&
      Height          =   255
      Left            =   1800
      TabIndex        =   7
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Song:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000016&
      Height          =   255
      Left            =   2040
      TabIndex        =   4
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Music:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000016&
      Height          =   255
      Left            =   2040
      TabIndex        =   1
      Top             =   600
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Options"
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
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Check2.Value = 0
End Sub

Private Sub Check2_Click()
Check1.Value = 0
End Sub

Private Sub Command1_Click()
If Check1.Value = 0 And Check2.Value = 0 Then
Check1.Value = 1
End If
Form1.Show
Form6.Hide
End Sub

Private Sub Form_Load()
File1.Path = App.Path & "\sounds"
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
StopMIDI App.Path & "\sounds" & Form6.File1.filename
End Sub

