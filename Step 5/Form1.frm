VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Anti-Unknown Trojan"
   ClientHeight    =   5670
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5295
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   5295
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtLOG 
      BackColor       =   &H000000FF&
      Height          =   2775
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Top             =   1560
      Width           =   5055
   End
   Begin VB.CommandButton cmdSearch 
      BackColor       =   &H000000FF&
      Caption         =   "Search For Unknown Trojan"
      Default         =   -1  'True
      Height          =   495
      Left            =   1440
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   960
      Width           =   3735
   End
   Begin VB.TextBox txtFile 
      BackColor       =   &H000000FF&
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   3495
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000FF&
      Caption         =   "Browse..."
      Height          =   375
      Left            =   3720
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
   Begin MSComDlg.CommonDialog CMDLG1 
      Left            =   480
      Top             =   960
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Image Image1 
      Height          =   225
      Left            =   3840
      Picture         =   "Form1.frx":0000
      Top             =   5040
      Width           =   600
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   $"Form1.frx":20A9
      Height          =   1095
      Left            =   120
      TabIndex        =   5
      Top             =   4440
      Width           =   5055
   End
   Begin VB.Label lblFileName 
      BackColor       =   &H000000FF&
      Caption         =   "File Name:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Step5
'This all Was made by Evil_BOB
'Please Vote For me!!!!
'Plzzzzzzzzzzzzzzzzzzzzzzz
'I Really Want to get a Contest Winner :)


Private Sub cmdSearch_Click()
Dim AA
On Error Resume Next
txtCanDo.Text = txtCanDo.Text & vbCrLf & CMDLG1.FileName & "-" & vbCrLf
Open txtFile.Text For Binary As #1
AA = Input(LOF(1), 1)
Close #1

'This is all new, Sorta
'This has alot of strings that almost all torjans would contain
'but i didnt give all the strings cause this is my work not yours
If ((InStr(1, AA, "MSWinsockLib", vbTextCompare)) > 0) And ((InStr(1, AA, "SwapMouseButton", vbTextCompare)) > 0) Then
txtIs.Text = "This is a trojan!"
txtCanDo.Text = txtCanDo.Text & vbCrLf & "This Trojan can Swap the Mouse Buttons!"
End If

If ((InStr(1, AA, "MSWinsockLib", vbTextCompare)) > 0) And ((InStr(1, AA, "ExitWindowsEx", vbTextCompare)) > 0) Then
txtIs.Text = "This is a trojan!"
txtCanDo.Text = txtCanDo.Text & vbCrLf & "This Trojan can Shut down, Restart and Log off Windows!"
End If

If ((InStr(1, AA, "MSWinsockLib", vbTextCompare)) > 0) And ((InStr(1, AA, "mciSendStringA", vbTextCompare)) > 0) Then
txtIs.Text = "This is a trojan!"
txtCanDo.Text = txtCanDo.Text & vbCrLf & "This Trojan can Open or Close the CD Drive!"
End If
End Sub

Private Sub Command1_Click()
CMDLG1.Filter = "All Files (*.*)|*.*"
CMDLG1.ShowOpen
txtFile.Text = CMDLG1.FileName
End Sub
