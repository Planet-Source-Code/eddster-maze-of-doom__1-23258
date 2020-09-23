VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H80000010&
   Caption         =   "Maze Editor"
   ClientHeight    =   3540
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   8040
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3540
   ScaleWidth      =   8040
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command12 
      Caption         =   "Random"
      Height          =   375
      Left            =   360
      TabIndex        =   225
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Play the levels"
      Height          =   375
      Left            =   5520
      TabIndex        =   222
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Rock"
      Height          =   615
      Left            =   360
      Picture         =   "Form2.frx":0442
      Style           =   1  'Graphical
      TabIndex        =   120
      Top             =   1800
      Width           =   975
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Hole"
      Height          =   615
      Left            =   1440
      Picture         =   "Form2.frx":07F8
      Style           =   1  'Graphical
      TabIndex        =   119
      Top             =   1800
      Width           =   975
   End
   Begin VB.PictureBox Rock 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1320
      Picture         =   "Form2.frx":0BAE
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   118
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Hole 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1080
      Picture         =   "Form2.frx":0F64
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   117
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   120
      Top             =   6720
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Exit"
      Height          =   375
      Left            =   6840
      TabIndex        =   113
      Top             =   3000
      Width           =   855
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Open"
      Height          =   375
      Left            =   6720
      TabIndex        =   112
      Top             =   360
      Width           =   975
   End
   Begin VB.FileListBox File1 
      Height          =   2040
      Left            =   5400
      Pattern         =   "*.ebg*"
      TabIndex        =   111
      Top             =   840
      Width           =   2415
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Save"
      Height          =   375
      Left            =   5520
      TabIndex        =   110
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox Nam 
      Height          =   285
      Left            =   2760
      MaxLength       =   25
      TabIndex        =   109
      Text            =   "Name of level"
      Top             =   360
      Width           =   2415
   End
   Begin VB.PictureBox Ext 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   840
      Picture         =   "Form2.frx":131A
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   108
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Man 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   600
      Picture         =   "Form2.frx":16D0
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   107
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Ground 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   360
      Picture         =   "Form2.frx":1A86
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   106
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Ground"
      Height          =   615
      Left            =   1440
      Picture         =   "Form2.frx":1E3C
      Style           =   1  'Graphical
      TabIndex        =   105
      Top             =   1080
      Width           =   975
   End
   Begin VB.PictureBox Wall 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   120
      Picture         =   "Form2.frx":21F2
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   94
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Finish"
      Height          =   615
      Left            =   1440
      Picture         =   "Form2.frx":25A8
      Style           =   1  'Graphical
      TabIndex        =   93
      Top             =   360
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Start"
      Height          =   615
      Left            =   360
      Picture         =   "Form2.frx":295E
      Style           =   1  'Graphical
      TabIndex        =   92
      Top             =   360
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Wall"
      DownPicture     =   "Form2.frx":2D14
      Height          =   615
      Left            =   360
      Picture         =   "Form2.frx":30CA
      Style           =   1  'Graphical
      TabIndex        =   91
      Top             =   1080
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Reset"
      Height          =   375
      Left            =   1440
      TabIndex        =   90
      Top             =   2520
      Width           =   975
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   10
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   0
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   11
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   1
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   12
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   2
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   13
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   3
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   14
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   4
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   15
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   5
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   16
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   6
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   17
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   7
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   18
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   8
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   19
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   9
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   20
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   10
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   21
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   11
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   22
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   12
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   23
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   13
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   24
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   14
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   25
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   15
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   26
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   16
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   27
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   17
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   28
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   18
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   29
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   19
      Top             =   1200
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   30
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   20
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   31
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   21
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   32
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   22
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   33
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   23
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   34
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   24
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   35
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   25
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   36
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   26
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   37
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   27
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   38
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   28
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   39
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   29
      Top             =   1440
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   40
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   30
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   41
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   31
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   42
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   32
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   43
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   33
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   44
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   34
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   45
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   35
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   46
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   36
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   47
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   37
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   48
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   38
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   49
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   39
      Top             =   1680
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   50
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   40
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   51
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   41
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   52
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   42
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   53
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   43
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   54
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   44
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   55
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   45
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   56
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   46
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   57
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   47
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   58
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   48
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   59
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   49
      Top             =   1920
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   60
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   50
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   61
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   51
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   62
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   52
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   63
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   53
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   64
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   54
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   65
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   55
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   66
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   56
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   67
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   57
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   68
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   58
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   69
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   59
      Top             =   2160
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   70
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   60
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   71
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   61
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   72
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   62
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   73
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   63
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   74
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   64
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   75
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   65
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   76
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   66
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   77
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   67
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   78
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   68
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   79
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   69
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   80
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   70
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   81
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   71
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   82
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   72
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   83
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   73
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   84
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   74
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   85
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   75
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   86
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   76
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   87
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   77
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   88
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   78
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   89
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   79
      Top             =   2640
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   90
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   80
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   91
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   81
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   92
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   82
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   93
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   83
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   94
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   84
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   95
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   85
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   96
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   86
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   97
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   87
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   98
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   88
      Top             =   2880
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   0
      Left            =   2760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   95
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   1
      Left            =   3000
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   96
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   2
      Left            =   3240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   97
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   3
      Left            =   3480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   98
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   4
      Left            =   3720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   99
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   5
      Left            =   3960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   100
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   6
      Left            =   4200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   101
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   7
      Left            =   4440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   102
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   8
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   103
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   9
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   104
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   99
      Left            =   4920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   89
      Top             =   2880
      Width           =   255
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000C&
      Caption         =   "Tools"
      Height          =   2895
      Left            =   120
      TabIndex        =   223
      Top             =   120
      Width           =   2535
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H8000000C&
      Caption         =   "Load/Unload"
      Height          =   3375
      Left            =   5280
      TabIndex        =   224
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label Dub 
      Caption         =   "Label4"
      Height          =   255
      Left            =   3600
      TabIndex        =   229
      Top             =   3600
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Lngh 
      Caption         =   "Label4"
      Height          =   255
      Left            =   2520
      TabIndex        =   228
      Top             =   3600
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label TstNam 
      Caption         =   "Label4"
      Height          =   255
      Left            =   1200
      TabIndex        =   227
      Top             =   3600
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label RndNum 
      Caption         =   "Label4"
      Height          =   255
      Left            =   480
      TabIndex        =   226
      Top             =   3600
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   99
      Left            =   4440
      TabIndex        =   221
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   98
      Left            =   4200
      TabIndex        =   220
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   97
      Left            =   3960
      TabIndex        =   219
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   96
      Left            =   3720
      TabIndex        =   218
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   95
      Left            =   3480
      TabIndex        =   217
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   94
      Left            =   3240
      TabIndex        =   216
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   93
      Left            =   3000
      TabIndex        =   215
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   92
      Left            =   2760
      TabIndex        =   214
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   91
      Left            =   2520
      TabIndex        =   213
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   90
      Left            =   2280
      TabIndex        =   212
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   89
      Left            =   4440
      TabIndex        =   211
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   88
      Left            =   4200
      TabIndex        =   210
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   87
      Left            =   3960
      TabIndex        =   209
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   86
      Left            =   3720
      TabIndex        =   208
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   85
      Left            =   3480
      TabIndex        =   207
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   84
      Left            =   3240
      TabIndex        =   206
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   83
      Left            =   3000
      TabIndex        =   205
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   82
      Left            =   2760
      TabIndex        =   204
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   81
      Left            =   2520
      TabIndex        =   203
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   80
      Left            =   2280
      TabIndex        =   202
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   79
      Left            =   4440
      TabIndex        =   201
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   78
      Left            =   4200
      TabIndex        =   200
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   77
      Left            =   3960
      TabIndex        =   199
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   76
      Left            =   3720
      TabIndex        =   198
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   75
      Left            =   3480
      TabIndex        =   197
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   74
      Left            =   3240
      TabIndex        =   196
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   73
      Left            =   3000
      TabIndex        =   195
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   72
      Left            =   2760
      TabIndex        =   194
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   71
      Left            =   2520
      TabIndex        =   193
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   70
      Left            =   2280
      TabIndex        =   192
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   69
      Left            =   4440
      TabIndex        =   191
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   68
      Left            =   4200
      TabIndex        =   190
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   67
      Left            =   3960
      TabIndex        =   189
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   66
      Left            =   3720
      TabIndex        =   188
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   65
      Left            =   3480
      TabIndex        =   187
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   64
      Left            =   3240
      TabIndex        =   186
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   63
      Left            =   3000
      TabIndex        =   185
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   62
      Left            =   2760
      TabIndex        =   184
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   61
      Left            =   2520
      TabIndex        =   183
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   60
      Left            =   2280
      TabIndex        =   182
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   59
      Left            =   4440
      TabIndex        =   181
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   58
      Left            =   4200
      TabIndex        =   180
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   57
      Left            =   3960
      TabIndex        =   179
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   56
      Left            =   3720
      TabIndex        =   178
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   55
      Left            =   3480
      TabIndex        =   177
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   54
      Left            =   3240
      TabIndex        =   176
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   53
      Left            =   3000
      TabIndex        =   175
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   52
      Left            =   2760
      TabIndex        =   174
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   51
      Left            =   2520
      TabIndex        =   173
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   50
      Left            =   2280
      TabIndex        =   172
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   49
      Left            =   4440
      TabIndex        =   171
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   48
      Left            =   4200
      TabIndex        =   170
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   47
      Left            =   3960
      TabIndex        =   169
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   46
      Left            =   3720
      TabIndex        =   168
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   45
      Left            =   3480
      TabIndex        =   167
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   44
      Left            =   3240
      TabIndex        =   166
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   43
      Left            =   3000
      TabIndex        =   165
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   42
      Left            =   2760
      TabIndex        =   164
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   41
      Left            =   2520
      TabIndex        =   163
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   40
      Left            =   2280
      TabIndex        =   162
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   39
      Left            =   4440
      TabIndex        =   161
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   38
      Left            =   4200
      TabIndex        =   160
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   37
      Left            =   3960
      TabIndex        =   159
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   36
      Left            =   3720
      TabIndex        =   158
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   35
      Left            =   3480
      TabIndex        =   157
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   34
      Left            =   3240
      TabIndex        =   156
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   33
      Left            =   3000
      TabIndex        =   155
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   32
      Left            =   2760
      TabIndex        =   154
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   31
      Left            =   2520
      TabIndex        =   153
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   30
      Left            =   2280
      TabIndex        =   152
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   29
      Left            =   4440
      TabIndex        =   151
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   28
      Left            =   4200
      TabIndex        =   150
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   27
      Left            =   3960
      TabIndex        =   149
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   26
      Left            =   3720
      TabIndex        =   148
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   25
      Left            =   3480
      TabIndex        =   147
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   24
      Left            =   3240
      TabIndex        =   146
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   23
      Left            =   3000
      TabIndex        =   145
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   22
      Left            =   2760
      TabIndex        =   144
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   21
      Left            =   2520
      TabIndex        =   143
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   20
      Left            =   2280
      TabIndex        =   142
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   19
      Left            =   4440
      TabIndex        =   141
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   18
      Left            =   4200
      TabIndex        =   140
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   17
      Left            =   3960
      TabIndex        =   139
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   16
      Left            =   3720
      TabIndex        =   138
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   15
      Left            =   3480
      TabIndex        =   137
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   14
      Left            =   3240
      TabIndex        =   136
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   13
      Left            =   3000
      TabIndex        =   135
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   12
      Left            =   2760
      TabIndex        =   134
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   11
      Left            =   2520
      TabIndex        =   133
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   10
      Left            =   2280
      TabIndex        =   132
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   9
      Left            =   4440
      TabIndex        =   131
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   8
      Left            =   4200
      TabIndex        =   130
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   7
      Left            =   3960
      TabIndex        =   129
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   6
      Left            =   3720
      TabIndex        =   128
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   5
      Left            =   3480
      TabIndex        =   127
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   4
      Left            =   3240
      TabIndex        =   126
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   3
      Left            =   3000
      TabIndex        =   125
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   2
      Left            =   2760
      TabIndex        =   124
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   1
      Left            =   2520
      TabIndex        =   123
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label tota 
      Caption         =   "Label4"
      Height          =   255
      Left            =   2280
      TabIndex        =   122
      Top             =   3600
      Width           =   2415
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   0
      Left            =   2280
      TabIndex        =   121
      Top             =   3840
      Width           =   255
   End
   Begin VB.Label Label3 
      Caption         =   "0"
      Height          =   255
      Left            =   1320
      TabIndex        =   116
      Top             =   6480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "0"
      Height          =   255
      Left            =   720
      TabIndex        =   115
      Top             =   6480
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   255
      Left            =   120
      TabIndex        =   114
      Top             =   6480
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Menu mnfil 
      Caption         =   "&File"
      Begin VB.Menu mnubackto 
         Caption         =   "Back to start"
      End
      Begin VB.Menu hyp 
         Caption         =   "-"
      End
      Begin VB.Menu mnise 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu hhhhhhelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuhowto 
         Caption         =   "How to use the Editor"
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As Single

