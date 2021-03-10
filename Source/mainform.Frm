VERSION 4.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "RGB EasyMix"
   ClientHeight    =   5280
   ClientLeft      =   1890
   ClientTop       =   1080
   ClientWidth     =   4350
   ForeColor       =   &H00400040&
   Height          =   5685
   Icon            =   "mainform.frx":0000
   Left            =   1830
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5280
   ScaleWidth      =   4350
   Top             =   735
   Width           =   4470
   Begin VB.CheckBox chkTop 
      Caption         =   "Always On &Top"
      Height          =   255
      Left            =   1920
      TabIndex        =   30
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
      Height          =   375
      Left            =   1920
      TabIndex        =   15
      Top             =   4800
      Width           =   1095
   End
   Begin VB.PictureBox pctRGB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      DrawMode        =   7  'Invert
      Height          =   375
      Left            =   360
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   29
      Top             =   360
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Frame Frame2 
      Caption         =   "Color sample size"
      Height          =   735
      Left            =   1920
      TabIndex        =   26
      Top             =   3600
      Width           =   2295
      Begin VB.TextBox ediSwatch 
         Height          =   285
         Index           =   1
         Left            =   1800
         MaxLength       =   3
         TabIndex        =   24
         Top             =   300
         Width           =   375
      End
      Begin VB.TextBox ediSwatch 
         Height          =   285
         Index           =   0
         Left            =   720
         MaxLength       =   3
         TabIndex        =   22
         Top             =   300
         Width           =   375
      End
      Begin VB.Label txtSwitch 
         Caption         =   "&Height"
         Height          =   255
         Index           =   1
         Left            =   1200
         TabIndex        =   23
         Top             =   360
         Width           =   495
      End
      Begin VB.Label txtSwitch 
         Caption         =   "&Width"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   21
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Hexa format"
      Height          =   855
      Left            =   1920
      TabIndex        =   25
      Top             =   2640
      Width           =   2295
      Begin VB.OptionButton optLang 
         Caption         =   "&Asm"
         Height          =   195
         Index           =   3
         Left            =   1320
         TabIndex        =   20
         Top             =   540
         Width           =   855
      End
      Begin VB.OptionButton optLang 
         Caption         =   "&Basic"
         Height          =   195
         Index           =   2
         Left            =   1320
         TabIndex        =   19
         Top             =   240
         Width           =   855
      End
      Begin VB.OptionButton optLang 
         Caption         =   "&Pascal"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   18
         Top             =   540
         Width           =   1095
      End
      Begin VB.OptionButton optLang 
         Caption         =   "&C/C++"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   240
         Value           =   -1  'True
         Width           =   1095
      End
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   375
      Left            =   3120
      TabIndex        =   16
      Top             =   4800
      Width           =   1095
   End
   Begin VB.CommandButton cmdEditColor 
      Caption         =   "&Edit color..."
      Height          =   375
      Left            =   120
      TabIndex        =   14
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton cmdCopySample 
      Caption         =   "Copy Color &Sample"
      Height          =   375
      Left            =   120
      TabIndex        =   13
      Top             =   4320
      Width           =   1575
   End
   Begin VB.CommandButton cmdCopyHTML 
      Caption         =   "Copy HTML &Macro"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   3720
      Width           =   1575
   End
   Begin VB.CommandButton cmdCopyHexa 
      Caption         =   "Copy Hexa&decimal"
      Height          =   375
      Left            =   120
      TabIndex        =   11
      Top             =   3240
      Width           =   1575
   End
   Begin VB.CommandButton cmdCopyRGB 
      Caption         =   "Copy &RGB Macro"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   2760
      Width           =   1575
   End
   Begin VB.TextBox ediColor 
      Height          =   285
      Index           =   2
      Left            =   3840
      MaxLength       =   3
      TabIndex        =   9
      Top             =   2280
      Width           =   375
   End
   Begin VB.TextBox ediColor 
      Height          =   285
      Index           =   1
      Left            =   3840
      MaxLength       =   3
      TabIndex        =   8
      Top             =   1800
      Width           =   375
   End
   Begin VB.TextBox ediColor 
      Height          =   285
      Index           =   0
      Left            =   3840
      MaxLength       =   3
      TabIndex        =   7
      Top             =   1320
      Width           =   375
   End
   Begin VB.HScrollBar hsbColor 
      Height          =   255
      Index           =   2
      Left            =   600
      Max             =   255
      TabIndex        =   3
      Top             =   2280
      Width           =   3135
   End
   Begin VB.HScrollBar hsbColor 
      Height          =   255
      Index           =   1
      Left            =   600
      Max             =   255
      TabIndex        =   2
      Top             =   1800
      Width           =   3135
   End
   Begin VB.HScrollBar hsbColor 
      Height          =   255
      Index           =   0
      Left            =   600
      Max             =   255
      TabIndex        =   0
      Top             =   1320
      Width           =   3135
   End
   Begin VB.Label txtRGB 
      Height          =   255
      Left            =   120
      TabIndex        =   28
      Top             =   960
      Width           =   2055
   End
   Begin VB.Label txtHexa 
      Alignment       =   1  'Right Justify
      Height          =   195
      Left            =   2400
      TabIndex        =   27
      Top             =   960
      Width           =   1815
   End
   Begin VB.Label cpRGB 
      BackColor       =   &H00000000&
      BorderStyle     =   1  'Fixed Single
      Height          =   735
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   4095
   End
   Begin VB.Label cpColor 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   2
      Left            =   120
      TabIndex        =   5
      Top             =   2280
      Width           =   375
   End
   Begin VB.Label cpColor 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   375
   End
   Begin VB.Label cpColor 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   1320
      Width           =   375
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Const HEXA_C = 0
Const HEXA_PASCAL = 1
Const HEXA_BASIC = 2
Const HEXA_ASM = 3

