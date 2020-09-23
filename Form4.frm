VERSION 5.00
Begin VB.Form Form4 
   BackColor       =   &H8000000C&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Form4"
   ClientHeight    =   3165
   ClientLeft      =   150
   ClientTop       =   390
   ClientWidth     =   3120
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3165
   ScaleWidth      =   3120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   2760
      Top             =   3000
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Time:"
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
      Left            =   960
      TabIndex        =   111
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   ":"
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
      Left            =   1730
      TabIndex        =   110
      Top             =   120
      Width           =   135
   End
   Begin VB.Label TenSec 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Left            =   1800
      TabIndex        =   109
      Top             =   120
      Width           =   135
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      Height          =   255
      Left            =   1560
      TabIndex        =   108
      Top             =   3720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   ":"
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
      Left            =   2040
      TabIndex        =   107
      Top             =   120
      Width           =   135
   End
   Begin VB.Label Min 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Left            =   1580
      TabIndex        =   106
      Top             =   120
      Width           =   135
   End
   Begin VB.Label Sec 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Left            =   1920
      TabIndex        =   105
      Top             =   120
      Width           =   135
   End
   Begin VB.Label MilSec 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
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
      Left            =   2100
      TabIndex        =   104
      Top             =   120
      Width           =   135
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Click here to restart"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   255
      Left            =   480
      TabIndex        =   103
      Top             =   2880
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   255
      Left            =   2520
      TabIndex        =   102
      Top             =   4680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image Ext 
      Height          =   255
      Left            =   1080
      Picture         =   "Form4.frx":0442
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image Ground 
      Height          =   255
      Left            =   600
      Picture         =   "Form4.frx":07F8
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image Wall 
      Height          =   255
      Left            =   1800
      Picture         =   "Form4.frx":0BAE
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image Hole 
      Height          =   255
      Left            =   1320
      Picture         =   "Form4.frx":0F64
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image Rock 
      Height          =   255
      Left            =   1560
      Picture         =   "Form4.frx":131A
      Top             =   5520
      Width           =   255
   End
   Begin VB.Image Man 
      Height          =   255
      Left            =   840
      Picture         =   "Form4.frx":16D0
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   99
      Left            =   5040
      TabIndex        =   101
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   98
      Left            =   4800
      TabIndex        =   100
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   97
      Left            =   4560
      TabIndex        =   99
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   96
      Left            =   4320
      TabIndex        =   98
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   95
      Left            =   4080
      TabIndex        =   97
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   94
      Left            =   3840
      TabIndex        =   96
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   93
      Left            =   3600
      TabIndex        =   95
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   92
      Left            =   3360
      TabIndex        =   94
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   91
      Left            =   3120
      TabIndex        =   93
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   90
      Left            =   2880
      TabIndex        =   92
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   89
      Left            =   5040
      TabIndex        =   91
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   88
      Left            =   4800
      TabIndex        =   90
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   87
      Left            =   4560
      TabIndex        =   89
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   86
      Left            =   4320
      TabIndex        =   88
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   85
      Left            =   4080
      TabIndex        =   87
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   84
      Left            =   3840
      TabIndex        =   86
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   83
      Left            =   3600
      TabIndex        =   85
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   82
      Left            =   3360
      TabIndex        =   84
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   81
      Left            =   3120
      TabIndex        =   83
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   80
      Left            =   2880
      TabIndex        =   82
      Top             =   6000
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   79
      Left            =   5040
      TabIndex        =   81
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   78
      Left            =   4800
      TabIndex        =   80
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   77
      Left            =   4560
      TabIndex        =   79
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   76
      Left            =   4320
      TabIndex        =   78
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   75
      Left            =   4080
      TabIndex        =   77
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   74
      Left            =   3840
      TabIndex        =   76
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   73
      Left            =   3600
      TabIndex        =   75
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   72
      Left            =   3360
      TabIndex        =   74
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   71
      Left            =   3120
      TabIndex        =   73
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   70
      Left            =   2880
      TabIndex        =   72
      Top             =   5760
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   69
      Left            =   5040
      TabIndex        =   71
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   68
      Left            =   4800
      TabIndex        =   70
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   67
      Left            =   4560
      TabIndex        =   69
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   66
      Left            =   4320
      TabIndex        =   68
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   65
      Left            =   4080
      TabIndex        =   67
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   64
      Left            =   3840
      TabIndex        =   66
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   63
      Left            =   3600
      TabIndex        =   65
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   62
      Left            =   3360
      TabIndex        =   64
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   61
      Left            =   3120
      TabIndex        =   63
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   60
      Left            =   2880
      TabIndex        =   62
      Top             =   5520
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   59
      Left            =   5040
      TabIndex        =   61
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   58
      Left            =   4800
      TabIndex        =   60
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   57
      Left            =   4560
      TabIndex        =   59
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   56
      Left            =   4320
      TabIndex        =   58
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   55
      Left            =   4080
      TabIndex        =   57
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   54
      Left            =   3840
      TabIndex        =   56
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   53
      Left            =   3600
      TabIndex        =   55
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   52
      Left            =   3360
      TabIndex        =   54
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   51
      Left            =   3120
      TabIndex        =   53
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   50
      Left            =   2880
      TabIndex        =   52
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   49
      Left            =   5040
      TabIndex        =   51
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   48
      Left            =   4800
      TabIndex        =   50
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   47
      Left            =   4560
      TabIndex        =   49
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   46
      Left            =   4320
      TabIndex        =   48
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   45
      Left            =   4080
      TabIndex        =   47
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   44
      Left            =   3840
      TabIndex        =   46
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   43
      Left            =   3600
      TabIndex        =   45
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   42
      Left            =   3360
      TabIndex        =   44
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   41
      Left            =   3120
      TabIndex        =   43
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   40
      Left            =   2880
      TabIndex        =   42
      Top             =   5040
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   39
      Left            =   5040
      TabIndex        =   41
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   38
      Left            =   4800
      TabIndex        =   40
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   37
      Left            =   4560
      TabIndex        =   39
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   36
      Left            =   4320
      TabIndex        =   38
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   35
      Left            =   4080
      TabIndex        =   37
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   34
      Left            =   3840
      TabIndex        =   36
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   33
      Left            =   3600
      TabIndex        =   35
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   32
      Left            =   3360
      TabIndex        =   34
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   31
      Left            =   3120
      TabIndex        =   33
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   30
      Left            =   2880
      TabIndex        =   32
      Top             =   4800
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   29
      Left            =   5040
      TabIndex        =   31
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   28
      Left            =   4800
      TabIndex        =   30
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   27
      Left            =   4560
      TabIndex        =   29
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   26
      Left            =   4320
      TabIndex        =   28
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   25
      Left            =   4080
      TabIndex        =   27
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   24
      Left            =   3840
      TabIndex        =   26
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   23
      Left            =   3600
      TabIndex        =   25
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   22
      Left            =   3360
      TabIndex        =   24
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   21
      Left            =   3120
      TabIndex        =   23
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   20
      Left            =   2880
      TabIndex        =   22
      Top             =   4560
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   19
      Left            =   5040
      TabIndex        =   21
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   18
      Left            =   4800
      TabIndex        =   20
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   17
      Left            =   4560
      TabIndex        =   19
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   16
      Left            =   4320
      TabIndex        =   18
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   15
      Left            =   4080
      TabIndex        =   17
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   14
      Left            =   3840
      TabIndex        =   16
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   13
      Left            =   3600
      TabIndex        =   15
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   12
      Left            =   3360
      TabIndex        =   14
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   11
      Left            =   3120
      TabIndex        =   13
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   10
      Left            =   2880
      TabIndex        =   12
      Top             =   4320
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   9
      Left            =   5040
      TabIndex        =   11
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   8
      Left            =   4800
      TabIndex        =   10
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   7
      Left            =   4560
      TabIndex        =   9
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   6
      Left            =   4320
      TabIndex        =   8
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   5
      Left            =   4080
      TabIndex        =   7
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   4
      Left            =   3840
      TabIndex        =   6
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   3
      Left            =   3600
      TabIndex        =   5
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   2
      Left            =   3360
      TabIndex        =   4
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   1
      Left            =   3120
      TabIndex        =   3
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label tota 
      Caption         =   "Label4"
      Height          =   255
      Left            =   2880
      TabIndex        =   2
      Top             =   3840
      Width           =   2415
   End
   Begin VB.Label tst 
      Caption         =   "Label4"
      Height          =   255
      Index           =   0
      Left            =   2880
      TabIndex        =   1
      Top             =   4080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   99
      Left            =   2520
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   98
      Left            =   2280
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   97
      Left            =   2040
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   96
      Left            =   1800
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   95
      Left            =   1560
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   94
      Left            =   1320
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   93
      Left            =   1080
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   92
      Left            =   840
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   91
      Left            =   600
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   90
      Left            =   360
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   89
      Left            =   2520
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   88
      Left            =   2280
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   87
      Left            =   2040
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   86
      Left            =   1800
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   85
      Left            =   1560
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   84
      Left            =   1320
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   83
      Left            =   1080
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   82
      Left            =   840
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   81
      Left            =   600
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   80
      Left            =   360
      Top             =   2280
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   79
      Left            =   2520
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   78
      Left            =   2280
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   77
      Left            =   2040
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   76
      Left            =   1800
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   75
      Left            =   1560
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   74
      Left            =   1320
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   73
      Left            =   1080
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   72
      Left            =   840
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   71
      Left            =   600
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   70
      Left            =   360
      Top             =   2040
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   69
      Left            =   2520
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   68
      Left            =   2280
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   67
      Left            =   2040
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   66
      Left            =   1800
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   65
      Left            =   1560
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   64
      Left            =   1320
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   63
      Left            =   1080
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   62
      Left            =   840
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   61
      Left            =   600
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   60
      Left            =   360
      Top             =   1800
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   59
      Left            =   2520
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   58
      Left            =   2280
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   57
      Left            =   2040
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   56
      Left            =   1800
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   55
      Left            =   1560
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   54
      Left            =   1320
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   53
      Left            =   1080
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   52
      Left            =   840
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   51
      Left            =   600
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   50
      Left            =   360
      Top             =   1560
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   49
      Left            =   2520
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   48
      Left            =   2280
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   47
      Left            =   2040
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   46
      Left            =   1800
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   45
      Left            =   1560
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   44
      Left            =   1320
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   43
      Left            =   1080
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   42
      Left            =   840
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   41
      Left            =   600
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   40
      Left            =   360
      Top             =   1320
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   39
      Left            =   2520
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   38
      Left            =   2280
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   37
      Left            =   2040
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   36
      Left            =   1800
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   35
      Left            =   1560
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   34
      Left            =   1320
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   33
      Left            =   1080
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   32
      Left            =   840
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   31
      Left            =   600
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   30
      Left            =   360
      Top             =   1080
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   29
      Left            =   2520
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   28
      Left            =   2280
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   27
      Left            =   2040
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   26
      Left            =   1800
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   25
      Left            =   1560
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   24
      Left            =   1320
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   23
      Left            =   1080
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   22
      Left            =   840
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   21
      Left            =   600
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   20
      Left            =   360
      Top             =   840
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   19
      Left            =   2520
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   18
      Left            =   2280
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   17
      Left            =   2040
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   16
      Left            =   1800
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   15
      Left            =   1560
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   14
      Left            =   1320
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   13
      Left            =   1080
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   12
      Left            =   840
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   11
      Left            =   600
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   10
      Left            =   360
      Top             =   600
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   9
      Left            =   2520
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   8
      Left            =   2280
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   7
      Left            =   2040
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   6
      Left            =   1800
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   5
      Left            =   1560
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   4
      Left            =   1320
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   3
      Left            =   1080
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   2
      Left            =   840
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   1
      Left            =   600
      Top             =   360
      Width           =   255
   End
   Begin VB.Image Til 
      Height          =   255
      Index           =   0
      Left            =   360
      Top             =   360
      Width           =   255
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   2280
      TabIndex        =   0
      Top             =   4680
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Menu mnightke 
      Caption         =   "&File"
      Begin VB.Menu mnuslect 
         Caption         =   "Back to level selector"
      End
      Begin VB.Menu hds 
         Caption         =   "-"
      End
      Begin VB.Menu mnuexhit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuoptions 
      Caption         =   "&Options"
      Begin VB.Menu mnudiffucult 
         Caption         =   "Difficulty"
         Begin VB.Menu mnueasy 
            Caption         =   "Easy"
         End
         Begin VB.Menu mnuhard 
            Caption         =   "Hard"
         End
      End
      Begin VB.Menu mnusnd 
         Caption         =   "Sound"
         Begin VB.Menu mnuon 
            Caption         =   "On"
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuoff 
            Caption         =   "Off"
         End
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
Select Case KeyCode
Case vbKeyLeft
For X = 0 To 99
If Til(X).Picture = Man Then Label1.Caption = X
Next
If Form6.Check2.Value = 1 And Til(Label1 - 1).Picture = Ext Then
For X = 0 To 99
If Til(X).Picture = Rock Then
Exit Sub
Else
End If
Next
End If
If Til(Label1 - 1).Picture = Wall Then
Exit Sub
End If
If Til(Label1 - 1).Picture = Hole Then
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 1).Picture = Man
End If
Next
MsgBox "You fell down a pit of doom!", , "Oh no!"
Form3.Show
Form4.Hide
Unload Form4
Exit Sub
End If
If Til(Label1 - 1).Picture = Rock Then
chkLeftRock
Exit Sub
End If