Private Sub Command1_Click()
For X = 0 To 9
Tile(X).Picture = Wall
Next
For X = 11 To 18
Tile(X).Picture = Ground
Next
For X = 21 To 28
Tile(X).Picture = Ground
Next
For X = 31 To 38
Tile(X).Picture = Ground
Next
For X = 41 To 48
Tile(X).Picture = Ground
Next
For X = 51 To 58
Tile(X).Picture = Ground
Next
For X = 61 To 68
Tile(X).Picture = Ground
Next
For X = 71 To 78
Tile(X).Picture = Ground
Next
For X = 81 To 88
Tile(X).Picture = Ground
Next
For X = 90 To 99
Tile(X).Picture = Wall
Next
Tile(10) = Wall
Tile(19) = Wall
Tile(20) = Wall
Tile(29) = Wall
Tile(30) = Wall
Tile(39) = Wall
Tile(40) = Wall
Tile(49) = Wall
Tile(50) = Wall
Tile(59) = Wall
Tile(60) = Wall
Tile(69) = Wall
Tile(70) = Wall
Tile(79) = Wall
Tile(80) = Wall
Tile(89) = Wall
End Sub

Private Sub Command10_Click()
For X = 0 To 99
If Tile(X).BorderStyle = 1 Then
Tile(X).Picture = Rock
Label1.Caption = 0
Tile(X).BorderStyle = 0
End If
Next
End Sub

