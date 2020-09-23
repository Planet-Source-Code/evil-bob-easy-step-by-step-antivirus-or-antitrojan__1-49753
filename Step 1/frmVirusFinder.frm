VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmVirusFinder 
   Caption         =   "Virus Finder"
   ClientHeight    =   5130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5295
   LinkTopic       =   "Form1"
   ScaleHeight     =   5130
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtLOG 
      Height          =   1575
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Top             =   2280
      Width           =   5055
   End
   Begin VB.CommandButton cmdSearch 
      Caption         =   "Search!"
      Height          =   495
      Left            =   3960
      TabIndex        =   5
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   5055
   End
   Begin MSComDlg.CommonDialog cmdlg1 
      Left            =   4680
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtFile 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   3495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Browse..."
      Height          =   375
      Left            =   3720
      TabIndex        =   0
      Top             =   480
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   $"frmVirusFinder.frx":0000
      Height          =   1095
      Left            =   120
      TabIndex        =   7
      Top             =   3960
      Width           =   5055
   End
   Begin VB.Label lblStringToFind 
      Caption         =   "String To Find:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label lblFileName 
      Caption         =   "File Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "frmVirusFinder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Step2
'This all Was made by Evil_BOB
'Please Vote For me!!!!

Private Sub cmdSearch_Click()
'Dim the AA so it can use it for reading the line from the file
Dim AA
On Error Resume Next
txtLOG.Text = txtLOG.Text & vbCrLf & cmdlg1.FileName & "-" & vbCrLf
'Open The File As binary, So it can easily search through every byte
Open txtFile.Text For Binary As #1
AA = Input(LOF(1), 1)
Close #1
End Sub

Private Sub Command1_Click()
On Error Resume Next
cmdlg1.ShowOpen
txtFile.Text = cmdlg1.FileName
End Sub

Private Sub Form_Load()

End Sub
