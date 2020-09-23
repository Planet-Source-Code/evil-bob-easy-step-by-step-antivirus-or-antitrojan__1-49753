VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Search thingy~!"
   ClientHeight    =   4920
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5295
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CMDLG1 
      Left            =   3120
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Browse..."
      Height          =   375
      Left            =   3720
      TabIndex        =   4
      Top             =   240
      Width           =   1455
   End
   Begin VB.TextBox txtFile 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Top             =   240
      Width           =   3495
   End
   Begin VB.TextBox txtString 
      Height          =   285
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   5055
   End
   Begin VB.CommandButton cmdSearch 
      Caption         =   "Search!"
      Default         =   -1  'True
      Height          =   495
      Left            =   3960
      TabIndex        =   1
      Top             =   1440
      Width           =   1215
   End
   Begin VB.TextBox txtLOG 
      Height          =   1575
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   2040
      Width           =   5055
   End
   Begin VB.Label lblFileName 
      Caption         =   "File Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   0
      Width           =   1575
   End
   Begin VB.Label lblStringToFind 
      Caption         =   "String To Find:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   $"Form2.frx":0000
      Height          =   1095
      Left            =   120
      TabIndex        =   5
      Top             =   3720
      Width           =   5055
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Step2
'This all Was made by Evil_BOB
'Please Vote For me!!!!

Private Sub cmdSearch_Click()
'All of the old Junk u should have already learned
Dim AA
On Error Resume Next
txtLOG.Text = txtLOG.Text & vbCrLf & CMDLG1.FileName & "-" & vbCrLf
Open txtFile.Text For Binary As #1
AA = Input(LOF(1), 1)
Close #1

'Now we learn some-more

'This does the search and sees if it has the string
If ((InStr(1, AA, txtString.Text, vbTextCompare)) > 0) Then
txtLOG.Text = txtLOG.Text & vbCrLf & "This has the stupid string you searched for, I hape your happy that you made me do all this work instead of you!"
End If
txtLOG.Text = txtLOG.Text & "All Done Searching and Stuff (" & Time & ")"
End Sub

Private Sub Command1_Click()
CMDLG1.Filter = "All Files (*.*)|*.*"
CMDLG1.ShowOpen
txtFile.Text = CMDLG1.FileName
End Sub