Private Sub Command11_Click()
Form3.Show
Form2.Hide
Unload Form2
End Sub

Private Sub Command12_Click()
For X = 0 To 99
RndNum.Caption = Int(6 * Rnd(1)) + 1
If RndNum.Caption = 1 Then Tile(X).Picture = Wall
If RndNum.Caption = 2 Then Tile(X).Picture = Ground
If RndNum.Caption = 3 Then Tile(X).Picture = Rock
If RndNum.Caption = 4 Then Tile(X).Picture = Hole
If RndNum.Caption = 5 Then Tile(X).Picture = Ground
If RndNum.Caption = 6 Then Tile(X).Picture = Ground
Next

For X = 0 To 9
Tile(X).Picture = Wall
Next

For X = 90 To 99
Tile(X).Picture = Wall
Next
Tile(10) = Wall
Tile(19) = Wall
Tile(20) = Wall
Tile(29) = Wall
Tile(30) = Wall
Tile(39) = Wall
Tile(40) = Wall
Tile(49) = Wall
Tile(50) = Wall
Tile(59) = Wall
Tile(60) = Wall
Tile(69) = Wall
Tile(70) = Wall
Tile(79) = Wall
Tile(80) = Wall
Tile(89) = Wall

End Sub

Private Sub Command2_Click()
For X = 0 To 99
If Tile(X).Picture = Man Then
Label2.Caption = 0
End If
Next
For X = 0 To 99
If Tile(X).BorderStyle = 1 Then
Tile(X).Picture = Wall
Label1.Caption = 0
Tile(X).BorderStyle = 0
End If
Next
End Sub

