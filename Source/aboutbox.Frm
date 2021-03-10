VERSION 4.00
Begin VB.Form dlgAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About RGB EasyMix"
   ClientHeight    =   2610
   ClientLeft      =   1980
   ClientTop       =   3120
   ClientWidth     =   4950
   ControlBox      =   0   'False
   Height          =   3015
   Icon            =   "aboutbox.frx":0000
   Left            =   1920
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2610
   ScaleWidth      =   4950
   ShowInTaskbar   =   0   'False
   Top             =   2775
   Width           =   5070
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3720
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "E-mail: contact@appliberated.com"
      Height          =   255
      Index           =   3
      Left            =   840
      TabIndex        =   5
      Top             =   1320
      Width           =   2895
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      Index           =   0
      X1              =   120
      X2              =   4800
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Label Label2 
      Caption         =   $"aboutbox.frx":000C
      Height          =   735
      Index           =   0
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   4695
   End
   Begin VB.Label Label1 
      Caption         =   "Version 1.1"
      Height          =   255
      Index           =   2
      Left            =   840
      TabIndex        =   3
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "Copyright © 1997 Appliberated"
      Height          =   255
      Index           =   1
      Left            =   840
      TabIndex        =   2
      Top             =   840
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "RGB EasyMix for Windows"
      Height          =   255
      Index           =   0
      Left            =   840
      TabIndex        =   1
      Top             =   240
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "aboutbox.frx":00D6
      Top             =   240
      Width           =   480
   End
End
Attribute VB_Name = "dlgAbout"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
  Unload Me
End Sub


