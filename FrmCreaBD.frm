VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FrmCreaBD
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 0
  ClientTop = 690
  ClientWidth = 8910
  ClientHeight = 5505
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 18
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  PaletteMode = 1
  Begin VB.FileListBox File1
    BackColor = &H80FFFF&
    Left = 0
    Top = 0
    Width = 315
    Height = 435
    Visible = 0   'False
    TabIndex = 23
  End
  Begin VB.TextBox Text1
    Left = 210
    Top = 210
    Width = 300
    Height = 555
    Visible = 0   'False
    Text = "Text1"
    TabIndex = 22
  End
  Begin Threed.SSPanel SSPanel1
    Left = 945
    Top = 90
    Width = 6585
    Height = 600
    TabIndex = 0
    OleObjectBlob = "FrmCreaBD.frx":0000
  End
  Begin Threed.SSFrame SSFrame1
    Index = 0
    Left = 270
    Top = 1350
    Width = 5775
    Height = 3930
    TabIndex = 1
    OleObjectBlob = "FrmCreaBD.frx":0095
    Begin Threed.SSPanel PnlMtros
      Left = 225
      Top = 1170
      Width = 4095
      Height = 375
      TabIndex = 2
      OleObjectBlob = "FrmCreaBD.frx":0109
    End
    Begin Threed.SSPanel PnlMtroDia
      Left = 225
      Top = 2430
      Width = 4095
      Height = 375
      TabIndex = 3
      OleObjectBlob = "FrmCreaBD.frx":0188
    End
    Begin Threed.SSPanel PnlBD
      Left = 225
      Top = 3375
      Width = 4095
      Height = 375
      TabIndex = 4
      OleObjectBlob = "FrmCreaBD.frx":0207
    End
    Begin Threed.SSPanel PanTituMtros
      Left = 225
      Top = 495
      Width = 4095
      Height = 420
      TabIndex = 5
      OleObjectBlob = "FrmCreaBD.frx":0286
    End
    Begin Threed.SSPanel PanTituBD
      Left = 225
      Top = 2925
      Width = 4095
      Height = 420
      TabIndex = 6
      OleObjectBlob = "FrmCreaBD.frx":031E
    End
    Begin Threed.SSPanel PanTituMtroDia
      Left = 225
      Top = 1980
      Width = 4095
      Height = 420
      TabIndex = 7
      OleObjectBlob = "FrmCreaBD.frx":03B2
    End
    Begin VB.Label LblTitCont
      Caption = "Reg.por Dia"
      Index = 4
      BackColor = &H404000&
      ForeColor = &HFFFFFF&
      Left = 4545
      Top = 2115
      Width = 1095
      Height = 285
      TabIndex = 21
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
    Begin VB.Label LblTitCont
      Caption = "Num. Dias"
      Index = 3
      BackColor = &H800080&
      ForeColor = &HFFFFFF&
      Left = 4545
      Top = 3060
      Width = 1095
      Height = 285
      TabIndex = 20
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
    Begin VB.Label LblTitCont
      Caption = "Reg. Acum"
      Index = 2
      BackColor = &HC0&
      ForeColor = &HFFFFFF&
      Left = 4545
      Top = 1170
      Width = 1095
      Height = 285
      TabIndex = 19
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
    Begin VB.Label LblTitCont
      Caption = "Reg.Total"
      Index = 1
      BackColor = &H80&
      ForeColor = &HFFFFFF&
      Left = 4545
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 18
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
    Begin VB.Label LblCont
      Caption = "12345"
      Index = 3
      BackColor = &HFFFFFF&
      Left = 4635
      Top = 1485
      Width = 870
      Height = 350
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Courier New"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblCont
      Caption = "12345"
      Index = 2
      BackColor = &HFFFFFF&
      Left = 4635
      Top = 3375
      Width = 870
      Height = 350
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Courier New"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblCont
      Caption = "12345"
      Index = 1
      BackColor = &HFFFFFF&
      Left = 4635
      Top = 2430
      Width = 870
      Height = 345
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Courier New"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblCont
      Caption = "99999"
      Index = 0
      BackColor = &HFFFFFF&
      Left = 4635
      Top = 720
      Width = 870
      Height = 350
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Courier New"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel PanMes
    Left = 6210
    Top = 1530
    Width = 2490
    Height = 465
    TabIndex = 8
    OleObjectBlob = "FrmCreaBD.frx":0442
  End
  Begin Threed.SSPanel PanAnio
    Left = 6660
    Top = 2160
    Width = 1725
    Height = 1005
    TabIndex = 9
    OleObjectBlob = "FrmCreaBD.frx":04B8
  End
  Begin Threed.SSPanel PnlTit
    Left = 585
    Top = 810
    Width = 7935
    Height = 465
    TabIndex = 10
    OleObjectBlob = "FrmCreaBD.frx":0535
    Begin Threed.SSPanel PnlSub
      Left = 4500
      Top = 60
      Width = 3300
      Height = 330
      TabIndex = 11
      OleObjectBlob = "FrmCreaBD.frx":05F3
    End
    Begin Threed.SSPanel PnlDel
      Left = 585
      Top = 60
      Width = 3300
      Height = 330
      TabIndex = 12
      OleObjectBlob = "FrmCreaBD.frx":0683
    End
  End
  Begin VB.Label LblInfo
    Caption = " !! En este instante se lleva a cabo el proceso de Revisión de Datos y Generación de Archivos de respaldo para BD !!"
    BackColor = &HC0FFFF&
    Left = 6255
    Top = 3645
    Width = 2445
    Height = 1590
    TabIndex = 13
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
End