Private Sub Command3_Click()


  

  If Label1.Caption = 1 And Label2.Caption = 0 Then
    For X = 0 To 99
      If Tile(X).BorderStyle = 1 Then
      Tile(X).Picture = Man
      Label1.Caption = 0
      Label2.Caption = 1
      Tile(X).BorderStyle = 0
      End If
    Next
  Else: If Label1.Caption > 1 Or Label2.Caption > 0 Then MsgBox "Too bad you have selected too many boxes, you can only have one player!", , "No way..."
End If
End Sub

Private Sub Command4_Click()
 If Label1.Caption = 1 And Label3.Caption = 0 Then
    For X = 0 To 99
      If Tile(X).BorderStyle = 1 Then
      Tile(X).Picture = Ext
      Label1.Caption = 0
      Label3.Caption = 1
      Tile(X).BorderStyle = 0
      End If
    Next
  Else: If Label1.Caption > 1 Or Label3.Caption > 0 Then MsgBox "Duh, only ONE exit!!", , "No way..."
End If
End Sub

Private Sub Command5_Click()
For X = 0 To 99
If Tile(X).BorderStyle = 1 Then
Tile(X).Picture = Ground
Label1.Caption = 0
Tile(X).BorderStyle = 0
End If
Next
End Sub

Private Sub Command6_Click()
If Nam.Text = Dub.Caption Then
Dim Msg, Style, Title, Help, Ctxt, Response, MyString
Msg = "Do you want to overwrite '" & Nam.Text & "' ?"
Style = vbYesNo + vbQuestion + vbDefaultButton2
Title = "Are you sure?"
Help = "DEMO.HLP"
Ctxt = 1000