For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 1).Picture = Man
chkEnd
Exit Sub
End If
Next


Case vbKeyUp
For X = 0 To 99
If Til(X).Picture = Man Then Label1.Caption = X
Next
If Form6.Check2.Value = 1 And Til(Label1 - 10).Picture = Ext Then
For X = 0 To 99
If Til(X).Picture = Rock Then
Exit Sub
Else
End If
Next
End If
If Til(Label1 - 10).Picture = Wall Then
Exit Sub
End If
If Til(Label1 - 10).Picture = Hole Then
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 10).Picture = Man
End If
Next
MsgBox "You fell down a pit of doom!", , "Oh no!"
Form3.Show
Form4.Hide
Unload Form4
End If
On Error Resume Next
If Til(Label1 - 10).Picture = Rock Then
chkUpRock
Exit Sub
End If

For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 10).Picture = Man
chkEnd
Exit Sub
End If
Next


Case vbKeyRight
For X = 0 To 99
If Til(X).Picture = Man Then Label1.Caption = X
Next
If Form6.Check2.Value = 1 And Til(Label1 + 1).Picture = Ext Then
For X = 0 To 99
If Til(X).Picture = Rock Then
Exit Sub
Else
End If
Next
End If
If Til(Label1 + 1).Picture = Wall Then
Exit Sub
End If
If Til(Label1 + 1).Picture = Hole Then
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 1).Picture = Man
MsgBox "You fell down a pit of doom!", , "Oh no!"
Form3.Show
Form4.Hide
Unload Form4
Exit Sub
End If
Next
End If
If Til(Label1 + 1).Picture = Rock Then
chkRightRock
Exit Sub
End If