Attribute VB_Name = "FrmCreaBD"

Private Type UDT_1_0045AA80
  bStruc(16) As Byte ' String fields: 0
End Type

Private Type UDT_2_0045AA8C
  bStruc(120) As Byte ' String fields: 2
End Type

Private Type UDT_3_0045AAA0
  bStruc(400) As Byte ' String fields: 1
End Type

Private Type UDT_4_0045AAD8
  bStruc(4097) As Byte ' String fields: 0
End Type


Private Sub Form_Load() '4A95E0
  Dim var_1C As Label
  loc_004A962E: var_8004 = Proc_48DF50(0, 0, 0)
  loc_004A9684: Global.Screen.MousePointer = CLng(11)
  loc_004A96E1: FrmCreaBD.LblCont(0).Caption = global_004568F4
  loc_004A9748: FrmCreaBD.LblCont(1).Caption = global_004568F4
  loc_004A97AF: FrmCreaBD.LblCont(2).Caption = global_004568F4
  loc_004A97F5: Set var_1C = FrmCreaBD.LblCont(3)
  loc_004A9816: var_1C.Caption = global_004568F4
  loc_004A9844: var_24 = var_1C.Width
  loc_004A98A4: var_20 = Global.Screen.Width
  loc_004A98CE: If global_004F1000 = 0 Then
  loc_004A98D8: Else
  loc_004A98E3: End If
  loc_004A98F1: Global.Screen.Left = ((var_20 - var_24) / 2)
  loc_004A9903: CheckObj(Err.Number, Me, "!¼Æ#/(áLœÊ" & Chr(9) & "g‡Øž·LblCont", 116)
  loc_004A9915: var_24 = Global.Screen.Height
  loc_004A9975: var_20 = Global.Screen.Height
  loc_004A9999: If global_004F1000 = 0 Then
  loc_004A99A3: Else
  loc_004A99AE: End If
  loc_004A99B8: Global.Screen.Top = ((var_20 - var_24) / 2)
  loc_004A99CA: CheckObj(Err.Number, Me, "!¼Æ#/(áLœÊ" & Chr(9) & "g‡Øž·LblCont", 124)
  loc_004A99E2: GoTo loc_004A99F8
End Sub

Private Sub Form_Unload(Cancel As Integer) '4AADD0
  loc_004AAE0F: var_8004 = Close
End Sub

Private Sub Form_Activate() '4A9200
  Dim global_004F1DB4 As Global
  loc_004A927F: var_8008 = FrmCreaBD.Refresh
  loc_004A92D1: If FrmCreaBD.CreaMaestros Then
  loc_004A930B:   If FrmCreaBD.PasaTXTBD(global_004F1234, global_004F1220) Then
  loc_004A9340:     If FrmCreaBD.FrmCreaBD_CompBD(global_004F1234) Then
  loc_004A9386:       Global.Screen.MousePointer = 0
  loc_004A93A8:     Else
  loc_004A93F0:       MsgBox("ERROR AL INTENTAR COMPACTAR BASE DE DATOS", 48, 10, 10, 10)
  loc_004A940B:     Else
  loc_004A9453:       MsgBox("ERROR AL CREAR BASE DE DATOS", 48, 10, 10, 10)
  loc_004A946B:     Else
  loc_004A94B3:       MsgBox("ERROR AL CREAR BASE DE DATOS MAESTRA", 16, 10, 10, 10)
  loc_004A94C9:     End If
  loc_004A94C9:   End If
  loc_004A94D4: End If
  loc_004A950E: global_004F1DB4.Unload Me
  loc_004A9571: Global.Screen.MousePointer = 0
  loc_004A9596: GoTo loc_004A95BD
  loc_004A95BC: Exit Sub
  loc_004A95BD: ' Referenced from: 004A9596
End Sub

