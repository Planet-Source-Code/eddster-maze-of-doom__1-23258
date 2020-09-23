VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H8000000C&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Select your level"
   ClientHeight    =   3780
   ClientLeft      =   150
   ClientTop       =   390
   ClientWidth     =   5685
   Icon            =   "Form3.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3780
   ScaleWidth      =   5685
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox plrNam 
      Height          =   285
      Left            =   2520
      MaxLength       =   3
      TabIndex        =   212
      Text            =   "E.R"
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   375
      Left            =   2880
      TabIndex        =   208
      Top             =   2640
      Width           =   2295
   End
   Begin VB.FileListBox File1 
      Height          =   1455
      Left            =   2880
      Pattern         =   "*.ebg*"
      TabIndex        =   207
      Top             =   1080
      Width           =   2295
   End
   Begin VB.PictureBox Wall 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1080
      Picture         =   "Form3.frx":0442
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   206
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Ground 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1320
      Picture         =   "Form3.frx":07F8
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   205
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Man 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1560
      Picture         =   "Form3.frx":0BAE
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   204
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Ext 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1800
      Picture         =   "Form3.frx":0F64
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   203
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Hole 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   2040
      Picture         =   "Form3.frx":131A
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   202
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Rock 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   2280
      Picture         =   "Form3.frx":16D0
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   201
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   99
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   99
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   9
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   98
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   8
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   97
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   7
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   96
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   6
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   95
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   5
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   94
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   4
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   93
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   3
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   92
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   2
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   91
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   1
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   90
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   0
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   89
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   98
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   88
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   97
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   87
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   96
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   86
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   95
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   85
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   94
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   84
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   93
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   83
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   92
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   82
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   91
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   81
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   90
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   80
      Top             =   3000
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   89
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   79
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   88
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   78
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   87
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   77
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   86
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   76
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   85
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   75
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   84
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   74
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   83
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   73
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   82
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   72
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   81
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   71
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   80
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   70
      Top             =   2760
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   79
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   69
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   78
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   68
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   77
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   67
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   76
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   66
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   75
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   65
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   74
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   64
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   73
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   63
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   72
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   62
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   71
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   61
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   70
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   60
      Top             =   2520
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   69
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   59
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   68
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   58
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   67
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   57
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   66
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   56
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   65
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   55
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   64
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   54
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   63
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   53
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   62
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   52
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   61
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   51
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   60
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   50
      Top             =   2280
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   59
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   49
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   58
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   48
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   57
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   47
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   56
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   46
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   55
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   45
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   54
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   44
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   53
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   43
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   52
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   42
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   51
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   41
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   50
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   40
      Top             =   2040
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   49
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   39
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   48
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   38
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   47
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   37
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   46
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   36
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   45
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   35
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   44
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   34
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   43
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   33
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   42
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   32
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   41
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   31
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   40
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   30
      Top             =   1800
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   39
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   29
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   38
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   28
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   37
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   27
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   36
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   26
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   35
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   25
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   34
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   24
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   33
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   23
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   32
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   22
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   31
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   21
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   30
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   20
      Top             =   1560
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   29
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   19
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   28
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   18
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   27
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   17
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   26
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   16
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   25
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   15
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   24
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   14
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   23
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   13
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   22
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   12
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   21
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   11
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   20
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   10
      Top             =   1320
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   19
      Left            =   2400
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   9
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   18
      Left            =   2160
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   8
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   17
      Left            =   1920
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   7
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   16
      Left            =   1680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   6
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   15
      Left            =   1440
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   5
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   14
      Left            =   1200
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   4
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   13
      Left            =   960
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   3
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   12
      Left            =   720
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   2
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   11
      Left            =   480
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   1
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox Tile 
      BorderStyle     =   0  'None
      Height          =   255
      Index           =   10
      Left            =   240
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   0
      Top             =   1080
      Width           =   255
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000C&
      Caption         =   "Levels"
      Height          =   2295
      Left            =   2760
      TabIndex        =   209
      Top             =   840
      Width           =   2535
   End
   Begin VB.Label Tim 
      Caption         =   "Label3"
      Height          =   255
      Left            =   4560
      TabIndex        =   214
      Top             =   3720
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Player name:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1200
      TabIndex        =   213
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Best time:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   211
      Top             =   3480
      Width           =   855
   End
   Begin VB.Label LvlInfo 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1320
      TabIndex        =   210
      Top             =   3480
      Width           =   4095
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   0
      Left            =   2520
      TabIndex        =   200
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tota 
      Caption         =   "Label4"
      Height          =   255
      Left            =   2520
      TabIndex        =   199
      Top             =   3840
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   1
      Left            =   2760
      TabIndex        =   198
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   2
      Left            =   3000
      TabIndex        =   197
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   3
      Left            =   3240
      TabIndex        =   196
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   4
      Left            =   3480
      TabIndex        =   195
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   5
      Left            =   3720
      TabIndex        =   194
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   6
      Left            =   3960
      TabIndex        =   193
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   7
      Left            =   4200
      TabIndex        =   192
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   8
      Left            =   4440
      TabIndex        =   191
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   9
      Left            =   4680
      TabIndex        =   190
      Top             =   4080
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   10
      Left            =   2520
      TabIndex        =   189
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   11
      Left            =   2760
      TabIndex        =   188
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   12
      Left            =   3000
      TabIndex        =   187
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   13
      Left            =   3240
      TabIndex        =   186
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   14
      Left            =   3480
      TabIndex        =   185
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   15
      Left            =   3720
      TabIndex        =   184
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   16
      Left            =   3960
      TabIndex        =   183
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   17
      Left            =   4200
      TabIndex        =   182
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   18
      Left            =   4440
      TabIndex        =   181
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   19
      Left            =   4680
      TabIndex        =   180
      Top             =   4320
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   20
      Left            =   2520
      TabIndex        =   179
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   21
      Left            =   2760
      TabIndex        =   178
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   22
      Left            =   3000
      TabIndex        =   177
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   23
      Left            =   3240
      TabIndex        =   176
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   24
      Left            =   3480
      TabIndex        =   175
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   25
      Left            =   3720
      TabIndex        =   174
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   26
      Left            =   3960
      TabIndex        =   173
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   27
      Left            =   4200
      TabIndex        =   172
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   28
      Left            =   4440
      TabIndex        =   171
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   29
      Left            =   4680
      TabIndex        =   170
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   30
      Left            =   2520
      TabIndex        =   169
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   31
      Left            =   2760
      TabIndex        =   168
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   32
      Left            =   3000
      TabIndex        =   167
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   33
      Left            =   3240
      TabIndex        =   166
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   34
      Left            =   3480
      TabIndex        =   165
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   35
      Left            =   3720
      TabIndex        =   164
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   36
      Left            =   3960
      TabIndex        =   163
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   37
      Left            =   4200
      TabIndex        =   162
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   38
      Left            =   4440
      TabIndex        =   161
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   39
      Left            =   4680
      TabIndex        =   160
      Top             =   4800
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   40
      Left            =   2520
      TabIndex        =   159
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   41
      Left            =   2760
      TabIndex        =   158
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   42
      Left            =   3000
      TabIndex        =   157
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   43
      Left            =   3240
      TabIndex        =   156
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   44
      Left            =   3480
      TabIndex        =   155
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   45
      Left            =   3720
      TabIndex        =   154
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   46
      Left            =   3960
      TabIndex        =   153
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   47
      Left            =   4200
      TabIndex        =   152
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   48
      Left            =   4440
      TabIndex        =   151
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   49
      Left            =   4680
      TabIndex        =   150
      Top             =   5040
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   50
      Left            =   2520
      TabIndex        =   149
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   51
      Left            =   2760
      TabIndex        =   148
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   52
      Left            =   3000
      TabIndex        =   147
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   53
      Left            =   3240
      TabIndex        =   146
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   54
      Left            =   3480
      TabIndex        =   145
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   55
      Left            =   3720
      TabIndex        =   144
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   56
      Left            =   3960
      TabIndex        =   143
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   57
      Left            =   4200
      TabIndex        =   142
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   58
      Left            =   4440
      TabIndex        =   141
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   59
      Left            =   4680
      TabIndex        =   140
      Top             =   5280
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   60
      Left            =   2520
      TabIndex        =   139
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   61
      Left            =   2760
      TabIndex        =   138
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   62
      Left            =   3000
      TabIndex        =   137
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   63
      Left            =   3240
      TabIndex        =   136
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   64
      Left            =   3480
      TabIndex        =   135
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   65
      Left            =   3720
      TabIndex        =   134
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   66
      Left            =   3960
      TabIndex        =   133
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   67
      Left            =   4200
      TabIndex        =   132
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   68
      Left            =   4440
      TabIndex        =   131
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   69
      Left            =   4680
      TabIndex        =   130
      Top             =   5520
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   70
      Left            =   2520
      TabIndex        =   129
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   71
      Left            =   2760
      TabIndex        =   128
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   72
      Left            =   3000
      TabIndex        =   127
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   73
      Left            =   3240
      TabIndex        =   126
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   74
      Left            =   3480
      TabIndex        =   125
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   75
      Left            =   3720
      TabIndex        =   124
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   76
      Left            =   3960
      TabIndex        =   123
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   77
      Left            =   4200
      TabIndex        =   122
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   78
      Left            =   4440
      TabIndex        =   121
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   79
      Left            =   4680
      TabIndex        =   120
      Top             =   5760
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   80
      Left            =   2520
      TabIndex        =   119
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   81
      Left            =   2760
      TabIndex        =   118
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   82
      Left            =   3000
      TabIndex        =   117
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   83
      Left            =   3240
      TabIndex        =   116
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   84
      Left            =   3480
      TabIndex        =   115
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   85
      Left            =   3720
      TabIndex        =   114
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   86
      Left            =   3960
      TabIndex        =   113
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   87
      Left            =   4200
      TabIndex        =   112
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   88
      Left            =   4440
      TabIndex        =   111
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   89
      Left            =   4680
      TabIndex        =   110
      Top             =   6000
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   90
      Left            =   2520
      TabIndex        =   109
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   91
      Left            =   2760
      TabIndex        =   108
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   92
      Left            =   3000
      TabIndex        =   107
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   93
      Left            =   3240
      TabIndex        =   106
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   94
      Left            =   3480
      TabIndex        =   105
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   95
      Left            =   3720
      TabIndex        =   104
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   96
      Left            =   3960
      TabIndex        =   103
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   97
      Left            =   4200
      TabIndex        =   102
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   98
      Left            =   4440
      TabIndex        =   101
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   99
      Left            =   4680
      TabIndex        =   100
      Top             =   6240
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnustart 
         Caption         =   "Back to Start"
      End
      Begin VB.Menu mnuanout 
         Caption         =   "About"
      End
      Begin VB.Menu hyph 
         Caption         =   "-"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
