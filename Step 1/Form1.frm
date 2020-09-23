VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "(==-:-==)"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   2520
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   225
      Left            =   2760
      Picture         =   "Form1.frx":0000
      Top             =   2280
      Width           =   600
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   $"Form1.frx":20A9
      Height          =   2895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
frmVirusFinder.Show
End Sub