Response = MsgBox(Msg, Style, Title, Help, Ctxt)
If Response = vbNo Then
    MyString = "No"
    Exit Sub
Else
MyString = "Yes"

End If
End If




'MsgBox "Do you want to overwrite '" & Nam.Text & "' ?", vbYesNo, "Are you sure?"
'If Response = vbNo Then
'Exit Sub
'Else
'End If
'End If
For X = 0 To 9
If Tile(X).Picture = Wall = False Then
MsgBox "The area has to be enclosed!", vbCritical, "!!!!"
Exit Sub
End If
Next
For X = 90 To 99
If Tile(X).Picture = Wall = False Then
MsgBox "The area has to be enclosed!", vbCritical, "!!!!"
Exit Sub
End If
Next
If Tile(10) = Wall = False Or Tile(19) = Wall = False Or Tile(20) = Wall = False Or Tile(29) = Wall = False Or Tile(30) = Wall = False Or Tile(39) = Wall = False Or Tile(40) = Wall = False Or Tile(49) = Wall = False Or Tile(50) = Wall = False Or Tile(59) = Wall = False Or Tile(60) = Wall = False Or Tile(69) = Wall = False Or Tile(70) = Wall = False Or Tile(79) = Wall = False Or Tile(80) = Wall = False Or Tile(89) = Wall = False Then
MsgBox "The area has to be enclosed!", vbCritical, "!!!!"
Exit Sub
End If

For X = 0 To 99
If Tile(X) = Wall Then
tst(X).Caption = "w"
End If
Next
For X = 0 To 99
If Tile(X) = Ground Then
tst(X).Caption = "g"
End If
Next
For X = 0 To 99
If Tile(X) = Man Then
tst(X).Caption = "m"
End If
Next
For X = 0 To 99
If Tile(X) = Ext Then
tst(X).Caption = "e"
End If
Next
For X = 0 To 99
If Tile(X) = Hole Then
tst(X).Caption = "h"
End If
Next
For X = 0 To 99
If Tile(X) = Rock Then
tst(X).Caption = "r"
End If
Next
For X = 0 To 99
tota.Caption = tst(1) & tst(2) & tst(3) & tst(4) & tst(5) & tst(6) & tst(7) & tst(8) & tst(9) & tst(10) & tst(11) & tst(12) & tst(13) & tst(14) & tst(15) & tst(16) & tst(17) & tst(18) & tst(19) & tst(20) & tst(21) & tst(22) & tst(23) & tst(24) & tst(25) & tst(26) & tst(27) & tst(28) & tst(29) & tst(30) & tst(31) & tst(32) & tst(33) & tst(34) & tst(35) & tst(36) & tst(37) & tst(38) & tst(39) & tst(40) & tst(41) & tst(42) & tst(43) & tst(44) & tst(45) & tst(46) & tst(47) & tst(48) & tst(49) & tst(50) & tst(51) & tst(52) & tst(53) & tst(54) & tst(55) & tst(56) & tst(57) & tst(58) & tst(59) & tst(60) & tst(61) & tst(62) & tst(63) & tst(64) & tst(65) & tst(66) & tst(67) & tst(68) & tst(69) & tst(70) & tst(71) & tst(72) & tst(73) & tst(74) & tst(75) & tst(76) & tst(77) & tst(78) & tst(79) & tst(80) & tst(81) & tst(82) & tst(83) & tst(84) & tst(85) & tst(86) & tst(87) & tst(88) & tst(89) & tst(90) & tst(91) & tst(92) & tst(93) & tst(94) & tst(95) & tst(96) & tst(97) & tst(98) & tst(99)
Next
Open App.Path & "\levels" & "\" & Nam & ".ebg" For Output As #1
Write #1, tota.Caption & " NO BEST TIME YET!"
Close #1
File1.Refresh
End Sub

Private Sub Command7_Click()
Dim iFileNumber As Integer
iFileNumber = FreeFile 'Get a file handle.
Open App.Path & "\levels" & "\" & File1.filename For Input As iFileNumber 'Open the file for input.
tota.Caption = Input$(LOF(iFileNumber), iFileNumber) 'Read all text into textbox.
Close iFileNumber 'Close the file.
For X = 0 To 99
    tst(X).Caption = Mid(tota, 1 + X, 1)