For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 1).Picture = Man
chkEnd
Exit Sub
End If
Next

Case vbKeyDown
For X = 0 To 99
If Til(X).Picture = Man Then Label1.Caption = X
Next
If Form6.Check2.Value = 1 And Til(Label1 + 10).Picture = Ext Then
For X = 0 To 99
If Til(X).Picture = Rock Then
Exit Sub
Else
End If
Next
End If
If Til(Label1 + 10).Picture = Wall Then
Exit Sub
End If
If Til(Label1 + 10).Picture = Hole Then
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 10).Picture = Man
MsgBox "You fell down a pit of doom!", , "Oh no!"
Form3.Show
Form4.Hide
Unload Form4
Exit Sub
End If
Next
End If
If Til(Label1 + 10).Picture = Rock Then
chkDownRock
Exit Sub
End If

For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 10).Picture = Man
chkEnd
Exit Sub
End If
Next

End Select
End Sub

Private Sub Form_Load()
If Form6.Option1.Value = True Then
On Error Resume Next
PlayMIDI App.Path & "\Sounds" & "\" & Form6.File1.filename
mnuon.Enabled = False
mnuoff.Enabled = True
End If
If Form6.Option2.Value = True Then
mnuon.Enabled = True
mnuoff.Enabled = False
End If
If Form6.Check1.Value = 0 And Form6.Check2.Value = 0 Then
Form6.Check1.Value = 1
End If
If Form6.Check1.Value = 1 Then
mnueasy.Enabled = False
mnuhard.Enabled = True
End If
If Form6.Check2.Value = 1 Then
mnueasy.Enabled = True
mnuhard.Enabled = False
End If
Form4.Caption = Form3.File1.filename
tota.Caption = Form3.tota.Caption
For X = 0 To 99
    tst(X).Caption = Mid(tota, 1 + X, 1)
