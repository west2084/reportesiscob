VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWow64\MSMASK32.ocx"
Object = "{B9D22273-0C24-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\KEYSTA32.OCX"
Begin VB.Form EEAMX009
  Caption = "Explotación de Reportes"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2265
  ClientTop = 2235
  ClientWidth = 7935
  ClientHeight = 6195
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  PaletteMode = 1
  Begin Threed.SSPanel PnlSubDel
    Left = 135
    Top = 45
    Width = 7575
    Height = 450
    TabIndex = 23
    OleObjectBlob = "EEAMX009.frx":0000
    Begin VB.Label LblSubUsu
      BackColor = &HFFFFFF&
      Left = 4230
      Top = 90
      Width = 3210
      Height = 285
      TabIndex = 45
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label LblDelUsu
      BackColor = &HFFFFFF&
      Left = 495
      Top = 90
      Width = 3210
      Height = 285
      TabIndex = 44
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin Threed.SSPanel PnlParam
    Left = 3915
    Top = 1215
    Width = 3750
    Height = 3120
    TabIndex = 25
    OleObjectBlob = "EEAMX009.frx":00BA
    Begin VB.ComboBox CmbAnioPer
      Index = 1
      Left = 2700
      Top = 1575
      Width = 780
      Height = 315
      Visible = 0   'False
      TabIndex = 13
    End
    Begin VB.ComboBox CmbMesPer
      Index = 1
      Left = 2025
      Top = 1575
      Width = 615
      Height = 315
      Visible = 0   'False
      TabIndex = 12
    End
    Begin VB.ComboBox CmbMod
      Left = 2025
      Top = 720
      Width = 615
      Height = 315
      Visible = 0   'False
      TabIndex = 8
    End
    Begin VB.ComboBox CmbMesPer
      Index = 0
      Left = 2025
      Top = 1260
      Width = 615
      Height = 315
      Visible = 0   'False
      TabIndex = 10
    End
    Begin VB.ComboBox CmbAnioPer
      Index = 0
      Left = 2700
      Top = 1260
      Width = 780
      Height = 315
      Visible = 0   'False
      TabIndex = 11
    End
    Begin VB.CheckBox ChkPer
      Caption = " P&eríodo"
      Left = 495
      Top = 1035
      Width = 1300
      Height = 220
      TabIndex = 9
    End
    Begin VB.TextBox TbxImp
      Index = 1
      Left = 2025
      Top = 2775
      Width = 1450
      Height = 285
      TabIndex = 18
      Alignment = 1 'Right Justify
      MaxLength = 12
    End
    Begin VB.TextBox TbxImp
      Index = 0
      Left = 315
      Top = 2775
      Width = 1450
      Height = 285
      TabIndex = 17
      MaxLength = 12
    End
    Begin VB.CheckBox ChkImp
      Caption = " &Importe"
      Left = 500
      Top = 2205
      Width = 1300
      Height = 220
      TabIndex = 16
    End
    Begin VB.CheckBox ChkDoc
      Caption = " &Documento"
      Left = 500
      Top = 1920
      Width = 1425
      Height = 220
      TabIndex = 14
    End
    Begin VB.CheckBox ChkMod
      Caption = " &Modalidad"
      Left = 500
      Top = 700
      Width = 1300
      Height = 220
      TabIndex = 7
    End
    Begin VB.ComboBox CmbDoc
      Left = 2025
      Top = 1890
      Width = 615
      Height = 315
      Visible = 0   'False
      TabIndex = 15
    End
    Begin VB.CheckBox chkPat
      Caption = " &Patrón"
      Left = 500
      Top = 400
      Width = 1300
      Height = 220
      TabIndex = 5
    End
    Begin MSMask.MaskEdBox mskPat
      Left = 2025
      Top = 345
      Width = 1440
      Height = 320
      Visible = 0   'False
      TabIndex = 6
      OleObjectBlob = "EEAMX009.frx":013D
    End
    Begin VB.Label LblTitPer
      Caption = "Per. Final"
      Index = 1
      BackColor = &H404080&
      ForeColor = &HFFFFFF&
      Left = 810
      Top = 1530
      Width = 1095
      Height = 240
      Visible = 0   'False
      TabIndex = 47
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label LblTitPer
      Caption = "Per. Inicial"
      Index = 0
      BackColor = &H404080&
      ForeColor = &HFFFFFF&
      Left = 810
      Top = 1260
      Width = 1095
      Height = 240
      Visible = 0   'False
      TabIndex = 46
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label LblImpor
      Caption = "Menor o igual a"
      Index = 1
      BackColor = &HC000&
      Left = 1935
      Top = 2475
      Width = 1635
      Height = 255
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
    Begin VB.Label LblImpor
      Caption = "Mayor o igual a"
      Index = 0
      BackColor = &HC000&
      Left = 225
      Top = 2475
      Width = 1635
      Height = 255
      TabIndex = 29
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
  End
  Begin Threed.SSPanel PnlFecMov
    Left = 135
    Top = 1215
    Width = 3615
    Height = 3135
    TabIndex = 26
    OleObjectBlob = "EEAMX009.frx":01B1
    Begin VB.ComboBox ComMod
      Style = 2
      Left = 2250
      Top = 585
      Width = 825
      Height = 315
      TabIndex = 3
    End
    Begin VB.ComboBox CmbTipArch
      Style = 2
      Left = 180
      Top = 2520
      Width = 3255
      Height = 315
      TabIndex = 35
      List = "EEAMX009.frx":027D
      ItemData = "EEAMX009.frx":02D7
    End
    Begin VB.FileListBox FilBoxLGP
      Left = 2040
      Top = 1485
      Width = 1455
      Height = 675
      TabIndex = 33
      Pattern = "*.MDB;*.VBP"
    End
    Begin VB.DirListBox DirLstLGP
      Left = 180
      Top = 1485
      Width = 1800
      Height = 930
      TabIndex = 32
    End
    Begin VB.TextBox TbxFecMov
      Index = 2
      Left = 885
      Top = 585
      Width = 555
      Height = 310
      Text = "1997"
      TabIndex = 2
      MaxLength = 4
    End
    Begin VB.TextBox TbxFecMov
      Index = 1
      Left = 540
      Top = 585
      Width = 345
      Height = 310
      Text = "01"
      TabIndex = 1
      MaxLength = 2
    End
    Begin VB.TextBox TbxFecMov
      Index = 0
      Left = 180
      Top = 585
      Width = 345
      Height = 310
      Text = "01"
      TabIndex = 0
      MaxLength = 2
    End
    Begin VB.ComboBox ComFecMov
      BackColor = &HE0E0E0&
      Left = 180
      Top = 570
      Width = 1560
      Height = 315
      TabIndex = 4
    End
    Begin VB.Label LblEspera
      Caption = "   Esperar un momento  mientras se genera  el Reporte"
      BackColor = &HC0FFFF&
      Left = 120
      Top = 1395
      Width = 3375
      Height = 1095
      TabIndex = 34
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Times New Roman"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblTitFiles
      Caption = "Revisión de Bases de Datos"
      BackColor = &HC0&
      ForeColor = &HFFFFFF&
      Left = 405
      Top = 1080
      Width = 2775
      Height = 255
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
  End
  Begin Threed.SSPanel PnlCount
    Left = 4050
    Top = 4920
    Width = 3585
    Height = 285
    TabIndex = 28
    OleObjectBlob = "EEAMX009.frx":02E4
  End
  Begin Threed.SSPanel PnlCountMes
    Left = 4050
    Top = 5205
    Width = 3585
    Height = 285
    TabIndex = 40
    OleObjectBlob = "EEAMX009.frx":035E
  End
  Begin Threed.SSCommand CmdDesco
    Left = 315
    Top = 4455
    Width = 1320
    Height = 420
    TabIndex = 38
    OleObjectBlob = "EEAMX009.frx":03D8
  End
  Begin Threed.SSCommand cmdIni
    Left = 315
    Top = 5040
    Width = 1305
    Height = 405
    TabIndex = 21
    OleObjectBlob = "EEAMX009.frx":0448
  End
  Begin Threed.SSCommand cmdAce
    Left = 4770
    Top = 5625
    Width = 1305
    Height = 400
    TabIndex = 19
    OleObjectBlob = "EEAMX009.frx":04B8
  End
  Begin Threed.SSCommand cmdTer
    Left = 6210
    Top = 5625
    Width = 1305
    Height = 405
    TabIndex = 20
    OleObjectBlob = "EEAMX009.frx":0524
  End
  Begin KeyStatLib.MhState keyIns
    Left = 3105
    Top = 5985
    Width = 495
    Height = 495
    Visible = 0   'False
    TabIndex = 22
    OleObjectBlob = "EEAMX009.frx":0591
  End
  Begin VB.Label LblTitTot
    Caption = "Tot. de Mes"
    Index = 1
    BackColor = &HC0FFC0&
    Left = 1920
    Top = 5205
    Width = 975
    Height = 250
    TabIndex = 43
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LblTitTot
    Caption = "Tot. de Dia"
    Index = 0
    BackColor = &HC0FFC0&
    Left = 1920
    Top = 4920
    Width = 975
    Height = 250
    TabIndex = 42
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LblRegMes
    Caption = "T"
    BackColor = &H808000&
    ForeColor = &HFFFFFF&
    Left = 2985
    Top = 5205
    Width = 900
    Height = 285
    TabIndex = 41
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Times New Roman"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LblMens
    Caption = "EL REPORTE YA SE GENERÓ"
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 360
    Top = 5640
    Width = 4095
    Height = 465
    TabIndex = 39
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LblNumReg
    Caption = "10000"
    BackColor = &H808000&
    ForeColor = &HFFFFFF&
    Left = 2985
    Top = 4920
    Width = 900
    Height = 285
    TabIndex = 37
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Times New Roman"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LblTitInst
    Caption = "Registros Existentes"
    Index = 1
    BackColor = &HC0&
    ForeColor = &HFFFFFF&
    Left = 2115
    Top = 4560
    Width = 1815
    Height = 285
    TabIndex = 36
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
  End
  Begin VB.Label LblTitInst
    Caption = " Avance de Generación del Reporte "
    Index = 0
    BackColor = &HC0&
    ForeColor = &HFFFFFF&
    Left = 4050
    Top = 4560
    Width = 3615
    Height = 285
    TabIndex = 27
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
  End
  Begin VB.Label lblTit
    Caption = "  L I S T A D O     G E N E R A L   D E   P A G O S"
    BackColor = &H800000&
    ForeColor = &HFFFFFF&
    Left = 135
    Top = 675
    Width = 7575
    Height = 375
    TabIndex = 24
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
  End
End

Attribute VB_Name = "EEAMX009"

Private Type UDT_1_00457848
  bStruc(32) As Byte ' String fields: 3
End Type


Private Sub ComMod_Change() '4B85C0
  loc_004B8627: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004B8662: EEAMX009.LblMens.ForeColor = "s"
  loc_004B869F: EEAMX009.LblMens.Caption = global_004568F4
  loc_004B86C8: GoTo loc_004B86D4
  loc_004B86D3: Exit Sub
  loc_004B86D4: ' Referenced from: 004B86C8
End Sub

Private Sub ComMod_Click() '4B8700
  loc_004B8768: On Error GoTo loc_004B888B
  loc_004B87CD: If (EEAMX009.ComMod.ListIndex = 0) Then
  loc_004B87E6:   EEAMX009.DirLstLGP.Path = "C:\VREP\LGPCOP\"
  loc_004B8819:   global_004F1360 = "COP"
  loc_004B881F:   global_1384 = 0
  loc_004B882D: Else
  loc_004B8844:   EEAMX009.DirLstLGP.Path = "C:\VREP\LGPRCV\"
  loc_004B8877:   global_004F1360 = "RCV"
  loc_004B887D:   global_1384 = 1
  loc_004B8886:   GoTo loc_004B898B
  loc_004B888B:   var_8004 = Err
  loc_004B88F8:   If (Err.Number <> 76) Then
  loc_004B8926:     MsgBox("ERROR AL ACCESAR A LOS DIRECTORIOS DE C:", 16, 10, 10, 10)
  loc_004B893E:   Else
  loc_004B896A:     MsgBox("ERROR AL ACCESAR A LOS DIRECTORIOS DE C:", 16, 10, 10, 10)
  loc_004B8980:   End If
  loc_004B898B: End If
  loc_004B898B: ' Referenced from: 004B8886
  loc_004B898B: Exit Sub
  loc_004B8996: GoTo loc_004B89BD
  loc_004B89BC: Exit Sub
  loc_004B89BD: ' Referenced from: 004B8996
End Sub