Next
For X = 0 To 99
    If tst(X).Caption = "w" Then
    Tile(X).Picture = Wall
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "h" Then
    Tile(X).Picture = Hole
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "r" Then
    Tile(X).Picture = Rock
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "e" Then
    Tile(X).Picture = Ext
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "m" Then
    Tile(X).Picture = Man
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "g" Then
    Tile(X).Picture = Ground
    End If
Next
End Sub

Private Sub Command8_Click()
Form1.Show
Form2.Hide
End Sub

Private Sub Command9_Click()
For X = 0 To 99
If Tile(X).BorderStyle = 1 Then
Tile(X).Picture = Hole
Label1.Caption = 0
Tile(X).BorderStyle = 0
End If
Next
End Sub

Private Sub File1_DblClick()
Dim iFileNumber As Integer
iFileNumber = FreeFile 'Get a file handle.
Open App.Path & "\levels" & "\" & File1.filename For Input As iFileNumber 'Open the file for input.
tota.Caption = Input$(LOF(iFileNumber), iFileNumber) 'Read all text into textbox.
Close iFileNumber 'Close the file.
For X = 0 To 99
    tst(X).Caption = Mid(tota, 1 + X, 1)
Next
For X = 0 To 99
    If tst(X).Caption = "w" Then
    Tile(X).Picture = Wall
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "h" Then
    Tile(X).Picture = Hole
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "r" Then
    Tile(X).Picture = Rock
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "e" Then
    Tile(X).Picture = Ext
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "m" Then
    Tile(X).Picture = Man
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "g" Then
    Tile(X).Picture = Ground
    End If
Next
TstNam.Caption = File1.filename
Lngh.Caption = Len(TstNam.Caption)
Nam.Text = Mid(TstNam, 1, Lngh - 4)
Dub.Caption = Mid(TstNam, 1, Lngh - 4)
End Sub

Private Sub Form_Load()
File1.Path = App.Path & "\levels"
For X = 0 To 9
Tile(X).Picture = Wall
Next
For X = 11 To 18
Tile(X).Picture = Ground
Next
For X = 21 To 28
Tile(X).Picture = Ground
Next
For X = 31 To 38
Tile(X).Picture = Ground
Next
For X = 41 To 48
Tile(X).Picture = Ground
Next
For X = 51 To 58
Tile(X).Picture = Ground
Next
For X = 61 To 68
Tile(X).Picture = Ground
Next
For X = 71 To 78
Tile(X).Picture = Ground
Next
For X = 81 To 88
Tile(X).Picture = Ground
Next
For X = 90 To 99
Tile(X).Picture = Wall
Next
Tile(10) = Wall
Tile(19) = Wall
Tile(20) = Wall
Tile(29) = Wall
Tile(30) = Wall
Tile(39) = Wall
Tile(40) = Wall
Tile(49) = Wall
Tile(50) = Wall
Tile(59) = Wall
Tile(60) = Wall
Tile(69) = Wall
Tile(70) = Wall
Tile(79) = Wall
Tile(80) = Wall
Tile(89) = Wall


End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
StopMIDI App.Path & "\sounds" & Form6.File1.filename
End Sub

Private Sub mnise_Click()
End
End Sub

Private Sub mnubackto_Click()
Form1.Show
Form2.Hide

End Sub

Private Sub mnuhowto_Click()
MsgBox "All you have to do is select a square in the main veiwing area of the level, then choose an option from the left hand control panel. I.e. if i wanted a hole in the middle, i would select the middle square and then press the 'hole' button on the left. You can selet more than one square at a time, but when placing wither a man or an exit, you can only have one of each.", , "How to..."
End Sub

Private Sub Tile_Click(Index As Integer)


If Tile(Index).BorderStyle = 0 Then
Tile(Index).BorderStyle = 1
Label1.Caption = Label1.Caption + 1
Exit Sub
End If

If Tile(Index).BorderStyle = 1 Then
Tile(Index).BorderStyle = 0
Label1.Caption = Label1.Caption - 1
Exit Sub
End If
End Sub


Private Sub Timer1_Timer()
For X = 0 To 99
If Tile(X).Picture = Ext = True Then
Label3.Caption = 1
GoTo 500
End If
Next
For X = 0 To 99
If Tile(X).Picture = Ext = False Then
Label3.Caption = 0
GoTo 500
End If
Next
500
For X = 0 To 99
If Tile(X).Picture = Man = True Then
Label2.Caption = 1
Exit Sub
End If
Next
For X = 0 To 99
If Tile(X).Picture = Man = False Then
Label2.Caption = 0
Exit Sub
End If
Next
End Sub