Next
For X = 0 To 99
    If tst(X).Caption = "w" Then
    Til(X).Picture = Wall
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "h" Then
    Til(X).Picture = Hole
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "r" Then
    Til(X).Picture = Rock
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "e" Then
    Til(X).Picture = Ext
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "m" Then
    Til(X).Picture = Man
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "g" Then
    Til(X).Picture = Ground
    End If
Next
Til(0).Picture = Wall
For X = 0 To 99
If Til(X).Picture = Ext Then
Label2.Caption = X
End If
Next
Timer1.Enabled = True
End Sub

Private Sub chkLeftRock()
If Til(Label1 - 2).Picture = Wall Then
Exit Sub
End If
If Til(Label1 - 2).Picture = Ext Then
Exit Sub
End If
If Til(Label1 - 2).Picture = Ground Then
Til(Label1 - 2).Picture = Rock
Til(Label1 - 1).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 1).Picture = Man
Exit Sub
End If
Next
Exit Sub
End If
If Til(Label1 - 2).Picture = Hole Then
Til(Label1 - 1).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 1).Picture = Man
Exit Sub
End If
Next
End If
End Sub

Private Sub chkRightRock()
If Til(Label1 + 2).Picture = Wall Then
Exit Sub
End If
If Til(Label1 + 2).Picture = Ext Then
Exit Sub
End If
If Til(Label1 + 2).Picture = Ground Then
Til(Label1 + 2).Picture = Rock
Til(Label1 + 1).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 1).Picture = Man
Exit Sub
End If
Next
Exit Sub
End If
If Til(Label1 + 2).Picture = Hole Then
Til(Label1 + 1).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 1).Picture = Man
Exit Sub
End If
Next
End If