Private Sub DirLstLGP_Change() '4B89E0
  loc_004B8A82: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004B8AC1: EEAMX009.LblMens.ForeColor = "s"
  loc_004B8B00: EEAMX009.LblMens.Caption = global_004568F4
  loc_004B8CA2: If CBool((Ucase(Trim(EEAMX009.DirLstLGP.Path)) = "C:\VREP") Or (Ucase(Trim(EEAMX009.DirLstLGP.Path)) = "C:\")) Then
  loc_004B8CBE:   EEAMX009.ComMod.ListIndex = 0
  loc_004B8CE8:   var_8010 = EEAMX009.ComMod_Click
  loc_004B8D04: End If
  loc_004B8D64: EEAMX009.FilBoxLGP.Path = EEAMX009.DirLstLGP.Path
  loc_004B8D9E: global_116 = &HFFFFFF
  loc_004B8DAC: GoTo loc_004B8E0A
  loc_004B8E09: Exit Sub
  loc_004B8E0A: ' Referenced from: 004B8DAC
End Sub

Private Sub DirLstLGP_KeyPress(KeyAscii As Integer) '4B8E30

End Sub

Private Sub Form_Load() '4BAB30
  Dim var_38 As Variant
  loc_004BABA8: var_8004 = EEAMX009.EEAMX009_MenConBarMsj(var_1C, var_5C)
  loc_004BABEC: global_116 = &HFFFFFF
  loc_004BAC0D: EEAMX009.keyIns.Value
  loc_004BAC27: var_38 = EEAMX009.EEAMX009_CargaAnios
  loc_004BAC4F: var_8008 = EEAMX009.EEAMX009_CargaMods
  loc_004BAC6E: var_800C = EEAMX009.EEAMX009_CargaDocs
  loc_004BAC8D: var_8010 = EEAMX009.EEAMX009_LimpiaTabFech
  loc_004BACC1: var_8014 = EEAMX009.EEAMX009_MenConBarMsj(var_1C, var_5C)
  loc_004BAD05: global_116 = &HFFFFFF
  loc_004BAD26: EEAMX009.keyIns.Value
  loc_004BAD6F: var_1C = "C:\COBRANZA\INI\conver.ini"
  loc_004BADE5: If (Trim$(Proc_489B90("CurSerie", "NINGUNO", "Parametros")) = "NINGUNO") + 1 Then
  loc_004BAE21:   var_1C = "C:\COBRANZA\INI\conver.ini"
  loc_004BAE3D:   var_18 = Proc_489D60("CurSerie", "00", "Parametros")
  loc_004BAE63:   global_264 = 0
  loc_004BAE6E: Else
  loc_004BAE7E:   global_264 = CInt(Val(var_18))
  loc_004BAE85: End If
  loc_004BAEA5: EEAMX009.LblNumReg.Caption = global_00459E00
  loc_004BAEDB: EEAMX009.LblNumReg.Refresh
  loc_004BAF1C: EEAMX009.LblRegMes.Caption = global_00459E00
  loc_004BAF52: EEAMX009.LblRegMes.Refresh
  loc_004BAFBB: EEAMX009.ComMod.AddItem "COP", 10
  loc_004BB022: EEAMX009.ComMod.AddItem "RCV", 10
  loc_004BB065: ReDim global_004F1068(0 To 50)
  loc_004BB07E: GoTo loc_004BB0AA
  loc_004BB0A9: Exit Sub
  loc_004BB0AA: ' Referenced from: 004BB07E
End Sub

Private Sub Form_Unload(Cancel As Integer) '4BB1D0
  loc_004BB20F: var_8004 = Close
End Sub

Private Sub Form_Activate() '4B97D0
  Dim var_28 As Variant
  loc_004B9842: var_8004 = Close
  loc_004B9884: var_18 = "C:\COBRANZA\INI\conver.ini"
  loc_004B9920: var_8010 = (Trim(Proc_489B90("Delegacion", "NINGUNO", "Parametros")) = global_004568F4)
  loc_004B9928: If var_8010 = 0 Then
  loc_004B9931:   global_72 = "00"
  loc_004B9933: End If
  loc_004B9969: var_18 = "C:\COBRANZA\INI\conver.ini"
  loc_004B9A05: var_801C = (Trim(Proc_489B90("Subdelegacion", "NINGUNO", "Parametros")) = global_004568F4)
  loc_004B9A0D: If var_801C = 0 Then
  loc_004B9A16:   global_76 = "00"
  loc_004B9A18: End If
  loc_004B9A18: var_8020 = Proc_490370(0, 0, 0)
  loc_004B9A20: If var_8020 = 0 Then
  loc_004B9A6A:   MsgBox("NO HAY DESCRIPCION PARA SUBDELEGACIÒN A REPORTE", 0, 10, 10, 10)
  loc_004B9A8B: End If
  loc_004B9AAD: EEAMX009.LblSubUsu.Caption = global_004F1084
  loc_004B9AF4: EEAMX009.LblDelUsu.Caption = global_004F1088
  loc_004B9B2F: EEAMX009.DirLstLGP.Path = "C:\VREP"
  loc_004B9B6B: EEAMX009.DirLstLGP.Refresh
  loc_004B9BA9: EEAMX009.CmbTipArch.ListIndex = 0
  loc_004B9BEA: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004B9C25: EEAMX009.LblMens.ForeColor = "s"
  loc_004B9C60: EEAMX009.LblMens.FontSize = CLng(8)
  loc_004B9C91: Set var_28 = EEAMX009.LblMens
  loc_004B9C9C: var_28.Refresh
  loc_004B9CC9: var_B4 = var_28.Width
  loc_004B9D2C: var_B0 = Global.Screen.Width
  loc_004B9D5C: If global_004F1000 = 0 Then
  loc_004B9D66: Else
  loc_004B9D71: End If
  loc_004B9D7F: Global.Screen.Left = ((var_B0 - var_B4) / 2)
  loc_004B9D91: CheckObj(Err.Number, Me, "‡)Ï]e“", 116)
  loc_004B9DA6: var_B4 = Global.Screen.Height
  loc_004B9E09: var_B0 = Global.Screen.Height
  loc_004B9E33: If global_004F1000 = 0 Then
  loc_004B9E3D: Else
  loc_004B9E48: End If
  loc_004B9E56: Global.Screen.Top = ((var_B0 - var_B4) / 2)
  loc_004B9E68: CheckObj(Err.Number, Me, "‡)Ï]e“", 124)
  loc_004B9E94: EEAMX009.ComMod.ListIndex = global_1384
  loc_004B9EBC: var_802C = EEAMX009.ComMod_Click
  loc_004B9F0F: EEAMX009.TbxFecMov(0).SetFocus
  loc_004B9F83: Global.App.HelpFile = "C:\VREP\OPERREP.HLP"
  loc_004B9FAF: GoTo loc_004B9FF5
  loc_004B9FF4: Exit Sub
  loc_004B9FF5: ' Referenced from: 004B9FAF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '4BA110
  Dim var_24 As EEAMX009.keyIns
  loc_004BA161: DoEvents
  loc_004BA1E0: Set var_24 = EEAMX009.keyIns
  loc_004BA1EB: var_24.Value
  loc_004BA23A: If (CBool(var_24) + 1 And TypeOf Global.Screen.ActiveControl Is global_0045EBFC) Then
  loc_004BA25A:   If (KeyCode <> 37) = (KeyCode <> 39) Then
  loc_004BA2E3:     Global.Screen.ActiveControl.SelLength = 1
  loc_004BA2FC:   End If
  loc_004BA2FC: End If
  loc_004BA308: GoTo loc_004BA32B
  loc_004BA32A: Exit Sub
  loc_004BA32B: ' Referenced from: 004BA308
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '4BA810
  Dim var_20 As EEAMX009.keyIns
  loc_004BA86B: If KeyAscii = 13 Then
  loc_004BA887:   SendKeys "{TAB}", 10
  loc_004BA89B: Else
  loc_004BA914:   Set var_20 = EEAMX009.keyIns
  loc_004BA91F:   var_20.Value
  loc_004BA96E:   If (CBool(var_20) + 1 And TypeOf Global.Screen.ActiveControl Is global_0045EBFC) Then
  loc_004BA97B:     If KeyAscii >= 32 Then
  loc_004BAA2E:       If (Global.Screen.ActiveControl.SelLength < 1) Then
  loc_004BAABD:         Global.Screen.ActiveControl.SelLength = 1
  loc_004BAAD6:       End If
  loc_004BAAD6:     End If
  loc_004BAAD6:   End If
  loc_004BAAD8: End If
  loc_004BAAE0: GoTo loc_004BAB0A
  loc_004BAB09: Exit Sub
  loc_004BAB0A: ' Referenced from: 004BAAE0
End Sub

Private Sub Form_Terminate() '4BB0E0
  loc_004BB17F: var_8008 = FrmPorta.Show 10, var_20
End Sub

Private Sub ChkMod_Click() '4AB7D0
  loc_004AB83B: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004AB876: EEAMX009.LblMens.ForeColor = "s"
  loc_004AB8B1: EEAMX009.LblMens.Caption = global_004568F4
  loc_004AB924: If (EEAMX009.ChkMod.Value = 1) Then
  loc_004AB974:   If EEAMX009.chkPat.Value Then
  loc_004AB9A9:     EEAMX009.mskPat.Visible = EEAMX009.mskPat
  loc_004AB9CB:     EEAMX009.chkPat.Value = 0
  loc_004AB9F2:   End If
  loc_004ABA09:   EEAMX009.CmbMod.Visible = True
  loc_004ABA47:   EEAMX009.CmbMod.ListIndex = 0
  loc_004ABA85:   EEAMX009.CmbMod.SetFocus
  loc_004ABAAA: Else
  loc_004ABABE:   EEAMX009.CmbMod.Visible = False
  loc_004ABAE5: End If
  loc_004ABAF1: GoTo loc_004ABAFD
  loc_004ABAFC: Exit Sub
  loc_004ABAFD: ' Referenced from: 004ABAF1
End Sub

Private Sub ChkMod_GotFocus() '4ABB20
  loc_004ABB6D: If global_116 = True Then
  loc_004ABBB1:   global_116 = EEAMX009.ChkMod.TabIndex
  loc_004ABBBB: End If
  loc_004ABBC9: GoTo loc_004ABBD5
  loc_004ABBD4: Exit Sub
  loc_004ABBD5: ' Referenced from: 004ABBC9
End Sub

Private Sub ChkDoc_Click() '4AAE40
  loc_004AAEA8: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004AAEE3: EEAMX009.LblMens.ForeColor = "s"
  loc_004AAF1E: EEAMX009.LblMens.Caption = global_004568F4
  loc_004AAF91: If (EEAMX009.ChkDoc.Value = 1) Then
  loc_004AAFAB:   EEAMX009.CmbDoc.Visible = True
  loc_004AAFE9:   EEAMX009.CmbDoc.ListIndex = 0
  loc_004AB027:   EEAMX009.CmbDoc.SetFocus
  loc_004AB04C: Else
  loc_004AB060:   EEAMX009.CmbDoc.Visible = False
  loc_004AB087: End If
  loc_004AB093: GoTo loc_004AB09F
  loc_004AB09E: Exit Sub
  loc_004AB09F: ' Referenced from: 004AB093
End Sub

Private Sub ChkDoc_GotFocus() '4AB0C0
  loc_004AB10D: If global_116 = True Then
  loc_004AB151:   global_116 = EEAMX009.ChkDoc.TabIndex
  loc_004AB15B: End If
  loc_004AB169: GoTo loc_004AB175
  loc_004AB174: Exit Sub
  loc_004AB175: ' Referenced from: 004AB169
End Sub

Private Sub ChkDoc_LostFocus() '4AB1A0
  loc_004AB204: var_8004 = EEAMX009.EEAMX009_MenConBarMsj(var_18, var_1C)
  loc_004AB229: global_116 = &HFFFFFF
  loc_004AB237: GoTo loc_004AB243
  loc_004AB242: Exit Sub
  loc_004AB243: ' Referenced from: 004AB237
End Sub

Private Sub ChkImp_Click() '4AB270
  Dim var_1C As TextBox
  loc_004AB2D9: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004AB322: EEAMX009.LblMens.ForeColor = "s"
  loc_004AB35D: EEAMX009.LblMens.Caption = global_004568F4
  loc_004AB3CC: If (EEAMX009.ChkImp.Value = 1) Then
  loc_004AB40F:   EEAMX009.TbxImp(0).Visible = True
  loc_004AB479:   EEAMX009.TbxImp(1).Visible = True
  loc_004AB4C7:   Set var_1C = EEAMX009.TbxImp(0)
  loc_004AB4E3:   var_1C.SetFocus
  loc_004AB4ED:   If var_1C.SetFocus >= 0 Then GoTo loc_004AB5C0
  loc_004AB4FD: Else
  loc_004AB53A:   EEAMX009.TbxImp(0).Visible = False
  loc_004AB588:   Set var_1C = EEAMX009.TbxImp(1)
  loc_004AB5A6:   var_1C.Visible = False
  loc_004AB5B0:   If var_1C >= 0 Then GoTo loc_004AB5C0
  loc_004AB5B7: End If
  loc_004AB5BE: CheckObj(var_1C, var_1C, global_00457C74, 148)
  loc_004AB5DB: GoTo loc_004AB5F1
  loc_004AB5F0: Exit Sub
  loc_004AB5F1: ' Referenced from: 004AB5DB
End Sub

Private Sub ChkImp_GotFocus() '4AB620
  loc_004AB66D: If global_116 = True Then
  loc_004AB6B1:   global_116 = EEAMX009.ChkImp.TabIndex
  loc_004AB6BB: End If
  loc_004AB6C9: GoTo loc_004AB6D5
  loc_004AB6D4: Exit Sub
  loc_004AB6D5: ' Referenced from: 004AB6C9
End Sub

Private Sub ChkImp_LostFocus() '4AB700
  loc_004AB764: var_8004 = EEAMX009.EEAMX009_MenConBarMsj(var_18, var_1C)
  loc_004AB789: global_116 = &HFFFFFF
  loc_004AB797: GoTo loc_004AB7A3
  loc_004AB7A2: Exit Sub
  loc_004AB7A3: ' Referenced from: 004AB797
End Sub

Private Sub mskPat_UnknownEvent_0 '4BC090
  loc_004BC0E3: If global_116 = True Then
  loc_004BC123:   global_116 = CInt(EEAMX009.mskPat.TabIndex)
  loc_004BC152:   var_8008 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR CLAVE DEL PATRON", 0)
  loc_004BC17B: Else
  loc_004BC187: End If
  loc_004BC1B5: EEAMX009.mskPat.SelStart = EEAMX009.mskPat
  loc_004BC205: If CLng(EEAMX009.mskPat.SelStart) + 1 Then
  loc_004BC207:   global_118 = 1
  loc_004BC20F: Else
  loc_004BC213: End If
  loc_004BC21B: GoTo loc_004BC239
  loc_004BC238: Exit Sub
  loc_004BC239: ' Referenced from: 004BC21B
End Sub

Private Sub mskPat_UnknownEvent_1 '4BC690
  loc_004BC744: If (global_116 <> CInt(EEAMX009.mskPat.TabIndex)) = 0 Then
  loc_004BC7CE:   If (Trim$(EEAMX009.mskPat.Text) = global_004568F4) + 1 Then
  loc_004BC7D8:     global_116 = &HFFFFFF
  loc_004BC7F6:     var_8014 = EEAMX009.EEAMX009_MenConBarMsj(var_2C, 0)
  loc_004BC820:   Else
  loc_004BC856:     var_28 = EEAMX009.mskPat.Text
  loc_004BC874:     Dim var_28 As String * 10
  loc_004BC87F:     var_2C = var_28
  loc_004BC8B2:     var_28 = var_2C
  loc_004BC8CF:     If (EEAMX009.EEAMX009_ValPatron(var_2C)) Then
  loc_004BC921:       If (CBool(EEAMX009.mskPat.Enabled) = True) = 0 Then GoTo loc_004BC9E3
  loc_004BC947:       var_8020 = EEAMX009.EEAMX009_MenConBarMsj("PATRON INVALIDO", &HFF)
  loc_004BC984:       Call EEAMX009.mskPat.SetFocus
  loc_004BC998:     Else
  loc_004BC9B8:       var_8024 = EEAMX009.EEAMX009_MenConBarMsj(var_2C, 0)
  loc_004BC9DD:       global_116 = &HFFFFFF
  loc_004BC9E3:     End If
  loc_004BC9E3:   End If
  loc_004BC9E5: End If
  loc_004BC9ED: GoTo loc_004BCA15
  loc_004BCA14: Exit Sub
  loc_004BCA15: ' Referenced from: 004BC9ED
End Sub

Private Sub mskPat_UnknownEvent_A '4BCA40
  Dim var_18 As Variant
  loc_004BCAA2: Set var_18 = EEAMX009.keyIns
  loc_004BCAA9: var_18.Value
  loc_004BCAD9: If CBool(var_18) + 1 Then
  loc_004BCB0E:   EEAMX009.mskPat.SelLength = 1
  loc_004BCB1D: End If
  loc_004BCB29: GoTo loc_004BCB3E
  loc_004BCB3D: Exit Sub
  loc_004BCB3E: ' Referenced from: 004BCB29
End Sub

Private Sub mskPat_UnknownEvent_B(arg_C) '4BC260
  loc_004BC2C4: If arg_C = CLng(37) Then
  loc_004BC317:   If CLng(EEAMX009.mskPat.SelStart) + 1 = 0 Then GoTo loc_004BC417
  loc_004BC326:   If global_118 = 1 Then
  loc_004BC33F:     SendKeys "+{TAB}", 10
  loc_004BC34A:   End If
  loc_004BC353: Else
  loc_004BC35D:   If 1 = 0 Then
  loc_004BC3EF:     If (CLng(EEAMX009.mskPat.SelStart) = CInt(EEAMX009.mskPat.MaxLength)) Then
  loc_004BC408:       SendKeys "{TAB}", 10
  loc_004BC417:     End If
  loc_004BC41F:   Else
  loc_004BC424:     call var_8014 = CInt(EEAMX009.mskPat.MaxLength)(Me, 0, 0, 0)
  loc_004BC429:     If (CLng(EEAMX009.mskPat.SelStart) = CInt(EEAMX009.mskPat.MaxLength)) = var_8014 Then
  loc_004BC442:       SendKeys "+{TAB}", 10
  loc_004BC45B:     Else
  loc_004BC460:       call var_8018 = CInt(EEAMX009.mskPat.MaxLength)
  loc_004BC465:       If (CLng(EEAMX009.mskPat.SelStart) = CInt(EEAMX009.mskPat.MaxLength)) = var_8018 Then
  loc_004BC47E:         SendKeys "{TAB}", 10
  loc_004BC495:       End If
  loc_004BC495:     End If
  loc_004BC495:   End If
  loc_004BC495: End If
  loc_004BC4A1: GoTo loc_004BC4C7
  loc_004BC4C6: Exit Sub
  loc_004BC4C7: ' Referenced from: 004BC4A1
End Sub

Private Sub mskPat_UnknownEvent_C(arg_C) '4BC4F0
  loc_004BC558: If ((arg_C > 122) Or (arg_C < 97)) = 0 Then
  loc_004BC567: End If
  loc_004BC56B: If arg_C >= 32 Then
  loc_004BC60A:   If (CLng(EEAMX009.mskPat.SelStart) = (CInt(EEAMX009.mskPat.MaxLength) - 1)) Then
  loc_004BC623:     SendKeys "{TAB}", 10
  loc_004BC632:   End If
  loc_004BC634: End If
  loc_004BC63C: GoTo loc_004BC662
  loc_004BC661: Exit Sub
  loc_004BC662: ' Referenced from: 004BC63C
End Sub

Private Sub CmbMod_GotFocus() '4AFCD0
  loc_004AFD23: If global_116 = True Then
  loc_004AFD6D:   global_116 = EEAMX009.CmbMod.TabIndex
  loc_004AFD97:   var_8004 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR LA MODALIDAD", 0)
  loc_004AFDBE: Else
  loc_004AFDC4: End If
  loc_004AFDDB: EEAMX009.CmbMod.SelStart = 0
  loc_004AFE19: EEAMX009.CmbMod.SelLength = 0
  loc_004AFE40: global_118 = 1
  loc_004AFE52: GoTo loc_004AFE67
  loc_004AFE66: Exit Sub
  loc_004AFE67: ' Referenced from: 004AFE52
End Sub

Private Sub CmbMod_KeyDown(KeyCode As Integer, Shift As Integer) '4AFE90
  loc_004AFEF1: If KeyCode = CLng(37) Then
  loc_004AFF4C:   If (EEAMX009.CmbMod.SelStart = 0) = 0 Then GoTo loc_004B001A
  loc_004AFF5B:   If global_118 = 1 Then
  loc_004AFF74:     SendKeys "+{TAB}", 10
  loc_004AFF83:   End If
  loc_004AFF8C: Else
  loc_004AFF96:   If 1 = CLng(39) Then
  loc_004AFFF2:     If (EEAMX009.CmbMod.SelStart = 2) Then
  loc_004B000B:       SendKeys "{TAB}", 10
  loc_004B001A:     End If
  loc_004B0020:   End If
  loc_004B0020: End If
  loc_004B002C: GoTo loc_004B0041
  loc_004B0040: Exit Sub
  loc_004B0041: ' Referenced from: 004B002C
End Sub

Private Sub CmbMod_KeyPress(KeyAscii As Integer) '4B0070
  loc_004B00E6: If (((KeyAscii > 57) Or (KeyAscii < 48)) Or (KeyAscii < 32)) = 0 Then
  loc_004B0142:   If (EEAMX009.CmbMod.SelStart = 1) = 0 Then GoTo loc_004B0171
  loc_004B015B:   SendKeys "{TAB}", 10
  loc_004B016C: Else
  loc_004B0171: End If
  loc_004B0179: GoTo loc_004B018E
  loc_004B018D: Exit Sub
  loc_004B018E: ' Referenced from: 004B0179
End Sub

Private Sub CmbMod_LostFocus() '4B01B0
  loc_004B0269: If (global_116 <> EEAMX009.CmbMod.TabIndex) = 0 Then
  loc_004B02B5:   var_18 = Trim$(EEAMX009.CmbMod.Text)
  loc_004B02D3:   var_8008 = Len(var_18)
  loc_004B02DA:   If var_8008 - 1 Then
  loc_004B02E1:     If var_8008 - 1 - 1 = 0 Then
  loc_004B02F8:       var_800C = IsNumeric(var_18)
  loc_004B0301:       If var_800C = 0 Then
  loc_004B034F:         EEAMX009.CmbMod.Text = Left$(var_18, 1) & global_0045B658
  loc_004B03B0:         var_1C = EEAMX009.CmbMod.Text
  loc_004B03EC:       End If
  loc_004B03EC:     End If
  loc_004B0414:     If EEAMX009.EEAMX009_MenConBarMsj(var_1C, 0) >= 0 Then GoTo loc_004B0450
  loc_004B0416:     GoTo loc_004B0442
  loc_004B0418:   End If
  loc_004B0440:   If EEAMX009.EEAMX009_MenConBarMsj(var_1C, 0) >= 0 Then GoTo loc_004B0450
  loc_004B0442:   ' Referenced from: 004B0416
  loc_004B044E:   CheckObj(EEAMX009.EEAMX009_MenConBarMsj(var_1C, 0), Me, global_00457608, 1804)
  loc_004B0455:   global_116 = &HFFFFFF
  loc_004B045B: End If
  loc_004B0467: GoTo loc_004B0486
  loc_004B0485: Exit Sub
  loc_004B0486: ' Referenced from: 004B0467
End Sub

Private Sub CmbDoc_GotFocus() '4AEA30
  loc_004AEA83: If global_116 = True Then
  loc_004AEACD:   global_116 = EEAMX009.CmbDoc.TabIndex
  loc_004AEAF7:   var_8004 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR EL TIPO DE DOCUMENTO", 0)
  loc_004AEB1E: Else
  loc_004AEB24: End If
  loc_004AEB3B: EEAMX009.CmbDoc.SelStart = 0
  loc_004AEB79: EEAMX009.CmbDoc.SelLength = 0
  loc_004AEBA0: global_118 = 1
  loc_004AEBB2: GoTo loc_004AEBC7
  loc_004AEBC6: Exit Sub
  loc_004AEBC7: ' Referenced from: 004AEBB2
End Sub

Private Sub CmbDoc_KeyDown(KeyCode As Integer, Shift As Integer) '4AEBF0
  loc_004AEC51: If KeyCode = CLng(37) Then
  loc_004AECAC:   If (EEAMX009.CmbDoc.SelStart = 0) = 0 Then GoTo loc_004AED7A
  loc_004AECBB:   If global_118 = 1 Then
  loc_004AECD4:     SendKeys "+{TAB}", 10
  loc_004AECE3:   End If
  loc_004AECEC: Else
  loc_004AECF6:   If 1 = CLng(39) Then
  loc_004AED52:     If (EEAMX009.CmbDoc.SelStart = 2) Then
  loc_004AED6B:       SendKeys "{TAB}", 10
  loc_004AED7A:     End If
  loc_004AED80:   End If
  loc_004AED80: End If
  loc_004AED8C: GoTo loc_004AEDA1
  loc_004AEDA0: Exit Sub
  loc_004AEDA1: ' Referenced from: 004AED8C
End Sub

Private Sub CmbDoc_KeyPress(KeyAscii As Integer) '4AEDD0
  loc_004AEE46: If (((KeyAscii > 57) Or (KeyAscii < 48)) Or (KeyAscii < 32)) = 0 Then
  loc_004AEEA2:   If (EEAMX009.CmbDoc.SelStart = 1) = 0 Then GoTo loc_004AEED1
  loc_004AEEBB:   SendKeys "{TAB}", 10
  loc_004AEECC: Else
  loc_004AEED1: End If
  loc_004AEED9: GoTo loc_004AEEEE
  loc_004AEEED: Exit Sub
  loc_004AEEEE: ' Referenced from: 004AEED9
End Sub

Private Sub CmbDoc_LostFocus() '4AEF10
  loc_004AEFC9: If (global_116 <> EEAMX009.CmbDoc.TabIndex) = 0 Then
  loc_004AF015:   var_18 = Trim$(EEAMX009.CmbDoc.Text)
  loc_004AF033:   var_8008 = Len(var_18)
  loc_004AF03A:   If var_8008 - 1 Then
  loc_004AF041:     If var_8008 - 1 - 1 = 0 Then
  loc_004AF058:       var_800C = IsNumeric(var_18)
  loc_004AF061:       If var_800C = 0 Then
  loc_004AF0AF:         EEAMX009.CmbDoc.Text = Left$(var_18, 1) & global_0045B658
  loc_004AF110:         var_1C = EEAMX009.CmbDoc.Text
  loc_004AF14C:       End If
  loc_004AF14C:     End If
  loc_004AF174:     If EEAMX009.EEAMX009_MenConBarMsj(var_1C, 0) >= 0 Then GoTo loc_004AF1B0
  loc_004AF176:     GoTo loc_004AF1A2
  loc_004AF178:   End If
  loc_004AF1A0:   If EEAMX009.EEAMX009_MenConBarMsj(var_1C, 0) >= 0 Then GoTo loc_004AF1B0
  loc_004AF1A2:   ' Referenced from: 004AF176
  loc_004AF1AE:   CheckObj(EEAMX009.EEAMX009_MenConBarMsj(var_1C, 0), Me, global_00457608, 1804)
  loc_004AF1B5:   global_116 = &HFFFFFF
  loc_004AF1BB: End If
  loc_004AF1C7: GoTo loc_004AF1E6
  loc_004AF1E5: Exit Sub
  loc_004AF1E6: ' Referenced from: 004AF1C7
End Sub

Private Sub TbxImp_Change() '4C1AF0
  loc_004C1B57: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004C1B94: EEAMX009.LblMens.ForeColor = "s"
  loc_004C1BBD: GoTo loc_004C1BC9
  loc_004C1BC8: Exit Sub
  loc_004C1BC9: ' Referenced from: 004C1BBD
End Sub

Private Sub TbxImp_GotFocus(arg_C) '4C1BF0
  loc_004C1C46: If global_116 = True Then
  loc_004C1CC6:   global_116 = EEAMX009.TbxImp(arg_C).TabIndex
  loc_004C1CF3:   var_8004 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR IMPORTE ", 0)
  loc_004C1D16: End If
  loc_004C1D24: GoTo loc_004C1D43
  loc_004C1D42: Exit Sub
  loc_004C1D43: ' Referenced from: 004C1D24
End Sub

Private Sub TbxImp_KeyDown(KeyCode As Integer, Shift As Integer) '4C1D70
  Dim var_18 As Variant
  loc_004C1DDE: If Shift = CLng(37) Then
  loc_004C1E6F:   If (EEAMX009.TbxImp(KeyCode).SelStart = 0) = 0 Then GoTo loc_004C1FE4
  loc_004C1E7E:   If global_118 = 1 Then
  loc_004C1E97:     SendKeys "+{TAB}", 10
  loc_004C1EA6:   End If
  loc_004C1EAF: Else
  loc_004C1EBD:   If 1 = CLng(39) Then
  loc_004C1FBC:     If (EEAMX009.TbxImp(KeyCode).SelStart = EEAMX009.TbxImp(KeyCode).MaxLength) Then
  loc_004C1FD5:       SendKeys "{TAB}", 10
  loc_004C1FE4:     End If
  loc_004C1FEF:   Else
  loc_004C1FFD:     If (EEAMX009.TbxImp(KeyCode).SelStart = EEAMX009.TbxImp(KeyCode).MaxLength) = CLng(38) Then
  loc_004C2027:       var_48 = EEAMX009.CmbDoc.Visible
  loc_004C2057:       If var_48 Then
  loc_004C2064:         Set var_18 = EEAMX009.CmbDoc
  loc_004C206B:         var_18.SetFocus
  loc_004C2075:         If var_18.SetFocus >= 0 Then GoTo loc_004C20FB
  loc_004C2087:         CheckObj(var_18.SetFocus, var_18, global_00457C54, 500)
  loc_004C208F:       End If
  loc_004C209A:       Set var_18 = EEAMX009.ChkDoc
  loc_004C20A1:       var_18.SetFocus
  loc_004C20AB:       If var_18.SetFocus < 0 Then
  loc_004C20B9:         CheckObj(var_18.SetFocus, var_18, global_00457C44, 444)
  loc_004C20C1:       End If
  loc_004C20CF:       If var_48 <> CLng(40) Then GoTo loc_004C2104
  loc_004C20F2:       Call EEAMX009.cmdAce.SetFocus
  loc_004C20FB:     End If
  loc_004C2104:   End If
  loc_004C2104: End If
  loc_004C2110: GoTo loc_004C2137
  loc_004C2136: Exit Sub
  loc_004C2137: ' Referenced from: 004C2110
End Sub

Private Sub TbxImp_KeyPress(KeyAscii As Integer) '4C2160
  Dim var_24 As TextBox
  loc_004C21EB: If arg_10 = 13 Then
  loc_004C2204:   SendKeys "{TAB}", 10
  loc_004C2218: Else
  loc_004C222C:   If ((eax > 57) Or (eax < 48)) Then GoTo loc_004C24FF
  loc_004C22AB:   var_8004 = CInt(InStr(1, EEAMX009.TbxImp(KeyAscii), ".", 0))
  loc_004C2346:   var_BC = (var_8004 > 0)
  loc_004C23EA:   var_8010 = CBool((var_8004 > 0) And (Len(Trim(Mid(EEAMX009.TbxImp(KeyAscii).Text, var_8004(1), 3))) > 2))
  loc_004C2428:   If var_8010 = 0 Then GoTo loc_004C2441
  loc_004C2434: End If
  loc_004C243C: GoTo loc_004C264E
  loc_004C248C: var_C8 = EEAMX009.TbxImp(KeyAscii).SelStart
  loc_004C24CE: If (var_C8 = 7) = 0 Then GoTo loc_004C2432
  loc_004C24EB: SendKeys "{TAB}", 10
  loc_004C24FA: GoTo loc_004C2432
  loc_004C2541: If (Chr(0) = ".") <> (var_C8 = 7) Then
  loc_004C259B:   var_24 = (var_C8 = 7)
  loc_004C25C0:   var_8018 = CBool(InStr(1, EEAMX009.TbxImp(KeyAscii), ".", (var_C8 = 7)))
  loc_004C25E7:   If var_8018 = (var_C8 = 7) Then GoTo loc_004C2434
  loc_004C25F5:   GoTo loc_004C2434
  loc_004C25FA: End If
  loc_004C2602: GoTo loc_004C2434
  loc_004C264D: Exit Sub
  loc_004C264E: ' Referenced from: 004C243C
End Sub

Private Sub TbxImp_LostFocus(arg_C) '4CF300
  loc_004CF3EA: If (global_116 <> EEAMX009.TbxImp(arg_C).TabIndex) = 0 Then
  loc_004CF505:   EEAMX009.TbxImp(arg_C).Text = Format$(EEAMX009.TbxImp(arg_C).Text, "########0.00")
  loc_004CF552:   var_8008 = EEAMX009.EEAMX009_MenConBarMsj(var_1C, var_5C)
  loc_004CF577:   global_116 = &HFFFFFF
  loc_004CF57D: End If
  loc_004CF585: GoTo loc_004CF5B4
  loc_004CF5B3: Exit Sub
  loc_004CF5B4: ' Referenced from: 004CF585
End Sub

Private Sub TbxFecMov_Change() '4C0760
  loc_004C07C7: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004C0804: EEAMX009.LblMens.ForeColor = "s"
  loc_004C082D: GoTo loc_004C0839
  loc_004C0838: Exit Sub
  loc_004C0839: ' Referenced from: 004C082D
End Sub

Private Sub TbxFecMov_GotFocus(arg_C) '4C0860
  loc_004C08B6: If global_116 = True Then
  loc_004C0936:   global_116 = EEAMX009.TbxFecMov(arg_C).TabIndex
  loc_004C0963:   var_8004 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR FECHA DE MOVIMIENTO", 0)
  loc_004C0986: Else
  loc_004C098C: End If
  loc_004C09CE: EEAMX009.TbxFecMov(arg_C).SelStart = 0
  loc_004C0A3D: EEAMX009.TbxFecMov(arg_C).SelLength = 0
  loc_004C0A6A: global_118 = 1
  loc_004C0A7C: GoTo loc_004C0A9B
  loc_004C0A9A: Exit Sub
  loc_004C0A9B: ' Referenced from: 004C0A7C
End Sub

Private Sub TbxFecMov_KeyDown(KeyCode As Integer, Shift As Integer) '4C0AC0
  loc_004C0B24: If Shift = CLng(37) Then
  loc_004C0BB4:   If (EEAMX009.TbxFecMov(KeyCode).SelStart = 0) = 0 Then GoTo loc_004C0D51
  loc_004C0BC3:   If global_118 = 1 Then
  loc_004C0BDC:     SendKeys "+{TAB}", 10
  loc_004C0BEB:   End If
  loc_004C0BF4: Else
  loc_004C0BFE:   If 1 = CLng(39) Then
  loc_004C0C0E:     If KeyCode < 2 Then
  loc_004C0C99:       If (EEAMX009.TbxFecMov(KeyCode).SelStart = 2) = 0 Then GoTo loc_004C0D51
  loc_004C0C9F:       GoTo loc_004C0D2B
  loc_004C0CA4:     End If
  loc_004C0D29:     If (EEAMX009.TbxFecMov(KeyCode).SelStart = 4) = 0 Then GoTo loc_004C0D51
  loc_004C0D42:     SendKeys "{TAB}", 10
  loc_004C0D51:     global_118 = 0
  loc_004C0D57:   End If
  loc_004C0D57: End If
  loc_004C0D63: GoTo loc_004C0D82
  loc_004C0D81: Exit Sub
  loc_004C0D82: ' Referenced from: 004C0D63
End Sub

Private Sub TbxFecMov_KeyPress(KeyAscii As Integer) '4C0DB0
  loc_004C0E29: If (((arg_10 > 57) Or (arg_10 < 48)) Or (arg_10 < 32)) = 0 Then
  loc_004C0E36:   If KeyAscii < 2 Then
  loc_004C0EC4:     If (EEAMX009.TbxFecMov(KeyAscii).SelStart = 1) = 0 Then GoTo loc_004C0F67
  loc_004C0EE1:     SendKeys "{TAB}", 10
  loc_004C0EF2:   Else
  loc_004C0F37:     var_40 = EEAMX009.TbxFecMov(KeyAscii).SelStart
  loc_004C0F5D:     GoTo loc_004C0EA7
  loc_004C0F62:   End If
  loc_004C0F67: End If
  loc_004C0F6F: GoTo loc_004C0F8E
  loc_004C0F8D: Exit Sub
  loc_004C0F8E: ' Referenced from: 004C0F6F
End Sub

Private Sub TbxFecMov_LostFocus(arg_C) '4C0FB0
  Dim var_24 As Variant
  Dim var_28 As TextBox
  Dim var_C4 As TextBox
  loc_004C105B: Set var_28 = EEAMX009.TbxFecMov(arg_C)
  loc_004C108A: var_C4 = var_28
  loc_004C10C6: var_CC = (global_116 <> var_28.TabIndex)
  loc_004C10E3: If var_CC = 0 Then
  loc_004C10F7:   Set var_24 = EEAMX009.TbxFecMov
  loc_004C1106:   var_BC = var_24
  loc_004C1111:   Set var_28 = var_24(arg_C)
  loc_004C1135:   var_C4 = var_28
  loc_004C116A:   var_18 = Trim$(var_28.Text)
  loc_004C1190:   var_8008 = Len(var_18)
  loc_004C1198:   If (var_8008 - ebx) Then
  loc_004C119F:     If (var_8008 - ebx) - 1 Then
  loc_004C11C8:       If IsNumeric(var_18) Then GoTo loc_004C1534
  loc_004C11DC:       Set var_24 = EEAMX009.TbxFecMov
  loc_004C11EB:       var_BC = var_24
  loc_004C11F6:       Set var_28 = var_24(arg_C)
  loc_004C1249:       var_F4 = var_28
  loc_004C125D:       var_28.Text = Left$(var_18, 1) & global_0045B658
  loc_004C12DE:       var_1C = EEAMX009.TbxFecMov(arg_C).Text
  loc_004C1318:     Else
  loc_004C131F:       If arg_C >= 2 Then GoTo loc_004C1534
  loc_004C1353:       If (((var_18 = global_0045B770) > 0) Or ((var_18 = global_00459E00) < 0)) Then GoTo loc_004C1534
  loc_004C139D:       var_1C = EEAMX009.TbxFecMov(arg_C).Text
  loc_004C13DB:       Set var_30 = EEAMX009.TbxFecMov(arg_C)
  loc_004C144E:       var_F8 = var_30
  loc_004C1462:       var_30.Text = Format$(0, "00")
  loc_004C14F4:       var_1C = EEAMX009.TbxFecMov(arg_C).Text
  loc_004C1529:     End If
  loc_004C1538:     var_18 = CInt(1)
  loc_004C156D:     If (((CInt(1) <= 31) And CInt(1)) Or (arg_C)) = 0 Then
  loc_004C1599:       var_8024 = EEAMX009.EEAMX009_MenConBarMsj("FECHA DE MOVIMIENTO INVALIDA", &HFF)
  loc_004C162D:       global_116 = EEAMX009.TbxFecMov(0).TabIndex
  loc_004C1655:       Set var_28 = EEAMX009.TbxFecMov(0)
  loc_004C1671:       var_28.SetFocus
  loc_004C167B:       If var_28.SetFocus >= 0 Then GoTo loc_004C19BF
  loc_004C1681:       GoTo loc_004C19B1
  loc_004C1686:     End If
  loc_004C1694:     var_18 = CInt(EEAMX009.TbxFecMov)
  loc_004C16CD:     If (((CInt(var_28) <= 12) And CInt(var_28)) Or (var_28.SetFocus <> 1)) = 0 Then
  loc_004C16F9:       var_8028 = .EEAMX009_MenConBarMsj("FECHA DE MOVIMIENTO INVALIDA", &HFF)
  loc_004C1739:       Set var_28 = EEAMX009.TbxFecMov(1)
  loc_004C178D:       var_28(116) = var_28.TabIndex
  loc_004C17B5:       Set var_28 = EEAMX009.TbxFecMov(1)
  loc_004C17BC:       If var_28 >= 0 Then GoTo loc_004C1669
  loc_004C17C2:       GoTo loc_004C165E
  loc_004C17C7:     End If
  loc_004C17DC:     var_A8 = (var_28 = 2)
  loc_004C17EF:     var_88 = CInt(Me)
  loc_004C181C:     var_18 = CInt(0)
  loc_004C182F:     var_98 = (var_18 < 1980)
  loc_004C1874:     var_8034 = CBool((var_28 = 2) And (var_18 > Year(Date)) Or (var_18 < 1980))
  loc_004C18A1:     If var_8034 = 0 Then GoTo loc_004C19D5
  loc_004C18CD:     var_8038 = .EEAMX009_MenConBarMsj("FECHA DE MOVIMIENTO INVALIDA", &HFF)
  loc_004C18FC:     Set var_24 = EEAMX009.TbxFecMov
  loc_004C1961:     var_24(116) = var_24(1).TabIndex
  loc_004C1989:     Set var_28 = EEAMX009.TbxFecMov(1)
  loc_004C19A5:     var_28.SetFocus
  loc_004C19AF:     If var_28.SetFocus >= 0 Then GoTo loc_004C19BF
  loc_004C19B1:     ' Referenced from: 004C1681
  loc_004C19BD:     CheckObj(var_28.SetFocus, var_28, global_00457C74, 516)
  loc_004C19D0:     GoTo loc_004C1A6F
  loc_004C19FB:     var_803C = .EEAMX009_MenConBarMsj(var_1C, 0)
  loc_004C1A26:   Else
  loc_004C1A48:     var_8040 = .EEAMX009_MenConBarMsj(var_1C, var_B8)
  loc_004C1A6F:   End If
  loc_004C1A6F: End If
  loc_004C1A77: GoTo loc_004C1AC1
  loc_004C1AC0: Exit Sub
  loc_004C1AC1: ' Referenced from: 004C1A77
End Sub

Private Sub CmdAce_UnknownEvent_9 '4B0880
  Dim var_E4 As Variant
  Dim var_100 As Variant
  Dim var_E8 As Variant
  Dim var_C0 As Variant
  Dim var_234 As Variant
  Dim global_004F1DB4 As Global
  Dim global_004F115C As Form
  Dim var_D4 As Variant
  Dim var_1A0 As Label
  Dim var_C4 As Variant
  Dim var_C8 As Variant
  loc_004B0A4A: var_A0 = "00"
  loc_004B0A5A: var_88 = "00"
  loc_004B0A67: Dim var_A0 As String * 2
  loc_004B0A7B: var_C4 = var_A0
  loc_004B0A95: var_2A0 = InStr(1, var_C4, global_0045B658, 0)
  loc_004B0A9C: Dim var_88 As String * 2
  loc_004B0AF3: If (InStr(1, var_C4, global_0045B658, 0) Or InStr(1, var_88, global_0045B658, 0)) Then
  loc_004B0B25:   var_800C = EEAMX009.EEAMX009_MenConBarMsj("MALA CONFIGURACION EN DESTINO DE USUARIO", &HFF)
  loc_004B0B8A:   global_116 = CInt(EEAMX009.cmdTer.TabIndex)
  loc_004B0BBA:   Call EEAMX009.cmdTer.SetFocus
  loc_004B0BD4: Else
  loc_004B0BE5:   Set var_E4 = EEAMX009.TbxFecMov
  loc_004B0BF6:   var_240 = var_E4
  loc_004B0BFC:   Set var_E8 = var_E4(0)
  loc_004B0C2A:   var_248 = var_E8
  loc_004B0CD0:   var_8014 = Format(Trim(var_E8.Text), "00")
  loc_004B0CDB:   Set 00000001h = 1
  loc_004B0D2B:   Set var_E4 = EEAMX009.TbxFecMov
  loc_004B0D3D:   var_240 = var_E4
  loc_004B0D43:   Set var_E8 = var_E4(1)
  loc_004B0D71:   var_248 = var_E8
  loc_004B0E17:   var_8018 = Format(Trim(var_E8.Text), "00")
  loc_004B0E25:   Set 00000001h = 1
  loc_004B0E75:   Set var_E4 = EEAMX009.TbxFecMov
  loc_004B0E87:   var_240 = var_E4
  loc_004B0E8D:   Set var_E8 = var_E4(2)
  loc_004B0EBB:   var_248 = var_E8
  loc_004B0F61:   var_801C = Format(Trim(var_E8.Text), "00")
  loc_004B0F6C:   Set 00000001h = 1
  loc_004B0FB4:   var_8020 = (var_50 = global_004568F4)
  loc_004B0FBC:   If var_8020 = 0 Then
  loc_004B0FC6:     var_50 = "**"
  loc_004B0FD3:   Else
  loc_004B0FD7:   End If
  loc_004B0FDC:   var_8024 = var_50 & "/"
  loc_004B0FF4:   var_8028 = "01" & var_98
  loc_004B1002:   Set 0 = 0
  loc_004B100A:   var_802C = 0 & "/"
  loc_004B1018:   Set 0 = 
  loc_004B101F:   var_8030 = 0 & var_30
  loc_004B102A:   Set  = 
  loc_004B105A:   var_C0 = EEAMX009.EEAMX009_ValFecMov(var_6C)
  loc_004B1085:   Set  = 
  loc_004B1090:   var_8034 = (var_6C = global_004568F4)
  loc_004B1098:   If var_8034 = 0 Then
  loc_004B10CA:     var_8038 = EEAMX009.EEAMX009_MenConBarMsj("FECHA DE MOVIMIENTO INVALIDA", &HFF)
  loc_004B117F:     global_116 = EEAMX009.TbxFecMov(0).TabIndex
  loc_004B11CF:     EEAMX009.TbxFecMov(0).SetFocus
  loc_004B1207:   Else
  loc_004B1210:     var_803C = (var_50 = "**")
  loc_004B1218:     If var_803C = 0 Then
  loc_004B1224:       var_8040 = "**" & "/"
  loc_004B1232:       CheckObj(, , , )
  loc_004B123C:       var_8044 = 0 & var_98
  loc_004B124A:       CheckObj(, , , )
  loc_004B1252:       var_8048 = 0 & "/"
  loc_004B1260:       CheckObj(, , , fs:[00000000h])
  loc_004B1267:       var_804C = 0 & var_30
  loc_004B1272:       CheckObj(, , , 0)
  loc_004B1294:     End If
  loc_004B129E:     var_2C = var_6C
  loc_004B12AF:     var_9C = "**"
  loc_004B12C6:     Set var_E4 = EEAMX009.CmbMesPer
  loc_004B12D7:     var_240 = var_E4
  loc_004B12DD:     Set var_E8 = var_E4(0)
  loc_004B130B:     var_248 = var_E8
  loc_004B1311:     var_234 = var_E8.Visible
  loc_004B1363:     If var_234 Then
  loc_004B137A:       Set var_E4 = EEAMX009.CmbMesPer
  loc_004B138B:       var_240 = var_E4
  loc_004B1391:       Set var_E8 = var_E4(0)
  loc_004B13BF:       var_248 = var_E8
  loc_004B13F0:       var_8050 = Trim$(var_E8.Text)
  loc_004B13FE:       CheckObj(, , , )
  loc_004B1439:       If (var_9C = global_004568F4) Then
  loc_004B1480:         If .EEAMX009_ValMesPer(var_9C, var_234) Then GoTo loc_004B1600
  loc_004B14B2:         var_8058 = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B14FE:         Set var_E8 = EEAMX009.CmbMesPer(0)
  loc_004B1567:         var_E8(116) = var_E8.TabIndex
  loc_004B15B7:         EEAMX009.CmbMesPer(0).SetFocus
  loc_004B15EF:       Else
  loc_004B15FA:         var_9C = "**"
  loc_004B1600:       End If
  loc_004B160B:       var_B8 = "**"
  loc_004B1622:       Set var_E4 = EEAMX009.CmbMesPer
  loc_004B1634:       var_240 = var_E4
  loc_004B163A:       Set var_E8 = var_E4(1)
  loc_004B1668:       var_248 = var_E8
  loc_004B16C0:       If var_E8.Visible Then
  loc_004B16D7:         Set var_E4 = EEAMX009.CmbMesPer
  loc_004B16E9:         var_240 = var_E4
  loc_004B16EF:         Set var_E8 = var_E4(1)
  loc_004B171D:         var_248 = var_E8
  loc_004B174E:         var_805C = Trim$(var_E8.Text)
  loc_004B175C:         CheckObj(, , , )
  loc_004B1797:         If (var_B8 = global_004568F4) Then
  loc_004B17E2:           If .EEAMX009_ValMesPer(var_B8, vbNull) Then GoTo loc_004B191D
  loc_004B1814:           var_8064 = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B1860:           Set var_E8 = EEAMX009.CmbMesPer(0)
  loc_004B18C9:           var_E8(116) = var_E8.TabIndex
  loc_004B1901:           If EEAMX009.CmbMesPer(0) >= 0 Then GoTo loc_004B233A
  loc_004B1907:           GoTo loc_004B232F
  loc_004B190C:         End If
  loc_004B1917:         var_B8 = "**"
  loc_004B191D:       End If
  loc_004B1925:       var_18 = "****"
  loc_004B193C:       Set var_E4 = EEAMX009.CmbAnioPer.ComboBox
  loc_004B194D:       var_240 = var_E4
  loc_004B1953:       Set var_E8 = var_E4(0)
  loc_004B1981:       var_248 = var_E8
  loc_004B19D9:       If var_E8.Visible Then
  loc_004B19F0:         Set var_E4 = EEAMX009.CmbAnioPer
  loc_004B1A01:         var_240 = var_E4
  loc_004B1A07:         Set var_E8 = var_E4(0)
  loc_004B1A35:         var_248 = var_E8
  loc_004B1AC1:         var_8068 = Trim$(CStr(Mid(var_E8.Text, 1, 4)))
  loc_004B1ACC:         CheckObj(, , , )
  loc_004B1B21:         If (var_18 = global_004568F4) Then
  loc_004B1B34:           If Len(var_18) < 4 Then
  loc_004B1B66:             var_8074 = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B1B9F:             Set var_E4 = EEAMX009.CmbAnioPer
  loc_004B1C1B:             var_E4(116) = var_E4(0).TabIndex
  loc_004B1C53:             If EEAMX009.CmbAnioPer(0) >= 0 Then GoTo loc_004B233A
  loc_004B1C59:             GoTo loc_004B232F
  loc_004B1C5E:           End If
  loc_004B1C6E:           var_1C8 = CInt()
  loc_004B1C9E:           var_18 = CInt()
  loc_004B1CB5:           var_1D8 = (var_18 < 1980)
  loc_004B1D25:           If CBool((var_18 > Year(Date)) Or (var_18 < 1980)) Then
  loc_004B1D57:             var_8080 = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B1D90:             Set var_E4 = EEAMX009.CmbAnioPer
  loc_004B1E0C:             var_E4(116) = var_E4(0).TabIndex
  loc_004B1E44:             If EEAMX009.CmbAnioPer(0) >= 0 Then GoTo loc_004B233A
  loc_004B1E4A:             GoTo loc_004B232F
  loc_004B1E4F:           End If
  loc_004B1E57:           var_18 = "****"
  loc_004B1E5D:         End If
  loc_004B1E5D:       End If
  loc_004B1E65:       var_34 = "****"
  loc_004B1E7C:       Set var_E4 = EEAMX009.CmbAnioPer.ComboBox
  loc_004B1E8E:       var_240 = var_E4
  loc_004B1E94:       Set var_E8 = var_E4(1)
  loc_004B1EC2:       var_248 = var_E8
  loc_004B1F03:       var_250 = var_E8.Visible
  loc_004B1F1A:       If var_250 = 0 Then GoTo loc_004B2368
  loc_004B1F31:       Set var_E4 = EEAMX009.CmbAnioPer
  loc_004B1F43:       var_240 = var_E4
  loc_004B1F49:       Set var_E8 = var_E4(1)
  loc_004B1F77:       var_248 = var_E8
  loc_004B2003:       var_8084 = Trim$(CStr(Mid(var_E8.Text, 1, 4)))
  loc_004B200E:       CheckObj(, , , )
  loc_004B205B:       var_8088 = (var_34 = global_004568F4)
  loc_004B2063:       If var_8088 = 0 Then GoTo loc_004B235A
  loc_004B2076:       If Len(var_34) < 4 Then
  loc_004B20A8:         var_8090 = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B2128:         If EEAMX009.CmbAnioPer(0).TabIndex >= 0 Then GoTo loc_004B1BFE
  loc_004B2140:         CheckObj(EEAMX009.CmbAnioPer(0).TabIndex, EEAMX009.CmbAnioPer(0), global_00457C54, 224)
  loc_004B2147:       End If
  loc_004B2157:       var_1C8 = CInt()
  loc_004B2187:       var_34 = CInt()
  loc_004B219E:       var_1D8 = (var_34 < 1980)
  loc_004B21E6:       var_240 = CBool((var_34 > Year(Date)) Or (var_34 < 1980))
  loc_004B220E:       If var_240 = 0 Then GoTo loc_004B2368
  loc_004B2240:       var_809C = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B2279:       Set var_E4 = EEAMX009.CmbAnioPer
  loc_004B22F5:       var_E4(116) = var_E4(0).TabIndex
  loc_004B2326:       Set var_E8 = EEAMX009.CmbAnioPer(0)
  loc_004B232D:       If var_E8 >= 0 Then GoTo loc_004B233A
  loc_004B2338:       CheckObj(var_E8, EEAMX009.CmbAnioPer, global_00457C64, 64)
  loc_004B2345:       var_E8.SetFocus
  loc_004B234F:       If var_E8.SetFocus >= 0 Then GoTo loc_004B15D1
  loc_004B2355:       GoTo loc_004B15C3
  loc_004B238F:       var_80A0 = .EEAMX009_ObtPeriodos(var_9C, var_18, var_B8, "****", var_90, var_84)
  loc_004B23BC:       Set var_E4 = EEAMX009.ChkPer
  loc_004B23CC:       var_240 = var_E4
  loc_004B2417:       If var_E4.Value Then
  loc_004B2445:         var_2A4 = (var_90 = "******")
  loc_004B245B:         If ((var_90 = "******") Or (var_84 = "******")) = 0 Then
  loc_004B248D:           var_80AC = .EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004B24E4:           Set var_E8 = EEAMX009.CmbMesPer(0)
  loc_004B2541:           var_E8(116) = var_E8.TabIndex
  loc_004B256F:           Set var_E8 = EEAMX009.CmbMesPer(0)
  loc_004B258E:           var_E8.SetFocus
  loc_004B2598:           If var_E8.SetFocus >= 0 Then GoTo loc_004B39D7
  loc_004B25AD:         Else
  loc_004B25AD:         End If
  loc_004B25BE:         var_90 = "*******"
  loc_004B25CB:         var_84 = "*******"
  loc_004B25F1:         var_2A8 = (var_9C = "**") + 1
  loc_004B2606:         If (var_18 = "****") + 1 = 0 Then
  loc_004B265C:           var_80C0 = Trim(var_18 & "/" & var_9C)
  loc_004B2691:         End If
  loc_004B26B5:         var_2AC = (var_B8 = "**") + 1
  loc_004B26CA:         If ("****" = "****") + 1 = 0 Then
  loc_004B2720:           var_80D4 = Trim("****" & "/" & var_B8)
  loc_004B2755:         End If
  loc_004B27AC:         If EEAMX009.CmbMod.Visible Then
  loc_004B284F:           var_C4 = CStr(Mid(EEAMX009.CmbMod.Text, 1, 2))
  loc_004B28AB:           Dim Trim$(var_C4) As String * 2
  loc_004B28F8:           var_B4 = var_C4
  loc_004B2907:           Dim var_B4 As String * 2
  loc_004B291D:           var_80DC = (var_B4 = "  ")
  loc_004B2952:           If Not (.EEAMX009_ValMod(var_C4)) = 0 Then GoTo loc_004B2A5B
  loc_004B2984:           var_80E0 = .EEAMX009_MenConBarMsj("MODALIDAD INVALIDA", &HFF)
  loc_004B2A02:           var_E8(116) = EEAMX009.CmbMod.TabIndex
  loc_004B2A19:           Set var_E4 = EEAMX009.CmbMod
  loc_004B2A20:           var_E4.SetFocus
  loc_004B2A2A:           If var_E4.SetFocus >= 0 Then GoTo loc_004B510C
  loc_004B2A3C:           CheckObj(var_E4.SetFocus, var_E4, global_00457C54, 500)
  loc_004B2A47:         End If
  loc_004B2A55:         var_B4 = "**"
  loc_004B2ABA:         If CBool(EEAMX009.mskPat.Visible) Then
  loc_004B2B37:           Dim Trim$(EEAMX009.mskPat.Text) As String * 10
  loc_004B2B81:           var_80 = var_C4
  loc_004B2B92:           Dim var_B0 As String * 8
  loc_004B2BAA:           var_80F0 = InStr(1, var_B0, global_0045B658, 0)
  loc_004B2BE9:           If (InStr(1, var_B0, global_0045B658, 0) Or (.EEAMX009_ValPatron(var_C4))) Then
  loc_004B2C1B:             var_80F4 = .EEAMX009_MenConBarMsj("PATRÓN INVALIDO", &HFF)
  loc_004B2C61:             Set var_E4 = EEAMX009.mskPat
  loc_004B2C87:             var_E4(116) = CInt(var_E4.TabIndex)
  loc_004B2CB4:             Call EEAMX009.mskPat.SetFocus
  loc_004B2CC2:           Else
  loc_004B2CDC:             Dim var_80 As String * 10
  loc_004B2D4B:             var_B0 = Mid("PATRÓN INVALIDO", 1, 8)
  loc_004B2D8D:             Dim "PATRÓN INVALIDO" As String * 10
  loc_004B2DDD:             var_80 = "PATRÓN INVALIDO"
  loc_004B2DF6:             var_B4 = Mid("PATRÓN INVALIDO", 9, 2)
  loc_004B2E23:           Else
  loc_004B2E31:             var_B0 = "********"
  loc_004B2E3D:           End If
  loc_004B2E4E:           Set var_E4 = EEAMX009.CmbDoc
  loc_004B2E5E:           var_240 = var_E4
  loc_004B2EAA:           If var_E4.Visible Then
  loc_004B2F4D:             var_C4 = CStr(Mid(EEAMX009.CmbDoc.Text, 1, 2))
  loc_004B2F63:             var_8C = Trim$(var_C4)
  loc_004B2FA9:             Dim var_8C As String * 2
  loc_004B2FDD:             If (var_8C = "  ") + 1 = 0 Then GoTo loc_004B30E2
  loc_004B300F:             var_810C = .EEAMX009_MenConBarMsj("TIPO DE DOCUMENTO INVALIDO", &HFF)
  loc_004B304E:             Set var_E4 = EEAMX009.CmbDoc
  loc_004B308D:             var_E4(116) = var_E4.TabIndex
  loc_004B30A4:             Set var_E4 = EEAMX009.CmbDoc
  loc_004B30AB:             var_E4.SetFocus
  loc_004B30B5:             If var_E4.SetFocus >= 0 Then GoTo loc_004B510C
  loc_004B30C7:             CheckObj(var_E4.SetFocus, var_E4, global_00457C54, 500)
  loc_004B30D2:           End If
  loc_004B30E0:           Set 00000002h = Trim$(var_C4)
  loc_004B3172:           If EEAMX009.TbxImp(0).Visible Then
  loc_004B3257:             var_8110 = Trim(Mid(EEAMX009.TbxImp(0).Text, 1, 12))
  loc_004B32AE:             If (var_60 = global_004568F4) Then
  loc_004B3313:               var_8118 = Format(var_60, "000000000.00")
  loc_004B3337:             Else
  loc_004B3337:             End If
  loc_004B333F:             var_60 = "************"
  loc_004B3345:           End If
  loc_004B33D5:           If EEAMX009.TbxImp(1).Visible Then
  loc_004B34BA:             var_811C = Trim(Mid(EEAMX009.TbxImp(1).Text, 1, 12))
  loc_004B3511:             If (var_68 = global_004568F4) Then
  loc_004B3576:               var_8124 = Format(var_68, "000000000.00")
  loc_004B359A:             Else
  loc_004B359A:             End If
  loc_004B35A2:             var_68 = "************"
  loc_004B35A8:           End If
  loc_004B36F5:           var_260 = ((((InStr(1, var_68, "*", 0) > 0) And (InStr(1, var_60, "*", 0) > 0)) And EEAMX009.TbxImp(1).Visible) And EEAMX009.TbxImp(0).Visible)
  loc_004B3723:           If var_260 Then
  loc_004B3755:             var_8138 = .EEAMX009_MenConBarMsj("ESPECIFICAR IMPORTE", &HFF)
  loc_004B378A:             Set var_E4 = EEAMX009.TbxImp
  loc_004B37FB:             var_E4(116) = var_E4(0).TabIndex
  loc_004B3829:             Set var_E8 = EEAMX009.TbxImp(0)
  loc_004B3848:             var_E8.SetFocus
  loc_004B3852:             If var_E8.SetFocus >= 0 Then GoTo loc_004B39D7
  loc_004B3858:             GoTo loc_004B39C9
  loc_004B385D:           End If
  loc_004B3862:           If InStr(1, var_60, "*", 0) > 0 Then GoTo loc_004B39F1
  loc_004B386D:           If InStr(1, var_68, "*", 0) > 0 Then GoTo loc_004B39F1
  loc_004B3880:           var_2B4 = var_60
  loc_004B38CA:           var_813C = .EEAMX009_MenConBarMsj("IMPORTE INVALIDO", &HFF)
  loc_004B3913:           Set var_E8 = EEAMX009.TbxImp(1)
  loc_004B3970:           var_E8(116) = var_E8.TabIndex
  loc_004B399E:           Set var_E8 = EEAMX009.TbxImp(1)
  loc_004B39BD:           var_E8.SetFocus
  loc_004B39C7:           If var_E8.SetFocus >= 0 Then GoTo loc_004B39D7
  loc_004B39D3:         End If
  loc_004B39D5:         CheckObj(var_E8.SetFocus, var_E8, global_00457C74, 516)
  loc_004B39EC:         GoTo loc_004B5114
  loc_004B39FD:         global_004F1378 = "00"
  loc_004B3AB6:         global_004F137C = "USLGP" + Trim(EEAMX009.ComMod.Text)
  loc_004B3AF7:         Dim var_B0 As String * 8
  loc_004B3B0D:         Dim var_B4 As String * 2
  loc_004B3B5E:         Dim var_8C As String * 2
  loc_004B3B91:         var_815C = var_B0 & var_B4 & var_90 & var_84 & var_8C & var_60 & var_68
  loc_004B3BFB:         EEAMX009.DirLstLGP.Visible = False
  loc_004B3C43:         EEAMX009.FilBoxLGP.Visible = False
  loc_004B3C88:         Set var_E4 = EEAMX009.CmbTipArch
  loc_004B3C93:         var_240 = var_E4
  loc_004B3C99:         var_E4.Visible = False
  loc_004B3CD6:         Set var_E4 = EEAMX009.LblEspera
  loc_004B3CE1:         var_240 = var_E4
  loc_004B3CE7:         var_E4.Visible = True
  loc_004B3D24:         Set var_E4 = EEAMX009.LblNumReg
  loc_004B3D32:         var_240 = var_E4
  loc_004B3D38:         var_E4.Caption = global_00459E00
  loc_004B3D6F:         Set var_E4 = EEAMX009.LblNumReg
  loc_004B3D78:         var_240 = var_E4
  loc_004B3D7E:         var_E4.Refresh
  loc_004B3DBB:         Set var_E4 = EEAMX009.LblRegMes
  loc_004B3DC9:         var_240 = var_E4
  loc_004B3DCF:         var_E4.Caption = global_00459E00
  loc_004B3E06:         Set var_E4 = EEAMX009.LblRegMes
  loc_004B3E0F:         var_240 = var_E4
  loc_004B3E15:         var_E4.Refresh
  loc_004B3E69:         var_240 = global_004F1DB4
  loc_004B3E6F:         var_E4 = Global.Screen
  loc_004B3E92:         var_248 = var_E4
  loc_004B3E9A:         var_E4.MousePointer = CLng(11)
  loc_004B3EDF:         var_240 = global_004F115C
  loc_004B3EE7:         var_8168 = EEAMX009.Refresh
  loc_004B3F09:         var_E8(86) = ""
  loc_004B3F0D:         var_E8(88) = ""
  loc_004B3F1A:         var_816C = (var_50 = "**")
  loc_004B3F22:         If var_816C = 0 Then
  loc_004B3F34:           var_E8(80) = True
  loc_004B3F38:           var_E8(82) = True
  loc_004B3F3C:           Dim var_A0 As String * 2
  loc_004B3F56:           Dim var_88 As String * 2
  loc_004B3F67:           var_8170 = var_A0 & var_88
  loc_004B3F85:           var_8174 = .EEAMX009_GeneraMES(var_C8, var_58)
  loc_004B3FDB:           EEAMX009.DirLstLGP.Visible = True
  loc_004B401F:           EEAMX009.FilBoxLGP.Visible = True
  loc_004B4063:           EEAMX009.CmbTipArch.Visible = True
  loc_004B40A7:           EEAMX009.LblEspera.Visible = False
  loc_004B4117:           Global.Screen.MousePointer = 0
  loc_004B415C:           Set var_E8 = EEAMX009.TbxFecMov(0)
  loc_004B4182:           var_234 = var_E8.TabIndex
  loc_004B41B9:           var_E8(116) = var_234
  loc_004B4206:           EEAMX009.TbxFecMov(0).SetFocus
  loc_004B4261:           If EEAMX009.Refresh >= 0 Then GoTo loc_004B5114
  loc_004B4273:           CheckObj(EEAMX009.Refresh, global_004F115C, "‡)Ï]e“", 672)
  loc_004B427E:         End If
  loc_004B4284:         global_004F115C(80) = 0
  loc_004B428D:         global_004F115C(82) = &HFFFFFF
  loc_004B4293:         Dim var_A0 As String * 2
  loc_004B42AD:         Dim var_88 As String * 2
  loc_004B42D5:         Dim var_2C As String * 10
  loc_004B42FB:         var_818C = var_A0 & var_88 & var_2C & var_58
  loc_004B431C:         var_D4 = EEAMX009.EEAMX009_Genera_Reporte(global_004F115C)
  loc_004B4380:         If Not (var_234) Then
  loc_004B4397:           Set var_E4 = EEAMX009.DirLstLGP
  loc_004B43A2:           var_240 = var_E4
  loc_004B43A8:           var_E4.Visible = True
  loc_004B43E5:           Set var_E4 = EEAMX009.FilBoxLGP
  loc_004B43F0:           var_240 = var_E4
  loc_004B43F6:           var_E4.Visible = True
  loc_004B4433:           Set var_E4 = EEAMX009.CmbTipArch
  loc_004B443E:           var_240 = var_E4
  loc_004B4444:           var_E4.Visible = True
  loc_004B4481:           Set var_E4 = EEAMX009.LblEspera
  loc_004B448C:           var_240 = var_E4
  loc_004B4492:           var_E4.Visible = False
  loc_004B44C3:           If var_E4.Index Then
  loc_004B44C7:             Close #1
  loc_004B44CD:           End If
  loc_004B44D2:           If global_004F115C(86) Then
  loc_004B44DA:             1 = var_E4.Index
  loc_004B44F1:           End If
  loc_004B4519:           var_240 = global_004F1DB4
  loc_004B451F:           var_E4 = Global.Screen
  loc_004B4542:           var_248 = var_E4
  loc_004B4581:           Set var_E4 = EEAMX009.TbxFecMov
  loc_004B4593:           var_240 = var_E4
  loc_004B4599:           Set var_E8 = var_E4(0)
  loc_004B45C3:           var_248 = var_E8
  loc_004B4600:           global_004F115C(116) = var_E8.TabIndex
  loc_004B4633:           Dim var_A0 As String * 2
  loc_004B464D:           Dim var_88 As String * 2
  loc_004B4675:           Dim var_2C As String * 10
  loc_004B46E4:           var_81A4 = "CADENA ENVIADA " & Mid$(var_A0 & var_88 & var_2C & var_58, 3, var_100)
  loc_004B4705:           var_81A8 = .EEAMX009_MenConBarMsj(var_DC, &HFF)
  loc_004B47B7:           EEAMX009.TbxFecMov(0).SetFocus
  loc_004B4816:           If EEAMX009.Refresh >= 0 Then GoTo loc_004B508D
  loc_004B4828:           CheckObj(EEAMX009.Refresh, global_004F115C, "‡)Ï]e“", 672)
  loc_004B482F:         End If
  loc_004B4840:         Set var_E4 = EEAMX009.DirLstLGP
  loc_004B484B:         var_240 = var_E4
  loc_004B4851:         var_E4.Visible = True
  loc_004B488E:         Set var_E4 = EEAMX009.FilBoxLGP
  loc_004B4899:         var_240 = var_E4
  loc_004B489F:         var_E4.Visible = True
  loc_004B48DC:         Set var_E4 = EEAMX009.CmbTipArch
  loc_004B48E7:         var_240 = var_E4
  loc_004B48ED:         var_E4.Visible = True
  loc_004B492A:         Set var_E4 = EEAMX009.LblEspera
  loc_004B4935:         var_240 = var_E4
  loc_004B493B:         var_E4.Visible = False
  loc_004B498F:         var_240 = global_004F1DB4
  loc_004B4995:         var_E4 = Global.Screen
  loc_004B49B8:         var_248 = var_E4
  loc_004B49F7:         Set var_E4 = EEAMX009.LblMens
  loc_004B4A05:         var_240 = var_E4
  loc_004B4A0B:         var_E4.BackColor = CLng(12582912)
  loc_004B4A42:         Set var_E4 = EEAMX009.LblMens
  loc_004B4A50:         var_240 = var_E4
  loc_004B4A56:         var_E4.ForeColor = CLng(16777215)
  loc_004B4A8D:         Set var_E4 = EEAMX009.LblMens
  loc_004B4A9B:         var_240 = var_E4
  loc_004B4AA1:         var_E4.Caption = "EL REPORTE YA SE GENERO"
  loc_004B4AC7:         var_BC = 1
  loc_004B4AD9:         If var_BC <= 120 Then
  loc_004B4B0E:           var_240 = EEAMX009.LblMens
  loc_004B4B14:           var_2C0 = var_BC
  loc_004B4B27:           If global_004F1000 = 0 Then
  loc_004B4B31:           Else
  loc_004B4B42:           End If
  loc_004B4B62:           EEAMX009.LblMens.FontSize = ((var_2C0 / 6) + 1)
  loc_004B4B80:           CheckObj(Err.Number, var_240, global_00457038, 180)
  loc_004B4B9F:           Set var_E4 = EEAMX009.LblMens
  loc_004B4BA8:           var_240 = var_E4
  loc_004B4BAE:           var_E4.Refresh
  loc_004B4BEB:           var_BC = var_BC(1)
  loc_004B4BF1:           GoTo loc_004B4AD1
  loc_004B4BF6:         End If
  loc_004B4C07:         Set var_E4 = EEAMX009.LblMens
  loc_004B4C15:         var_240 = var_E4
  loc_004B4C1B:         var_E4.BackColor = CLng(12648447)
  loc_004B4C52:         Set var_E4 = EEAMX009.LblMens
  loc_004B4C5D:         var_240 = var_E4
  loc_004B4CC9:         Dim global_004F137C As String * 8
  loc_004B4CD7:         call var_81B8 = global_004F115C(global_00457C54, 000001F4h)
  loc_004B4D19:         global_004F137C = var_C0
  loc_004B4D2D:         var_120 = Trim(Mid(var_C0, 3, 4))
  loc_004B4D51:         var_1E8 = "09"
  loc_004B4D80:         var_170 = Format(Day(Date), "00")
  loc_004B4D97:         var_208 = ".T"
  loc_004B4DB7:         var_1A0 = "00"
  loc_004B4DD8:         var_218 = 1 = var_E4.AutoSize
  loc_004B4DE8:         var_1B0 = Format(1 = var_E4.AutoSize, 1)
  loc_004B4DF5:         If global_004F1068 Then
  loc_004B4DFB:           If global_004F1068 = 1 Then
  loc_004B4E0E:             var_240 = (global_004F106C - global_004F1068(20))
  loc_004B4E14:             If (global_004F106C - global_004F1068(20)) >= global_004F1068(16) Then
  loc_004B4E16:               var_81BC = Err.Raise
  loc_004B4E22:             End If
  loc_004B4E2B:           Else
  loc_004B4E2B:           End If
  loc_004B4E2B:           var_81C0 = Err.Raise
  loc_004B4E31:         End If
  loc_004B4E92:         var_81D4 = var_120 + var_1E8 + var_170 + var_208 + var_1B0
  loc_004B4EA0:         call var_81D8 = global_004F115C(00000001h, 00000001h)
  loc_004B4EB3:         global_004F1068(12) = global_004F1068(12) + var_81C0
  loc_004B4EB5:         ecx = var_81D8
  loc_004B4F3A:         1 = var_E4.AutoSize = 1 = var_E4.AutoSize + 1
  loc_004B4F57:         global_004F106C = global_004F106C + 1+1
  loc_004B4F61:         If var_E4.AutoSize >= 100 Then
  loc_004B4F68:         End If
  loc_004B4FA0:         var_1C8 = 1 = var_E4.AutoSize
  loc_004B4FB0:         var_81DC = Format$(1 = var_E4.AutoSize, "00")
  loc_004B4FBE:         call var_81E0 = global_004F115C(00000001h, 00000001h)
  loc_004B500C:         var_C0 = "C:\COBRANZA\INI\conver.ini"
  loc_004B5044:         var_44 = Proc_489D60("CurSerie", 8, "Parametros")
  loc_004B50AE:         EEAMX009.LblMens.FontSize = CLng(8)
  loc_004B50F2:         EEAMX009.LblMens.Refresh
  loc_004B510C:       End If
  loc_004B5114:     End If
  loc_004B5114:   End If
  loc_004B5114: End If
  loc_004B5114: ' Referenced from: 004B39EC
  loc_004B5114: ' Referenced from: 004B4279
  loc_004B5121: GoTo loc_004B51F8
  loc_004B51F7: Exit Sub
  loc_004B51F8: ' Referenced from: 004B5121
End Sub

Private Sub CmbTipArch_Click() '4B04B0
  Dim var_18 As Variant
  loc_004B051B: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004B054C: Set var_18 = EEAMX009.LblMens
  loc_004B0556: var_40 = var_18
  loc_004B0559: var_18.ForeColor = "s"
  loc_004B0587: Set var_18 = EEAMX009.LblMens
  loc_004B0591: var_40 = var_18
  loc_004B0594: var_18.Caption = global_004568F4
  loc_004B05C2: Set var_18 = EEAMX009.CmbTipArch
  loc_004B05CB: var_40 = var_18
  loc_004B0607: If (var_18.ListIndex = 0) Then
  loc_004B0617:   Set var_18 = EEAMX009.FilBoxLGP
  loc_004B0621:   var_40 = var_18
  loc_004B0624:   var_18.Pattern = "*.CTL"
  loc_004B067D:   EEAMX009.CmdDesco.Visible = EEAMX009.CmdDesco
  loc_004B0688: End If
  loc_004B0696: Set var_18 = EEAMX009.CmbTipArch
  loc_004B069F: var_40 = var_18
  loc_004B06DC: If (var_18.ListIndex = 1) Then
  loc_004B06EC:   Set var_18 = EEAMX009.FilBoxLGP
  loc_004B06F6:   var_40 = var_18
  loc_004B06F9:   var_18.Pattern = "*.MDB"
  loc_004B0752:   EEAMX009.CmdDesco.Visible = EEAMX009.CmdDesco
  loc_004B075D: End If
  loc_004B076B: Set var_18 = EEAMX009.CmbTipArch
  loc_004B0774: var_40 = var_18
  loc_004B07B1: If (var_18.ListIndex = 2) Then
  loc_004B07C5:   Set var_18 = EEAMX009.FilBoxLGP
  loc_004B07CF:   var_40 = var_18
  loc_004B07D2:   var_18.Pattern = "*.ZIP"
  loc_004B082C:   EEAMX009.CmdDesco.Visible = True
  loc_004B0837: End If
  loc_004B0849: GoTo loc_004B0855
  loc_004B0854: Exit Sub
  loc_004B0855: ' Referenced from: 004B0849
End Sub

Private Sub FilBoxLGP_Click() '4B8EA0
  loc_004B8F07: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004B8F42: EEAMX009.LblMens.ForeColor = "s"
  loc_004B8F7D: EEAMX009.LblMens.Caption = global_004568F4
  loc_004B8F9E: global_116 = &HFFFFFF
  loc_004B8FB0: GoTo loc_004B8FBC
  loc_004B8FBB: Exit Sub
  loc_004B8FBC: ' Referenced from: 004B8FB0
End Sub

Private Sub FilBoxLGP_DblClick() '4B8FE0
  Dim var_2C As Variant
  loc_004B90A2: var_1C = EEAMX009.FilBoxLGP.Path
  loc_004B9168: var_20 = Trim(EEAMX009.FilBoxLGP.List(EEAMX009.FilBoxLGP.ListIndex))
  loc_004B91BC: var_8008 = (var_20 = global_004568F4)
  loc_004B91CD: var_A4 = var_8008
  loc_004B9264: If CBool(var_8008 And (Ucase(Right(Trim(var_20), 3)) = "CTL")) Then
  loc_004B92DD:   If (Right(Trim(var_1C), 1) <> "\") Then
  loc_004B9334:     var_1C = Trim(var_1C) + "\"
  loc_004B9349:   End If
  loc_004B9394:   If EEAMX009.EEAMX009_CargaFechas(var_1C & var_20 & var_20) Then
  loc_004B93B5:     EEAMX009.ComFecMov.ListIndex = 0
  loc_004B9446:     var_24 = EEAMX009.ComFecMov.List(EEAMX009.ComFecMov.ListIndex)
  loc_004B94C9:     Set var_2C = EEAMX009.TbxFecMov(0)
  loc_004B9519:     var_D8 = var_2C
  loc_004B952D:     var_2C.Text = CStr(Mid(Trim(var_18), 1, 2))
  loc_004B95BA:     Set var_2C = EEAMX009.TbxFecMov(1)
  loc_004B960A:     var_DC = var_2C
  loc_004B961E:     var_2C.Text = CStr(Mid(Trim(var_18), 4, 2))
  loc_004B96FC:     EEAMX009.TbxFecMov(2).Text = CStr(Mid(Trim(var_18), 7, 4))
  loc_004B9746:   End If
  loc_004B9746: End If
  loc_004B9752: GoTo loc_004B978D
  loc_004B978C: Exit Sub
  loc_004B978D: ' Referenced from: 004B9752
End Sub

Private Sub CmdDesco_UnknownEvent_9 '4B5560
  Dim var_40 As Variant
  Dim var_FC As Variant
  Dim var_44 As EEAMX009.FilBoxLGP
  Dim var_104 As Variant
  Dim var_F8 As Variant
  loc_004B55F9: var_F8 = EEAMX009.FilBoxLGP.ListCount
  loc_004B5601: var_100 = var_F8
  loc_004B5668: If (var_F8 > 0) Then
  loc_004B56A8:   var_2C = EEAMX009.DirLstLGP.Path
  loc_004B56B0:   var_100 = var_2C
  loc_004B572C:   var_28 = Trim(var_2C)
  loc_004B5799:   If (Right$(var_28, 1) = "\") Then
  loc_004B57B6:     var_28 = var_28 & "\"
  loc_004B57BC:   End If
  loc_004B57F9:   var_F8 = EEAMX009.FilBoxLGP.ListIndex
  loc_004B5801:   var_100 = var_F8
  loc_004B5868:   If (var_F8 < 0) Then
  loc_004B586A:     GoTo loc_004B6C99
  loc_004B586F:   End If
  loc_004B5890:   var_FC = EEAMX009.DirLstLGP
  loc_004B58A7:   var_FC.Visible = False
  loc_004B58AF:   var_100 = var_FC
  loc_004B5918:   var_FC = EEAMX009.FilBoxLGP
  loc_004B592F:   var_FC.Visible = False
  loc_004B5937:   var_100 = var_FC
  loc_004B59A0:   var_FC = EEAMX009.LblEspera
  loc_004B59BA:   var_FC.Caption = global_004568F4
  loc_004B59BF:   var_100 = var_FC
  loc_004B5A25:   var_FC = EEAMX009.LblEspera
  loc_004B5A3C:   var_FC.Visible = True
  loc_004B5A44:   var_100 = var_FC
  loc_004B5AAD:   var_FC = EEAMX009.LblEspera
  loc_004B5AC2:   var_FC.Refresh
  loc_004B5ACA:   var_100 = var_FC.Refresh
  loc_004B5B21:   global_004F1234 = var_28
  loc_004B5B64:   var_F8 = EEAMX009.FilBoxLGP.ListIndex
  loc_004B5B6C:   var_100 = var_F8
  loc_004B5BE6:   var_2C = EEAMX009.FilBoxLGP.List(var_F8)
  loc_004B5BEE:   var_108 = var_2C
  loc_004B5CFC:   global_004F1220 = global_004F1234 + Ucase(Mid(Trim(var_2C), 1, 8)) + ".MDB"
  loc_004B5D85:   var_F8 = EEAMX009.FilBoxLGP.ListIndex
  loc_004B5D8D:   var_100 = var_F8
  loc_004B5E07:   var_2C = EEAMX009.FilBoxLGP.List(var_F8)
  loc_004B5E0F:   var_108 = var_2C
  loc_004B5FBE:   var_40 = var_15C.Screen
  loc_004B5FC3:   var_100 = var_40
  loc_004B6002:   var_104 = var_40
  loc_004B6019:   var_104.MousePointer = CLng(11)
  loc_004B601E:   var_108 = var_104
  loc_004B607E:   var_F8 = EEAMX009.EEAMX009_DescoArch(var_28)
  loc_004B6084:   var_FC = var_F8
  loc_004B60C9:   If var_F8 Then
  loc_004B60EA:     var_F8 = EEAMX009.EEAMX009_CargaTXTBD(global_004F1234 + Ucase(Mid(Trim(var_2C), 1, 8)) + ".CTL")
  loc_004B60F0:     var_FC = var_F8
  loc_004B6135:     If var_F8 Then
  loc_004B6192:       var_40 = var_170.Screen
  loc_004B6197:       var_100 = var_40
  loc_004B61D6:       var_104 = var_40
  loc_004B61ED:       var_104.MousePointer = CLng(11)
  loc_004B61F2:       var_108 = var_104
  loc_004B6240:       On Error Resume Next
  loc_004B6284:       var_FC = var_17C
  loc_004B6327:       var_100 = FrmLlenaTablas.Show 1, var_C0
  loc_004B636D:       DoEvents
  loc_004B6383:       If global_004F138C Then
  loc_004B63F5:         var_8044 = "LA BASE DE DATOS SE HA CARGADO EXITOSAMENTE" & vbCrLf & "OPRIME ACEPTAR Y REVISA CON LA LISTA DE ARCHIVOS" & vbCrLf
  loc_004B643A:         var_8050 = var_8044 & "QUE YA ESTA DISPONIBLE EL ARCHIVO DE FECHAS" & vbCrLf & "SI EXISTE ALGÙN PROBLEMA REPORTA A MESA DE AYUDA"
  loc_004B645F:         MsgBox(var_8050, 0, 10, 10, 10)
  loc_004B64A7:       Else
  loc_004B6513:         MsgBox("ERROR AL PREPARAR BASE DE DATOS PARA CONSULTAS", 16, 10, 10, 10)
  loc_004B6537:       End If
  loc_004B658E:       var_40 = var_184.Screen
  loc_004B6593:       var_100 = var_40
  loc_004B65D2:       var_104 = var_40
  loc_004B65EE:       var_108 = var_104
  loc_004B666F:       Set var_44 = EEAMX009.LblTitInst(0)
  loc_004B6674:       var_100 = var_44
  loc_004B66B3:       var_104 = var_44
  loc_004B66CD:       var_104.Caption = "Avance de Generación del Reporte"
  loc_004B66D2:       var_108 = var_104
  loc_004B6788:       EEAMX009.PnlCount.FloodPercent
  loc_004B67D3:       Set var_44 = EEAMX009.LblTitInst(0)
  loc_004B67D8:       var_100 = var_44
  loc_004B6817:       var_104 = var_44
  loc_004B682C:       var_104.Refresh
  loc_004B6834:       var_108 = var_104.Refresh
  loc_004B68A7:       var_FC = EEAMX009.CmbTipArch
  loc_004B68C6:       var_100 = var_FC
  loc_004B6924:       var_FC = EEAMX009.CmbTipArch_Click
  loc_004B6960:     End If
  loc_004B6965:   Else
  loc_004B69D1:     MsgBox("ERROR AL DESCOMPRIMIR RESPALDO DE BASE DE DATOS ", 16, 10, 10, 10)
  loc_004B69F5:   End If
  loc_004B69F5: End If
  loc_004B6A4C: var_40 = var_1A8.Screen
  loc_004B6A51: var_100 = var_40
  loc_004B6A90: var_104 = var_40
  loc_004B6AAC: var_108 = var_104
  loc_004B6B12: var_FC = EEAMX009.DirLstLGP
  loc_004B6B29: var_FC.Visible = True
  loc_004B6B31: var_100 = var_FC
  loc_004B6B9A: var_FC = EEAMX009.FilBoxLGP
  loc_004B6BB1: var_FC.Visible = True
  loc_004B6BB9: var_100 = var_FC
  loc_004B6C22: var_FC = EEAMX009.LblEspera
  loc_004B6C39: var_FC.Visible = False
  loc_004B6C41: var_100 = var_FC
  loc_004B6C93: global_116 = &HFFFFFF
  loc_004B6C99: ' Referenced from: 004B586A
  loc_004B6CA5: GoTo loc_004B6D0D
  loc_004B6D0C: Exit Sub
  loc_004B6D0D: ' Referenced from: 004B6CA5
End Sub

Private Sub ComFecMov_Click() '4B8100
  Dim var_20 As Variant
  loc_004B8174: Set var_20 = EEAMX009.LblMens
  loc_004B817E: var_7C = var_20
  loc_004B8181: var_20.BackColor = CLng(12648447)
  loc_004B81BF: EEAMX009.LblMens.ForeColor = "s"
  loc_004B81FA: EEAMX009.LblMens.Caption = global_004568F4
  loc_004B8279: var_1C = EEAMX009.ComFecMov.List(EEAMX009.ComFecMov.ListIndex)
  loc_004B834D: EEAMX009.TbxFecMov(0).Text = CStr(Mid(Trim(var_18), 1, 2))
  loc_004B842B: EEAMX009.TbxFecMov(1).Text = CStr(Mid(Trim(var_18), 4, 2))
  loc_004B8500: EEAMX009.TbxFecMov(2).Text = CStr(Mid(Trim(var_18), 7, 4))
  loc_004B8556: GoTo loc_004B8589
  loc_004B8588: Exit Sub
  loc_004B8589: ' Referenced from: 004B8556
End Sub

Private Sub chkPat_Click() '4ABC00
  Dim var_18 As Variant
  loc_004ABC68: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004ABC99: Set var_18 = EEAMX009.LblMens
  loc_004ABCA3: var_40 = var_18
  loc_004ABCA6: var_18.ForeColor = "s"
  loc_004ABCD4: Set var_18 = EEAMX009.LblMens
  loc_004ABCDE: var_40 = var_18
  loc_004ABCE1: var_18.Caption = global_004568F4
  loc_004ABD0F: Set var_18 = EEAMX009.chkPat
  loc_004ABD18: var_40 = var_18
  loc_004ABD55: If (var_18.Value = 1) Then
  loc_004ABD69:   Set var_18 = EEAMX009.ChkMod
  loc_004ABD70:   var_40 = var_18
  loc_004ABDCD:   EEAMX009.mskPat.Visible = True
  loc_004ABDF0:   Call EEAMX009.mskPat.SetFocus
  loc_004ABDFB: Else
  loc_004ABE2E:   EEAMX009.mskPat.Visible = EEAMX009.mskPat
  loc_004ABE34: End If
  loc_004ABE45: GoTo loc_004ABE51
  loc_004ABE50: Exit Sub
  loc_004ABE51: ' Referenced from: 004ABE45
End Sub

Private Sub chkPat_GotFocus() '4ABE80
  loc_004ABECD: If global_116 = True Then
  loc_004ABF11:   global_116 = EEAMX009.chkPat.TabIndex
  loc_004ABF1B: End If
  loc_004ABF29: GoTo loc_004ABF35
  loc_004ABF34: Exit Sub
  loc_004ABF35: ' Referenced from: 004ABF29
End Sub

Private Sub cmdIni_UnknownEvent_9 '4B6D50
  loc_004B6DBB: EEAMX009.ChkMod.Value = 0
  loc_004B6DF9: EEAMX009.ChkDoc.Value = 0
  loc_004B6E60: EEAMX009.TbxImp(0).Text = global_004568F4
  loc_004B6ED1: EEAMX009.TbxImp(1).Text = global_004568F4
  loc_004B6F19: EEAMX009.ChkImp.Value = 0
  loc_004B6F80: EEAMX009.TbxFecMov(0).Text = global_004568F4
  loc_004B6FF1: EEAMX009.TbxFecMov(1).Text = global_004568F4
  loc_004B7062: EEAMX009.TbxFecMov(2).Text = global_004568F4
  loc_004B70E1: If (EEAMX009.ComFecMov.ListCount > 0) Then
  loc_004B70FA:   EEAMX009.ComFecMov.ListIndex = 0
  loc_004B7121: End If
  loc_004B7151: EEAMX009.PnlCount.FloodPercent
  loc_004B717A: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004B71B7: EEAMX009.LblMens.ForeColor = "s"
  loc_004B71D4: global_116 = &HFFFFFF
  loc_004B71E6: GoTo loc_004B71FC
  loc_004B71FB: Exit Sub
  loc_004B71FC: ' Referenced from: 004B71E6
End Sub

Private Sub CmbAnioPer_Click(arg_C) '4ACA80
  Dim var_28 As ComboBox
  Dim var_38 As Variant
  loc_004ACC16: If (Trim(Trim$(CStr(Mid(EEAMX009.CmbAnioPer(arg_C).Text, 1, 4)))) <= "1996") Then
  loc_004ACC36:   If EEAMX009.EEAMX009_CargaMeses(0#, arg_C) >= 0 Then GoTo loc_004AD427
  loc_004ACC3C:   GoTo loc_004AD415
  loc_004ACC41: End If
  loc_004ACC48: Dim global_004F1360 As String * 3
  loc_004ACC7A: If (var_1C = "COP") + 1 Then
  loc_004ACCC2:   If (Trim(Trim$(CStr(Mid(EEAMX009.CmbAnioPer(arg_C).Text, 1, 4)))) <> "1997") Then
  loc_004ACCDA:     var_38 = EEAMX009.EEAMX009_CargaMeses(vbVariant, arg_C)
  loc_004ACCFF:   End If
  loc_004ACD2C:   var_8014 = (Trim(Trim$(CStr(Mid(EEAMX009.CmbAnioPer(arg_C).Text, 1, 4)))) = "1997")
  loc_004ACD41:   If var_8014 = 0 Then GoTo loc_004AD430
  loc_004ACD95:   EEAMX009.CmbMesPer(arg_C).Clear
  loc_004ACDE6:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004ACE24:   var_88 = var_28
  loc_004ACE33:   var_28.AddItem "01", 10
  loc_004ACE8A:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004ACEC8:   var_88 = var_28
  loc_004ACED7:   var_28.AddItem "02", 10
  loc_004ACF2E:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004ACF6C:   var_88 = var_28
  loc_004ACF7B:   var_28.AddItem "03", 10
  loc_004ACFD2:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004AD010:   var_88 = var_28
  loc_004AD01F:   var_28.AddItem "07", 10
  loc_004AD076:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004AD0B4:   var_88 = var_28
  loc_004AD0C3:   var_28.AddItem "08", 10
  loc_004AD11A:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004AD158:   var_88 = var_28
  loc_004AD167:   var_28.AddItem "09", 10
  loc_004AD1BE:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004AD1FC:   var_88 = var_28
  loc_004AD20B:   var_28.AddItem "10", 10
  loc_004AD262:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004AD2A0:   var_88 = var_28
  loc_004AD2AF:   var_28.AddItem "11", 10
  loc_004AD306:   Set var_28 = EEAMX009.CmbMesPer(arg_C)
  loc_004AD344:   var_88 = var_28
  loc_004AD353:   var_28.AddItem "12", 10
  loc_004AD3C6:   EEAMX009.CmbMesPer(arg_C).Refresh
  loc_004AD3F5: Else
  loc_004AD413:   If EEAMX009.EEAMX009_CargaMeses(0#, arg_C) < 0 Then
  loc_004AD421:     CheckObj(EEAMX009.EEAMX009_CargaMeses(0#, arg_C), Me, global_00457608, 1796)
  loc_004AD427:   End If
  loc_004AD430: End If
  loc_004AD476: EEAMX009.CmbMesPer(arg_C).ListIndex = 0
  loc_004AD4B3: GoTo loc_004AD4ED
  loc_004AD4EC: Exit Sub
  loc_004AD4ED: ' Referenced from: 004AD4B3
End Sub

Private Sub CmbAnioPer_GotFocus(arg_C) '4AD520
  loc_004AD576: If global_116 = True Then
  loc_004AD5F6:   global_116 = EEAMX009.CmbAnioPer(arg_C).TabIndex
  loc_004AD623:   var_8004 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR AÑO DEL PERIODO", 0)
  loc_004AD646: Else
  loc_004AD64C: End If
  loc_004AD68E: EEAMX009.CmbAnioPer(arg_C).SelStart = 0
  loc_004AD6FD: EEAMX009.CmbAnioPer(arg_C).SelLength = 0
  loc_004AD72A: global_118 = 1
  loc_004AD73C: GoTo loc_004AD75B
  loc_004AD75A: Exit Sub
  loc_004AD75B: ' Referenced from: 004AD73C
End Sub

Private Sub CmbAnioPer_KeyDown(KeyCode As Integer, Shift As Integer) '4AD780
  loc_004AD7E4: If Shift = CLng(37) Then
  loc_004AD874:   If (EEAMX009.CmbAnioPer(KeyCode).SelStart = 0) = 0 Then GoTo loc_004AD977
  loc_004AD883:   If global_118 = 1 Then
  loc_004AD89C:     SendKeys "+{TAB}", 10
  loc_004AD8AB:   End If
  loc_004AD8B4: Else
  loc_004AD8BE:   If 1 = CLng(39) Then
  loc_004AD94F:     If (EEAMX009.CmbAnioPer(KeyCode).SelStart = 4) Then
  loc_004AD968:       SendKeys "{TAB}", 10
  loc_004AD977:     End If
  loc_004AD97D:   End If
  loc_004AD97D: End If
  loc_004AD989: GoTo loc_004AD9A8
  loc_004AD9A7: Exit Sub
  loc_004AD9A8: ' Referenced from: 004AD989
End Sub

Private Sub CmbAnioPer_KeyPress(KeyAscii As Integer) '4AD9D0
  loc_004ADA28: If arg_10 = 13 Then
  loc_004ADA41:   SendKeys "{TAB}", 10
  loc_004ADA55: Else
  loc_004ADA7A:   If (((eax > 57) Or (eax < 48)) Or (eax < 32)) = 0 Then
  loc_004ADB0B:     If (EEAMX009.CmbAnioPer(KeyAscii).SelStart = 3) = 0 Then GoTo loc_004ADB3A
  loc_004ADB24:     SendKeys "{TAB}", 10
  loc_004ADB35:   Else
  loc_004ADB3A:   End If
  loc_004ADB3A: End If
  loc_004ADB42: GoTo loc_004ADB61
  loc_004ADB60: Exit Sub
  loc_004ADB61: ' Referenced from: 004ADB42
End Sub

Private Sub CmbAnioPer_LostFocus(arg_C) '4ADB90
  Dim var_2C As ComboBox
  Dim var_A0 As ComboBox
  Dim var_3C As Variant
  loc_004ADC2C: Set var_2C = EEAMX009.CmbAnioPer(arg_C)
  loc_004ADC5B: var_A0 = var_2C
  loc_004ADC97: var_A8 = (global_116 <> var_2C.TabIndex)
  loc_004ADCB3: If var_A8 = 0 Then
  loc_004ADD67:   var_1C = Trim$(CStr(Mid(EEAMX009.CmbAnioPer(arg_C).Text, 1, 4)))
  loc_004ADDE1:   var_20 = EEAMX009.CmbMesPer(arg_C).Text
  loc_004ADE25:   var_8008 = Len(var_1C)
  loc_004ADE2E:   If var_8008 = 4 Then
  loc_004ADE45:     var_800C = IsNumeric(var_1C)
  loc_004ADE4E:     If var_800C = 0 Then
  loc_004ADE78:       Set var_2C = EEAMX009.CmbAnioPer(arg_C)
  loc_004ADEC5:       var_C4 = var_2C
  loc_004ADED9:       var_2C.Text = Left$(var_1C, 1) & global_0045B658
  loc_004ADF5A:       var_20 = EEAMX009.CmbAnioPer(arg_C).Text
  loc_004ADF9A:     End If
  loc_004ADF9A:   End If
  loc_004ADFAB:   If (var_1C = global_004568F4) Then
  loc_004ADFC0:     var_74 = CInt(Me)
  loc_004ADFE4:     var_1C = CInt(0)
  loc_004ADFF4:     var_84 = (var_1C < 1980)
  loc_004AE04D:     If CBool((var_1C > Year(Date)) Or (var_1C < 1980)) Then
  loc_004AE079:       var_8024 = EEAMX009.EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004AE0DA:       EEAMX009.CmbAnioPer(arg_C).SetFocus
  loc_004AE101:     Else
  loc_004AE101:     End If
  loc_004AE127:     var_8028 = .EEAMX009_MenConBarMsj(var_20, 0)
  loc_004AE178:     If ((var_1C = global_004568F4) + 1 Or (Len(var_1C) < 4)) = 0 Then
  loc_004AE18F:       If (var_1C = "1996") <= 0 Then
  loc_004AE1B5:         If .EEAMX009_CargaMeses(0#, arg_C) >= 0 Then GoTo loc_004AE938
  loc_004AE1BB:         GoTo loc_004AE92A
  loc_004AE1C0:       End If
  loc_004AE1C7:       Dim global_004F1360 As String * 3
  loc_004AE1F9:       If (var_20 = "COP") + 1 Then
  loc_004AE212:         If (var_1C = "1997") Then
  loc_004AE230:           var_3C = .EEAMX009_CargaMeses(vbVariant, arg_C)
  loc_004AE251:         End If
  loc_004AE25E:         If (var_1C = "1997") Then GoTo loc_004AE941
  loc_004AE2A4:         EEAMX009.CmbMesPer(arg_C).Clear
  loc_004AE2F5:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE333:         var_A0 = var_2C
  loc_004AE342:         var_2C.AddItem "01", 10
  loc_004AE399:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE3D7:         var_A0 = var_2C
  loc_004AE3E6:         var_2C.AddItem "02", 10
  loc_004AE43D:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE47B:         var_A0 = var_2C
  loc_004AE48A:         var_2C.AddItem "03", 10
  loc_004AE4E1:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE51F:         var_A0 = var_2C
  loc_004AE52E:         var_2C.AddItem "07", 10
  loc_004AE585:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE5C3:         var_A0 = var_2C
  loc_004AE5D2:         var_2C.AddItem "08", 10
  loc_004AE629:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE667:         var_A0 = var_2C
  loc_004AE676:         var_2C.AddItem "09", 10
  loc_004AE6CD:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE70B:         var_A0 = var_2C
  loc_004AE71A:         var_2C.AddItem "10", 10
  loc_004AE771:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE7AF:         var_A0 = var_2C
  loc_004AE7BE:         var_2C.AddItem "11", 10
  loc_004AE815:         Set var_2C = EEAMX009.CmbMesPer(arg_C)
  loc_004AE853:         var_A0 = var_2C
  loc_004AE862:         var_2C.AddItem "12", 10
  loc_004AE8D5:         EEAMX009.CmbMesPer(arg_C).Refresh
  loc_004AE904:       Else
  loc_004AE928:         If .EEAMX009_CargaMeses(0#, arg_C) < 0 Then
  loc_004AE936:           CheckObj(.EEAMX009_CargaMeses(0#, arg_C), EEAMX009.CmbMesPer(arg_C), global_00457608, 1796)
  loc_004AE938:         End If
  loc_004AE941:       End If
  loc_004AE941:     End If
  loc_004AE985:     EEAMX009.CmbMesPer(arg_C).Text = var_18
  loc_004AE9A7:   End If
  loc_004AE9B2: End If
  loc_004AE9BE: GoTo loc_004AE9FC
  loc_004AE9FB: Exit Sub
  loc_004AE9FC: ' Referenced from: 004AE9BE
End Sub

Private Sub ChkPer_Click() '4ABF60
  Dim var_1C As Variant
  loc_004ABFC9: EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004AC012: EEAMX009.LblMens.ForeColor = "s"
  loc_004AC04D: EEAMX009.LblMens.Caption = global_004568F4
  loc_004AC0B9: If (EEAMX009.ChkPer.Value = 1) Then
  loc_004AC0FC:   EEAMX009.LblTitPer(0).Visible = True
  loc_004AC166:   EEAMX009.LblTitPer(1).Visible = True
  loc_004AC1D0:   EEAMX009.CmbMesPer(0).Visible = True
  loc_004AC23A:   EEAMX009.CmbAnioPer(0).Visible = True
  loc_004AC2A4:   EEAMX009.CmbMesPer(1).Visible = True
  loc_004AC30E:   EEAMX009.CmbAnioPer(1).Visible = True
  loc_004AC35C:   Set var_1C = EEAMX009.CmbMesPer(0)
  loc_004AC378:   var_1C.SetFocus
  loc_004AC382:   If var_1C.SetFocus >= 0 Then GoTo loc_004AC602
  loc_004AC397: Else
  loc_004AC3D4:   EEAMX009.CmbMesPer(0).Visible = False
  loc_004AC43E:   EEAMX009.CmbAnioPer(0).Visible = False
  loc_004AC4A8:   EEAMX009.CmbMesPer(1).Visible = False
  loc_004AC512:   EEAMX009.CmbAnioPer(1).Visible = False
  loc_004AC57C:   EEAMX009.LblTitPer(0).Visible = False
  loc_004AC5CA:   Set var_1C = EEAMX009.LblTitPer(1)
  loc_004AC5E8:   var_1C.Visible = False
  loc_004AC5F2:   If var_1C >= 0 Then GoTo loc_004AC602
  loc_004AC5FE: End If
  loc_004AC600: CheckObj(var_1C, var_1C, global_00457038, 156)
  loc_004AC61D: GoTo loc_004AC633
  loc_004AC632: Exit Sub
  loc_004AC633: ' Referenced from: 004AC61D
End Sub

Private Sub CmbMesPer_GotFocus(arg_C) '4AF210
  loc_004AF266: If global_116 = True Then
  loc_004AF2E6:   global_116 = EEAMX009.CmbMesPer(arg_C).TabIndex
  loc_004AF313:   var_8004 = EEAMX009.EEAMX009_MenConBarMsj("PROPORCIONAR PERIODO", 0)
  loc_004AF336: Else
  loc_004AF33C: End If
  loc_004AF37E: EEAMX009.CmbMesPer(arg_C).SelStart = 0
  loc_004AF3ED: EEAMX009.CmbMesPer(arg_C).SelLength = 0
  loc_004AF41A: global_118 = 1
  loc_004AF42C: GoTo loc_004AF44B
  loc_004AF44A: Exit Sub
  loc_004AF44B: ' Referenced from: 004AF42C
End Sub

Private Sub CmbMesPer_KeyDown(KeyCode As Integer, Shift As Integer) '4AF470
  loc_004AF4D4: If Shift = CLng(37) Then
  loc_004AF564:   If (EEAMX009.CmbMesPer(KeyCode).SelStart = 0) = 0 Then GoTo loc_004AF667
  loc_004AF573:   If global_118 = 1 Then
  loc_004AF58C:     SendKeys "+{TAB}", 10
  loc_004AF59B:   End If
  loc_004AF5A4: Else
  loc_004AF5AE:   If 1 = CLng(39) Then
  loc_004AF63F:     If (EEAMX009.CmbMesPer(KeyCode).SelStart = 2) Then
  loc_004AF658:       SendKeys "{TAB}", 10
  loc_004AF667:     End If
  loc_004AF66D:   End If
  loc_004AF66D: End If
  loc_004AF679: GoTo loc_004AF698
  loc_004AF697: Exit Sub
  loc_004AF698: ' Referenced from: 004AF679
End Sub

Private Sub CmbMesPer_KeyPress(KeyAscii As Integer) '4AF6C0
  loc_004AF739: If (((arg_10 > 57) Or (arg_10 < 48)) Or (arg_10 < 32)) = 0 Then
  loc_004AF7CA:   If (EEAMX009.CmbMesPer(KeyAscii).SelStart = 1) = 0 Then GoTo loc_004AF7F9
  loc_004AF7E3:   SendKeys "{TAB}", 10
  loc_004AF7F4: Else
  loc_004AF7F9: End If
  loc_004AF801: GoTo loc_004AF820
  loc_004AF81F: Exit Sub
  loc_004AF820: ' Referenced from: 004AF801
End Sub

Private Sub CmbMesPer_LostFocus(arg_C) '4AF840
  Dim var_3C As Variant
  loc_004AF92D: If (global_116 <> EEAMX009.CmbMesPer(arg_C).TabIndex) = 0 Then
  loc_004AF9A0:   var_18 = Trim$(EEAMX009.CmbMesPer(arg_C).Text)
  loc_004AF9CF:   If Len(var_18)(-2) = 0 Then
  loc_004AF9E6:     var_800C = IsNumeric(var_18)
  loc_004AF9EF:     If var_800C = 0 Then
  loc_004AFA6A:       EEAMX009.CmbMesPer(arg_C).Text = Left$(var_18, 1) & global_0045B658
  loc_004AFAEB:       var_1C = EEAMX009.CmbMesPer(arg_C).Text
  loc_004AFB2B:     End If
  loc_004AFB2B:   End If
  loc_004AFB3C:   If (var_18 = global_004568F4) Then
  loc_004AFB51:     var_3C = EEAMX009.EEAMX009_ValMesPer(var_18, arg_C)
  loc_004AFB6E:     If var_3C = 0 Then
  loc_004AFB94:       var_801C = EEAMX009.EEAMX009_MenConBarMsj("PERIODO INVALIDO", &HFF)
  loc_004AFBF2:       EEAMX009.CmbMesPer(arg_C).SetFocus
  loc_004AFC21:     Else
  loc_004AFC21:     End If
  loc_004AFC41:     var_8020 = .EEAMX009_MenConBarMsj(var_1C, 0)
  loc_004AFC68:   End If
  loc_004AFC68: End If
  loc_004AFC74: GoTo loc_004AFC9A
  loc_004AFC99: Exit Sub
  loc_004AFC9A: ' Referenced from: 004AFC74
End Sub

Private Sub CmdTer_UnknownEvent_9 '4B7900
  loc_004B7952: If global_004F106C >= 1 Then
  loc_004B79B9:   var_8008 = FormVisor.Show 2, var_24
  loc_004B79D9: End If
  loc_004B7A24: var_8014 = Global.Unload EEAMX009
  loc_004B7A4D: GoTo loc_004B7A59
  loc_004B7A58: Exit Sub
  loc_004B7A59: ' Referenced from: 004B7A4D
End Sub

Public Function EEAMX009_CargaAnios() '4AC660
  Dim var_38 As ComboBox
  loc_004AC6F8: EEAMX009.CmbAnioPer(0).Clear
  loc_004AC76A: EEAMX009.CmbAnioPer(1).Clear
  loc_004AC7B9: var_28 = CInt(Year(Date))
  loc_004AC7D9: If edi <= 6 Then
  loc_004AC7FE:   Set var_38 = EEAMX009.CmbAnioPer(0)
  loc_004AC833:   var_40 = (var_28 - edi)
  loc_004AC85E:   var_AC = var_38
  loc_004AC88E:   var_38.AddItem CStr(Trim(Str((var_28 - edi)))), 10
  loc_004AC8FE:   Set var_38 = EEAMX009.CmbAnioPer(1)
  loc_004AC933:   var_40 = (var_28 - edi)
  loc_004AC95E:   var_B0 = var_38
  loc_004AC98E:   var_38.AddItem CStr(Trim(Str((var_28 - edi)))), 10
  loc_004AC9EF:   GoTo loc_004AC7D1
  loc_004AC9F4: End If
  loc_004AC9F9: GoTo loc_004ACA3B
  loc_004AC9FF: If var_4 <> 4 Then
  loc_004ACA0A: End If
  loc_004ACA3A: Exit Function
  loc_004ACA3B: ' Referenced from: 004AC9F9
End Function

Public Sub EEAMX009_ObtPeriodos(mes1, Anio1, Mes2, Anio2, PerIni, PerFin) '4B52A0
  loc_004B52E8: PerIni = "******"
  loc_004B52F2: PerFin = "******"
  loc_004B5305: var_8004 = (mes1 = "**")
  loc_004B5323: If (Anio1 = "****") + 1 Then
  loc_004B534F:   If ((mes1 = "**") + 1 Or (Anio1 = "****")) Then
  loc_004B5360:     var_8014 = (Mes2 = "**")
  loc_004B537E:     If (Anio2 = "****") + 1 Then
  loc_004B53AD:       If ((Mes2 = "**") + 1 Or (Anio2 = "****")) Then
  loc_004B53BB:         var_8024 = (mes1 = "**")
  loc_004B53EB:         var_802C = (Mes2 = "**")
  loc_004B5412:         If (((mes1 = "**") Or (Anio1 = "****")) Or ((Mes2 = "**") Or (Anio2 = "****"))) Then
  loc_004B5423:           var_8034 = (mes1 = "**")
  loc_004B5451:           var_803C = (Mes2 = "**")
  loc_004B5456:           var_2C = (Anio1 = "****") + 1
  loc_004B547C:           If (Anio2 = "****") + 1 Then GoTo loc_004B551A
  loc_004B54A1:           var_8048 = CLng(Anio1 & mes1)
  loc_004B54D1:           var_1C = CLng(Anio2 & Mes2)
  loc_004B54DC:           If var_8048 Then
  loc_004B54E3:             If var_1C Then
  loc_004B54E7:               If var_8048 <= var_1C Then
  loc_004B54FC:                 PerIni = Anio1 & mes1
  loc_004B5511:                 PerFin = Anio2 & Mes2
  loc_004B5513:               End If
  loc_004B5513:             End If
  loc_004B5513:           End If
  loc_004B5513:         End If
  loc_004B5513:       End If
  loc_004B5513:     End If
  loc_004B5513:   End If
  loc_004B5513: End If
  loc_004B5518: GoTo loc_004B5532
  loc_004B5526: GoTo loc_004B54EC
  loc_004B5531: Exit Sub
  loc_004B5532: ' Referenced from: 004B5518
End Sub

Public Function EEAMX009_ValFecMov(cadfech) '4B7230
  Dim Me As Variant
  loc_004B730C: If Len(cadfech) >= 10 Then
  loc_004B741A:   var_2C = Trim(Mid(cadfech, 1, 2)) + Trim(Mid(cadfech, 4, 2)) + Trim(Mid(cadfech, 7, 4))
  loc_004B7478:   Dim var_2C As String * 10
  loc_004B749E:   var_2C = var_2C
  loc_004B74AA:   Dim var_2C As String * 10
  loc_004B74B1:   var_30 = var_2C
  loc_004B74B8:   var_8018 = CLng(var_30)
  loc_004B74F0:   If (CLng(var_30) And (Proc_489E90(Me, 0, 0) <= 0)) Then
  loc_004B7506:     Dim var_2C As String * 10
  loc_004B7517:     var_30 = var_2C
  loc_004B7549:     var_2C = var_30
  loc_004B7553:     var_801C = CInt(Mid(var_30, 5, 4))
  loc_004B7559:     var_12C = var_801C
  loc_004B7598:     Dim var_2C As String * 10
  loc_004B75A3:     var_34 = var_2C
  loc_004B75DB:     var_2C = var_34
  loc_004B75E8:     var_8020 = CInt(Mid(var_34, 5, 4))
  loc_004B75FF:     var_15C = (var_8020 < 1980)
  loc_004B763E:     var_18C = CBool((var_801C > Year(Date)) Or (var_8020 < 1980))
  loc_004B7696:     If var_18C = 0 Then
  loc_004B77ED:       var_18 = Trim(Mid(cadfech, 1, 2)) + "/" + Trim(Mid(cadfech, 4, 2)) + "/" + Trim(Mid(cadfech, 7, 4))
  loc_004B7849:     End If
  loc_004B7849:   End If
  loc_004B7849: End If
  loc_004B784E: GoTo loc_004B78CA
  loc_004B7854: If var_4 <> 4 Then
  loc_004B785F: End If
  loc_004B78C9: Exit Function
  loc_004B78CA: ' Referenced from: 004B784E
End Function

Public Function EEAMX009_CargaMeses(Fin, indCom) '4B7A80
  loc_004B7BA1: var_18 = Trim$(CStr(Mid(EEAMX009.CmbAnioPer(indCom).Text, 1, 4)))
  loc_004B7C1D: EEAMX009.CmbMesPer(indCom).Clear
  loc_004B7CA2: var_30 = CInt(Year(Date))
  loc_004B7CD0: If 1 <= Fin Then
  loc_004B7D01:   var_7C = var_34
  loc_004B7D99:   EEAMX009.CmbMesPer(indCom).AddItem CStr(Format(var_34, "00")), 10
  loc_004B7DF1:   If var_30 = CInt(var_A0) Then
  loc_004B7DFB:     If var_34 >= CInt(Month(Date)) Then GoTo loc_004B7E11
  loc_004B7DFD:   End If
  loc_004B7E0C:   GoTo loc_004B7CC6
  loc_004B7E11: End If
  loc_004B7E16: GoTo loc_004B7E5F
  loc_004B7E1C: If var_4 <> 4 Then
  loc_004B7E27: End If
  loc_004B7E5E: Exit Function
  loc_004B7E5F: ' Referenced from: 004B7E16
End Function

Public Function EEAMX009_ValMesPer(Mes, indCom) '4B7EB0
  loc_004B7F1B: If (Mes = global_004568F4) Then
  loc_004B7FAC:   If (var_18 < EEAMX009.CmbMesPer(indCom).ListCount) Then
  loc_004B807B:     If (Mes <> Trim(EEAMX009.CmbMesPer(indCom).List(var_18))) Then
  loc_004B8087:       var_18 = var_18(1)
  loc_004B808A:       GoTo loc_004B7F27
  loc_004B808F:     End If
  loc_004B8096:   End If
  loc_004B8096: End If
  loc_004B809B: GoTo loc_004B80CE
  loc_004B80CD: Exit Function
  loc_004B80CE: ' Referenced from: 004B809B
End Function

Public Sub EEAMX009_MenConBarMsj(cadmen, colmen) '4BA020
  Dim colmen As Variant
  loc_004BA07B: EEAMX009.LblMens.ForeColor = colmen
  loc_004BA0B9: EEAMX009.LblMens.Caption = cadmen
  loc_004BA0DB: GoTo loc_004BA0E7
  loc_004BA0E6: Exit Sub
  loc_004BA0E7: ' Referenced from: 004BA0DB
End Sub

Public Function EEAMX009_ValPatron(REGPAT) '4BA350
  Dim var_20 As Variant
  Dim Me As Variant
  loc_004BA3D3: If (Len(Trim$(REGPAT)) <> 10) Then
  loc_004BA3E1: Else
  loc_004BA3F1:   var_18 = Left$(REGPAT, 1)
  loc_004BA421:   If (((var_18 = global_0045BA38) > 0) Or ((var_18 = global_00459DC0) < 0)) = 0 Then
  loc_004BA437:     var_18 = Left$(REGPAT, 3)
  loc_004BA467:     If ((var_18 = "A01") >= 0) = ((var_18 = "Z99") <= 0) Then
  loc_004BA475:     Else
  loc_004BA4B5:       If (Mid$(REGPAT, 4, 5) = "10000") <= 0 Then
  loc_004BA4C3:       Else
  loc_004BA4DE:         var_18 = Mid$(REGPAT, 9, 2)
  loc_004BA51C:         If Proc_48A160("10-21,27-36,40,42-44", Me, 0) Then
  loc_004BA52E:         Else
  loc_004BA53E:           var_18 = Left$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 2)
  loc_004BA573:           If Proc_48A160("01-06,08,09,11-17,21-24,27,31-36,41-43,48,49,51-55,61,62,65-68,71-73,78,81-85", 0, 0) Then
  loc_004BA581:           Else
  loc_004BA5B6:             var_8040 = (Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 3, 2) = "30")
  loc_004BA5BE:             If var_8040 = 0 Then
  loc_004BA5F7:               If (Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 9, 2) = "30") Then
  loc_004BA605:               Else
  loc_004BA605:               End If
  loc_004BA641:               var_8054 = (Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 3, 1) = Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 10, 1))
  loc_004BA677:               If var_8054 Then
  loc_004BA698:                 var_18 = Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 9, 2)
  loc_004BA6D6:                 If Proc_48A160("30,32,34,35", , ) Then
  loc_004BA6E4:                 Else
  loc_004BA6E4:                 End If
  loc_004BA706:                 var_20 = Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 5, 4)
  loc_004BA72F:                 If CInt() + 1 Then
  loc_004BA73A:                 Else
  loc_004BA759:                   var_18 = Mid$(Proc_48A160("10-21,27-36,40,42-44", Me, 0), 9, 2)
  loc_004BA77A:                   var_8068 = Proc_48A160("10-15,17-19,30,32,34,35", , )
  loc_004BA79E:                   If var_8068 = 0 Then
  loc_004BA7A0:                   End If
  loc_004BA7A7:                 End If
  loc_004BA7A7:               End If
  loc_004BA7A7:             End If
  loc_004BA7A7:           End If
  loc_004BA7A7:         End If
  loc_004BA7A7:       End If
  loc_004BA7A7:     End If
  loc_004BA7A7:   End If
  loc_004BA7A7: End If
  loc_004BA7AC: GoTo loc_004BA7D2
  loc_004BA7D1: Exit Function
  loc_004BA7D2: ' Referenced from: 004BA7AC
End Function

Public Function FileExists(path) '4BB240
  Dim var_2C As Err
  Dim var_54 As Err
  loc_004BB2B0: var_28 = FreeFile(10)
  loc_004BB2C6: On Error Resume Next
  loc_004BB2E2: Open path For Input As #var_28 Len = -1
  loc_004BB2EF: var_8008 = Err
  loc_004BB2FA: Set var_2C = Err
  loc_004BB300: var_54 = var_2C
  loc_004BB310: var_50 = var_2C.Number
  loc_004BB315: var_58 = var_50
  loc_004BB35D: If (var_50 = 0) Then
  loc_004BB36E: Else
  loc_004BB37B: End If
  loc_004BB387: Close #var_28
  loc_004BB392: GoTo loc_004BB3A7
  loc_004BB3A6: Exit Function
  loc_004BB3A7: ' Referenced from: 004BB392
End Function

Public Function EEAMX009_DescoArch(pathArch) '4BB3E0
  Dim var_64 As Variant
  Dim var_E8 As Variant
  Dim Me As Variant
  loc_004BB48B: If (Right$(pathArch, 1) = "\") Then
  loc_004BB4AA:   pathArch = pathArch & "\"
  loc_004BB4B0: End If
  loc_004BB4BF: var_28 = pathArch
  loc_004BB4EE: DoEvents
  loc_004BB533: var_58 = EEAMX009.FilBoxLGP.List(0)
  loc_004BB53B: var_EC = var_58
  loc_004BB600: var_54 = Ucase(Mid(Trim$(var_58), 1, 12))
  loc_004BB69A: var_24 = Mid(var_54, 1, 8)
  loc_004BB743: If (Dir(var_28 & var_24 & "*.mdb", 0) = global_004568F4) Then
  loc_004BB77F:   Kill var_28 & var_24 & "*.mdb"
  loc_004BB797: End If
  loc_004BB824: If (Dir(var_28 & var_24 & "*.ldb", 0) = global_004568F4) Then
  loc_004BB860:   Kill var_28 & var_24 & "*.ldb"
  loc_004BB878: End If
  loc_004BB905: If (Dir(var_28 & var_24 & "*.ctl", 0) = global_004568F4) Then
  loc_004BB941:   Kill var_28 & var_24 & "*.ctl"
  loc_004BB959: End If
  loc_004BB968: var_58 = "C:\TEMPO.BND"
  loc_004BB990: If Proc_491890(Me, 0, 0) Then
  loc_004BB9C0:   Kill "C:\TEMPO.BND"
  loc_004BB9CF: End If
  loc_004BBA53: On Error GoTo loc_004BBE86
  loc_004BBA7C: var_8078 = Shell("c:\descomp.bat " & var_28 & var_54 & global_0045B658 & pathArch, 6)
  loc_004BBA99: If CInt(NO_FPU_STACK_VALUES) Then
  loc_004BBAC0:   var_E8 = EEAMX009.LblEspera
  loc_004BBADA:   var_E8.Caption = "En este momento se lleva a cabo la descompresión de la Información de Respaldo"
  loc_004BBADF:   var_EC = var_E8
  loc_004BBB45:   var_E8 = EEAMX009.LblEspera
  loc_004BBB5A:   var_E8.Refresh
  loc_004BBB62:   var_EC = var_E8.Refresh
  loc_004BBBB9:   var_58 = "c:\TEMPO.BND"
  loc_004BBBE4:   If Not (Proc_491890(1, 0, fs:[00000000h])) Then
  loc_004BBBED:     DoEvents
  loc_004BBBF3:     GoTo loc_004BBBAA
  loc_004BBBF5:   End If
  loc_004BBC16:   var_E8 = EEAMX009.LblEspera
  loc_004BBC30:   var_E8.Caption = global_004568F4
  loc_004BBC35:   var_EC = var_E8
  loc_004BBC9B:   var_E8 = EEAMX009.LblEspera
  loc_004BBCB0:   var_E8.Refresh
  loc_004BBCB8:   var_EC = var_E8.Refresh
  loc_004BBD0F:   var_58 = "C:\TEMPO.BND"
  loc_004BBD37:   If Proc_491890(, , ) Then
  loc_004BBD42:     On Error Resume Next
  loc_004BBD70:     var_E8 = EEAMX009.EliminaArchivo("C:\TEMPO.BND")
  loc_004BBDB5:   End If
  loc_004BBDBA: Else
  loc_004BBE38:   MsgBox("ERROR AL INTENTAR DESCOMPACTAR ARCHIVOS ", 0, 10, 10, 10)
  loc_004BBE67: Else
  loc_004BBE7B:   DoEvents
  loc_004BBE81:   GoTo loc_004BBFC2
  loc_004BBEC6:   var_808C = Err
  loc_004BBED1:   Set var_64 = Err
  loc_004BBED7:   var_E8 = var_64
  loc_004BBEF0:   var_58 = var_64.Description
  loc_004BBEF5:   var_EC = var_58
  loc_004BBF7C:   MsgBox("ERROR  AL EJECUTAR ARCHIVO DE DESCOMPRESIÓN" & vbCrLf & var_58, 0, 10, 10, 10)
  loc_004BBFC2: End If
  loc_004BBFC2: ' Referenced from: 004BBE81
  loc_004BBFC2: Exit Sub
  loc_004BBFCE: GoTo loc_004BC015
  loc_004BC014: Exit Function
  loc_004BC015: ' Referenced from: 004BBFCE
End Function

Public Function EEAMX009_Genera_Reporte(cadRep) '4BCB60
  Dim var_24 As Variant
  Dim var_20 As Variant
  loc_004BCBAD: var_8004 = EEAMX009.EEAMX009_IniCifras(cadRep)
  loc_004BCBD8: If global_82 Then
  loc_004BCBDD:   var_8008 = EEAMX009.EEAMX009_CargaTablaMes
  loc_004BCBFC:   var_24 = EEAMX009.EEAMX009_Abre_Archivos
  loc_004BCC19:   If var_24 = 0 Then GoTo loc_004BCE1B
  loc_004BCC1F: End If
  loc_004BCC27: var_20 = EEAMX009.EEAMX009_Arma_Cursor(cadRep)
  loc_004BCC7A: If EEAMX009.EEAMX009_Abre_Cursor(0) Then
  loc_004BCC7F:   var_800C = EEAMX009.EEAMX009_Lee_Cursor
  loc_004BCC9F:   If global_1364 <> 1 Then GoTo loc_004BCD00
  loc_004BCCA6:   If global_88 Then
  loc_004BCCAA:     Close #1
  loc_004BCCB0:   End If
  loc_004BCCB5:   If global_86 = 0 Then GoTo loc_004BCE1B
  loc_004BCCC1:   Me = global_96.UnkVCall_00000058h
  loc_004BCCFB:   GoTo loc_004BCE1B
  loc_004BCD05:   If global_84 = 0 Then
  loc_004BCD0E:     var_8010 = EEAMX009.EEAMX009_ArmaDetalle
  loc_004BCD29:     var_8014 = EEAMX009.EEAMX009_Imprime_Linea
  loc_004BCD47:     global_104.UnkVCall_000000ECh
  loc_004BCD67:     var_8018 = EEAMX009.EEAMX009_Lee_Cursor
  loc_004BCD89:     var_24 = global_104.UnkVCall_00000034h
  loc_004BCDA5:     If var_24 = 0 Then GoTo loc_004BCD0B
  loc_004BCDB0:     If global_84 = 0 Then
  loc_004BCDB7:       If global_80 Then GoTo loc_004BCE14
  loc_004BCDBC:       var_801C = EEAMX009.EEAMX009_Escribe_Totales
  loc_004BCDD4:     End If
  loc_004BCDD4:   End If
  loc_004BCDD9:   If global_80 = 0 Then
  loc_004BCDE0:     If global_88 Then
  loc_004BCDE4:       Close #1
  loc_004BCDEA:     End If
  loc_004BCDEF:     If global_86 Then
  loc_004BCDF7:       global_104 = global_96.UnkVCall_00000058h
  loc_004BCE0E:     End If
  loc_004BCE14:   End If
  loc_004BCE1B: End If
  loc_004BCE1B: ' Referenced from: 004BCCFB
  loc_004BCE20: GoTo loc_004BCE2C
  loc_004BCE2B: Exit Function
  loc_004BCE2C: ' Referenced from: 004BCE20
End Function

Public Function EEAMX009_Abre_Archivos() '4BCE60
  Dim var_64 As Variant
  Dim var_1D4 As Variant
  loc_004BCED0: Dim global_252 As String * 2
  loc_004BCEDB: var_5C = global_252
  loc_004BCF1F: If global_108 Then
  loc_004BCF28:   If global_108 = 1 Then
  loc_004BCF46:     If (CInt(Me) - global_108(20)) < global_108(16) Then
  loc_004BCF54:     Else
  loc_004BCF5A:       var_20C = Err.Raise
  loc_004BCF60:     End If
  loc_004BCF69:     var_210 = (CInt(Me) - global_108(20))
  loc_004BCF71:   Else
  loc_004BCF71:   End If
  loc_004BCF77:   var_210 = Err.Raise
  loc_004BCF7D: End If
  loc_004BCF83: var_58(12) = global_108(12) + var_210
  loc_004BCFE5: var_54 = Trim(Mid(global_108(12)+var_210, 1, 3))
  loc_004BD029: Dim global_256 As String * 4
  loc_004BD034: var_5C = global_256
  loc_004BD077: global_256 = var_5C
  loc_004BD0A5: var_4C = Trim(Mid(var_5C, 3, 2))
  loc_004BD142: var_1CC = EEAMX009.ComMod.ListIndex
  loc_004BD14A: var_1D8 = var_1CC
  loc_004BD1A4: var_5C = EEAMX009.ComMod.List(var_1CC)
  loc_004BD1AC: var_1E0 = var_5C
  loc_004BD24A: Dim var_4C As String * 2
  loc_004BD344: Dim var_54 As String * 3
  loc_004BD378: var_48 = "C:\VREP\LGP" + Ucase(Trim(var_54)) + "\ANIO" + var_4C + "\" & var_54 & "\"
  loc_004BD401: var_1CC = EEAMX009.ComMod.ListIndex
  loc_004BD409: var_1D8 = var_1CC
  loc_004BD463: var_5C = EEAMX009.ComMod.List(var_1CC)
  loc_004BD46B: var_1E0 = var_5C
  loc_004BD4F5: Dim var_54 As String * 3
  loc_004BD511: Dim var_4C As String * 2
  loc_004BD68C: var_1CC = EEAMX009.ComMod.ListIndex
  loc_004BD694: var_1D8 = var_1CC
  loc_004BD6EE: var_5C = EEAMX009.ComMod.List(var_1CC)
  loc_004BD6F6: var_1E0 = var_5C
  loc_004BD780: Dim var_54 As String * 3
  loc_004BD79C: Dim var_4C As String * 2
  loc_004BD840: var_3C = Trim(var_48 + Ucase(Trim(var_5C)) + var_54 + var_4C + ".LDB")
  loc_004BD917: var_1CC = EEAMX009.ComMod.ListIndex
  loc_004BD91F: var_1D8 = var_1CC
  loc_004BD979: var_5C = EEAMX009.ComMod.List(var_1CC)
  loc_004BD981: var_1E0 = var_5C
  loc_004BDA0B: Dim var_54 As String * 3
  loc_004BDA27: Dim var_4C As String * 2
  loc_004BDB3B: On Error GoTo loc_004BED27
  loc_004BDBA1: If (Dir(Trim(var_48 + Ucase(Trim(Dir(Trim(var_48 + Ucase(Trim(var_5C)) + var_54 + var_4C + ".CTL"), 0))) + var_54 + var_4C + ".CTL"), 0) = global_004568F4) + 1 Then
  loc_004BDC63:   MsgBox("NO SE ENCONTRO ARCHIVO DE CONTROL DE FECHAS" + Chr(10) + "NO SE PODRÁ CONTAR CON UNA LISTA DE ESTAS", 48, 10, 10, 10)
  loc_004BDC9B: End If
  loc_004BDCA5: var_150 = Trim(var_48 + Ucase(Trim(Dir(Trim(var_48 + Ucase(Trim(var_5C)) + var_54 + var_4C + ".CTL"), 0))) + var_54 + var_4C + ".MDB")
  loc_004BDCFB: If (Dir(var_150, 0) = global_004568F4) + 1 Then
  loc_004BDDBD:   MsgBox("NO EXISTE BASE DE DATOS PRINCIPAL " + Chr(10) + "PARA FECHA SOLICITADA", 16, 10, 10, 10)
  loc_004BDDFA: Else
  loc_004BDE41:   var_1D4 = (Dir(var_3C, 0) = global_004568F4) + 1
  loc_004BDEB6:   Dim global_004F137C As String * 8
  loc_004BDEFF:   global_004F137C = var_5C
  loc_004BDFB4:   var_1B0 = global_264
  loc_004BE06C:   global_92 = "C:\MREPOR\" + Trim(Mid(var_5C, 3, 4)) + "09" + Format(Day(Date), "00") + ".T" + Format(global_264, "00")
  loc_004BE0FF:   If global_82 Then
  loc_004BE10E:     On Error GoTo loc_004BF0D7
  loc_004BE160:     global_1368 = Trim(global_004F1040)
  loc_004BE1C4:     global_1372 = Trim(global_004F1044)
  loc_004BE23D:     If (Dir(Trim("C:\MREPOR\" + Ucase(Trim(Trim(global_004F1044))) + var_54 + var_4C + ".CTL"), 0) = global_004568F4) Then
  loc_004BE257:       Open Trim("C:\MREPOR\" + Ucase(Trim(Dir(Trim("C:\MREPOR\" + Ucase(Trim(Trim(global_004F1044))) + var_54 + var_4C + ".CTL"), 0))) + var_54 + var_4C + ".CTL") For Unknown As #1 Len = -1
  loc_004BE26F:       Input 1, var_44
  loc_004BE29A:       var_28 = InStr(1, var_44, "COBR", 0)
  loc_004BE2AA:       If var_28 > 0 Then
  loc_004BE32A:         global_004F1040 = Trim(Mid(var_44, var_28(2), 2))
  loc_004BE3C7:         global_004F1044 = Trim(Mid(var_44, var_28(2), 2))
  loc_004BE3F1:         var_80CC = Proc_490370(1, 1, 0)
  loc_004BE3FB:         If var_80CC = 0 Then
  loc_004BE47F:           MsgBox("NO HAY DESCRIPCION PARA SUBDELEGACIÒN A REPORTE", 0, 10, 10, 10)
  loc_004BE4A9:         End If
  loc_004BE4AE:       Else
  loc_004BE52C:         MsgBox("NO HAY DESCRIPCION PARA SUBDELEGACIÒN A REPORTE", 0, 10, 10, 10)
  loc_004BE556:       End If
  loc_004BE55F:       Close #1
  loc_004BE565:     End If
  loc_004BE57E:     global_288 = global_004F1040
  loc_004BE59E:     global_352 = global_004F1044
  loc_004BE60C:     global_292 = Mid(global_004F1088, 4, 39)
  loc_004BE699:     global_356 = Mid(global_004F1084, 4, 39)
  loc_004BE6D3:     global_004F1040 = global_1368
  loc_004BE6EE:     global_004F1044 = global_1372
  loc_004BE70A:     var_1D4 = EEAMX009.EEAMX009_ArmaEnca
  loc_004BE760:     Open global_92 For Unknown As #1 Len = 133
  loc_004BE770:     global_88 = &HFFFFFF
  loc_004BE77F:     On Error GoTo loc_004BEF32
  loc_004BE7DC:     var_64 = var_238.UnkVCall_0000003Ch
  loc_004BE7E1:     var_1D8 = var_64
  loc_004BE881:     var_1E0 = var_64.UnkVCall_00000030h
  loc_004BE9CD:     var_1D4 = EEAMX009.ComMod.Index
  loc_004BEA14:     Set global_96 = var_64
  loc_004BEA2D:     global_86 = &HFFFFFF
  loc_004BEA43:     If global_80 Then
  loc_004BEA4F:       global_82 = 0
  loc_004BEA55:     End If
  loc_004BEA55:   End If
  loc_004BEAC6:   var_1CC = EEAMX009.ComMod.ListIndex
  loc_004BEACE:   var_1D8 = var_1CC
  loc_004BEB28:   var_5C = EEAMX009.ComMod.List(var_1CC)
  loc_004BEB30:   var_1E0 = var_5C
  loc_004BEBCE:   Dim var_4C As String * 2
  loc_004BECC8:   Dim var_54 As String * 3
  loc_004BECFC:   var_48 = "C:\VREP\LGP" + Ucase(Trim(var_54)) + "\ANIO" + var_4C + "\" & var_54 & "\"
  loc_004BED22:   GoTo loc_004BF1CB
  loc_004BED2E:   var_80FC = Err
  loc_004BED39:   Set var_64 = Err
  loc_004BED3F:   var_1D4 = var_64
  loc_004BED5B:   var_1D0 = var_64.Number
  loc_004BED60:   var_1D8 = var_1D0
  loc_004BEDC3:   If (var_1D0 = 76) Then
  loc_004BEE47:     MsgBox("NO EXISTE DIRECTORIO CON BASE DE DATOS", 48, 10, 10, 10)
  loc_004BEE7A:     var_8100 = Resume(-1)
  loc_004BEE85:   Else
  loc_004BEF03:     MsgBox("ERROR AL ACCESAR A LA UNIDAD C:", 16, 10, 10, 10)
  loc_004BEF32:   Else
  loc_004BEFED:     MsgBox("ERROR AL ACCESAR AL ARCHIVO" + Chr(10) + EEAMX009.ComMod.Index, 16, 10, 10, 10)
  loc_004BF025:     GoTo loc_004BF1CB
  loc_004BF0A8:     MsgBox("ERROR AL CREAR ARCHIVO PARA REPORTE", 16, 10, 10, 10)
  loc_004BF0D2:     GoTo loc_004BF1CB
  loc_004BF193:     MsgBox("ERROR AL LEER PARAMETROS SUBDELEGACIONALES" + Chr(10) + "DEL ARCHIVO DE CONTROL ", 48, 10, 10, 10)
  loc_004BF1CB:   End If
  loc_004BF1CB: End If
  loc_004BF1CB: ' Referenced from: 004BF025
  loc_004BF1CB: ' Referenced from: 004BF0D2
  loc_004BF1CB: Exit Sub
  loc_004BF1D6: GoTo loc_004BF276
  loc_004BF275: Exit Function
  loc_004BF276: ' Referenced from: 004BF1D6
End Function

Public Sub EEAMX009_CargaDocs() '4BF2F0
  Dim var_18 As Variant
  Dim var_2C As ComboBox
  loc_004BF345: EEAMX009.CmbDoc.Clear
  loc_004BF37A: Set var_18 = EEAMX009.CmbDoc
  loc_004BF37C: var_2C = var_18
  loc_004BF3B0: var_18.AddItem "00", 10
  loc_004BF3E8: Set var_18 = EEAMX009.CmbDoc
  loc_004BF3F9: var_2C = var_18
  loc_004BF41B: var_18.AddItem "01", 10
  loc_004BF453: Set var_18 = EEAMX009.CmbDoc
  loc_004BF464: var_2C = var_18
  loc_004BF486: var_18.AddItem "02", 10
  loc_004BF4BE: Set var_18 = EEAMX009.CmbDoc
  loc_004BF4CF: var_2C = var_18
  loc_004BF4F1: var_18.AddItem "03", 10
  loc_004BF529: Set var_18 = EEAMX009.CmbDoc
  loc_004BF53A: var_2C = var_18
  loc_004BF55C: var_18.AddItem "04", 10
  loc_004BF594: Set var_18 = EEAMX009.CmbDoc
  loc_004BF5A5: var_2C = var_18
  loc_004BF5C7: var_18.AddItem "05", 10
  loc_004BF5FF: Set var_18 = EEAMX009.CmbDoc
  loc_004BF610: var_2C = var_18
  loc_004BF632: var_18.AddItem "06", 10
  loc_004BF66A: Set var_18 = EEAMX009.CmbDoc
  loc_004BF67B: var_2C = var_18
  loc_004BF69D: var_18.AddItem "07", 10
  loc_004BF6D5: Set var_18 = EEAMX009.CmbDoc
  loc_004BF6E6: var_2C = var_18
  loc_004BF708: var_18.AddItem "08", 10
  loc_004BF740: Set var_18 = EEAMX009.CmbDoc
  loc_004BF751: var_2C = var_18
  loc_004BF773: var_18.AddItem "09", 10
  loc_004BF7D4: EEAMX009.CmbDoc.AddItem "10", 10
  loc_004BF800: GoTo loc_004BF80C
  loc_004BF80B: Exit Sub
  loc_004BF80C: ' Referenced from: 004BF800
End Sub

Public Sub EEAMX009_CargaMods() '4BF830
  Dim var_18 As Variant
  Dim var_2C As ComboBox
  loc_004BF888: EEAMX009.CmbMod.Clear
  loc_004BF8BD: Set var_18 = EEAMX009.CmbMod
  loc_004BF8BF: var_2C = var_18
  loc_004BF8F3: var_18.AddItem "10", 10
  loc_004BF92B: Set var_18 = EEAMX009.CmbMod
  loc_004BF93C: var_2C = var_18
  loc_004BF95E: var_18.AddItem "11", 10
  loc_004BF996: Set var_18 = EEAMX009.CmbMod
  loc_004BF9A7: var_2C = var_18
  loc_004BF9C9: var_18.AddItem "12", 10
  loc_004BFA01: Set var_18 = EEAMX009.CmbMod
  loc_004BFA12: var_2C = var_18
  loc_004BFA34: var_18.AddItem "13", 10
  loc_004BFA6C: Set var_18 = EEAMX009.CmbMod
  loc_004BFA7D: var_2C = var_18
  loc_004BFA9F: var_18.AddItem "14", 10
  loc_004BFAD7: Set var_18 = EEAMX009.CmbMod
  loc_004BFAE8: var_2C = var_18
  loc_004BFB0A: var_18.AddItem "15", 10
  loc_004BFB42: Set var_18 = EEAMX009.CmbMod
  loc_004BFB53: var_2C = var_18
  loc_004BFB75: var_18.AddItem "16", 10
  loc_004BFBAD: Set var_18 = EEAMX009.CmbMod
  loc_004BFBBE: var_2C = var_18
  loc_004BFBE0: var_18.AddItem "17", 10
  loc_004BFC18: Set var_18 = EEAMX009.CmbMod
  loc_004BFC29: var_2C = var_18
  loc_004BFC4B: var_18.AddItem "18", 10
  loc_004BFC83: Set var_18 = EEAMX009.CmbMod
  loc_004BFC94: var_2C = var_18
  loc_004BFCB6: var_18.AddItem "19", 10
  loc_004BFCEE: Set var_18 = EEAMX009.CmbMod
  loc_004BFCFF: var_2C = var_18
  loc_004BFD21: var_18.AddItem "20", 10
  loc_004BFD59: Set var_18 = EEAMX009.CmbMod
  loc_004BFD6A: var_2C = var_18
  loc_004BFD8C: var_18.AddItem "21", 10
  loc_004BFDC4: Set var_18 = EEAMX009.CmbMod
  loc_004BFDD5: var_2C = var_18
  loc_004BFDF7: var_18.AddItem "27", 10
  loc_004BFE2F: Set var_18 = EEAMX009.CmbMod
  loc_004BFE40: var_2C = var_18
  loc_004BFE62: var_18.AddItem "28", 10
  loc_004BFE9A: Set var_18 = EEAMX009.CmbMod
  loc_004BFEAB: var_2C = var_18
  loc_004BFECD: var_18.AddItem "29", 10
  loc_004BFF05: Set var_18 = EEAMX009.CmbMod
  loc_004BFF16: var_2C = var_18
  loc_004BFF38: var_18.AddItem "30", 10
  loc_004BFF70: Set var_18 = EEAMX009.CmbMod
  loc_004BFF81: var_2C = var_18
  loc_004BFFA3: var_18.AddItem "31", 10
  loc_004BFFDB: Set var_18 = EEAMX009.CmbMod
  loc_004BFFEC: var_2C = var_18
  loc_004C000E: var_18.AddItem "32", 10
  loc_004C0046: Set var_18 = EEAMX009.CmbMod
  loc_004C005A: var_2C = var_18
  loc_004C007F: var_18.AddItem "33", 10
  loc_004C00B7: Set var_18 = EEAMX009.CmbMod
  loc_004C00CB: var_2C = var_18
  loc_004C00F0: var_18.AddItem "34", 10
  loc_004C0128: Set var_18 = EEAMX009.CmbMod
  loc_004C013C: var_2C = var_18
  loc_004C0161: var_18.AddItem "35", 10
  loc_004C0199: Set var_18 = EEAMX009.CmbMod
  loc_004C01AD: var_2C = var_18
  loc_004C01D2: var_18.AddItem "36", 10
  loc_004C020A: Set var_18 = EEAMX009.CmbMod
  loc_004C021E: var_2C = var_18
  loc_004C0243: var_18.AddItem "40", 10
  loc_004C027B: Set var_18 = EEAMX009.CmbMod
  loc_004C028F: var_2C = var_18
  loc_004C02B4: var_18.AddItem "42", 10
  loc_004C02EC: Set var_18 = EEAMX009.CmbMod
  loc_004C0300: var_2C = var_18
  loc_004C0325: var_18.AddItem "43", 10
  loc_004C0386: EEAMX009.CmbMod.AddItem "44", 10
  loc_004C03B2: GoTo loc_004C03BE
  loc_004C03BD: Exit Sub
  loc_004C03BE: ' Referenced from: 004C03B2
End Sub

Public Function EEAMX009_ValDoc(Docu) '4C03E0
  loc_004C0486: If (ebx < EEAMX009.CmbDoc.ListCount) Then
  loc_004C0528:   If (Docu <> Trim(EEAMX009.CmbDoc.List(0))) Then
  loc_004C0530:     GoTo loc_004C0432
  loc_004C0535:   End If
  loc_004C053C: End If
  loc_004C0541: GoTo loc_004C056D
  loc_004C056C: Exit Function
  loc_004C056D: ' Referenced from: 004C0541
End Function

Public Function EEAMX009_ValMod(Moda) '4C05A0
  loc_004C0646: If (ebx < EEAMX009.CmbMod.ListCount) Then
  loc_004C06E8:   If (Moda <> Trim(EEAMX009.CmbMod.List(0))) Then
  loc_004C06F0:     GoTo loc_004C05F2
  loc_004C06F5:   End If
  loc_004C06FC: End If
  loc_004C0701: GoTo loc_004C072D
  loc_004C072C: Exit Function
  loc_004C072D: ' Referenced from: 004C0701
End Function

Public Function EEAMX009_Arma_Cursor(cadRep) '4C2680
  loc_004C2812: var_18 = " ORDER BY RC_PATRON,RC_MOD DESC"
  loc_004C281F: var_20 = "SELECT * "
  loc_004C282A: Dim global_248 As String * 2
  loc_004C285F: Dim global_252 As String * 2
  loc_004C2891: Dim global_256 As String * 4
  loc_004C28A9: global_004F12C0 = global_248 & "/" & global_252 & "/" & global_256
  loc_004C28E3: Dim global_248 As String * 2
  loc_004C2907: Dim global_252 As String * 2
  loc_004C293D: Dim global_256 As String * 4
  loc_004C2948: var_60 = global_256
  loc_004C2986: global_256 = var_60
  loc_004C29B3: var_44 = "FROM LGP" & global_248 & global_252 + Mid(var_60, 3, 2)
  loc_004C29FC: Dim global_148 As String * 8
  loc_004C2A07: var_54 = global_148
  loc_004C2A3D: global_148 = var_54
  loc_004C2ABC: If (InStr(1, Trim(var_54), "*", 0) = "") Then
  loc_004C2AD2:   Dim global_148 As String * 8
  loc_004C2B65:   var_4C = " RC_PATRON = " & "'" & Trim(global_00459DC0 & global_148) & "'"
  loc_004C2B7A: End If
  loc_004C2B85: Dim global_164 As String * 2
  loc_004C2BBC: If (global_164 = "**") Then
  loc_004C2BC2:   If var_28 = 0 Then
  loc_004C2BDB:   Else
  loc_004C2BE9:   End If
  loc_004C2BEC:   Dim global_164 As String * 2
  loc_004C2C01:   var_40 = " AND RC_MOD= " & global_164
  loc_004C2C0C: End If
  loc_004C2C17: Dim global_168 As String * 7
  loc_004C2C4E: If (global_168 = "*******") Then
  loc_004C2C58:   If var_28 = 0 Then
  loc_004C2C81:     Dim global_168 As String * 7
  loc_004C2CA5:     var_50 = " RC_PER>= " & "'" & global_168 & "'"
  loc_004C2CB5:   Else
  loc_004C2CD5:     Dim global_168 As String * 7
  loc_004C2CF9:     var_50 = " AND RC_PER>= " & "'" & global_168 & "'"
  loc_004C2D07:   End If
  loc_004C2D12: End If
  loc_004C2D1D: Dim global_182 As String * 7
  loc_004C2D54: If (global_182 = "*******") Then
  loc_004C2D5E:   If var_28 = 0 Then
  loc_004C2D72:   Else
  loc_004C2D7B:   End If
  loc_004C2DA0:   Dim global_182 As String * 7
  loc_004C2DC4:   var_50 = var_50 & " AND RC_PER<= " & "'" & global_182 & "'"
  loc_004C2DE1: End If
  loc_004C2DED: Dim global_196 As String * 2
  loc_004C2E24: If (global_196 = "**") Then
  loc_004C2E2A:   If var_28 = 0 Then
  loc_004C2E43:   Else
  loc_004C2E50:   End If
  loc_004C2E53:   Dim global_196 As String * 2
  loc_004C2E68:   var_34 = " AND RC_DOC= " & global_196
  loc_004C2E73: End If
  loc_004C2E7F: var_298 = global_200
  loc_004C2E85: Dim global_200 As String * 12
  loc_004C2E90: var_54 = global_200
  loc_004C2EC3: var_298 = var_54
  loc_004C2F2C: var_29C = global_224
  loc_004C2F32: Dim global_224 As String * 12
  loc_004C2F3D: var_54 = global_224
  loc_004C2F70: var_29C = var_54
  loc_004C2FD2: If CInt(InStr(1, Trim(var_54), "*", 0)) > 0 Then
  loc_004C2FD8:   If CInt(InStr(1, Trim(var_54), "*", 0)) > 0 Then GoTo loc_004C3136
  loc_004C2FDE: End If
  loc_004C2FEC: Dim var_298 As String * 12
  loc_004C3001: var_30 = "  RC_IMP_TOT >= " & var_298
  loc_004C301A: Dim var_29C As String * 12
  loc_004C302F: var_3C = "  RC_IMP_TOT <= " & var_29C
  loc_004C303E: If var_28 = 0 Then
  loc_004C304B:   If CInt(InStr(1, Trim(var_29C), "*", 0)) = 0 Then
  loc_004C3053:     var_48 = var_30
  loc_004C3059:   End If
  loc_004C305D:   If CInt(InStr(1, Trim(var_29C), "*", 0)) = 0 Then
  loc_004C3065:     var_48 = var_3C
  loc_004C306B:   End If
  loc_004C306F:   If CInt(InStr(1, Trim(var_29C), "*", 0)) Then GoTo loc_004C3128
  loc_004C3079:   If CInt(InStr(1, Trim(var_29C), "*", 0)) Then GoTo loc_004C3128
  loc_004C309D:   var_48 = var_30 & " AND " & var_3C
  loc_004C30AA: Else
  loc_004C30AE:   If CInt(InStr(1, Trim(var_30 & " AND "), "*", 0)) = 0 Then
  loc_004C30C0:     var_48 = " AND " & var_30
  loc_004C30C2:   End If
  loc_004C30C6:   If CInt(InStr(1, Trim(var_30 & " AND "), "*", 0)) = 0 Then
  loc_004C30D8:     var_48 = " AND " & var_3C
  loc_004C30DA:   End If
  loc_004C30DE:   If CInt(InStr(1, Trim(var_30 & " AND "), "*", 0)) = 0 Then
  loc_004C30E4:     If CInt(InStr(1, Trim(var_30 & " AND "), "*", 0)) = 0 Then
  loc_004C3113:       var_48 = " AND " & var_30 & " AND " & var_3C
  loc_004C3128:     End If
  loc_004C3128:   End If
  loc_004C3128: End If
  loc_004C313A: If var_28 Then
  loc_004C314C:   var_44 = var_44 & " WHERE "
  loc_004C314E: End If
  loc_004C332C: var_80C0 = var_20 & global_0045B658 + Trim(var_44) + global_0045B658 + Trim(var_4C) + global_0045B658 + Trim(var_40) + global_0045B658
  loc_004C33A3: var_80DC = var_80C0 + Trim(var_50) + global_0045B658 + Trim(var_34) + global_0045B658 + Trim(var_48) + global_0045B658 + Trim(" ORDER BY RC_IMP_TOT,RC_PATRON,RC_MOD DESC")
  loc_004C3454: var_24 = var_80DC
  loc_004C345F: GoTo loc_004C352F
  loc_004C3468: If var_4 <> 4 Then
  loc_004C3473: End If
  loc_004C352E: Exit Function
  loc_004C352F: ' Referenced from: 004C345F
End Function

Public Function EEAMX009_Abre_Cursor(CadQuery) '4C35A0
  Dim var_28 As Variant
  Dim var_E0 As @var_9C + 112
  Dim var_E4 As Label
  Dim var_AC As Variant
  loc_004C361B: On Error GoTo loc_004C39AE
  loc_004C36CE: CadQuery = global_96.UnkVCall_000000BCh
  loc_004C373A: If var_28.UnkVCall_00000034h Then
  loc_004C3760:   EEAMX009.LblNumReg.Caption = global_00459E00
  loc_004C3781:   global_112 = 1
  loc_004C379D:   EEAMX009.LblNumReg.Refresh
  loc_004C37C9:   If global_80 = 0 Then
  loc_004C3855:     MsgBox("NO SE HALLARON DATOS PARA GENERAR EL REPORTE" + Chr(10) + "CON LOS PARÁMETROS REQUERIDOS", 48, 10, 10, 10)
  loc_004C3881:   End If
  loc_004C388C: Else
  loc_004C3893:   0 = EEAMX009.LblNumReg.UseMnemonic
  loc_004C389D:   If @"NO SE HALLARON DATOS PARA GENERAR EL REPORTE" + var_94 < 0 Then
  loc_004C38AD:     Set @"NO SE HALLARON DATOS PARA GENERAR EL REPORTE" + var_94 = var_8C + 360
  loc_004C38AF:   End If
  loc_004C38C2:   If EEAMX009.LblNumReg.Left < 0 Then
  loc_004C38CF:     Set var_E0 = var_9C + 112
  loc_004C38D1:   End If
  loc_004C38E8:   Set var_28 = EEAMX009.LblNumReg
  loc_004C38EE:   var_E4 = var_28
  loc_004C3915:   var_28.Caption = CStr(var_E0)
  loc_004C394F:   Set var_28 = EEAMX009.LblNumReg
  loc_004C395A:   var_28.Refresh
  loc_004C3982:   var_28.BorderStyle = var_AC
  loc_004C39A9:   GoTo loc_004C3A69
  loc_004C3A34:   MsgBox("ERROR AL ACCESAR A LA BASE DE DATOS" + Chr(10) + "CHECAR LOS PARÁMETROS", 16, 10, 10, 10)
  loc_004C3A63:   global_84 = &HFFFFFF
  loc_004C3A69: End If
  loc_004C3A69: ' Referenced from: 004C39A9
  loc_004C3A69: Exit Sub
  loc_004C3A74: GoTo loc_004C3AAF
  loc_004C3AAE: Exit Function
  loc_004C3AAF: ' Referenced from: 004C3A74
End Function

Public Sub EEAMX009_CargaTablaMes() '4C3AE0
  loc_004C3B2C: ReDim global_108(0 To 12)
  loc_004C3B39: If global_108 Then
  loc_004C3B3F:   If global_108 = 1 Then
  loc_004C3B50:     If global_108 >= global_108 Then
  loc_004C3B52:       var_8004 = Err.Raise
  loc_004C3B58:     End If
  loc_004C3B61:   Else
  loc_004C3B61:   End If
  loc_004C3B61:   var_8008 = Err.Raise
  loc_004C3B67: End If
  loc_004C3B7F: If "ENERO" Then
  loc_004C3B85:   If "ENERO" = 1 Then
  loc_004C3B96:     If "ENERO" >= "ENERO" Then
  loc_004C3B98:       var_800C = Err.Raise
  loc_004C3B9E:     End If
  loc_004C3BA7:   Else
  loc_004C3BA7:   End If
  loc_004C3BA7:   var_8010 = Err.Raise
  loc_004C3BAD: End If
  loc_004C3BBF: If "FEBRERO" Then
  loc_004C3BC5:   If "FEBRERO" = 1 Then
  loc_004C3BD6:     If "FEBRERO" >= "FEBRERO" Then
  loc_004C3BD8:       var_8014 = Err.Raise
  loc_004C3BDE:     End If
  loc_004C3BE7:   Else
  loc_004C3BE7:   End If
  loc_004C3BE7:   var_8018 = Err.Raise
  loc_004C3BED: End If
  loc_004C3BFF: If "MARZO" Then
  loc_004C3C05:   If "MARZO" = 1 Then
  loc_004C3C16:     If "MARZO" >= "MARZO" Then
  loc_004C3C18:       var_801C = Err.Raise
  loc_004C3C1E:     End If
  loc_004C3C27:   Else
  loc_004C3C27:   End If
  loc_004C3C27:   var_8020 = Err.Raise
  loc_004C3C2D: End If
  loc_004C3C3F: If "ABRIL" Then
  loc_004C3C45:   If "ABRIL" = 1 Then
  loc_004C3C56:     If "ABRIL" >= "ABRIL" Then
  loc_004C3C58:       var_8024 = Err.Raise
  loc_004C3C5E:     End If
  loc_004C3C67:   Else
  loc_004C3C67:   End If
  loc_004C3C67:   var_8028 = Err.Raise
  loc_004C3C6D: End If
  loc_004C3C7F: If "MAYO" Then
  loc_004C3C85:   If "MAYO" = 1 Then
  loc_004C3C96:     If "MAYO" >= "MAYO" Then
  loc_004C3C98:       var_802C = Err.Raise
  loc_004C3C9E:     End If
  loc_004C3CA7:   Else
  loc_004C3CA7:   End If
  loc_004C3CA7:   var_8030 = Err.Raise
  loc_004C3CAD: End If
  loc_004C3CBF: If "JUNIO" Then
  loc_004C3CC5:   If "JUNIO" = 1 Then
  loc_004C3CD6:     If "JUNIO" >= "JUNIO" Then
  loc_004C3CD8:       var_8034 = Err.Raise
  loc_004C3CDE:     End If
  loc_004C3CE7:   Else
  loc_004C3CE7:   End If
  loc_004C3CE7:   var_8038 = Err.Raise
  loc_004C3CED: End If
  loc_004C3CFF: If "JULIO" Then
  loc_004C3D05:   If "JULIO" = 1 Then
  loc_004C3D16:     If "JULIO" >= "JULIO" Then
  loc_004C3D18:       var_803C = Err.Raise
  loc_004C3D1E:     End If
  loc_004C3D27:   Else
  loc_004C3D27:   End If
  loc_004C3D27:   var_8040 = Err.Raise
  loc_004C3D2D: End If
  loc_004C3D3F: If "AGOSTO" Then
  loc_004C3D45:   If "AGOSTO" = 1 Then
  loc_004C3D56:     If "AGOSTO" >= "AGOSTO" Then
  loc_004C3D58:       var_8044 = Err.Raise
  loc_004C3D5E:     End If
  loc_004C3D67:   Else
  loc_004C3D67:   End If
  loc_004C3D67:   var_8048 = Err.Raise
  loc_004C3D6D: End If
  loc_004C3D7F: If "SEPTIEMBRE" Then
  loc_004C3D85:   If "SEPTIEMBRE" = 1 Then
  loc_004C3D96:     If "SEPTIEMBRE" >= "SEPTIEMBRE" Then
  loc_004C3D98:       var_804C = Err.Raise
  loc_004C3D9E:     End If
  loc_004C3DA7:   Else
  loc_004C3DA7:   End If
  loc_004C3DA7:   var_8050 = Err.Raise
  loc_004C3DAD: End If
  loc_004C3DBF: If "OCTUBRE" Then
  loc_004C3DC5:   If "OCTUBRE" = 1 Then
  loc_004C3DD6:     If "OCTUBRE" >= "OCTUBRE" Then
  loc_004C3DD8:       var_8054 = Err.Raise
  loc_004C3DDE:     End If
  loc_004C3DE7:   Else
  loc_004C3DE7:   End If
  loc_004C3DE7:   var_8058 = Err.Raise
  loc_004C3DED: End If
  loc_004C3DFF: If "NOVIEMBRE" Then
  loc_004C3E05:   If "NOVIEMBRE" = 1 Then
  loc_004C3E16:     If "NOVIEMBRE" >= "NOVIEMBRE" Then
  loc_004C3E18:       var_805C = Err.Raise
  loc_004C3E1E:     End If
  loc_004C3E27:   Else
  loc_004C3E27:   End If
  loc_004C3E27:   var_8060 = Err.Raise
  loc_004C3E2D: End If
  loc_004C3E39: global_108 = "DICIEMBRE"
End Sub

Public Sub EEAMX009_IniCifras(CadParam) '4C3E60
  loc_004C3F09: global_120 = Trim(Mid(CadParam, 1, 2))
  loc_004C3F7D: global_124 = Trim(Mid(CadParam, 3, 2))
  loc_004C3FF7: global_128 = Trim(Mid(CadParam, 5, 10))
  loc_004C4071: global_148 = Trim(Mid(CadParam, 15, 8))
  loc_004C40E8: global_164 = Trim(Mid(CadParam, 23, 2))
  loc_004C4162: global_168 = Trim(Mid(CadParam, 25, 7))
  loc_004C41DC: global_182 = Trim(Mid(CadParam, 32, 7))
  loc_004C4253: global_196 = Trim(Mid(CadParam, 39, 2))
  loc_004C42CD: global_200 = Trim(Mid(CadParam, 41, 12))
  loc_004C4347: global_224 = Trim(Mid(CadParam, 53, 12))
  loc_004C437D: Dim global_128 As String * 10
  loc_004C4388: var_18 = global_128
  loc_004C43B8: global_128 = var_18
  loc_004C43D5: global_248 = Mid(var_18, 1, 2)
  loc_004C440E: Dim global_128 As String * 10
  loc_004C4419: var_18 = global_128
  loc_004C4449: global_128 = var_18
  loc_004C4466: global_252 = Mid(var_18, 4, 2)
  loc_004C44A2: Dim global_128 As String * 10
  loc_004C44AD: var_18 = global_128
  loc_004C44DD: global_128 = var_18
  loc_004C44FA: global_256 = Mid(var_18, 7, 4)
  loc_004C4528: If global_80 = 0 Then
  loc_004C452A:   global_266 = &H41
  loc_004C4533:   If Not Asm.z_flag Then
  loc_004C453C:   End If
  loc_004C453C: End If
  loc_004C460D: EEAMX009.PnlCount.FloodPercent
  loc_004C462C: GoTo loc_004C4662
  loc_004C4661: Exit Sub
  loc_004C4662: ' Referenced from: 004C462C
End Sub

Public Sub EEAMX009_Lee_Cursor() '4C4690
  Dim var_E8 As Global
  Dim var_F0 As Screen
  loc_004C46EA: On Error GoTo loc_004C8A74
  loc_004C4712: var_E8 = global_104.UnkVCall_00000034h
  loc_004C4757: If global_104.UnkVCall_00000034h = 0 Then
  loc_004C476B:   Dim global_004F12C0 As String * 10
  loc_004C4789:   global_764 = var_30
  loc_004C47B2:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C47BA:   var_E8 = var_34
  loc_004C485D:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C48B5:   var_50 = var_38.UnkVCall_00000044h
  loc_004C48BA:   var_F8 = var_50
  loc_004C4916:   global_784 = var_50
  loc_004C4957:   var_8008 = ("RC_PATRON" = "ZZZZZZZZZ")
  loc_004C495F:   If var_8008 = 0 Then
  loc_004C4976:     global_784 = "00000000"
  loc_004C4981:   Else
  loc_004C49F4:     global_784 = Trim(Mid(global_784, 2, 8))
  loc_004C4A1A:   End If
  loc_004C4A34:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C4A3C:   var_E8 = var_34
  loc_004C4A84:   var_A8 = "RC_MOD"
  loc_004C4ADF:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C4B37:   var_50 = var_38.UnkVCall_00000044h
  loc_004C4B3C:   var_F8 = var_50
  loc_004C4B85:   global_788 = CLng(var_50)
  loc_004C4BC1:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C4BC9:   var_E8 = var_34
  loc_004C4C11:   var_A8 = "RC_PER"
  loc_004C4C6C:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C4CC4:   var_50 = var_38.UnkVCall_00000044h
  loc_004C4CC9:   var_F8 = var_50
  loc_004C4D27:   global_792 = var_50
  loc_004C4D6C:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C4D74:   var_E8 = var_34
  loc_004C4DBC:   var_A8 = "RC_CRED"
  loc_004C4E17:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C4E6F:   var_50 = var_38.UnkVCall_00000044h
  loc_004C4E74:   var_F8 = var_50
  loc_004C4EBD:   global_808 = CLng(var_50)
  loc_004C4EF9:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C4F01:   var_E8 = var_34
  loc_004C4F49:   var_A8 = "PA_NOM"
  loc_004C4FA4:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C4FFC:   var_50 = var_38.UnkVCall_00000044h
  loc_004C5001:   var_F8 = var_50
  loc_004C505F:   global_976 = var_50
  loc_004C50A4:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C50AC:   var_E8 = var_34
  loc_004C50F4:   var_A8 = "RC_DOC"
  loc_004C514F:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C51A7:   var_50 = var_38.UnkVCall_00000044h
  loc_004C51AC:   var_F8 = var_50
  loc_004C51F5:   global_920 = CLng(var_50)
  loc_004C5231:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C5239:   var_E8 = var_34
  loc_004C5281:   var_A8 = "RC_NUM_FOL"
  loc_004C52DC:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C5334:   var_50 = var_38.UnkVCall_00000044h
  loc_004C5339:   var_F8 = var_50
  loc_004C5382:   global_760 = CLng(var_50)
  loc_004C53BE:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C53C6:   var_E8 = var_34
  loc_004C540E:   var_A8 = "RC_OPE_CAJA"
  loc_004C5469:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C54C1:   var_50 = var_38.UnkVCall_00000044h
  loc_004C54C6:   var_F8 = var_50
  loc_004C550F:   global_880 = CLng(var_50)
  loc_004C554B:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C5553:   var_E8 = var_34
  loc_004C559B:   var_A8 = "RC_CAJA"
  loc_004C55F6:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C564E:   var_50 = var_38.UnkVCall_00000044h
  loc_004C5653:   var_F8 = var_50
  loc_004C569C:   global_1108 = CLng(var_50)
  loc_004C56D8:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C56E0:   var_E8 = var_34
  loc_004C5728:   var_A8 = "RC_HORA_CAP"
  loc_004C5783:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C57DB:   var_50 = var_38.UnkVCall_00000044h
  loc_004C57E0:   var_F8 = var_50
  loc_004C583D:   global_904 = var_50
  loc_004C5882:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C588A:   var_E8 = var_34
  loc_004C58D2:   var_A8 = "RC_USU"
  loc_004C592D:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C5985:   var_50 = var_38.UnkVCall_00000044h
  loc_004C598A:   var_F8 = var_50
  loc_004C59E8:   global_924 = var_50
  loc_004C5A2D:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C5A35:   var_E8 = var_34
  loc_004C5A7D:   var_A8 = "RC_ERROR"
  loc_004C5AD8:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C5B35:   var_F8 = var_38.UnkVCall_00000044h
  loc_004C5BBA:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C5BC2:   var_E8 = var_34
  loc_004C5C0A:   var_A8 = "RC_FEC_CAP"
  loc_004C5C65:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C5CBD:   var_50 = var_38.UnkVCall_00000044h
  loc_004C5CC2:   var_F8 = var_50
  loc_004C5D1F:   global_884 = var_50
  loc_004C5D64:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C5D6C:   var_E8 = var_34
  loc_004C5DB4:   var_A8 = "RC_DEL_USU"
  loc_004C5E0F:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C5E67:   var_50 = var_38.UnkVCall_00000044h
  loc_004C5E6C:   var_F8 = var_50
  loc_004C5EB5:   global_844 = CLng(var_50)
  loc_004C5EF1:   var_34 = global_104.UnkVCall_000000B4h
  loc_004C5EF9:   var_E8 = var_34
  loc_004C5F41:   var_A8 = "RC_SUB_USU"
  loc_004C5F9C:   var_F0 = var_34.UnkVCall_00000030h
  loc_004C5FF4:   var_50 = var_38.UnkVCall_00000044h
  loc_004C5FF9:   var_F8 = var_50
  loc_004C6042:   global_848 = CLng(var_50)
  loc_004C6072:   Dim global_004F1360 As String * 3
  loc_004C60AF:   If (var_30 = "COP") + 1 Then
  loc_004C60CF:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C60D7:     var_E8 = var_34
  loc_004C611F:     var_A8 = "RC_IMP_EYM_FIJA"
  loc_004C617A:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C61D7:     var_F8 = var_38.UnkVCall_00000044h
  loc_004C625C:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C6264:     var_E8 = var_34
  loc_004C62AC:     var_A8 = "RC_IMP_EYM_ADI"
  loc_004C6307:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C6364:     var_F8 = var_38.UnkVCall_00000044h
  loc_004C63E9:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C63F1:     var_E8 = var_34
  loc_004C6439:     var_A8 = "RC_IMP_EYM_DIN"
  loc_004C6494:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C64F1:     var_F8 = var_38.UnkVCall_00000044h
  loc_004C6576:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C657E:     var_E8 = var_34
  loc_004C65C6:     var_A8 = "RC_IMP_EYM_PEN"
  loc_004C6621:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C667E:     var_F8 = var_38.UnkVCall_00000044h
  loc_004C6703:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C670B:     var_E8 = var_34
  loc_004C6753:     var_A8 = "RC_IMP_RT"
  loc_004C67AE:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C6806:     var_50 = var_38.UnkVCall_00000044h
  loc_004C680B:     var_F8 = var_50
  loc_004C6854:     global_940 = var_50
  loc_004C6890:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C6898:     var_E8 = var_34
  loc_004C68E0:     var_A8 = "RC_IMP_IV"
  loc_004C693B:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C6993:     var_50 = var_38.UnkVCall_00000044h
  loc_004C6998:     var_F8 = var_50
  loc_004C69E1:     global_948 = var_50
  loc_004C6A1D:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C6A25:     var_E8 = var_34
  loc_004C6A6D:     var_A8 = "RC_IMP_GUAR"
  loc_004C6AC8:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C6B20:     var_50 = var_38.UnkVCall_00000044h
  loc_004C6B25:     var_F8 = var_50
  loc_004C6B6E:     global_956 = var_50
  loc_004C6BAA:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C6BB2:     var_E8 = var_34
  loc_004C6BFA:     var_A8 = "RC_IMP_TOT"
  loc_004C6C55:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C6CBB:     var_E4 = IsNull(0)
  loc_004C6CD5:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C6CDD:     var_F4 = var_3C
  loc_004C6D25:     var_B8 = "RC_IMP_TOT"
  loc_004C6D80:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C6DF1:     var_C8 = var_E4
  loc_004C6E28:     global_964 = IIf(var_E4, 0, 0)
  loc_004C6E7D:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C6E85:     var_E8 = var_34
  loc_004C6ECD:     var_A8 = "RC_IMP_ACT"
  loc_004C6F28:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C6F8E:     var_E4 = IsNull(0)
  loc_004C6FA8:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C6FB0:     var_F4 = var_3C
  loc_004C6FF8:     var_B8 = "RC_IMP_ACT"
  loc_004C7053:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C70C4:     var_C8 = var_E4
  loc_004C70FB:     global_1076 = IIf(var_E4, 0, 0)
  loc_004C7150:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C7158:     var_E8 = var_34
  loc_004C71A0:     var_A8 = "RC_IMP_INT"
  loc_004C71FB:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C7261:     var_E4 = IsNull(0)
  loc_004C727B:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C7283:     var_F4 = var_3C
  loc_004C72CB:     var_B8 = "RC_IMP_INT"
  loc_004C7326:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C7397:     var_C8 = var_E4
  loc_004C73CE:     global_1084 = IIf(var_E4, 0, 0)
  loc_004C7423:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C742B:     var_E8 = var_34
  loc_004C7473:     var_A8 = "RC_IMP_EJE"
  loc_004C74CE:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C7534:     var_E4 = IsNull(0)
  loc_004C754E:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C7556:     var_F4 = var_3C
  loc_004C759E:     var_B8 = "RC_IMP_EJE"
  loc_004C75F9:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C766A:     var_C8 = var_E4
  loc_004C76A1:     global_1092 = IIf(var_E4, 0, 0)
  loc_004C76F8:     global_1116 = (global_1116 + this)
  loc_004C7724:     global_1124 = (global_1124 + this)
  loc_004C7750:     global_1132 = (global_1132 + this)
  loc_004C777C:     global_1140 = (global_1140 + this)
  loc_004C77A8:     global_1168 = (global_1168 + global_940)
  loc_004C77D4:     global_1176 = (global_1176 + global_948)
  loc_004C7800:     global_1184 = (global_1184 + global_956)
  loc_004C782C:     global_1192 = (global_1192 + global_964)
  loc_004C7858:     global_1204 = (global_1204 + global_1076)
  loc_004C7884:     global_1212 = (global_1212 + global_1084)
  loc_004C78B0:     global_1240 = (global_1240 + this)
  loc_004C78DC:     global_1248 = (global_1248 + this)
  loc_004C7908:     global_1256 = (global_1256 + this)
  loc_004C7934:     global_1264 = (global_1264 + this)
  loc_004C7960:     global_1292 = (global_1292 + global_940)
  loc_004C798C:     global_1300 = (global_1300 + global_948)
  loc_004C79B8:     global_1308 = (global_1308 + global_956)
  loc_004C79E4:     global_1316 = (global_1316 + global_964)
  loc_004C7A10:     global_1328 = (global_1328 + global_1076)
  loc_004C7A3C:     global_1336 = (global_1336 + global_1084)
  loc_004C7A51:   Else
  loc_004C7A6B:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C7A73:     var_E8 = var_34
  loc_004C7ABB:     var_A8 = "RC_IMP_RET"
  loc_004C7B16:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C7B73:     var_F8 = var_38.UnkVCall_00000044h
  loc_004C7BF8:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C7C00:     var_E8 = var_34
  loc_004C7C48:     var_A8 = "RC_IMP_CYV"
  loc_004C7CA3:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C7D00:     var_F8 = var_38.UnkVCall_00000044h
  loc_004C7D85:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C7D8D:     var_E8 = var_34
  loc_004C7DD5:     var_A8 = "RC_IMP_TOT"
  loc_004C7E30:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C7E96:     var_E4 = IsNull(0)
  loc_004C7EB0:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C7EB8:     var_F4 = var_3C
  loc_004C7F00:     var_B8 = "RC_IMP_TOT"
  loc_004C7F5B:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C7FCC:     var_C8 = var_E4
  loc_004C8003:     global_964 = IIf(var_E4, 0, 0)
  loc_004C8058:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C8060:     var_E8 = var_34
  loc_004C80A8:     var_A8 = "RC_IMP_ACT"
  loc_004C8103:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C8169:     var_E4 = IsNull(0)
  loc_004C8183:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C818B:     var_F4 = var_3C
  loc_004C81D3:     var_B8 = "RC_IMP_ACT"
  loc_004C822E:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C829F:     var_C8 = var_E4
  loc_004C82D6:     global_1076 = IIf(var_E4, 0, 0)
  loc_004C832B:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C8333:     var_E8 = var_34
  loc_004C837B:     var_A8 = "RC_IMP_INT"
  loc_004C83D6:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C843C:     var_E4 = IsNull(0)
  loc_004C8456:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C845E:     var_F4 = var_3C
  loc_004C84A6:     var_B8 = "RC_IMP_INT"
  loc_004C8501:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C8572:     var_C8 = var_E4
  loc_004C85A9:     global_1084 = IIf(var_E4, 0, 0)
  loc_004C85FE:     var_34 = global_104.UnkVCall_000000B4h
  loc_004C8606:     var_E8 = var_34
  loc_004C864E:     var_A8 = "RC_IMP_EJE"
  loc_004C86A9:     var_F0 = var_34.UnkVCall_00000030h
  loc_004C870F:     var_E4 = IsNull(0)
  loc_004C8729:     var_3C = global_104.UnkVCall_000000B4h
  loc_004C8731:     var_F4 = var_3C
  loc_004C8779:     var_B8 = "RC_IMP_EJE"
  loc_004C87D4:     var_FC = var_3C.UnkVCall_00000030h
  loc_004C8845:     var_C8 = var_E4
  loc_004C887C:     global_1092 = IIf(var_E4, 0, 0)
  loc_004C88D3:     global_1148 = (global_1148 + this)
  loc_004C88FF:     global_1156 = (global_1156 + this)
  loc_004C892B:     global_1192 = (global_1192 + global_964)
  loc_004C8957:     global_1204 = (global_1204 + global_1076)
  loc_004C8983:     global_1212 = (global_1212 + global_1084)
  loc_004C89AF:     global_1272 = (global_1272 + this)
  loc_004C89DB:     global_1280 = (global_1280 + this)
  loc_004C8A07:     global_1316 = (global_1316 + global_964)
  loc_004C8A33:     global_1328 = (global_1328 + global_1076)
  loc_004C8A5F:     global_1336 = (global_1336 + global_1084)
  loc_004C8A6F:   End If
  loc_004C8A6F:   GoTo loc_004C8E67
  loc_004C8ACB:   var_34 = var_2F8.Screen
  loc_004C8AD0:   var_EC = var_34
  loc_004C8B0F:   var_F0 = var_34
  loc_004C8B2B:   var_F4 = var_F0
  loc_004C8C88:   var_A8 = Chr(10)70 + Chr(10) + "                         DESEA CONTINUAR   ?"
  loc_004C8CAD:   MsgBox(var_A8, 36, var_50, var_60, var_70)
  loc_004C8CBB:   var_24 = MsgBox(var_A8, 36, var_50, var_60, var_70)
  loc_004C8CE2:   If var_24 = 6 Then
  loc_004C8CF1:     var_8084 = Resume(-1)
  loc_004C8D4E:     var_34 = var_304.Screen
  loc_004C8D53:     var_EC = var_34
  loc_004C8D92:     var_F0 = var_34
  loc_004C8DA9:     var_F0.MousePointer = CLng(11)
  loc_004C8DAE:     var_F4 = var_F0
  loc_004C8DF5:   Else
  loc_004C8DFF:     global_1364 = 1
  loc_004C8E20:     global_104.UnkVCall_00000168h
  loc_004C8E28:     var_E8 = global_104.UnkVCall_00000168h
  loc_004C8E67:   End If
  loc_004C8E67:   Exit Sub
  loc_004C8E73:   GoTo loc_004C8EC3
  loc_004C8EC2:   Exit Sub
End Sub

Public Sub EEAMX009_Imprime_Linea() '4C8F00
  loc_004C8F5A: If global_266 > 60 Then
  loc_004C8F5F:   var_8004 = EEAMX009.EEAMX009_Imprime_Encabezados
  loc_004C8F9A: global_1360 = global_756
  loc_004C8F9F: var_8008 = EEAMX009.EEAMX009_Write_Reporte
  loc_004C8FC7: global_1360 = 0
  loc_004C8FCC: var_800C = EEAMX009.EEAMX009_Write_Reporte
  loc_004C8FF4: global_1360 = global_972
  loc_004C8FF9: var_8010 = EEAMX009.EEAMX009_Write_Reporte
  loc_004C901F: global_1360 = global_004568F4
  loc_004C9024: var_8014 = EEAMX009.EEAMX009_Write_Reporte
  loc_004C905A: var_54 = global_268 + 1+1
  loc_004C9060: global_266 = global_266 + 4+4
  loc_004C9067: var_5C = esi+00000070h
  loc_004C9074: If global_004F1000 = 0 Then
  loc_004C907B: Else
  loc_004C9086: End If
  loc_004C909F: If CLng(((var_54 / var_5C) * 100)) >= 100 Then
  loc_004C90AD: Else
  loc_004C90B2: End If
  loc_004C90DF: EEAMX009.PnlCount.FloodPercent
  loc_004C90F4: GoTo loc_004C9100
  loc_004C90FF: Exit Sub
  loc_004C9100: ' Referenced from: 004C90F4
End Sub

Public Sub EEAMX009_ArmaEnca() '4C9130
  Dim var_48 As Variant
  Dim var_4C As TextBox
  loc_004C921C: Dim global_288 As String * 2
  loc_004C9242: Dim global_292 As String * 30
  loc_004C933F: Dim global_352 As String * 2
  loc_004C9371: Dim global_356 As String * 30
  loc_004C93C6: var_8024 = Space(13) + "DELEGACION: " + global_288 + global_0045B658 + global_292 + Space(20) + "SUBDELEGACION: " + global_352 + global_0045B658
  loc_004C93F2: global_284 = var_8024 + global_356
  loc_004C94AE: global_284 = global_284 + Space((ecx - Len(global_284)))
  loc_004C9504: Dim global_004F1360 As String * 3
  loc_004C9585: global_416 = Space(38) + "L I S T A D O   G E N E R A L   D E   P A G O S " + "( " + global_004F1360 + " )"
  loc_004C9638: global_416 = global_416 + Space((ecx - Len(global_416)))
  loc_004C966B: Set var_48 = EEAMX009.TbxFecMov
  loc_004C967A: var_170 = var_48
  loc_004C9680: Set var_4C = var_48(1)
  loc_004C96A8: var_178 = var_4C
  loc_004C96AE: var_38 = var_4C.Text
  loc_004C96DF: var_34 = CInt(Me)
  loc_004C9703: If global_108 Then
  loc_004C9709:   If global_108 = 1 Then
  loc_004C9719:     var_170 = (var_34 - global_108(20))
  loc_004C971F:     If (var_34 - global_108(20)) >= global_108(16) Then
  loc_004C9721:       var_8064 = Err.Raise
  loc_004C972D:     End If
  loc_004C9736:   Else
  loc_004C9736:   End If
  loc_004C9736:   var_8068 = Err.Raise
  loc_004C973C: End If
  loc_004C9762: Set var_48 = EEAMX009.TbxFecMov
  loc_004C9771: var_170 = var_48
  loc_004C9777: Set var_4C = var_48(2)
  loc_004C979F: var_178 = var_4C
  loc_004C98C4: global_420 = Space(50) + "MES DE :  " + ecx+eax + "  DE  " + Trim(var_4C.Text)
  loc_004C996B: global_420 = global_420 + Space((ecx - Len(global_420)))
  loc_004C999E: global_428 = "FECHA MVTO:"
  loc_004C99B5: global_478 = "PATRON:"
  loc_004C99CB: global_518 = "MODALIDAD:"
  loc_004C99E2: global_558 = "DOCUMENTO:"
  loc_004C99F9: global_604 = "PERIODO:"
  loc_004C9A0F: global_674 = "IMPORTE:"
  loc_004C9A48: Dim global_128 As String * 10
  loc_004C9A53: var_38 = global_128
  loc_004C9A8F: global_128 = var_38
  loc_004C9AB3: var_144 = Not (global_80)
  loc_004C9B26: If CBool((Mid(var_38, 1, 2) <> "**") And Not (global_80)) Then
  loc_004C9B3F:   Dim global_128 As String * 10
  loc_004C9B4F:   Mid(global_428, 13, 10) = global_128
  loc_004C9B5E: End If
  loc_004C9B69: Dim global_148 As String * 8
  loc_004C9BA1: If (global_148 = "********") Then
  loc_004C9BBA:   Dim global_148 As String * 8
  loc_004C9BCA:   Mid(global_478, 9, 8) = global_148
  loc_004C9BD9: End If
  loc_004C9BE5: Dim global_164 As String * 2
  loc_004C9C1D: If (global_164 = "**") Then
  loc_004C9C36:   Dim global_164 As String * 2
  loc_004C9C46:   Mid(global_518, 12, 2) = global_164
  loc_004C9C55: End If
  loc_004C9C61: Dim global_168 As String * 7
  loc_004C9C99: If (global_168 = "*******") Then
  loc_004C9CBE:   Dim global_168 As String * 7
  loc_004C9CD7:   var_24 = "PERIODO:   " & "MAY-IGU A " & global_168
  loc_004C9CEC: End If
  loc_004C9CF7: Dim global_182 As String * 7
  loc_004C9D2F: If (global_182 = "*******") Then
  loc_004C9D55:   Dim global_182 As String * 7
  loc_004C9D6E:   var_24 = "PERIODO:   " & "MEN-IGU A " & global_182
  loc_004C9D83: End If
  loc_004C9D8F: Dim global_182 As String * 7
  loc_004C9D9A: var_3C = global_182
  loc_004C9DB3: var_18C = (var_3C = "*******")
  loc_004C9DC3: Dim global_168 As String * 7
  loc_004C9E0D: If ((var_3C = "*******") And (global_168 = "*******")) Then
  loc_004C9E24:   Dim global_168 As String * 7
  loc_004C9E5F:   Dim global_182 As String * 7
  loc_004C9E95: End If
  loc_004C9EA6: If ("PERIODO:   " & global_168 & "   AL   " & global_182 = global_004568F4) Then
  loc_004C9EBC:   Mid(global_604, 1, 35) = "PERIODO:   " & global_168 & "   AL   " & global_182
  loc_004C9EC2: End If
  loc_004C9ECE: Dim global_196 As String * 2
  loc_004C9F06: If (global_196 = "**") Then
  loc_004C9F1F:   Dim global_196 As String * 2
  loc_004C9F2F:   Mid(global_558, 12, 2) = global_196
  loc_004C9F3E: End If
  loc_004C9F4A: Dim global_200 As String * 12
  loc_004C9F82: If (global_200 = "************") Then
  loc_004C9FCD:   Dim global_200 As String * 12
  loc_004C9FD8:   var_38 = global_200
  loc_004CA015:   global_200 = var_38
  loc_004CA038:   var_30 = "IMPORTE:   " & "MAY-IGU A " + Format(var_38, " $ ##,###,###.00")
  loc_004CA061: End If
  loc_004CA06D: Dim global_224 As String * 12
  loc_004CA0A5: If (global_224 = "************") Then
  loc_004CA0F0:   Dim global_224 As String * 12
  loc_004CA0FB:   var_38 = global_224
  loc_004CA138:   global_224 = var_38
  loc_004CA15B:   var_30 = "IMPORTE:   " & "MEN-IGU A " + Format(var_38, " $ ##,###,###.00")
  loc_004CA184: End If
  loc_004CA190: Dim global_224 As String * 12
  loc_004CA19B: var_3C = global_224
  loc_004CA1B1: var_190 = (var_3C = "************")
  loc_004CA1C3: Dim global_200 As String * 12
  loc_004CA20D: If ((var_3C = "************") And (global_200 = "************")) Then
  loc_004CA253:   Dim global_200 As String * 12
  loc_004CA25E:   var_38 = global_200
  loc_004CA29C:   global_200 = var_38
  loc_004CA2E5:   Dim global_224 As String * 12
  loc_004CA2F0:   var_3C = global_224
  loc_004CA334:   global_224 = var_3C
  loc_004CA3BE: End If
  loc_004CA3CF: If ("IMPORTE: " + Format(var_38, "$ ##,###,###.00") + "   A   " + Format(var_3C, "$ ##,###,###.00") = global_004568F4) Then
  loc_004CA3E5:   Mid(global_674, 1, 35) = "IMPORTE: " + Format(var_38, "$ ##,###,###.00") + "   A   " + Format(var_3C, "$ ##,###,###.00")
  loc_004CA3EB: End If
  loc_004CA3FF: Dim global_428 As String * 25
  loc_004CA426: Dim global_478 As String * 20
  loc_004CA4F6: Dim global_518 As String * 20
  loc_004CA51D: Dim global_558 As String * 20
  loc_004CA58D: global_424 = Space(25) + global_428 + Space(8) + global_478 + Space(2) + global_518 + Space(4) + global_558
  loc_004CA5EA: Dim global_604 As String * 35
  loc_004CA610: Dim global_674 As String * 35
  loc_004CA66F: global_600 = Space(15) + global_604 + Space(10) + global_674
  loc_004CA6B8: Dim global_004F1360 As String * 3
  loc_004CA703: If (var_38 = "COP") + 1 Then
  loc_004CA8AD:   var_8178 = " FOLIO" + Space(3) + "FEC.MOV." + Space(2) + "REG.  PAT." + Space(2) & "PER." + Space(5) + "NUM.CRED." + Space(3) + "EYM CUOTA FIJA"
  loc_004CAA64:   var_81A0 = var_8178 + Space(1) & "EYM CUOTA EXEC" + Space(1) + "EYM PREST DIN " + Space(2) + "EYM PREST ESP " + Space(1) & "USUARIO"
  loc_004CAAC8:   global_744 = var_81A0 + Space(2) + "ERROR"
  loc_004CAB6D:   global_744 = global_744 + Space((ecx - Len(global_744)))
  loc_004CADB5:   var_81E8 = " OPER." + Space(3) + "FEC.CAP." + Space(2) + "HORA CAPT." + Space(2) + "T.D." + Space(5) + " USUARIO " + Space(3) + "RIESGO DE TRAB"
  loc_004CAEF9:   var_820C = var_81E8 + Space(1) + "INVALIDEZ VIDA" + Space(1) + "GUARDERIAS    " + Space(2) + "  T O T A L   " + Space(1) + "DEL SUB"
  loc_004CAF14:   global_748 = var_820C
  loc_004CAFC7:   global_748 = global_748 + Space((ecx - Len(global_748)))
  loc_004CB03D:   var_194 = global_752
  loc_004CB16F:   var_8240 = Space(15) + "NOMBRE DEL PATRON" + Space(20) + "ACTUALIZACION " + Space(1) + "RECARGOS      " + Space(1) + "GASTOS EJEC.  "
  loc_004CB24D:   var_194 = var_8240 + Space(2) + "OTROS INGRESOS" + Space(2) + "CAJA"
  loc_004CB2DE:   var_194 = var_194 + Space((ecx - Len(var_194)))
  loc_004CB2FA: Else
  loc_004CB499:   var_8294 = var_194 + Space(5) + "FEC.MOV." + Space(5) + "REG.  PAT." + Space(4) & "PER." + Space(6) + "NUM.CRED." + Space(4) + "RETIRO"
  loc_004CB65E:   global_744 = var_8294 + Space(10) & "CESANTÍA Y VEJEZ" + Space(2) + "  T O T A L   " + Space(4) & "USUARIO" + Space(2) + "ERROR"
  loc_004CB6FE:   global_744 = global_744 + Space((ecx - Len(global_744)))
  loc_004CB942:   var_82FC = " OPER." + Space(5) + "FEC.CAP." + Space(5) + "HORA CAPT." + Space(4) + "T.D." + Space(5) + " USUARIO " + Space(5) + "ACTUALIZACION "
  loc_004CBA64:   global_748 = var_82FC + Space(6) + "RECARGOS " + Space(7) + "GASTOS EJEC.  " + Space(2) + "DEL SUB"
  loc_004CBB02:   global_748 = global_748 + Space((ecx - Len(global_748)))
  loc_004CBB5A:   var_194 = global_752
  loc_004CBBB1:   var_194 = Space(15) + "NOMBRE DEL PATRON" + Space(81) + "CAJA"
  loc_004CBC50:   var_194 = var_194 + Space((ecx - Len(var_194)))
  loc_004CBC67: End If
  loc_004CBC77: GoTo loc_004CBCF8
  loc_004CBCF7: Exit Sub
  loc_004CBCF8: ' Referenced from: 004CBC77
End Sub

Public Sub EEAMX009_Imprime_Encabezados() '4CBD40
  loc_004CBD87: global_272 = global_272 + 1
  loc_004CBD8B: var_80 = global_272
  loc_004CBDEC: global_280 = CInt(Str(global_272))
  loc_004CBEE8: var_A0 = global_280
  loc_004CBF90: global_1360 = "1EEAMX009" + Space(44) + "COORDINACION DE COBRANZA" + Space(39) + "PAGINA: " + Format(global_280, "@@@@@")
  loc_004CBF95: var_8024 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CBFCB: global_1360 = global_284
  loc_004CBFD0: var_8028 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CBFF8: global_1360 = global_416
  loc_004CBFFD: var_802C = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC025: global_1360 = global_420
  loc_004CC02A: var_8030 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC052: global_1360 = global_424
  loc_004CC057: var_8034 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC07F: global_1360 = global_600
  loc_004CC084: var_8038 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC0AC: global_1360 = global_744
  loc_004CC0B1: var_803C = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC0D9: global_1360 = global_748
  loc_004CC0DE: var_8040 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC106: global_1360 = global_752
  loc_004CC10B: var_8044 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC131: global_1360 = global_004568F4
  loc_004CC136: var_8048 = EEAMX009.EEAMX009_Write_Reporte
  loc_004CC15C: GoTo loc_004CC18B
  loc_004CC18A: Exit Sub
  loc_004CC18B: ' Referenced from: 004CC15C
End Sub

Public Sub EEAMX009_Write_Reporte() '4CC1C0
  loc_004CC211: On Error GoTo loc_004CC233
  loc_004CC225: Print 1, global_1360
  loc_004CC22E: GoTo loc_004CC2EF
  loc_004CC233: ' Referenced from: 004CC211
  loc_004CC27B: MsgBox("ERROR AL ESCRIBIR EN EL ARCHIVO DE REPORTE", 16, 10, 10, 10)
  loc_004CC2CE: var_8008 = Global.Unload Me
  loc_004CC2EF: ' Referenced from: 004CC22E
  loc_004CC2EF: Exit Sub
  loc_004CC2FA: GoTo loc_004CC321
  loc_004CC320: Exit Sub
  loc_004CC321: ' Referenced from: 004CC2FA
End Sub

Public Sub EEAMX009_ArmaDetalle() '4CC350
  loc_004CC399: stosw
  loc_004CC3AD: stosw
  loc_004CC3BB: stosw
  loc_004CC3CC: stosw
  loc_004CC3DD: stosw
  loc_004CC3EE: stosw
  loc_004CC3FF: stosw
  loc_004CC410: stosw
  loc_004CC421: stosw
  loc_004CC432: stosw
  loc_004CC450: stosw
  loc_004CC461: stosw
  loc_004CC472: stosw
  loc_004CC536: Dim 0 As String * 7
  loc_004CC5E2: Dim 0 As String * 7
  loc_004CC62F: var_1AC =
  loc_004CC6E3: call __vbaRsetFixstrFree(0000000Dh, var_118, Format(0#, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CC76C: call __vbaRsetFixstrFree(0000000Dh, var_E0, Format(0#, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CC7F5: call __vbaRsetFixstrFree(0000000Dh, var_1A8, Format(0#, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CC87E: call __vbaRsetFixstrFree(0000000Dh, var_138, Format(0#, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CC8C9: var_2E8 = global_940
  loc_004CC907: call __vbaRsetFixstrFree(0000000Dh, var_FC, Format(global_940, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CC952: var_2E8 = global_948
  loc_004CC990: call __vbaRsetFixstrFree(0000000Dh, var_18C, Format(global_948, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CC9DB: var_2E8 = global_956
  loc_004CCA16: call __vbaRsetFixstrFree(0000000Dh, var_4C, Format(global_956, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CCA61: var_2E8 = global_964
  loc_004CCA9F: call __vbaRsetFixstrFree(0000000Eh, var_154, Format(global_964, "###,###,##0.00"), 00000001h, 00000001h)
  loc_004CCAEA: var_2E8 = global_1076
  loc_004CCB28: call __vbaRsetFixstrFree(0000000Dh, var_8C, Format(global_1076, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CCB73: var_2E8 = global_1084
  loc_004CCBAE: call __vbaRsetFixstrFree(0000000Dh, var_68, Format(global_1084, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CCC37: call __vbaRsetFixstrFree(0000000Dh, var_C4, Format(0#, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CCCBD: call __vbaRsetFixstrFree(0000000Dh, var_30, Format(0#, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CCCE3: Dim global_004F1360 As String * 3
  loc_004CCD50: If (var_1AC = "COP") + 1 Then
  loc_004CCDA5:   Dim 1 As String * 10
  loc_004CCF3E:   var_2E8 = global_0045B658 + Format(global_760, "000000") + Space(1) + 1 + Space(1) + var_318 + Format(var_328, "00")
  loc_004CCF81:   var_318 = Mid(global_0045B658 + Format(global_760, "000000") + Space(1) + 1 + Space(1) + var_318 + Format(var_328, "00"), 1, 4)
  loc_004CD002:   Dim var_118 As String * 13
  loc_004CD0C0:   var_807C = var_2E8 + Space(2) + Mid(0, 6, 2) + "/" + var_318 + Space(2) + Format(var_328, "000000000") + Space(3) + var_118 + Space(2)
  loc_004CD17C:   Dim var_E0 As String * 13
  loc_004CD1BB:   Dim var_1A8 As String * 13
  loc_004CD1E5:   Dim var_138 As String * 13
  loc_004CD45E:   var_80A8 = var_807C & var_E0 + Space(2) + var_1A8 + Space(4) + var_138 + Space(2) + Format(var_2E8, "00") + Space(2) + Format(var_318, "00")
  loc_004CD49F:   global_756 = var_80A8 + Space(2) + Format(0#, "0000000000")
  loc_004CD548:   var_2E8 = global_756
  loc_004CD58E:   global_756 = var_2E8 + Space((ecx - Len(global_756)))
  loc_004CD65A:   Dim 1 As String * 10
  loc_004CD6D0:   Dim 1 As String * 8
  loc_004CD7D2:   var_80E0 = global_0045B658 + Format(var_2E8, "0000") + Space(3) + Format(1, "dd/mm/yyyy") + Space(3) + 1 + Space(5) + Format(global_920, "00")
  loc_004CD802:   ecx = var_80E0 + Space(6)
  loc_004CD8BD:   Dim global_924 As String * 8
  loc_004CD8FC:   Dim var_FC As String * 13
  loc_004CD926:   Dim var_18C As String * 13
  loc_004CD94D:   Dim var_4C As String * 13
  loc_004CDA08:   ecx = 1 & global_924 + Space(2) + var_FC + Space(2) + var_18C + Space(2) + var_4C + Space(3)
  loc_004CDAA8:   Dim var_154 As String * 14
  loc_004CDAD9:   ecx =  & var_154
  loc_004CDB6F:   ecx = var_2E8 + Space((ecx - Len()))
  loc_004CDBA8:   Dim global_976 As String * 50
  loc_004CDBE7:   Dim var_8C As String * 13
  loc_004CDC0E:   Dim var_68 As String * 13
  loc_004CDC26:   var_360 = global_972
  loc_004CDC93:   var_360 = global_0045B658 & global_976 + Space(1) + var_8C + Space(2) + var_68
  loc_004CDD02:   If global_920 = 10 Then
  loc_004CDD10:     global_1100 = global_1092
  loc_004CDD16:     global_1104 = global_1096
  loc_004CDD2C:   Else
  loc_004CDD36:     global_1104 = 0
  loc_004CDD40:   End If
  loc_004CDD68:   global_1220 = (global_1220 + global_1092)
  loc_004CDD84:   global_1228 = (global_1100 + global_1228)
  loc_004CDDA0:   global_1344 = (global_1344 + global_1092)
  loc_004CDDBC:   global_1352 = (global_1352 + global_1100)
  loc_004CDDE0:   var_2E8 = global_1092
  loc_004CDE1E:   call __vbaRsetFixstrFree(0000000Dh, var_170, Format(global_1092, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CDE67:   var_2E8 = global_1100
  loc_004CDEAB:   call __vbaRsetFixstrFree(0000000Dh, var_A8, Format(global_1100, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CDEF6:   Dim var_170 As String * 13
  loc_004CDF20:   Dim var_A8 As String * 13
  loc_004CE08D:   var_815C = var_360 + Space(2) + var_170 + Space(4) + var_A8 + Space(2) + var_170 + Space(4) + var_A8 + Space(3) + Format(global_1108, "000")
  loc_004CE0AE:   var_360 = var_815C
  loc_004CE159:   var_360 = var_360 + Space((ecx - Len(var_360)))
  loc_004CE189: Else
  loc_004CE189:   var_8174 =  + 1
  loc_004CE1D8:   Dim 1 As String * 10
  loc_004CE217:   var_338 = "00"
  loc_004CE227:   var_8178 =  +
  loc_004CE2ED:   var_360(756) = "000" + Format(var_360(760), Space((ecx - Len(var_360)))) + Space(4) + 1 + Space(3) + 1 + Format("dd/mm/yyyy", 1)
  loc_004CE371:   var_2E8 = var_360(756)
  loc_004CE3B4:   var_318 = Mid("000" + Format(var_360(760), Space((ecx - Len(var_360)))) + Space(4) + 1 + Space(3) + 1 + Format("dd/mm/yyyy", 1), 1, 4)
  loc_004CE435:   Dim var_C4 As String * 13
  loc_004CE4F3:   var_81B8 = var_2E8 + Space(4) + Mid(0, 6, 2) + "/" + var_318 + Space(3) + Format("dd/mm/yyyy", "000000000") + Space(4) + var_C4 + Space(3)
  loc_004CE512:   var_360(756) = var_81B8
  loc_004CE5AC:   Dim var_30 As String * 13
  loc_004CE5EB:   Dim var_154 As String * 14
  loc_004CE662:   var_360(756) = var_360(756) & var_30 + Space(4) + var_154 + Space(5)
  loc_004CE867:   var_360(756) = var_360(756) + Format(var_2E8, "00") + Space(2) + Format(var_318, "00") + Space(2) + Format(0#, "0000000000")
  loc_004CE956:   var_360(756) = var_360(756) + Space((ecx - Len(var_360(756))))
  loc_004CE9B1:   var_2E8 = var_360(1092)
  loc_004CE9EF:   call __vbaRsetFixstrFree(0000000Dh, var_170, Format(var_360(1092), "##,###,##0.00"), 00000001h, 00000001h, 00000001h, 00000001h, 00000001h, 00000001h, 00000001h, 00000001h)
  loc_004CEA40:   var_2E8 = var_360(1100)
  loc_004CEA7C:   call __vbaRsetFixstrFree(0000000Dh, var_A8, Format(var_360(1100), "##,###,##0.00"), 00000001h, 00000001h)
  loc_004CEB3C:   Dim 1 As String * 10
  loc_004CEBB2:   Dim  As String * 8
  loc_004CECB3:   var_821C = global_0045B658 + Format(var_2E8, "0000") + Space(6) + Format(1, "dd/mm/yyyy") + Space(3) + var_258 + Space(6) + Format(var_360(920), "00")
  loc_004CECE3:   ecx = var_821C + Space(8)
  loc_004CED9E:   Dim var_360(924) As String * 8
  loc_004CEDDD:   Dim var_8C As String * 13
  loc_004CEE04:   Dim var_68 As String * 13
  loc_004CEE9D:   ecx =  & var_360(924) + Space(5) + var_8C + Space(3) + var_68 + Space(5)
  loc_004CEF21:   Dim var_170 As String * 13
  loc_004CEF52:   ecx =  & var_170
  loc_004CEF8B:   var_824C = (ecx - Len())
  loc_004CEFEE:   ecx = var_2E8 + Space(var_824C)
  loc_004CF027:   Dim var_360(976) As String * 50
  loc_004CF0F9:   var_360(972) = global_0045B658 & var_360(976) + Space(65) + Format(var_360(1108), "000")
  loc_004CF1A4:   var_360(972) = var_360(972) + Space(var_824C)
  loc_004CF1DB:   var_360(1220) = (var_360(1220) + var_360(1092))
  loc_004CF1F7:   var_360(1344) = (var_360(1344) + var_360(1092))
  loc_004CF207: End If
  loc_004CF20D: GoTo loc_004CF2B9
End Sub

Public Function EEAMX009_CargaFechas(archCTL) '4CF5E0
  loc_004CF64D: var_8004 = EEAMX009.EEAMX009_LimpiaTabFech
  loc_004CF66E: On Error GoTo loc_004CFA79
  loc_004CF680: Open archCTL For Input As #1 Len = -1
  loc_004CF69E: Input 1, var_2C
  loc_004CF6B7: If InStr(2, var_2C, "COBR", 0) Then
  loc_004CF6C4:   Input 1, var_2C
  loc_004CF6C9: End If
  loc_004CF6E5: EEAMX009.ComFecMov.Clear
  loc_004CF71A: var_800C = EOF(1)
  loc_004CF723: If var_800C = 0 Then
  loc_004CF73D:   var_8014 = InStr(1, var_2C, global_00459E38, 0)
  loc_004CF746:   If var_8014 Then
  loc_004CF7AA:     var_24 = Trim(Mid(var_2C, var_8014(1), 10))
  loc_004CF8B3:     If CInt(Mid(var_24, 1, 2)) Then
  loc_004CF8BE:       If CInt(Mid(var_24, 4, 2)) Then
  loc_004CF8C7:         If CInt(Mid(var_24, 7, 4)) Then
  loc_004CF8D5:           If global_68 Then
  loc_004CF8DB:             If global_68 = 1 Then
  loc_004CF8E4:               var_D0 = (var_34 - global_68(20))
  loc_004CF8ED:               If (var_34 - global_68(20)) >= global_68(16) Then
  loc_004CF8EF:                 var_8028 = Err.Raise
  loc_004CF8FB:               End If
  loc_004CF904:             Else
  loc_004CF904:             End If
  loc_004CF904:             var_802C = Err.Raise
  loc_004CF90A:           End If
  loc_004CF913:           global_68(12) = global_68(12) + var_802C
  loc_004CF915:           ecx = var_24
  loc_004CF96F:           EEAMX009.ComFecMov.AddItem var_24, 10
  loc_004CF9A4:           var_34 = var_34(1)
  loc_004CF9A7:         End If
  loc_004CF9A7:       End If
  loc_004CF9A7:     End If
  loc_004CF9B4:     Input 1, var_2C
  loc_004CF9BD:     GoTo loc_004CF718
  loc_004CF9C2:   End If
  loc_004CF9CE:   var_8030 = InStr(1, var_2C, "LGP-TOTAL", 0)
  loc_004CF9D6:   If var_8030 = 0 Then
  loc_004CF9D8:     GoTo loc_004CF9A9
  loc_004CF9DA:   End If
  loc_004CF9DA: End If
  loc_004CF9DD: var_94 = var_34
  loc_004CF9F8: var_5C = Str(var_34)
  loc_004CFA06: If global_68 Then
  loc_004CFA0C:   If global_68 = 1 Then
  loc_004CFA19:     If (esi - global_68(20)) >= global_68(16) Then
  loc_004CFA1B:       var_8034 = Err.Raise
  loc_004CFA21:     End If
  loc_004CFA26:   Else
  loc_004CFA26:   End If
  loc_004CFA26:   var_8038 = Err.Raise
  loc_004CFA2E: End If
  loc_004CFA4B: global_68(12) = global_68(12) + var_8038
  loc_004CFA4D: ecx = var_5C
  loc_004CFA67: Close #1
  loc_004CFA74: GoTo loc_004CFB06
  loc_004CFA79: ' Referenced from: 004CF66E
  loc_004CFAD3: MsgBox("ERROR AL ABRIR ARCHIVO DE CONTROL DE FECHAS", 48, 10, 10, 10)
  loc_004CFAFC: If var_38 Then
  loc_004CFB00:   Close #1
  loc_004CFB06: End If
  loc_004CFB06: ' Referenced from: 004CFA74
  loc_004CFB06: Exit Sub
  loc_004CFB11: GoTo loc_004CFB44
  loc_004CFB43: Exit Function
  loc_004CFB44: ' Referenced from: 004CFB11
End Function

Public Sub EEAMX009_Escribe_Totales() '4CFB90
  Dim var_1F0 As Variant
  loc_004CFBD6: stosw
  loc_004CFBE4: stosw
  loc_004CFBFD: stosw
  loc_004CFC12: stosw
  loc_004CFC23: stosw
  loc_004CFC34: stosw
  loc_004CFC45: stosw
  loc_004CFC56: stosw
  loc_004CFC67: stosw
  loc_004CFC78: stosw
  loc_004CFC89: stosw
  loc_004CFC9A: stosw
  loc_004CFCAB: stosw
  loc_004CFCD4: stosw
  loc_004CFD64: var_2E8 = global_1116
  loc_004CFDA4: call __vbaRsetFixstrFree(0000000Fh, var_188, Format(global_1116, "####,###,##0.00"), 00000001h, 00000001h, Me, 0, 0, 0)
  loc_004CFDF9: var_2E8 = global_1124
  loc_004CFE33: call __vbaRsetFixstrFree(0000000Fh, var_108, Format(global_1124, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004CFE82: var_2E8 = global_1132
  loc_004CFEB9: call __vbaRsetFixstrFree(0000000Fh, var_34, Format(global_1132, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004CFF08: var_2E8 = global_1140
  loc_004CFF42: call __vbaRsetFixstrFree(0000000Fh, var_128, Format(global_1140, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004CFF93: var_2E8 = global_1168
  loc_004CFFC8: call __vbaRsetFixstrFree(0000000Fh, var_54, Format(global_1168, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D0017: var_2E8 = global_1176
  loc_004D0051: call __vbaRsetFixstrFree(0000000Fh, var_E8, Format(global_1176, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D00A0: var_2E8 = global_1184
  loc_004D00DA: call __vbaRsetFixstrFree(0000000Fh, var_1E8, Format(global_1184, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D0129: var_2E8 = global_1192
  loc_004D0163: call __vbaRsetFixstrFree(00000011h, var_C8, Format(global_1192, "##,###,###,##0.00"), 00000001h, 00000001h)
  loc_004D01B2: var_2E8 = global_1204
  loc_004D01EC: call __vbaRsetFixstrFree(0000000Fh, var_1C8, Format(global_1204, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D0235: var_2E8 = global_1212
  loc_004D0275: call __vbaRsetFixstrFree(0000000Fh, var_1A8, Format(global_1212, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D02C4: var_2E8 = global_1220
  loc_004D02FE: call __vbaRsetFixstrFree(0000000Fh, var_A4, Format(global_1220, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D034D: var_2E8 = global_1228
  loc_004D0387: call __vbaRsetFixstrFree(0000000Fh, var_148, Format(global_1228, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D03D6: var_2E8 = global_1148
  loc_004D040D: call __vbaRsetFixstrFree(0000000Fh, var_78, Format(global_1148, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D045C: var_2E8 = global_1156
  loc_004D0496: call __vbaRsetFixstrFree(0000000Fh, var_168, Format(global_1156, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D04C2: Set var_1F0 = EEAMX009.LblNumReg
  loc_004D04D2: var_304 = var_1F0
  loc_004D04D8: var_1EC = var_1F0.Caption
  loc_004D0551: Dim var_84 As String * 5
  loc_004D055F: var_1EC = var_84
  loc_004D05AA: var_84 = var_1EC
  loc_004D05C3: call __vbaRsetFixstrFree(00000005h, var_84, Format(var_1EC, "#####"), 00000001h, 00000001h)
  loc_004D05F1: Dim global_004F1360 As String * 3
  loc_004D0649: If (var_1EC = "COP") + 1 Then
  loc_004D0688:   Dim var_188 As String * 15
  loc_004D06A7:   Dim var_108 As String * 15
  loc_004D06C3:   Dim var_34 As String * 15
  loc_004D06F1:   Dim var_128 As String * 15
  loc_004D07CE:   global_1112 = "          T O T A L E S :" + Space(10) + "CASOS" + Space(10) + var_188 + var_108 + var_34 + Space(2) + var_128
  loc_004D08CB:   global_1112 = global_1112 + Space((ecx - Len(global_1112)))
  loc_004D090A:   Dim var_84 As String * 5
  loc_004D0935:   Dim var_54 As String * 15
  loc_004D0954:   Dim var_E8 As String * 15
  loc_004D0973:   Dim var_1E8 As String * 15
  loc_004D0992:   Dim var_C8 As String * 17
  loc_004D0A45:   global_1164 = Space(35) + var_84 + Space(10) + var_54 + var_E8 + var_1E8 + var_C8
  loc_004D0B34:   global_1164 = global_1164 + Space((ecx - Len(global_1164)))
  loc_004D0B73:   Dim var_1C8 As String * 15
  loc_004D0B92:   Dim var_1A8 As String * 15
  loc_004D0BB1:   Dim var_A4 As String * 15
  loc_004D0BDF:   Dim var_148 As String * 15
  loc_004D0C7D:   global_1200 = Space(50) + var_1C8 + var_1A8 + var_A4 + Space(2) + var_148
  loc_004D0D64:   global_1200 = global_1200 + Space((ecx - Len(global_1200)))
  loc_004D0D8C: Else
  loc_004D0DC2:   Dim var_78 As String * 15
  loc_004D0DF0:   Dim var_168 As String * 15
  loc_004D0E1E:   Dim var_C8 As String * 17
  loc_004D0E24:   var_2C8 = var_C8
  loc_004D0EDC:   var_80E8 = global_1200 + Space() + "CASOS" + Space(19) + var_78 + Space(1) + var_168 + Space(1) + var_2C8
  loc_004D0EFB:   global_1112 = var_2C8
  loc_004D0FAE:   var_2E8 = global_1112
  loc_004D0FD9:   var_80F4 = var_2E8 + Space((ecx - Len(global_1112)))
  loc_004D0FF8:   global_1112 = var_2E8
  loc_004D1037:   Dim var_84 As String * 5
  loc_004D1065:   Dim var_1C8 As String * 15
  loc_004D1093:   Dim var_1A8 As String * 15
  loc_004D10C1:   Dim var_A4 As String * 15
  loc_004D116A:   var_8110 = Space(35) + var_84 + Space(19) + var_1C8 + Space(1) + var_1A8 + Space(3) + var_A4
  loc_004D1189:   global_1164 = var_2E0
  loc_004D124C:   var_200 = Space((ecx - Len(global_1164)))
  loc_004D1267:   var_811C = global_1164 + var_200
  loc_004D1286:   global_1164 = var_200
  loc_004D12DB:   global_1200 = Space(59)
  loc_004D133A:   var_200 = Space((ecx - Len(global_1200)))
  loc_004D1355:   var_8128 = global_1200 + var_200
  loc_004D1374:   global_1200 = var_200
  loc_004D13A1: End If
  loc_004D13AF: global_1360 = global_004568F4
  loc_004D13B8: var_812C = EEAMX009.EEAMX009_Write_Reporte
  loc_004D13E0: global_756 = global_1112
  loc_004D13EE: ecx = global_1164
  loc_004D13FC: global_972 = global_1200
  loc_004D1408: global_64 = global_266
  loc_004D140C: var_8130 = EEAMX009.EEAMX009_Imprime_Linea
  loc_004D142D: GoTo loc_004D14BF
  loc_004D14BE: Exit Sub
  loc_004D14BF: ' Referenced from: 004D142D
End Sub

Public Function EEAMX009_ExistePath(path) '4D14F0

End Function

Public Sub EEAMX009_EliminaBDatos() '4D1560

End Sub

Public Sub EEAMX009_GeneraMES(cadSubDel, cadRep) '4D15C0
  Dim var_5C As Variant
  Dim global_004F1DB4 As Global
  Dim var_11C As Label
  Dim var_114 As Variant
  Dim global_004F115C As Form
  Dim var_80 As Variant
  loc_004D1659: If global_68 Then
  loc_004D165F:   If global_68 = 1 Then
  loc_004D166B:     If global_68(20) >= global_68(16) Then
  loc_004D166D:       var_8004 = Err.Raise
  loc_004D1673:     End If
  loc_004D167C:   Else
  loc_004D167C:   End If
  loc_004D167C:   var_8008 = Err.Raise
  loc_004D1682: End If
  loc_004D1691: var_800C = (edx+eax = global_004568F4)
  loc_004D1699: If var_800C = 0 Then
  loc_004D173D:   MsgBox("SE DEBE CARGAR EL ARCHIVO DE FECHAS" + Chr(10) + "DEL MES QUE QUIERA PROCESAR", 48, 10, 10, 10)
  loc_004D1777: Else
  loc_004D177C:   If @0 + 0(68) Then
  loc_004D1782:     If @0 + 0(68) = 1 Then
  loc_004D1793:       If (edi - @0 + 0(68)(20)) >= @0 + 0(68)(16) Then
  loc_004D1795:         var_8018 = Err.Raise
  loc_004D179B:       End If
  loc_004D17A4:     Else
  loc_004D17A4:     End If
  loc_004D17A4:     var_801C = Err.Raise
  loc_004D17AA:   End If
  loc_004D17B4:   edx+eax = CInt()
  loc_004D17C3:   var_40 = edx+eax
  loc_004D1803:   EEAMX009.PnlCountMes._Caption
  loc_004D18DD:   var_11C = global_004F1DB4
  loc_004D18E3:   var_5C = Global.Screen
  loc_004D1907:   var_124 = var_5C
  loc_004D190F:   var_5C.MousePointer = CLng(11)
  loc_004D193B:   If @ + (68) Then
  loc_004D1941:     If @ + (68) = 1 Then
  loc_004D1951:       var_11C = (var_30 - @ + (68)(20))
  loc_004D1957:       If (var_30 - @ + (68)(20)) >= @ + (68)(16) Then
  loc_004D1959:         var_8024 = Err.Raise
  loc_004D1965:       End If
  loc_004D196A:     Else
  loc_004D196A:     End If
  loc_004D196A:     var_8028 = Err.Raise
  loc_004D1970:   End If
  loc_004D1987:   If (ecx+eax = global_004568F4) Then
  loc_004D1995:     If var_30 <= var_40 Then
  loc_004D19AE:       If  + (68) Then
  loc_004D19B4:         If  + (68) = 1 Then
  loc_004D19C4:           If (var_30 -  + (68)(20)) >=  + (68)(16) Then
  loc_004D19C6:             var_8030 = Err.Raise
  loc_004D19CF:           End If
  loc_004D19D8:         Else
  loc_004D19D8:         End If
  loc_004D19D8:         var_8034 = Err.Raise
  loc_004D19E1:       End If
  loc_004D19EA:       var_44(12) =  + (68)(12) + var_8034
  loc_004D1A3D:       Set var_5C = EEAMX009.LblMens
  loc_004D1A4A:       var_11C = var_5C
  loc_004D1A75:       var_5C.Caption = "PROCESANDO FECHA :   " & Trim( + (68)(12)+var_8034)
  loc_004D1AA7:       If var_18 = 0 Then
  loc_004D1AC0:         EEAMX009.LblMens.BackColor = CLng(12648447)
  loc_004D1AFB:         EEAMX009.LblMens.ForeColor = "s"
  loc_004D1B25:       Else
  loc_004D1B3C:         EEAMX009.LblMens.BackColor = CLng(12582912)
  loc_004D1B77:         EEAMX009.LblMens.ForeColor = CLng(16777215)
  loc_004D1B9F:       End If
  loc_004D1BB4:       EEAMX009.LblMens.Refresh
  loc_004D1C54:       If Not (.EEAMX009_Genera_Reporte(cadSubDel & Trim( + (68)(12)+var_8034) & cadRep)) = 0 Then
  loc_004D1C84:         var_48 = EEAMX009.LblNumReg.Caption
  loc_004D1CD7:         Set var_5C = EEAMX009.LblRegMes
  loc_004D1CE9:         var_11C = var_5C
  loc_004D1D1D:         var_5C.Caption = CStr(Str(CInt() + var_1C+var_1C))
  loc_004D1D66:         Set var_5C = EEAMX009.LblRegMes
  loc_004D1D6B:         var_11C = var_5C
  loc_004D1D71:         var_5C.Refresh
  loc_004D1DAF:         Set var_5C = EEAMX009.PnlCountMes
  loc_004D1DB6:         var_5C.FloodPercent
  loc_004D1DD4:         var_11C = (CInt(var_5C) < 100)
  loc_004D1DF1:         If var_11C = 0 Then GoTo loc_004D1936
  loc_004D1E11:         var_148 = var_30(1)
  loc_004D1E1D:         var_154 = var_40
  loc_004D1E30:         If global_004F1000 = 0 Then
  loc_004D1E3A:         Else
  loc_004D1E4B:         End If
  loc_004D1E51:         var_C8 = ((var_148 / var_154) * 100)
  loc_004D1EA1:         EEAMX009.PnlCountMes._Caption
  loc_004D1EA7:         GoTo loc_004D192D
  loc_004D1EAC:       End If
  loc_004D1EC3:       EEAMX009.DirLstLGP.Visible = True
  loc_004D1F01:       EEAMX009.FilBoxLGP.Visible = True
  loc_004D1F3F:       EEAMX009.CmbTipArch.Visible = True
  loc_004D1F7D:       EEAMX009.LblEspera.Visible = False
  loc_004D1FEC:       Global.Screen.MousePointer = 0
  loc_004D204F:       var_114 = EEAMX009.TbxFecMov(0).TabIndex
  loc_004D20DC:       var_58 = Mid$(cadSubDel & Trim( + (68)(12)+var_8034) & cadRep, 3, 10)
  loc_004D2118:       var_8060 = .EEAMX009_MenConBarMsj("CADENA ENVIADA " & 0, &HFF)
  loc_004D2174:       Set var_5C = EEAMX009.TbxFecMov
  loc_004D219D:       var_5C(0).SetFocus
  loc_004D21EC:       var_8068 = EEAMX009.Refresh
  loc_004D220B:       If EEAMX009.hWnd Then
  loc_004D220F:         Close #1
  loc_004D2215:       End If
  loc_004D221A:       If @#StkVar1%StkVar3 + %StkVar2(86) = 0 Then GoTo loc_004D2969
  loc_004D222D:       If = EEAMX009.hWnd >= 0 Then GoTo loc_004D2969
  loc_004D223F:       CheckObj(= EEAMX009.hWnd, = EEAMX009.BackColor, global_0045A67C, 88)
  loc_004D2246:     End If
  loc_004D2246:   End If
  loc_004D2249:   If CInt() + var_1C+var_1C > 0 Then
  loc_004D2252:     var_8070 = .EEAMX009_EscTotMES
  loc_004D2272:     If EEAMX009.hWnd Then
  loc_004D2276:       Close #1
  loc_004D227C:     End If
  loc_004D2280:     If @#StkVar1%StkVar3 + %StkVar2(86) Then
  loc_004D2288:       var_8074 = = EEAMX009.hWnd
  loc_004D22A3:     End If
  loc_004D22B1:     call var_8078 = global_004F115C(var_5C, EEAMX009.DirLstLGP)
  loc_004D22B8:     var_11C = var_8078
  loc_004D22BE:     var_8078.UnkVCall_00000094h
  loc_004D22F9:     call var_807C = global_004F115C(var_5C, EEAMX009.FilBoxLGP)
  loc_004D2300:     var_11C = var_807C
  loc_004D2306:     var_807C.UnkVCall_00000094h
  loc_004D2341:     call var_8080 = global_004F115C(var_5C, EEAMX009.CmbTipArch)
  loc_004D2348:     var_11C = var_8080
  loc_004D234E:     var_8080.UnkVCall_0000009Ch
  loc_004D2389:     call var_8084 = global_004F115C(var_5C, EEAMX009.LblEspera)
  loc_004D238F:     var_11C = var_8084
  loc_004D2395:     var_8084.UnkVCall_0000009Ch
  loc_004D23D0:     call var_8088 = global_004F115C(var_5C, EEAMX009.LblRegMes)
  loc_004D23E2:     var_11C = var_8088
  loc_004D2408:     var_48 = CStr(Str(CInt() + var_1C+var_1C))
  loc_004D2418:     var_48 = var_8088.UnkVCall_00000054h
  loc_004D2471:     var_5C = Global.Screen
  loc_004D24F8:     call var_8090 = global_004F115C(var_5C, EEAMX009.PnlCountMes, 00000064h, var_C4)
  loc_004D24FB:     var_8090._Caption
  loc_004D2514:     call var_8094 = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D2520:     var_8094.UnkVCall_00000064h
  loc_004D254F:     call var_8098 = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D255B:     var_8098.UnkVCall_0000006Ch
  loc_004D258A:     call var_809C = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D2596:     var_809C.UnkVCall_00000054h
  loc_004D25C3:     If 1 <= 120 Then
  loc_004D25D7:       call var_80A0 = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D2601:       If global_004F1000 = 0 Then
  loc_004D260B:       Else
  loc_004D261C:       End If
  loc_004D262C:       var_168 = ((var_164 / 6) + 1)
  loc_004D263C:       var_168 = var_80A0.UnkVCall_000000B4h
  loc_004D2671:       call var_80A4 = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D2678:       var_80A4.UnkVCall_000001C8h
  loc_004D26AD:       GoTo loc_004D25BC
  loc_004D26B2:     End If
  loc_004D26BF:     @ + (264) =  + (264) + 1
  loc_004D26D0:     If @ + (264)+1 >= 100 Then
  loc_004D26D7:     End If
  loc_004D2709:     var_C8 =  + (264)
  loc_004D2724:     var_54 = Format$(@ + (264), "00")
  loc_004D2760:     var_48 = "C:\COBRANZA\INI\conver.ini"
  loc_004D2790:     var_2C = Proc_489D60("CurSerie", 8, "Parametros")
  loc_004D27CF:     call var_80B0 = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D27DB:     var_80B0.UnkVCall_000000B4h
  loc_004D2812:     call var_80B4 = global_004F115C(var_5C, EEAMX009.LblMens)
  loc_004D2819:     var_80B4.UnkVCall_000001C8h
  loc_004D2841:   Else
  loc_004D28DF:     MsgBox("NO SE HALLARON DATOS PARA GENERAR EL REPORTE" + Chr(10) + "CON LOS PARÁMETROS REQUERIDOS", 48, 10, 10, 10)
  loc_004D2918:     If var_80B4(88) Then
  loc_004D291C:       Close #1
  loc_004D293C:       Kill var_80B4(92)
  loc_004D2942:     End If
  loc_004D2946:     If var_80B4(86) Then
  loc_004D294E:       var_80B4 = var_80B4(96).UnkVCall_00000058h
  loc_004D2969:     End If
  loc_004D2969:   End If
  loc_004D2969: End If
  loc_004D296F: GoTo loc_004D29D7
  loc_004D29D6: Exit Sub
  loc_004D29D7: ' Referenced from: 004D296F
End Sub

Public Sub EEAMX009_LimpiaTabFech() '4D2A20
  loc_004D2A69: ReDim global_68(0 To 35)
  loc_004D2A76: If global_68 Then
  loc_004D2A7C:   If global_68 = 1 Then
  loc_004D2A8B:     If global_68 >= global_68 Then
  loc_004D2A8D:       var_8004 = Err.Raise
  loc_004D2A93:     End If
  loc_004D2A9C:   Else
  loc_004D2A9C:   End If
  loc_004D2A9C:   var_8008 = Err.Raise
  loc_004D2AA2: End If
  loc_004D2ABE: If esi+1 <= 35 Then GoTo loc_004D2A72
End Sub

Public Sub EEAMX009_EscTotMES() '4D2AF0
  Dim var_1F0 As Variant
  loc_004D2B36: stosw
  loc_004D2B44: stosw
  loc_004D2B52: stosw
  loc_004D2B63: stosw
  loc_004D2B74: stosw
  loc_004D2B85: stosw
  loc_004D2B96: stosw
  loc_004D2BA7: stosw
  loc_004D2BB8: stosw
  loc_004D2BD7: stosw
  loc_004D2BEE: stosw
  loc_004D2BFF: stosw
  loc_004D2C10: stosw
  loc_004D2C39: stosw
  loc_004D2CC9: var_2E8 = global_1240
  loc_004D2D09: call __vbaRsetFixstrFree(0000000Fh, var_13C, Format(global_1240, "####,###,##0.00"), 00000001h, 00000001h, Me, 0, 0, 0)
  loc_004D2D5E: var_2E8 = global_1248
  loc_004D2D98: call __vbaRsetFixstrFree(0000000Fh, var_BC, Format(global_1248, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D2DE7: var_2E8 = global_1256
  loc_004D2E21: call __vbaRsetFixstrFree(0000000Fh, var_1C8, Format(global_1256, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D2E70: var_2E8 = global_1264
  loc_004D2EAA: call __vbaRsetFixstrFree(0000000Fh, var_DC, Format(global_1264, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D2EFB: var_2E8 = global_1292
  loc_004D2F30: call __vbaRsetFixstrFree(0000000Fh, var_7C, Format(global_1292, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D2F7F: var_2E8 = global_1300
  loc_004D2FB9: call __vbaRsetFixstrFree(0000000Fh, var_FC, Format(global_1300, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D3008: var_2E8 = global_1308
  loc_004D303F: call __vbaRsetFixstrFree(0000000Fh, var_34, Format(global_1308, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D308E: var_2E8 = global_1316
  loc_004D30C5: call __vbaRsetFixstrFree(00000011h, var_5C, Format(global_1316, "##,###,###,##0.00"), 00000001h, 00000001h)
  loc_004D3114: var_2E8 = global_1328
  loc_004D314E: call __vbaRsetFixstrFree(0000000Fh, var_188, Format(global_1328, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D3197: var_2E8 = global_1336
  loc_004D31D7: call __vbaRsetFixstrFree(0000000Fh, var_15C, Format(global_1336, "####,###,##0.00"), 00000001h, 00000001h)
  loc_004D3226: var_2E8 = global_1344
  loc_004D3260: call __vbaRsetFixstrFree(0000000Fh, var_9C, Format(global_1344, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D32AF: var_2E8 = global_1352
  loc_004D32E9: call __vbaRsetFixstrFree(0000000Fh, var_1A8, Format(global_1352, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D3338: var_2E8 = global_1272
  loc_004D3372: call __vbaRsetFixstrFree(0000000Fh, var_1E8, Format(global_1272, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D33C1: var_2E8 = global_1280
  loc_004D33FB: call __vbaRsetFixstrFree(0000000Fh, var_11C, Format(global_1280, "##,###,##0.00"), 00000001h, 00000001h)
  loc_004D3427: Set var_1F0 = EEAMX009.LblRegMes
  loc_004D3437: var_304 = var_1F0
  loc_004D343D: var_1EC = var_1F0.Caption
  loc_004D34B6: Dim var_168 As String * 6
  loc_004D34C4: var_1EC = var_168
  loc_004D350F: var_168 = var_1EC
  loc_004D3528: call __vbaRsetFixstrFree(00000006h, var_168, Format(var_1EC, "#####"), 00000001h, 00000001h)
  loc_004D3556: Dim global_004F1360 As String * 3
  loc_004D35AC: If (var_1EC = "COP") + 1 Then
  loc_004D35F1:   Dim var_13C As String * 15
  loc_004D360C:   Dim var_BC As String * 15
  loc_004D3627:   Dim var_1C8 As String * 15
  loc_004D3651:   Dim var_DC As String * 15
  loc_004D3713:   global_1236 = "          T O T A L E S ( MENSUAL ):" + Space(5) + "CASOS" + Space(4) + var_13C + var_BC + var_1C8 + Space(2) + var_DC
  loc_004D381D:   global_1236 = global_1236 + Space((ecx - Len(global_1236)))
  loc_004D385C:   Dim var_168 As String * 6
  loc_004D3887:   Dim var_7C As String * 15
  loc_004D38A6:   Dim var_FC As String * 15
  loc_004D38C2:   Dim var_34 As String * 15
  loc_004D38DE:   Dim var_5C As String * 17
  loc_004D397C:   global_1288 = Space(40) + var_168 + Space(4) + var_7C + var_FC + var_34 + var_5C
  loc_004D3A78:   global_1288 = global_1288 + Space((ecx - Len(global_1288)))
  loc_004D3AB7:   Dim var_188 As String * 15
  loc_004D3AD6:   Dim var_15C As String * 15
  loc_004D3AF5:   Dim var_9C As String * 15
  loc_004D3B23:   Dim var_1A8 As String * 15
  loc_004D3BB0:   global_1324 = Space(50) + var_188 + var_15C + var_9C + Space(2) + var_1A8
  loc_004D3C9F:   global_1324 = global_1324 + Space((ecx - Len(global_1324)))
  loc_004D3CCA: Else
  loc_004D3D05:   Dim var_1E8 As String * 15
  loc_004D3D33:   Dim var_11C As String * 15
  loc_004D3D5E:   Dim var_5C As String * 17
  loc_004D3D64:   var_2C8 = var_5C
  loc_004D3E1C:   var_80E8 = global_1324 + Space(15) + "CASOS" + Space(3) + var_1E8 + Space(1) + var_11C + Space(1) + var_2C8
  loc_004D3E3B:   global_1236 = var_2C8
  loc_004D3EEE:   var_2E8 = global_1236
  loc_004D3F19:   var_80F4 = var_2E8 + Space((ecx - Len(global_1236)))
  loc_004D3F38:   global_1236 = var_2E8
  loc_004D3F77:   Dim var_168 As String * 6
  loc_004D3FA5:   Dim var_188 As String * 15
  loc_004D3FD3:   Dim var_15C As String * 15
  loc_004D4001:   Dim var_9C As String * 15
  loc_004D40AA:   var_8110 = Space(49) + var_168 + Space(5) + var_188 + Space(1) + var_15C + Space(3) + var_9C
  loc_004D40C9:   global_1288 = var_2E0
  loc_004D418C:   var_200 = Space((ecx - Len(global_1288)))
  loc_004D41A7:   var_811C = global_1288 + var_200
  loc_004D41C6:   global_1288 = var_200
  loc_004D421B:   global_1324 = Space(59)
  loc_004D427A:   var_200 = Space((ecx - Len(global_1324)))
  loc_004D4295:   var_8128 = global_1324 + var_200
  loc_004D42B4:   global_1324 = var_200
  loc_004D42E1: End If
  loc_004D42EF: global_1360 = global_004568F4
  loc_004D42F8: var_812C = EEAMX009.EEAMX009_Write_Reporte
  loc_004D4320: global_756 = global_1236
  loc_004D432E: ecx = global_1288
  loc_004D433C: global_972 = global_1324
  loc_004D4341: var_8130 = EEAMX009.EEAMX009_Imprime_Linea
  loc_004D4362: GoTo loc_004D43F4
  loc_004D43F3: Exit Sub
  loc_004D43F4: ' Referenced from: 004D4362
End Sub

Public Function EEAMX009_CargaTXTBD(archCTL) '4D4420
  loc_004D44AC: ReDim global_004F1370(0 To 33)
  loc_004D44B7: On Error GoTo loc_004D490C
  loc_004D44C9: Open archCTL For Input As #1 Len = -1
  loc_004D44E0: Input 1, var_28
  loc_004D44F9: If InStr(2, var_28, "COBR", 0) Then
  loc_004D4506:   Input 1, var_28
  loc_004D450B: End If
  loc_004D454A: var_8008 = EOF(1)
  loc_004D4553: If var_8008 = 0 Then
  loc_004D456E:   var_8010 = InStr(1, var_28, global_00459E38, 0)
  loc_004D4577:   If var_8010 Then
  loc_004D45DA:     var_20 = Trim(Mid(var_28, var_8010(1), 10))
  loc_004D463D:     var_24 = Trim(Mid(var_20, 1, 2))
  loc_004D46A0:     var_3C = Trim(Mid(var_20, 4, 2))
  loc_004D4706:     var_38 = Trim(Mid(var_20, 7, 4))
  loc_004D4725:     var_3C = CInt()
  loc_004D4734:     var_F4 = var_3C + 1
  loc_004D4754:     var_38 = CInt()
  loc_004D4762:     If var_38 + 1 Then GoTo loc_004D4A9D
  loc_004D4787:     var_74 = "LG" & CInt() & var_3C
  loc_004D47C0:     var_6C = Mid(var_38, 3, 2)
  loc_004D47CD:     If global_004F1370 Then
  loc_004D47D3:       If global_004F1370 = 1 Then
  loc_004D47DF:         If global_004F1370 >= global_004F1370 Then
  loc_004D47E1:           var_802C = Err.Raise
  loc_004D47E7:         End If
  loc_004D47EF:       Else
  loc_004D47EF:       End If
  loc_004D47EF:       var_8030 = Err.Raise
  loc_004D47F7:     End If
  loc_004D4825:     global_004F1370 = var_74 + var_6C
  loc_004D4869:     var_34 = var_34(1)
  loc_004D486E:   Else
  loc_004D4883:     If InStr(1, var_28, "LGP-TOTAL", 0) Then GoTo loc_004D489E
  loc_004D4885:   End If
  loc_004D4890:   Input 1, var_28
  loc_004D4899:   GoTo loc_004D4548
  loc_004D489E: End If
  loc_004D48A0: Close #1
  loc_004D48AE: If global_004F1370 Then
  loc_004D48B4:   If global_004F1370 = 1 Then
  loc_004D48C0:     If global_004F1370 >= global_004F1370 Then
  loc_004D48C2:       var_8040 = Err.Raise
  loc_004D48CE:     End If
  loc_004D48D6:   Else
  loc_004D48D6:   End If
  loc_004D48D6:   var_8044 = Err.Raise
  loc_004D48E2: End If
  loc_004D48EF: global_004F1370 = "FIN"
  loc_004D48F9: global_004F1230 = var_34
  loc_004D4907: GoTo loc_004D4A9D
  loc_004D490C: ' Referenced from: 004D44B7
  loc_004D4966: MsgBox("ERROR AL ABRIR ARCHIVO DE CONTROL DE FECHAS", 48, 10, 10, 10)
  loc_004D498A: var_8048 = Err
  loc_004D49BF: var_804C = Err
  loc_004D4A4E: MsgBox((Err.Description + Err.Number), 0, 10, 10, 10)
  loc_004D4A93: If global_88 Then
  loc_004D4A97:   Close #1
  loc_004D4A9D: End If
  loc_004D4A9D: ' Referenced from: 004D4907
  loc_004D4A9D: Exit Sub
  loc_004D4AA9: GoTo loc_004D4AEA
  loc_004D4AE9: Exit Function
  loc_004D4AEA: ' Referenced from: 004D4AA9
End Function

Public Sub EliminaArchivo(archivo) '4D4B40
  Dim var_68 As Variant
  loc_004D4B99: var_8004 = EEAMX009.Proc_11_95_4D4CD0(Me)
  loc_004D4C01: var_24 = global_60
  loc_004D4C29: var_2C = archivo & global_00460174 & global_00460174
  loc_004D4C38: var_68 = UnicodeToAnsi(UDT_1_00457848, Me.hWnd)
  loc_004D4C3F: var_8010 = SHFileOperation(var_68)
  loc_004D4C57: var_34 = AnsiToUnicode(UDT_1_00457848, var_68)
  loc_004D4C71: GoTo loc_004D4C87
  loc_004D4C86: Exit Sub
  loc_004D4C87: ' Referenced from: 004D4C71
End Sub

Private Sub Proc_11_95_4D4CD0() '4D4CD0

End Sub