Public Function CreaMaestros() '4A59F0
  Dim var_AC As Variant
  Dim var_98 As Variant
  Dim var_1AC As Label
  Dim var_1A8 As Variant
  Dim var_1B0 As Label
  loc_004A5A5C: ReDim global_004F1370(0 To 33)
  loc_004A5A80: Dim global_004F1360 As String * 3
  loc_004A5AC3: If (var_98 = "COP") + 1 Then
  loc_004A5AEE:   var_8008 = "RC_FEC_MOV,RC_PATRON,RC_MOD,RC_PER,RC_CRED,PA_NOM," & "RC_DOC,RC_NUM_FOL,RC_OPE_CAJA,RC_CAJA,RC_HORA_CAP,RC_USU,RC_ERROR,"
  loc_004A5B30:   var_8010 = var_8008 & "RC_FEC_CAP,RC_DEL_USU,RC_SUB_USU,RC_IMP_EYM_FIJA,RC_IMP_EYM_ADI," & "RC_IMP_EYM_DIN,RC_IMP_EYM_PEN,RC_IMP_RT,RC_IMP_IV,"
  loc_004A5B5C:   var_64 = var_8010 & "RC_IMP_GUAR,RC_IMP_TOT,RC_IMP_ACT,RC_IMP_INT,RC_IMP_EJE"
  loc_004A5B64: Else
  loc_004A5B89:   var_8018 = "RC_FEC_MOV,RC_PATRON,RC_MOD,RC_PER,RC_CRED,RC_DOC,RC_OPE_CAJA,RC_CAJA," & "RC_HORA_CAP,RC_USU,RC_FEC_CAP,RC_NUM_FOL,RC_ERROR,"
  loc_004A5BD6:   var_64 = var_8018 & "RC_DEL_USU,RC_SUB_USU,PA_NOM,RC_IMP_RET,RC_IMP_CYV," & "RC_IMP_TOT,RC_IMP_ACT,RC_IMP_INT,RC_IMP_EJE"
  loc_004A5BDC: End If
  loc_004A5BF0: Open global_004F1218 For Input As #1 Len = -1
  loc_004A5C03: Line Input #1, var_28
  loc_004A5C2B: var_4C = InStr(1, var_28, "COBR", 0)
  loc_004A5C3B: If var_4C > 0 Then
  loc_004A5CC4:   global_004F1040 = Trim(Mid(var_28, var_4C(2), 2))
  loc_004A5D6D:   global_004F1044 = Trim(Mid(var_28, var_4C(2), 2))
  loc_004A5D93: End If
  loc_004A5D9A: var_8034 = Proc_490370(0, 0, 0)
  loc_004A5DA4: If var_8034 = 0 Then
  loc_004A5E31:   MsgBox("NO SE HALLO DESCRIPCION PARA SUBDELEGACIÒN", 0, 10, 10, 10)
  loc_004A5E5E: End If
  loc_004A5E78: Line Input #1, var_28
  loc_004A5EDD: var_6C = Mid(var_28, 2, 2)
  loc_004A5F09: Dim var_6C As String * 2
  loc_004A5F17: var_98 = var_6C
  loc_004A5F24: var_50 = CInt(fs:[00000000h])
  loc_004A5F93: var_68 = Mid(var_28, 5, 2)
  loc_004A5FBF: Dim var_68 As String * 2
  loc_004A5FCD: var_98 = var_68
  loc_004A605D: var_60 = Trim(Mid(var_28, 8, 4))
  loc_004A6091: If global_004F136C Then
  loc_004A609D:   If global_004F136C = 1 Then
  loc_004A60C1:     If (CInt() - global_004F136C(20)) < global_004F136C(16) Then
  loc_004A60CF:     Else
  loc_004A60D5:       var_1D4 = Err.Raise
  loc_004A60DB:     End If
  loc_004A60E4:     var_1D8 = (CInt() - global_004F136C(20))*28
  loc_004A60EC:   Else
  loc_004A60EC:   End If
  loc_004A60F2:   var_1D8 = Err.Raise
  loc_004A60F8: End If
  loc_004A6101: global_004F136C(12) = global_004F136C(12) + var_1D8
  loc_004A610A: Dim global_004F136C(12)+var_1D8 As String * 14
  loc_004A6142: var_C0 = Trim(global_004F136C(12)+var_1D8)
  loc_004A614F: If global_004F136C Then
  loc_004A615B:   If global_004F136C = 1 Then
  loc_004A617E:     If (CInt() - global_004F136C(20)) < global_004F136C(16) Then
  loc_004A618C:     Else
  loc_004A6192:       var_1DC = Err.Raise
  loc_004A6198:     End If
  loc_004A61A1:     var_1E0 = (CInt() - global_004F136C(20))*28
  loc_004A61A9:   Else
  loc_004A61A9:   End If
  loc_004A61AF:   var_1E0 = Err.Raise
  loc_004A61B5: End If
  loc_004A61C5: global_004F136C(12) = global_004F136C(12) + var_1E0
  loc_004A61CE: global_004F136C(12)+var_1E0 = global_004F136C(12)+var_1D8
  loc_004A6226: FrmCreaBD.PanMes.Caption
  loc_004A625D: Dim var_60 As String * 4
  loc_004A6263: var_B8 = var_60
  loc_004A62C5: FrmCreaBD.PanAnio.Caption
  loc_004A62F9: var_1A8 = FrmCreaBD.FrmCreaBD_PonDelSub
  loc_004A633E: On Error GoTo loc_004A8C36
  loc_004A6386: Dim var_60 As String * 4
  loc_004A6394: var_98 = var_60
  loc_004A63DA: var_60 = var_98
  loc_004A6430: var_34 = global_004F120C & "ANIO" + Mid(var_98, 3, 2) + "\"
  loc_004A64AE: var_1A8 = var_1E8
  loc_004A64C7: var_34 = FrmPorta.global_1796
  loc_004A64CF: var_1AC = var_34
  loc_004A6541: FrmCreaBD.PanMes.Caption
  loc_004A660B: global_004F1234 = var_34 + Mid(Trim(var_C0), 1, 3) + "\"
  loc_004A667E: Set var_AC = FrmCreaBD.PanMes
  loc_004A668C: var_AC.Caption
  loc_004A66CE: Dim global_004F1360 As String * 3
  loc_004A6744: Dim var_60 As String * 4
  loc_004A6752: var_9C = var_60
  loc_004A6798: var_60 = var_9C
  loc_004A6805: global_004F1220 = global_004F1234 & var_98 + Mid(Trim(var_AC), 1, 3) + Mid(var_9C, 3, 2) + ".MDB"
  loc_004A68AD: Set var_AC = FrmCreaBD.PanMes
  loc_004A68BB: var_AC.Caption
  loc_004A68F6: Dim global_004F1360 As String * 3
  loc_004A6957: Dim var_60 As String * 4
  loc_004A6965: var_98 = var_60
  loc_004A69AB: var_60 = var_98
  loc_004A69EF: global_004F1390 = global_004F1360 + Mid(Trim(var_AC), 1, 3) + Mid(var_98, 3, 2)
  loc_004A6A91: FrmCreaBD.PanMes.Caption
  loc_004A6AD2: Dim global_004F1360 As String * 3
  loc_004A6B48: Dim var_60 As String * 4
  loc_004A6B56: var_9C = var_60
  loc_004A6B9C: var_60 = var_9C
  loc_004A6C18: global_60 = global_004F1234 & var_98 + Mid(Trim(var_C0), 1, 3) + Mid(var_9C, 3, 2) + ".ZIP"
  loc_004A6CE0: var_1A8 = var_1F0
  loc_004A6CFA: global_004F1234 = FrmPorta.global_1796
  loc_004A6D02: var_1AC = global_004F1234
  loc_004A6DA9: If (Dir(global_004F1234, 32) = global_004568F4) Then
  loc_004A6DDE:   var_58 = Dir(global_004F1234, 32)
  loc_004A6DFC:   If (var_58 = global_004568F4) Then
  loc_004A6E5E:     var_98 = global_004F1234 & var_58
  loc_004A6E82:     var_1AC = EEAMX009.EliminaArchivo(var_1F8)
  loc_004A6EFC:     var_58 = Dir(10, 0)
  loc_004A6F0E:     GoTo loc_004A6DE4
  loc_004A6F13:   End If
  loc_004A6F13: End If
  loc_004A6F1A: var_168 = global_004F121C
  loc_004A6F3A: var_80E0 = Proc_48D8C0(&H4008, var_98, 1)
  loc_004A6F44: If var_80E0 = 0 Then
  loc_004A6F46:   GoTo loc_004A90B5
  loc_004A6F4B: End If
  loc_004A6F5D: Dim var_6C As String * 2
  loc_004A6F8D: Dim var_68 As String * 2
  loc_004A6FA8: var_D8 = "LG" & var_6C & var_68
  loc_004A6FD2: Dim var_60 As String * 4
  loc_004A6FE0: var_A4 = var_60
  loc_004A7013: var_D0 = Mid(var_A4, 3, 2)
  loc_004A7026: var_60 = var_A4
  loc_004A7033: If global_004F1370 Then
  loc_004A703F:   If global_004F1370 = 1 Then
  loc_004A7063:     If var_1F8 < global_004F1370 Then
  loc_004A7071:     Else
  loc_004A7077:       var_200 = Err.Raise
  loc_004A707D:     End If
  loc_004A7086:     var_204 = var_1F8*20
  loc_004A708E:   Else
  loc_004A708E:   End If
  loc_004A7094:   var_204 = Err.Raise
  loc_004A709A: End If
  loc_004A70DD: global_004F1370 = var_D8 + var_D0
  loc_004A7198: global_004F12C0 = Mid(var_28, 2, 10)
  loc_004A71E5: Dim var_6C As String * 2
  loc_004A7215: Dim var_68 As String * 2
  loc_004A725A: Dim var_60 As String * 4
  loc_004A7268: var_A8 = var_60
  loc_004A72AE: var_60 = var_A8
  loc_004A7372: On Error GoTo loc_004A8DB5
  loc_004A73A9: Open global_004F1234 & "LG" & var_6C & var_68 + Mid(var_A8, 3, 2) + ".TXT" For Unknown As #2 Len = Len(var_28)(13)
  loc_004A73C1: Print 2, var_64
  loc_004A7450: FrmCreaBD.PnlMtros.FloodPercent
  loc_004A74A4: Set var_B0 = FrmCreaBD.LblCont(0)
  loc_004A74A9: var_1B0 = var_B0
  loc_004A74EB: var_1B4 = var_B0
  loc_004A750B: If global_004F1368 Then
  loc_004A7517:   If global_004F1368 = 1 Then
  loc_004A753C:     If (ecx - global_004F1368(20)) < global_004F1368(16) Then
  loc_004A754A:     Else
  loc_004A7550:       var_20C = Err.Raise
  loc_004A7556:     End If
  loc_004A755F:     var_210 = (ecx - global_004F1368(20))
  loc_004A7567:   Else
  loc_004A7567:   End If
  loc_004A756D:   var_210 = Err.Raise
  loc_004A7573: End If
  loc_004A757C: var_94(12) = global_004F1368(12) + var_210
  loc_004A75D5: var_98 = CStr(Trim(Str(global_004F1368(12)+var_210)))
  loc_004A75F0: var_1B8 = var_1B4.UnkVCall_00000054h
  loc_004A76AC: Set var_B0 = FrmCreaBD.LblCont(0)
  loc_004A76B1: var_1AC = var_B0
  loc_004A76F3: var_1B0 = var_B0
  loc_004A7708: var_1B0.Refresh
  loc_004A7710: var_1B4 = var_1B0.Refresh
  loc_004A7771: var_8128 = EOF(1)
  loc_004A777C: If var_8128 = 0 Then
  loc_004A7790:   Dim global_004F12C0 As String * 10
  loc_004A77A0:   var_84 = global_004F12C0
  loc_004A7810:   FrmCreaBD.PnlMtroDia.FloodPercent
  loc_004A7837:   Dim var_84 As String * 10
  loc_004A7852:   var_B8 = "Leyendo información del " & var_84
  loc_004A78B4:   FrmCreaBD.PanTituMtroDia.Caption
  loc_004A78E7:   var_8130 = EOF(1)
  loc_004A78FA:   Dim global_004F12C0 As String * 10
  loc_004A7918:   Dim var_84 As String * 10
  loc_004A7966:   If (var_98 = var_84) + 1 Then
  loc_004A797C:     Dim var_84 As String * 10
  loc_004A798A:     var_98 = var_84
  loc_004A79BE:     var_84 = var_98
  loc_004A7A07:     Print 2, Proc_48A660(var_98, , )
  loc_004A7A1D:     Line Input #1, var_28
  loc_004A7ACC:     Dim Trim$(CStr(Mid(var_28, 2, 10))) As String * 10
  loc_004A7AF6:     var_70 = InStr(1, var_98, "/", 0)
  loc_004A7B13:     If var_70 = 0 Then
  loc_004A7B25:       Dim var_84 As String * 10
  loc_004A7B33:       global_004F12C0 = var_84
  loc_004A7B39:     End If
  loc_004A7B4C:     var_30 = var_30(1)
  loc_004A7BA7:     Set var_B0 = FrmCreaBD.LblCont(1)
  loc_004A7BAC:     var_1AC = var_B0
  loc_004A7BEE:     var_1B0 = var_B0
  loc_004A7C1C:     var_1B0.Caption = CStr(var_54(1))
  loc_004A7C21:     var_1B4 = var_1B0
  loc_004A7CC4:     Set var_B0 = FrmCreaBD.LblCont(1)
  loc_004A7CC9:     var_1AC = var_B0
  loc_004A7D0B:     var_1B0 = var_B0
  loc_004A7D20:     var_1B0.Refresh
  loc_004A7D28:     var_1B4 = var_1B0.Refresh
  loc_004A7D8E:     If global_004F1368 Then
  loc_004A7D9A:       If global_004F1368 = 1 Then
  loc_004A7DBE:         If (var_50 - global_004F1368(20)) < global_004F1368(16) Then
  loc_004A7DCC:         Else
  loc_004A7DD2:           var_230 = Err.Raise
  loc_004A7DD8:         End If
  loc_004A7DE1:         var_234 = (var_50 - global_004F1368(20))
  loc_004A7DE9:       Else
  loc_004A7DE9:       End If
  loc_004A7DEF:       var_234 = Err.Raise
  loc_004A7DF5:     End If
  loc_004A7DF8:     var_23C = var_54(1)
  loc_004A7E10:     var_244 = eax+ecx
  loc_004A7E23:     If global_004F1000 = 0 Then
  loc_004A7E2D:     Else
  loc_004A7E3E:     End If
  loc_004A7E44:     var_168 = ((var_23C / var_244) * 100)
  loc_004A7EAD:     FrmCreaBD.PnlMtroDia.FloodPercent
  loc_004A7ECD:     If global_004F1368 Then
  loc_004A7ED8:       If global_004F1368 = 1 Then
  loc_004A7EFB:         If (var_50 - global_004F1368(20)) < global_004F1368(16) Then
  loc_004A7F09:         Else
  loc_004A7F0F:           var_248 = Err.Raise
  loc_004A7F15:         End If
  loc_004A7F1E:         var_24C = (var_50 - global_004F1368(20))
  loc_004A7F26:       Else
  loc_004A7F26:       End If
  loc_004A7F2C:       var_24C = Err.Raise
  loc_004A7F32:     End If
  loc_004A7F46:     If var_54(1) = 0 Then
  loc_004A7F48:       GoTo loc_004A7F4F
  loc_004A7F4A:     End If
  loc_004A7F4A:     GoTo loc_004A78DE
  loc_004A7F4F:   End If
  loc_004A7F4F:   ' Referenced from: 004A7F48
  loc_004A7F58:   Close #2
  loc_004A7F6C:   If global_004F1368 Then
  loc_004A7F78:     If global_004F1368 = 1 Then
  loc_004A7F9D:       If (eax - global_004F1368(20)) < global_004F1368(16) Then
  loc_004A7FAB:       Else
  loc_004A7FB1:         var_250 = Err.Raise
  loc_004A7FB7:       End If
  loc_004A7FC0:       var_254 = (eax - global_004F1368(20))
  loc_004A7FC8:     Else
  loc_004A7FC8:     End If
  loc_004A7FCE:     var_254 = Err.Raise
  loc_004A7FD4:   End If
  loc_004A7FE9:   Dim global_004F12C0 As String * 10
  loc_004A804F:   If ((Not (EOF(1)) And (var_98 = "          ")) And (var_30 < 0)) Then
  loc_004A80B4:     var_6C = Mid(var_28, 2, 2)
  loc_004A8132:     var_68 = Mid(var_28, 5, 2)
  loc_004A8166:     var_44 = var_44(1)
  loc_004A817C:     Dim var_6C As String * 2
  loc_004A81AC:     Dim var_68 As String * 2
  loc_004A81C7:     var_D8 = "LG" & var_6C & var_68
  loc_004A81F1:     Dim var_60 As String * 4
  loc_004A81FF:     var_A4 = var_60
  loc_004A8232:     var_D0 = Mid(var_A4, 3, 2)
  loc_004A8245:     var_60 = var_A4
  loc_004A8252:     If global_004F1370 Then
  loc_004A825E:       If global_004F1370 = 1 Then
  loc_004A8282:         If (eax - global_004F1368(20)) < global_004F1370 Then
  loc_004A8290:         Else
  loc_004A8296:           var_258 = Err.Raise
  loc_004A829C:         End If
  loc_004A82A5:         var_25C = (eax - global_004F1368(20))*20
  loc_004A82AD:       Else
  loc_004A82AD:       End If
  loc_004A82B3:       var_25C = Err.Raise
  loc_004A82B9:     End If
  loc_004A82FC:     global_004F1370 = var_D8 + var_D0
  loc_004A83AF:     var_50 = CInt(Mid(var_28, 2, 2))
  loc_004A83E0:     If var_50 = 0 Then
  loc_004A847C:       MsgBox("ERROR EN ARCHIVO MAESTRO " & CStr(var_44), 0, 10, 10, 10)
  loc_004A84BA:     Else
  loc_004A84E8:       Dim var_6C As String * 2
  loc_004A8518:       Dim var_68 As String * 2
  loc_004A855D:       Dim var_60 As String * 4
  loc_004A856B:       var_A8 = var_60
  loc_004A85B1:       var_60 = var_A8
  loc_004A869D:       Open global_004F1234 & "LG" & var_6C & var_68 + Mid(var_A8, 3, 2) + ".TXT" For Unknown As #2 Len = Len(var_28)(13)
  loc_004A86B5:       Print 2, var_64
  loc_004A86CC:     End If
  loc_004A870E:     Set var_B0 = FrmCreaBD.LblCont(3)
  loc_004A8713:     var_1AC = var_B0
  loc_004A8755:     var_1B0 = var_B0
  loc_004A8783:     var_1B0.Caption = CStr(var_30)
  loc_004A8788:     var_1B4 = var_1B0
  loc_004A882B:     Set var_B0 = FrmCreaBD.LblCont(3)
  loc_004A8830:     var_1AC = var_B0
  loc_004A8872:     var_1B0 = var_B0
  loc_004A8887:     var_1B0.Refresh
  loc_004A888F:     var_1B4 = var_1B0.Refresh
  loc_004A88F5:     If global_004F1368 Then
  loc_004A8900:       If global_004F1368 = 1 Then
  loc_004A8924:         If (edx - global_004F1368(20)) < global_004F1368(16) Then
  loc_004A8932:         Else
  loc_004A8938:           var_270 = Err.Raise
  loc_004A893E:         End If
  loc_004A8947:         var_274 = (edx - global_004F1368(20))
  loc_004A894F:       Else
  loc_004A894F:       End If
  loc_004A8955:       var_274 = Err.Raise
  loc_004A895B:     End If
  loc_004A895E:     var_27C = var_30
  loc_004A8975:     var_284 = ecx+edx
  loc_004A8988:     If global_004F1000 = 0 Then
  loc_004A8992:     Else
  loc_004A89A3:     End If
  loc_004A89A9:     var_168 = ((var_27C / var_284) * 100)
  loc_004A8A12:     FrmCreaBD.PnlMtros.FloodPercent
  loc_004A8A32:     If global_004F1368 Then
  loc_004A8A3E:       If global_004F1368 = 1 Then
  loc_004A8A63:         If (eax - global_004F1368(20)) < global_004F1368(16) Then
  loc_004A8A71:         Else
  loc_004A8A77:           var_288 = Err.Raise
  loc_004A8A7D:         End If
  loc_004A8A86:         var_28C = (eax - global_004F1368(20))
  loc_004A8A8E:       Else
  loc_004A8A8E:       End If
  loc_004A8A94:       var_28C = Err.Raise
  loc_004A8A9A:     End If
  loc_004A8AAF:     If var_30 = 0 Then
  loc_004A8AB1:       GoTo loc_004A8AB8
  loc_004A8AB3:     End If
  loc_004A8AB3:     GoTo loc_004A7768
  loc_004A8AB8:   End If
  loc_004A8AC1:   Close #1
  loc_004A8AD0:   Close #2
  loc_004A8AFE:   DoEvents
  loc_004A8B04:   var_40 = DoEvents
  loc_004A8B2C:   var_1A8 = FrmCreaBD.LblInfo
  loc_004A8B46:   var_1A8.Caption = " !! En este momento se crean las Tablas Maestras para Respaldo de Base de Datos !!"
  loc_004A8B4B:   var_1AC = var_1A8
  loc_004A8BB7:   var_1A8 = FrmCreaBD.LblInfo
  loc_004A8BCC:   var_1A8.Refresh
  loc_004A8BD4:   var_1AC = var_1A8.Refresh
  loc_004A8C2A:   global_004F1230 = var_44
  loc_004A8C31:   GoTo loc_004A90B5
  loc_004A8C3D:   var_81CC = Err
  loc_004A8C4B:   Set var_AC = Err
  loc_004A8C51:   var_1A8 = var_AC
  loc_004A8C6D:   var_1A4 = var_AC.Number
  loc_004A8C72:   var_1AC = var_1A4
  loc_004A8CD8:   If (var_1A4 <> 75) Then
  loc_004A8CE7:     Close #1
  loc_004A8D74:     MsgBox("NO SE PUEDE CREAR DIRECTORIO DESTINO", 0, 10, 10, 10)
  loc_004A8DA6:   Else
  loc_004A8DAF:     var_81D0 = Resume(-1)
  loc_004A8DBE:     Close #1
  loc_004A8E4B:     MsgBox("NO SE PUEDE ABRIR ARCHIVO MAESTRO", 0, 10, 10, 10)
  loc_004A8E78:     GoTo loc_004A90B5
  loc_004A8E86:     Close #1
  loc_004A8EA1:     global_004F11F8.UnkVCall_00000058h
  loc_004A8EA6:     var_1A8 = global_004F11F8.UnkVCall_00000058h
  loc_004A8F69:     MsgBox("NO SE ENCONTRO ARCHIVO DE CONTROL", 16, 10, 10, 10)
  loc_004A8F96:     GoTo loc_004A90B5
  loc_004A8FA4:     Close #1
  loc_004A8FC5:     var_1A8 = global_004F11F8.UnkVCall_00000058h
  loc_004A9088:     MsgBox("ERROR AL REALIZAR PASO DE INFORMACIÓN", 16, 10, 10, 10)
  loc_004A90B5:   End If
  loc_004A90B5: End If
  loc_004A90B5: ' Referenced from: 004A8E78
  loc_004A90B5: ' Referenced from: 004A8F96
  loc_004A90B5: Exit Sub
  loc_004A90C1: GoTo loc_004A9173
  loc_004A9172: Exit Function
  loc_004A9173: ' Referenced from: 004A90C1
