VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "(==--:--==)"
   ClientHeight    =   3090
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdOK 
      BackColor       =   &H000000FF&
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2520
      Width           =   735
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "This Step we will actually do the search and learn some-more. Ya learning! Dontcha just luv it!"
      Height          =   2895
      Left            =   120
      TabIndex        =   1
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
Form2.Show
End Sub
