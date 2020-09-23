VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Search for two strings at once"
   ClientHeight    =   5550
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5295
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5550
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Browse..."
      Height          =   375
      Left            =   3720
      TabIndex        =   5
      Top             =   360
      Width           =   1455
   End
   Begin VB.TextBox txtFile 
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Top             =   360
      Width           =   3495
   End
   Begin VB.TextBox txtString2 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   5055
   End
   Begin VB.CommandButton cmdSearch 
      Caption         =   "Search For Both Strings To Identify One Specific Virus"
      Default         =   -1  'True
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   2160
      Width           =   5055
   End
   Begin VB.TextBox txtLOG 
      Height          =   1575
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   2760
      Width           =   5055
   End
   Begin VB.TextBox txtString1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   5055
   End
   Begin MSComDlg.CommonDialog CMDLG1 
      Left            =   2880
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblFileName 
      Caption         =   "File Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label lblStringToFind 
      Caption         =   "2nd String To Find:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   $"Form1.frx":0000
      Height          =   1095
      Left            =   120
      TabIndex        =   7
      Top             =   4440
      Width           =   5055
   End
   Begin VB.Label lb1stString 
      Caption         =   "1st String to Find:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   960
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Step4
'This all Was made by Evil_BOB
'Please Vote For me!!!!

Private Sub cmdSearch_Click()
'All the old junk:
Dim AA
On Error Resume Next
txtLOG.Text = txtLOG.Text & vbCrLf & CMDLG1.FileName & "-" & vbCrLf
Open txtFile.Text For Binary As #1
AA = Input(LOF(1), 1)
Close #1

'Here comes the new! LOL
If ((InStr(1, AA, txtString1.Text, vbTextCompare)) > 0) And ((InStr(1, AA, txtString1.Text, vbTextCompare)) > 0) Then
txtLOG.Text = txtLOG.Text & vbCrLf & "This has the stupid strings you searched for, I hape your happy that you made me do all this work instead of you!"
End If

txtLOG.Text = txtLOG.Text & "All Done Searching and Stuff (" & Time & ")"
End Sub

Private Sub Command1_Click()
CMDLG1.Filter = "All Files (*.*)|*.*"
CMDLG1.ShowOpen
txtFile.Text = CMDLG1.FileName
End Sub