Public HexaType As Integer
Public TopMost As Integer

Const DEF_SW_WIDTH = 32
Const DEF_SW_HEIGHT = 32

Private SwSize(0 To 1) As Integer
Private INIFile As String

Const iniStrOptions = "RGB EasyMix"
Const iniStrOptionsTop = "Top"
Const iniStrOptionsLeft = "Left"
Const iniStrOptionsTopMost = "TopMost"
Const iniStrOptionsHexa = "HexaFormat"
  
Const iniStrSample = "RGB Sample"
Const iniStrSampleWidth = "Width"
Const iniStrSampleHeight = "Height"
  
Const iniStrColor = "RGB Color"
Const iniStrColorRed = "Red"
Const iniStrColorGreen = "Green"
Const iniStrColorBlue = "Blue"

Private Sub changeRGB(Index As Integer)
  ediColor(Index).Text = hsbColor(Index).Value
  cpRGB.BackColor = RGB(hsbColor(0).Value, hsbColor(1).Value, hsbColor(2).Value)
  txtRGB.Caption = "RGB(" + ediColor(0).Text + ", " + ediColor(1).Text + ", " + ediColor(2).Text + ")"
  
  Dim S As String
  S = Hex(cpRGB.BackColor)
  S = String(8 - Len(S), "0") + S
  Select Case HexaType
    Case HEXA_C
      S = "0x" + S
    Case HEXA_PASCAL
      S = "$" + S
    Case HEXA_BASIC
      S = "&&H" + S + "&&"
    Case HEXA_ASM
      S = S + "H"
  End Select
  txtHexa.Caption = S
End Sub

Private Sub setRGB(Red, Green, Blue As Long)
  hsbColor(0).Value = Red
  hsbColor(1).Value = Green
  hsbColor(2).Value = Blue
  ediColor(0).Text = Red
  ediColor(1).Text = Green
  ediColor(2).Text = Blue
  changeRGB 0
End Sub