End Sub

Private Sub chkUpRock()
If Til(Label1 - 20).Picture = Wall Then
Exit Sub
End If
If Til(Label1 - 20).Picture = Ext Then
Exit Sub
End If
If Til(Label1 - 20).Picture = Ground Then
Til(Label1 - 20).Picture = Rock
Til(Label1 - 10).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 10).Picture = Man
Exit Sub
End If
Next
Exit Sub
End If
If Til(Label1 - 20).Picture = Hole Then
Til(Label1 - 10).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X - 10).Picture = Man
Exit Sub
End If
Next
End If
End Sub

Private Sub chkDownRock()
If Til(Label1 + 20).Picture = Wall Then
Exit Sub
End If
If Til(Label1 + 20).Picture = Ext Then
Exit Sub
End If
If Til(Label1 + 20).Picture = Ground Then
Til(Label1 + 20).Picture = Rock
Til(Label1 + 10).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 10).Picture = Man
Exit Sub
End If
Next
Exit Sub
End If
If Til(Label1 + 20).Picture = Hole Then
Til(Label1 + 10).Picture = Ground
For X = 0 To 99
If Til(X).Picture = Man Then
Til(X).Picture = Ground
Til(X + 10).Picture = Man
Exit Sub
End If
Next
End If
End Sub

Private Sub chkEnd()
If Form6.Check2.Value = 1 Then
For X = 0 To 99
If Til(X).Picture = Rock Then
'If Til(Label1 - 1).Picture = Ext Then
'Exit Sub
'End If
'If Til(Label1 + 1).Picture = Ext Then
'Exit Sub
'End If
'If Til(Label1 - 10).Picture = Ext Then
'Exit Sub
'End If
'If Til(Label1 + 10).Picture = Ext Then
'Exit Sub
'End If

