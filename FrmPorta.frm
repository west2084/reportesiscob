VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FrmPorta
  Caption = "CONTROL DE REPORTES FUSION"
  BackColor = &H808080&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 5190
  ClientTop = 3495
  ClientWidth = 8685
  ClientHeight = 6495
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Begin VB.PictureBox picimss
    BackColor = &H808080&
    Picture = "FrmPorta.frx":0000
    Left = 990
    Top = 150
    Width = 7575
    Height = 6315
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    Begin Threed.SSCommand CmdAyuda
      Left = 6030
      Top = 5625
      Width = 600
      Height = 615
      TabIndex = 11
      OleObjectBlob = "FrmPorta.frx":0002FBC2
    End
    Begin Threed.SSCommand CmdDatos
      Left = 5985
      Top = 2475
      Width = 1455
      Height = 1200
      TabIndex = 3
      OleObjectBlob = "FrmPorta.frx":000305B1
    End
    Begin Threed.SSCommand CmdRepCiz
      Left = 5970
      Top = 45
      Width = 1455
      Height = 1200
      TabIndex = 1
      OleObjectBlob = "FrmPorta.frx":00035A9B
    End
    Begin Threed.SSCommand CmdRepPC
      Left = 5970
      Top = 1260
      Width = 1455
      Height = 1200
      TabIndex = 2
      OleObjectBlob = "FrmPorta.frx":0003AF97
    End
    Begin Threed.SSCommand CmdManInfo
      Left = 5985
      Top = 3690
      Width = 1455
      Height = 1200
      TabIndex = 4
      OleObjectBlob = "FrmPorta.frx":00040482
    End
    Begin Threed.SSCommand CmdSalir
      Left = 5985
      Top = 4950
      Width = 1455
      Height = 615
      TabIndex = 5
      OleObjectBlob = "FrmPorta.frx":0004596D
    End
    Begin VB.Label LblTitFunc
      Caption = "MOSTRAR LA LISTA  DE REPORTES QUE SE ENCUENTRAN EN EL CENTRO INFORMÁTICO CORRESPONDIENTES"
      BackColor = &HC0FFFF&
      ForeColor = &H80000008&
      Left = 1800
      Top = 4200
      Width = 4065
      Height = 585
      Visible = 0   'False
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 6.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin VB.Label LBVersis
      Caption = "VERSIÓN  06.00"
      BackColor = &H8000&
      ForeColor = &HFFFFFF&
      Left = 1485
      Top = 5805
      Width = 3015
      Height = 405
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Times New Roman"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel pa3BarMsj
    Left = 0
    Top = 6120
    Width = 8685
    Height = 375
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "FrmPorta.frx":00047E1C
    Begin VB.Label lblBarMsj
      Left = 120
      Top = 75
      Width = 8490
      Height = 255
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblIns
      Caption = "SOBR"
      Left = 8730
      Top = 75
      Width = 735
      Height = 255
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "FrmPorta"

'VA: 459278
Private Declare Sub hllapi Lib "rhllapi"()
'VA: 459238
Private Declare Sub hllapi Lib "ehllapi"()
'VA: 4591D8
Private Declare Sub HLLAPI32 Lib "ehllap32"()
'VA: 459180
Private Declare Sub hllapi Lib "acs3ehap"()
'VA: 45913C
Private Declare Sub hllapi Lib "pcshll"()
'VA: 458888
Private Declare Sub GetModuleUsage Lib "kernel"()
'VA: 458834
Private Declare Function VerInstallFile Lib "version" Alias "VerInstallFileA" (ByVal uFlags As Long, ByVal szSrcFileName As String, ByVal szDestFileName As String, ByVal szSrcDir As String, ByVal szDestDir As String, ByVal szCurDir As String, ByVal szTmpFile As String, lpuTmpFileLen As Long) As Long
'VA: 4587E0
Private Declare Function GetDiskFreeSpaceEx Lib "kernel32" Alias "GetDiskFreeSpaceExA" (ByVal lpDirectoryName As String, ByRef lpFreeBytesAvailableToCaller As ULARGE_INTEGER, ByRef lpTotalNumberOfBytes As ULARGE_INTEGER, ByRef lpTotalNumberOfFreeBytes As ULARGE_INTEGER) As Long
'VA: 45835C
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
'VA: 458308
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
'VA: 4578A0
Private Declare Function SHFileOperation Lib "shell32" Alias "SHFileOperationA" (lpFileOp As SHFILEOPSTRUCT) As Long