Private Sub DivideRGB(ByVal rgbValue As Long, ByRef Red, Green, Blue As Long)
  Red = rgbValue Mod 256
  Green = rgbValue \ 256 Mod 256
  Blue = rgbValue \ 65536 Mod 256
End Sub




Private Sub chkTop_Click()
  If chkTop.Value Then
  ' Turn on the TopMost attribute.
    SetWindowPos frmMain.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW Or SWP_NOSIZE Or SWP_NOMOVE
  Else
  ' Turn off the TopMost attribute.
    SetWindowPos frmMain.hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW Or SWP_NOSIZE Or SWP_NOMOVE
  End If
  TopMost = chkTop.Value
End Sub

Private Sub cmdAbout_Click()
  dlgAbout.Left = (Screen.Width - dlgAbout.Width) / 2
  dlgAbout.Top = (Screen.Height - dlgAbout.Height) / 2
  dlgAbout.Show 1
  hsbColor(0).SetFocus
End Sub

Private Sub cmdCopyHexa_Click()
  Dim S As String
  S = txtHexa.Caption
  If HexaType = HEXA_BASIC Then S = Mid(S, 2, Len(S) - 2)
  Clipboard.Clear
  Clipboard.SetText S
  hsbColor(0).SetFocus
End Sub

Private Sub cmdCopyHTML_Click()
  Dim S As String
  S = Hex(cpRGB.BackColor)
  S = String(6 - Len(S), "0") + S
  S = Mid(S, 5, 2) + Mid(S, 3, 2) + Mid(S, 1, 2)
  Clipboard.Clear
  Clipboard.SetText """#" + S + """"
  hsbColor(0).SetFocus
End Sub

Private Sub cmdCopyRGB_Click()
  Clipboard.Clear
  Clipboard.SetText txtRGB.Caption
  hsbColor(0).SetFocus
End Sub

Private Sub cmdCopySample_Click()
  Dim i As Integer
  For i = 0 To 1
    SwSize(i) = Val(ediSwatch(i).Text)
    If SwSize(i) > 256 Then
      SwSize(i) = 256
      ediSwatch(i).Text = 256
    Else
      If SwSize(i) < 8 Then
        SwSize(i) = 8
        ediSwatch(i).Text = 8
      End If
    End If
  Next i
  pctRGB.Width = SwSize(0) * Screen.TwipsPerPixelX
  pctRGB.Height = SwSize(1) * Screen.TwipsPerPixelY
  pctRGB.BackColor = cpRGB.BackColor
  Clipboard.Clear
  Clipboard.SetData pctRGB.Image
  hsbColor(0).SetFocus
End Sub

Private Sub cmdEditColor_Click()
  Dim rgbResult, r, g, b As Long
  rgbResult = cpRGB.BackColor
  rgbResult = ShowColorDialog(rgbResult, frmMain.hwnd)
  r = rgbResult Mod 256
  g = rgbResult \ 256 Mod 256
  b = rgbResult \ 65536 Mod 256
  setRGB r, g, b
  hsbColor(0).SetFocus
End Sub
Private Sub cmdExit_Click()
  Unload Me
  End
End Sub


Private Sub cpRGB_DblClick()
  cmdEditColor_Click
End Sub


Private Sub ediColor_KeyPress(Index As Integer, KeyAscii As Integer)
  If KeyAscii = 13 Then
    Dim i As Integer
    i = Val(ediColor(Index).Text)
    If i > 255 Then i = 255
    hsbColor(Index).Value = i
    ediColor(Index).Text = i
    KeyAscii = 0
  Else
    If (KeyAscii < Asc("0") Or KeyAscii > Asc("9")) And (KeyAscii <> Asc(vbBack)) Then KeyAscii = 0
  End If
End Sub


Private Sub ediColor_LostFocus(Index As Integer)
  Dim i As Integer
  i = Val(ediColor(Index).Text)
  If i > 255 Then i = 255
  hsbColor(Index).Value = i
  ediColor(Index).Text = i