Exit Sub
Else
End If
Next
End If
If Til(Label2).Picture = Ext = False Then
MsgBox "Well done! you completed the level!!", , "Well done!"
On Error Resume Next
StopMIDI App.Path & "\sounds\" & Form6.File1.filename
Timer1.Enabled = False
For X = 0 To 99
tota.Caption = tst(1) & tst(2) & tst(3) & tst(4) & tst(5) & tst(6) & tst(7) & tst(8) & tst(9) & tst(10) & tst(11) & tst(12) & tst(13) & tst(14) & tst(15) & tst(16) & tst(17) & tst(18) & tst(19) & tst(20) & tst(21) & tst(22) & tst(23) & tst(24) & tst(25) & tst(26) & tst(27) & tst(28) & tst(29) & tst(30) & tst(31) & tst(32) & tst(33) & tst(34) & tst(35) & tst(36) & tst(37) & tst(38) & tst(39) & tst(40) & tst(41) & tst(42) & tst(43) & tst(44) & tst(45) & tst(46) & tst(47) & tst(48) & tst(49) & tst(50) & tst(51) & tst(52) & tst(53) & tst(54) & tst(55) & tst(56) & tst(57) & tst(58) & tst(59) & tst(60) & tst(61) & tst(62) & tst(63) & tst(64) & tst(65) & tst(66) & tst(67) & tst(68) & tst(69) & tst(70) & tst(71) & tst(72) & tst(73) & tst(74) & tst(75) & tst(76) & tst(77) & tst(78) & tst(79) & tst(80) & tst(81) & tst(82) & tst(83) & tst(84) & tst(85) & tst(86) & tst(87) & tst(88) & tst(89) & tst(90) & tst(91) & tst(92) & tst(93) & tst(94) & tst(95) & tst(96) & tst(97) & tst(98) & tst(99)
Next
If Label5.Caption < Form3.Tim Then
MsgBox "You got the highscore too!!!", vbExclamation, "WOW!"
On Error Resume Next
Open App.Path & "\levels" & "\" & Form3.File1.filename For Output As #1
Write #1, tota.Caption & Form3.plrNam & ", " & Min & TenSec & Sec & MilSec & "                                                                                                                  "
Close #1
Form3.File1.Refresh
Form3.Show
Form4.Hide
Unload Form4
Else
Form3.Show
Form4.Hide
Unload Form4
End If
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
StopMIDI App.Path & "\sounds\" & Form6.File1.filename
Form3.Show
Unload Form4
End Sub

Private Sub Label3_Click()
For X = 0 To 99
    tst(X).Caption = Mid(tota, 1 + X, 1)
Next
For X = 0 To 99
    If tst(X).Caption = "w" Then
    Til(X).Picture = Wall
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "h" Then
    Til(X).Picture = Hole
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "r" Then
    Til(X).Picture = Rock
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "e" Then
    Til(X).Picture = Ext
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "m" Then
    Til(X).Picture = Man
    End If
Next
For X = 0 To 99
    If tst(X).Caption = "g" Then
    Til(X).Picture = Ground
    End If
Next
Til(0).Picture = Wall
For X = 0 To 99
If Til(X).Picture = Ext Then
Label2.Caption = X
End If
Next
Min.Caption = 0
TenSec.Caption = 0
Sec.Caption = 0
MilSec.Caption = 0
End Sub

Private Sub mnueasy_Click()
Form6.Check1.Value = 1
Form6.Check2.Value = 0
mnueasy.Enabled = False
mnuhard.Enabled = True
End Sub

Private Sub mnuexhit_Click()
On Error Resume Next
StopMIDI App.Path & "\sounds\" & Form6.File1.filename
End
End Sub

Private Sub mnuhard_Click()
Form6.Check1.Value = 0
Form6.Check2.Value = 1
mnueasy.Enabled = True
mnuhard.Enabled = False
End Sub

Private Sub mnuoff_Click()
On Error Resume Next
StopMIDI App.Path & "\sounds\" & Form6.File1.filename
mnuon.Enabled = True
mnuoff.Enabled = False
End Sub

Private Sub mnuon_Click()
On Error Resume Next
PlayMIDI App.Path & "\sounds\" & Form6.File1.filename
mnuon.Enabled = False
mnuoff.Enabled = True
End Sub

Private Sub mnuslect_Click()
On Error Resume Next
StopMIDI App.Path & "\sounds\" & Form6.File1.filename
Form3.Show
Form4.Hide
Unload Form4

End Sub

Private Sub Timer1_Timer()
Label5.Caption = Min.Caption & TenSec.Caption & Sec.Caption & MilSec.Caption
MilSec.Caption = MilSec.Caption + 1
If MilSec.Caption > 9 Then
MilSec.Caption = 0
Sec.Caption = Sec.Caption + 1
End If
If Sec.Caption > 9 Then
Sec.Caption = 0
TenSec.Caption = TenSec.Caption + 1
End If
If TenSec.Caption > 5 Then
Min.Caption = Min.Caption + 1
TenSec.Caption = 0
End If
End Sub