End Function

Public Sub FrmCreaBD_PonDelSub() '4A9A20
  loc_004A9A73: If (global_004F1040 = "99") Then
  loc_004A9A9A:   var_20 = "  " & global_004F1088
  loc_004A9AC8:   FrmCreaBD.PnlDel.Caption
  loc_004A9B00:   var_44 = (global_004F1044 = "00") + 1
  loc_004A9B0F:   If (global_004F1044 = "99") + 1 = 0 Then
  loc_004A9B2B:     var_20 = "  " & global_004F1084
  loc_004A9B59:     FrmCreaBD.PnlSub.Caption
  loc_004A9B71:   End If
  loc_004A9B71: End If
  loc_004A9B76: GoTo loc_004A9B8B
  loc_004A9B8A: Exit Sub
  loc_004A9B8B: ' Referenced from: 004A9B76
End Sub

Public Function PasaTXTBD(Path_Arch, NomArchBD) '4A9BB0
  Dim var_44 As Variant
  Dim var_48 As Label
  Dim Path_Arch As Variant
  loc_004A9C54: var_44 = global_004F1DF4.UnkVCall_0000003Ch
  loc_004A9C6F: var_D4 = var_44
  loc_004A9CAB: var_44.UnkVCall_00000030h
  loc_004A9D39: If (Dir(NomArchBD, 0) = global_004568F4) Then
  loc_004A9D60:   Kill NomArchBD
  loc_004A9D6F: End If
  loc_004A9D89: var_38 = InStr(1, NomArchBD, ".MDB", 0)
  loc_004A9D8F: var_A0 = var_38
  loc_004A9E12: var_2C = Trim(Mid(NomArchBD, 1, var_38) + "LDB")
  loc_004A9E6E: If (Dir(var_2C, 0) = global_004568F4) Then
  loc_004A9E96:   Kill var_2C
  loc_004A9EA5: End If
  loc_004A9EA8: var_A0 = var_38
  loc_004A9F2E: var_20 = Trim(Mid(NomArchBD, 1, var_38) + "CTL")
  loc_004A9F8C: If (Dir(var_20, 0) = global_004568F4) Then
  loc_004A9FB4:   Kill var_20
  loc_004A9FC3: End If
  loc_004AA00D: NomArchBD = var_48.UnkVCall_0000005Ch
  loc_004AA051: var_44.UnkVCall_00000058h
  loc_004AA0BA: FrmCreaBD.PnlBD.FloodPercent
  loc_004AA105: FrmCreaBD.LblCont(2).Caption = global_004568F4
  loc_004AA134: If global_004F1370 Then
  loc_004AA13A:   If global_004F1370 = 1 Then
  loc_004AA146:     If (1 - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004AA148:       var_8038 = Err.Raise
  loc_004AA154:     End If
  loc_004AA15C:   Else
  loc_004AA15C:   End If
  loc_004AA15C:   var_803C = Err.Raise
  loc_004AA168: End If
  loc_004AA16B: global_004F1370(12) = global_004F1370(12) + var_803C
  loc_004AA170: Dim global_004F1370(12)+var_803C As String * 10
  loc_004AA1A1: var_58 = Trim(global_004F1370(12)+var_803C)
  loc_004AA1AF: If global_004F1370 Then
  loc_004AA1B5:   If global_004F1370 = 1 Then
  loc_004AA1C1:     If (1 - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004AA1C3:       var_8040 = Err.Raise
  loc_004AA1CF:     End If
  loc_004AA1D7:   Else
  loc_004AA1D7:   End If
  loc_004AA1D7:   var_8044 = Err.Raise
  loc_004AA1E3: End If
  loc_004AA1EA: global_004F1370(12) = global_004F1370(12) + var_8044
  loc_004AA1EF: global_004F1370(12)+var_8044 = global_004F1370(12)+var_803C
  loc_004AA232: If (var_58 <> "FIN") Then
  loc_004AA240:   If global_004F1370 Then
  loc_004AA246:     If global_004F1370 = 1 Then
  loc_004AA252:       If (1 - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004AA254:         var_804C = Err.Raise
  loc_004AA260:       End If
  loc_004AA268:     Else
  loc_004AA268:     End If
  loc_004AA268:     var_8050 = Err.Raise
  loc_004AA274:   End If
  loc_004AA277:   global_004F1370(12) = global_004F1370(12) + var_8050
  loc_004AA27C:   Dim global_004F1370(12)+var_8050 As String * 10
  loc_004AA2A7:   var_58 = Trim(global_004F1370(12)+var_8050)
  loc_004AA2B5:   If global_004F1370 Then
  loc_004AA2BB:     If global_004F1370 = 1 Then
  loc_004AA2C7:       If (1 - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004AA2C9:         var_8054 = Err.Raise
  loc_004AA2D5:       End If
  loc_004AA2DD:     Else
  loc_004AA2DD:     End If
  loc_004AA2DD:     var_8058 = Err.Raise
  loc_004AA2E9:   End If
  loc_004AA2F0:   global_004F1370(12) = global_004F1370(12) + var_8058
  loc_004AA2F5:   global_004F1370(12)+var_8058 = global_004F1370(12)+var_8050
  loc_004AA341:   If Not (Proc_491AC0(Path_Arch, var_58, FrmCreaBD.LblCont)) Then GoTo loc_004AA5D8
  loc_004AA3B7:   FrmCreaBD.LblCont(2).Caption = CStr(Str(1))
  loc_004AA435:   FrmCreaBD.LblCont(2).Refresh
  loc_004AA489:   var_FC = (1(1)(1) - 1)
  loc_004AA4A2:   var_108 = global_004F1230
  loc_004AA4B5:   If global_004F1000 = 0 Then
  loc_004AA4BF:   Else
  loc_004AA4D0:   End If
  loc_004AA4D6:   var_90 = ((var_FC / var_108) * 100)
  loc_004AA528:   FrmCreaBD.PnlBD.FloodPercent
  loc_004AA537:   GoTo loc_004AA12C
  loc_004AA53C: End If
  loc_004AA53E: On Error GoTo loc_004AA55D
  loc_004AA54E: FileCopy global_004F121C, var_20
  loc_004AA55B: GoTo loc_004AA5D8
  loc_004AA55D: ' Referenced from: 004AA53E
  loc_004AA5B4: MsgBox("ERROR AL COPIAR ARCHIVO DE CONTROL DE FECHAS", 0, 10, 10, 10)
  loc_004AA5D8: Exit Sub
  loc_004AA5E4: GoTo loc_004AA625
End Function

Public Function FrmCreaBD_CompBD(pathMaestros) '4AA680
  Dim var_F4 As Variant
  Dim var_FC As Screen
  Dim Me As Variant
  Dim var_40 As FrmCreaBD.LblInfo
  loc_004AA74C: DoEvents
  loc_004AA752: var_30 = DoEvents
  loc_004AA762: ChDir "c:\"
  loc_004AA7FF: var_40 = var_118.Screen
  loc_004AA804: var_F8 = var_40
  loc_004AA843: var_FC = var_40
  loc_004AA85A: var_FC.MousePointer = CLng(11)
  loc_004AA85F: var_100 = var_FC
  loc_004AA8B3: var_3C = "C:\TEMPO.BND"
  loc_004AA8DB: If Proc_491890(Me, 0, 0) Then
  loc_004AA90B:   Kill "C:\TEMPO.BND"
  loc_004AA91A: End If
  loc_004AA93D: var_8020 = Shell("c:\COMPRIME.BAT  " & "  " & global_60 & global_0045B658 & pathMaestros & "*.*", 6)
  loc_004AA957: If CLng(NO_FPU_STACK_VALUES) Then
  loc_004AA97E:   var_F4 = FrmCreaBD.LblInfo
  loc_004AA998:   var_F4.Caption = " !! En este instante se lleva a cabo el proceso de Compactación de la Información de Respaldo para Base de Datos !! "
  loc_004AA99D:   var_F8 = var_F4
  loc_004AA9F1:   var_3C = "c:\TEMPO.BND"
  loc_004AAA1C:   If Not (Proc_491890(0, fs:[00000000h], )) Then
  loc_004AAA25:     DoEvents
  loc_004AAA2B:     GoTo loc_004AA9E2
  loc_004AAA2D:   End If
  loc_004AAA3C:   var_3C = "C:\TEMPO.BND"
  loc_004AAA64:   If Proc_491890(, , ) Then
  loc_004AAA73:     On Error Resume Next
  loc_004AAAC5:     var_3C = "C:\tempo.bnd"
  loc_004AAAE6:     var_F8 = EEAMX009.EliminaArchivo(var_128)
  loc_004AAB2E:   End If
  loc_004AABDB:   MsgBox(103C, 64, 10, 10, 10)
  loc_004AAC2B:   var_F4 = FrmCreaBD.LblInfo
  loc_004AAC45:   var_F4.Caption = global_004568F4
  loc_004AAC4A:   var_F8 = var_F4
  loc_004AAC94: Else
  loc_004AACFA:   MsgBox("ERROR AL INTENTAR COMPACTAR ARCHIVOS", 0, 10, 10, 10)
  loc_004AAD1D: Else
  loc_004AAD31:   DoEvents
  loc_004AAD37:   var_30 = DoEvents
  loc_004AAD3B: End If
  loc_004AAD41: GoTo loc_004AAD7F
  loc_004AAD7E: Exit Function
  loc_004AAD7F: ' Referenced from: 004AAD41
End Function