End Sub

Private Sub ediSwatch_KeyPress(Index As Integer, KeyAscii As Integer)
  If (KeyAscii < Asc("0") Or KeyAscii > Asc("9")) And (KeyAscii <> Asc(vbBack)) Then KeyAscii = 0
End Sub


Private Sub Form_Load()
  cpColor(0).BackColor = QBColor(12)
  cpColor(1).BackColor = QBColor(10)
  cpColor(2).BackColor = QBColor(9)
  
' Read configuration
  INIFile = App.Path + "\RGBEASY.INI"       ' the INI file
  
' RGB custom colors
  LoadCustomColors INIFile
  
' RGB color
  Dim r, g, b As Long
  r = GetPrivateProfileInt(iniStrColor, iniStrColorRed, 0, INIFile)
  g = GetPrivateProfileInt(iniStrColor, iniStrColorGreen, 0, INIFile)
  b = GetPrivateProfileInt(iniStrColor, iniStrColorBlue, 0, INIFile)
  setRGB r, g, b
  
' RGB sample size
  SwSize(0) = GetPrivateProfileInt(iniStrSample, iniStrSampleWidth, DEF_SW_WIDTH, INIFile)
  SwSize(1) = GetPrivateProfileInt(iniStrSample, iniStrSampleHeight, DEF_SW_HEIGHT, INIFile)
  ediSwatch(0) = SwSize(0)
  ediSwatch(1) = SwSize(1)

' Options
  HexaType = GetPrivateProfileInt(iniStrOptions, iniStrOptionsHexa, 0, INIFile)
  If HexaType >= 0 And HexaType <= 3 Then optLang(HexaType).Value = True

' Original position
  Dim DefLeft, DefTop As Integer
  DefLeft = (Screen.Width - frmMain.Width) / 2
  DefTop = (Screen.Height - frmMain.Height) / 2
  frmMain.Left = GetPrivateProfileInt(iniStrOptions, iniStrOptionsLeft, DefLeft, INIFile)
  frmMain.Top = GetPrivateProfileInt(iniStrOptions, iniStrOptionsTop, DefTop, INIFile)

' TopMost State
  TopMost = GetPrivateProfileInt(iniStrOptions, iniStrOptionsTopMost, 0, INIFile)
  If TopMost = 0 Or TopMost = 1 Then chkTop.Value = TopMost
End Sub


Private Sub Form_Unload(Cancel As Integer)
' Configuration
  WritePrivateProfileString iniStrOptions, iniStrOptionsTop, Format$(frmMain.Top), INIFile
  WritePrivateProfileString iniStrOptions, iniStrOptionsLeft, Format$(frmMain.Left), INIFile
  WritePrivateProfileString iniStrOptions, iniStrOptionsTopMost, Format$(TopMost), INIFile
  WritePrivateProfileString iniStrOptions, iniStrOptionsHexa, Format$(HexaType), INIFile
  
' RGB Sample Size
  WritePrivateProfileString iniStrSample, iniStrSampleWidth, Format$(SwSize(0)), INIFile
  WritePrivateProfileString iniStrSample, iniStrSampleHeight, Format$(SwSize(1)), INIFile

' Current RGB color
  Dim r, g, b As Long
  DivideRGB cpRGB.BackColor, r, g, b
  WritePrivateProfileString iniStrColor, iniStrColorRed, Format$(r), INIFile
  WritePrivateProfileString iniStrColor, iniStrColorGreen, Format$(g), INIFile
  WritePrivateProfileString iniStrColor, iniStrColorBlue, Format$(b), INIFile
  
' Custom RGB colors
  SaveCustomColors INIFile
End Sub


Private Sub hsbColor_Change(Index As Integer)
  changeRGB Index
End Sub


Private Sub hsbColor_Scroll(Index As Integer)
  changeRGB Index
End Sub


Private Sub optLang_Click(Index As Integer)
  HexaType = Index
  changeRGB 0
End Sub