For X = 0 To 99
   Form4.tst(X) = tst(X)
Next
Form4.Show
Form3.Hide
End Sub

Private Sub Command2_Click()
LvlInfo.Caption = Mid(tota, 102, 50)
End Sub

Private Sub File1_Click()
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
Tile(0).Picture = Wall
Tim.Caption = Mid(tota, 106, 5)
LvlInfo.Caption = Mid(tota, 101, 4) & " " & Mid(Tim, 1, 1) & ":" & Mid(Tim, 2, 2) & ":" & Mid(Tim, 4, 1)


End Sub





Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyUp
Label5.Caption = "hello"
End Select
End Sub

Private Sub Form_Load()
File1.Path = App.Path & "\levels"
End Sub



Private Sub mnuselect_Click()
File1.Enabled = True
Form3.Width = 7740
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
StopMIDI App.Path & "\sounds" & Form6.File1.filename
Form1.Show
Form3.Hide
Unload Form3
End Sub

Private Sub mnuanout_Click()
MsgBox "This is a wicked game created purely by Ed Rackham but got the idea from Steve!", , "About..."

End Sub

Private Sub mnueditor_Click()
Form1.Hide
Unload Form1
Form2.Show
Form3.Hide
Unload Form3
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnustart_Click()
Form1.Show
Form3.Hide
Unload Form3
End Sub
