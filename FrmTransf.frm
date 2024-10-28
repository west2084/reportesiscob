VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FrmTransf
  Caption = "Transferencia de Archivos ..."
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 7605
  ClientTop = 3405
  ClientWidth = 5475
  ClientHeight = 5580
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Begin VB.Timer tmrTraArc
    Enabled = 0   'False
    Interval = 1000
    Left = 4995
    Top = 1980
  End
  Begin VB.PictureBox picTraArc
    Index = 0
    Picture = "FrmTransf.frx":0000
    Left = 1155
    Top = 1425
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 7
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox picTraArc
    Index = 1
    Picture = "FrmTransf.frx":030A
    Left = 1635
    Top = 1065
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 6
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox picTraArc
    Index = 2
    Picture = "FrmTransf.frx":0614
    Left = 2235
    Top = 945
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox picTraArc
    Index = 3
    Picture = "FrmTransf.frx":091E
    Left = 2835
    Top = 1065
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox picTraArc
    Index = 4
    Picture = "FrmTransf.frx":0C28
    Left = 3315
    Top = 1425
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox picIbm
    Picture = "FrmTransf.frx":0F32
    Left = 675
    Top = 1920
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 2
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin VB.PictureBox picPC
    Picture = "FrmTransf.frx":123C
    Left = 3795
    Top = 2040
    Width = 480
    Height = 480
    Visible = 0   'False
    TabIndex = 1
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    AutoSize = -1  'True
    BorderStyle = 0 'None
  End
  Begin Threed.SSPanel PnlTransf
    Left = 270
    Top = 4275
    Width = 3030
    Height = 375
    TabIndex = 9
    OleObjectBlob = "FrmTransf.frx":1546
  End
  Begin VB.Label LabMarq
    BackColor = &HC0FFFF&
    Left = 270
    Top = 3555
    Width = 4965
    Height = 375
    TabIndex = 11
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
  Begin VB.Label Label2
    Caption = "Transferencia"
    Index = 0
    Left = 3375
    Top = 4455
    Width = 1500
    Height = 240
    TabIndex = 10
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
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
  Begin VB.Label lblHor
    Caption = "Tiempo: 00:00:00"
    Left = 495
    Top = 2745
    Width = 1695
    Height = 375
    Visible = 0   'False
    TabIndex = 8
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
  Begin VB.Label LblEdoTransf
    Caption = "REALIZANDO TRANSFERENCIA"
    BackColor = &H808000&
    ForeColor = &HFFFFFF&
    Left = 180
    Top = 180
    Width = 4995
    Height = 435
    TabIndex = 0
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmTransf"


Private Sub Form_Load() '4DC4A0
  loc_004DC50E: ReDim global_004F108C(0 To global_004F1096 + 1+1)
  loc_004DC517: global_004F1076 = &H1A
  loc_004DC520: global_004F107A = &H22
  loc_004DC529: global_004F1078 = &H15
  loc_004DC535: global_52 = 4
  loc_004DC558: FrmTransf.LblEdoTransf.Caption = "REALIZANDO TRANSFERENCIA"
  loc_004DC590: FrmTransf.picIbm.Visible = True
  loc_004DC5CE: FrmTransf.picPC.Visible = True
  loc_004DC60C: FrmTransf.lblHor.Visible = True
  loc_004DC681: Global.Screen.MousePointer = CLng(11)
  loc_004DC6B3: global_56 = CLng(Timer)
  loc_004DC6BF: GoTo loc_004DC6CB
  loc_004DC6CA: Exit Sub
  loc_004DC6CB: ' Referenced from: 004DC6BF
End Sub

Private Sub Form_Activate() '4DBF40
  Dim global_004F1DB4 As Global
  Dim var_34 As Variant
  loc_004DBF86: global_004F1028 = 1
  loc_004DBFBF: var_80 = Me.Width
  loc_004DC02C: var_7C = Global.Screen.Width
  loc_004DC056: If global_004F1000 = 0 Then
  loc_004DC060: Else
  loc_004DC06B: End If
  loc_004DC079: Global.Screen.Left = ((var_7C - var_80) / 2)
  loc_004DC08B: CheckObj(Err.Number, Me, global_00457F6C, 116)
  loc_004DC09D: var_80 = Global.Screen.Height
  loc_004DC0FD: var_7C = Global.Screen.Height
  loc_004DC121: If global_004F1000 = 0 Then
  loc_004DC12B: Else
  loc_004DC136: End If
  loc_004DC144: Global.Screen.Top = ((var_7C - var_80) / 2)
  loc_004DC156: CheckObj(Err.Number, Me, global_00457F6C, 124)
  loc_004DC183: var_8010 = FrmTransf.Refresh
  loc_004DC1B8: FrmTransf.tmrTraArc.Enabled = True
  loc_004DC1DC: var_8014 = FrmTransf.Proc_13_5_4DCDD0(var_78)
  loc_004DC1E7: If var_78 = 0 Then
  loc_004DC1F2:   global_004F1028 = 0
  loc_004DC23A:   Global.Screen.MousePointer = 0
  loc_004DC27D:   var_A8 = global_004F1DB4
  loc_004DC283:   Set var_34 = Me
  loc_004DC291:   var_A8.Unload var_34
  loc_004DC298:   If var_A8.Unload var_34 >= 0 Then GoTo loc_004DC412
  loc_004DC2A7:   CheckObj(var_A8.Unload var_34, global_004F1DB4, global_00457D2C, 16)
  loc_004DC2AE: End If
  loc_004DC2C9: FrmTransf.tmrTraArc.Enabled = False
  loc_004DC30C: var_5C = global_004F1060
  loc_004DC32B: var_30 = Format$(global_004F1060, "00")
  loc_004DC363: var_24 = "C:\COBRANZA\INI\conver.ini"
  loc_004DC37F: var_18 = Proc_489D60("CurSerie", 8, "Parametros")
  loc_004DC3B7: var_8028 = Proc_6_10_488B20
  loc_004DC3BC: var_802C = Proc_6_6_487D30
  loc_004DC3C4: If var_802C = 0 Then
  loc_004DC3C6:   global_004F1028 = var_802C
  loc_004DC3CC: End If
  loc_004DC3FA: var_8034 = Global.Unload Me
  loc_004DC428: GoTo loc_004DC462
  loc_004DC461: Exit Sub
  loc_004DC462: ' Referenced from: 004DC428
End Sub

Private Sub tmrTraArc_Timer() '4DD580
  Dim var_3C As Variant
  Dim var_84 As Label
  loc_004DD62F: FrmTransf.picTraArc(global_52).Visible = False
  loc_004DD6C1: FrmTransf.picTraArc(global_52 + 1+1 Mod 00000005h + 1+1 Mod 00000005h).Visible = True
  loc_004DD6F4: var_8004 = CLng(Timer)
  loc_004DD78E: var_80 = 8 + (804 - global_56)*
  loc_004DD79F: var_80+(var_8004 - global_56)* = var_80+(var_8004 - global_56)* + var_80+(var_8004 - global_56)*
  loc_004DD7F7: var_80 = 8 + (804 - global_56)**
  loc_004DD806: var_80+(var_8004 - global_56)** = var_80+(var_8004 - global_56)** + var_80+(var_8004 - global_56)**
  loc_004DD845: Set var_3C = FrmTransf.lblHor
  loc_004DD85C: var_84 = var_3C
  loc_004DD87F: var_801C = "Tiempo: " & Format$(var_80+(var_8004 - global_56)**+var_80+(var_8004 - global_56)**, "00") & ":" & Format$(var_80+(var_8004 - global_56)*+var_80+(var_8004 - global_56)* Mod 0000003Ch, "00")
  loc_004DD8AD: var_3C.Caption = var_801C & ":" & Format$((var_8004 - global_56) Mod 0000003Ch, "00")
  loc_004DD8FA: GoTo loc_004DD93C
  loc_004DD93B: Exit Sub
  loc_004DD93C: ' Referenced from: 004DD8FA
End Sub

Public Function FrmTransf_TransfArch(NomArchPc, NomArchMF) '4DC700
  loc_004DC7BD: var_1C = global_004F1204 & NomArchPc & global_0045B658 & global_004F103C & ":'" & NomArchMF & "'"
  loc_004DC7EA: If Proc_6_11_488BF0 Then
  loc_004DC7F7:   var_8020 = Proc_6_10_488B20
  loc_004DC803: End If
  loc_004DC808: GoTo loc_004DC82A
  loc_004DC829: Exit Function
  loc_004DC82A: ' Referenced from: 004DC808
End Function

Private Sub Proc_13_4_4DC860() '4DC860
  loc_004DC8E2: var_24 = global_004F1078
  loc_004DC91C: var_28 = Mid$(arg_C, global_004F107A, 4)
  loc_004DC958: var_70 = global_004F1060
  loc_004DC97F: var_20 = 1 & Format$(global_004F1060, "00")
  loc_004DC9A9: If InStr(1, arg_C, ".DAT", 0) Then
  loc_004DC9DD:   var_28 = Mid$(arg_C, global_004F1076 + 4, 4)
  loc_004DCA06:   global_004F1060 = (global_004F1060 - 1)
  loc_004DCA1D:   var_24 = (global_004F1078 - 4)
  loc_004DCA20: End If
  loc_004DCA3B: var_98 = InStr(1, arg_C, "BMX9CL", 0)
  loc_004DCA58: If (InStr(1, arg_C, "BMX9CL", 0) Or InStr(1, arg_C, "AMX9CL", 0)) Then
  loc_004DCA62:   var_20 = ".CCL"
  loc_004DCA68: End If
  loc_004DCA8B: var_9C = InStr(1, arg_C, "BMX9DS", 0)
  loc_004DCA9F: If (InStr(1, arg_C, "BMX9DS", 0) Or InStr(1, arg_C, "AMX9DS", 0)) Then
  loc_004DCAA9:   var_20 = ".CBD"
  loc_004DCAAF: End If
  loc_004DCAC6: If InStr(1, arg_C, "SUEPAGP.DAT", 0) Then
  loc_004DCAD6: End If
  loc_004DCB41: If ((Mid$(arg_C, global_004F107A(-2), 2) = ".U") + 1 Or (var_30 = 1)) Then
  loc_004DCB5E:   If InStr(1, arg_C, "SUEPAGP.DAT", 0) Then
  loc_004DCBB1:     var_38 = "SP" & Mid$(arg_C, ((global_004F1078 - 2) - 2), 6) & ".CXT"
  loc_004DCBD4:   Else
  loc_004DCC41:     var_38 = var_28 & Mid$(arg_C, @%StkVar2 & %x1, 2) & Mid$(arg_C, var_24, 2) & ".CXT"
  loc_004DCC6E:   End If
  loc_004DCC78:   If global_004F1060 < 99 Then
  loc_004DCC89:     global_004F1060 = global_004F1060 + 1+1
  loc_004DCC94:   Else
  loc_004DCCA7:   Else
  loc_004DCD13:     var_38 = Mid$(arg_C, global_004F1076 + 4 + 4 + 4, 6) & Mid$(arg_C, global_004F1078, 2) & ".CXT"
  loc_004DCD41:     GoTo loc_004DCD7E
  loc_004DCD47:     If var_4 <> 4 Then
  loc_004DCD52:     End If
  loc_004DCD7D:     Exit Sub
  loc_004DCD7E:   End If
  loc_004DCD7E: End If
  loc_004DCD7E: ' Referenced from: 004DCD41
End Sub

Private Sub Proc_13_5_4DCDD0() '4DCDD0
  Dim var_54 As Variant
  loc_004DCE59: ReDim global_004F108C(0 To global_004F1096)
  loc_004DCEAC: FrmTransf.PnlTransf.FloodPercent
  loc_004DCEC6: Open "c:\vrep\ftpibmpc.stu" For Output As #6 Len = -1
  loc_004DCEFA: Print 6, "open " & "11.254.171.200"
  loc_004DCF2F: Print 6, Trim(global_004F10BC)
  loc_004DCF4B: Print 6, global_004F10C0
  loc_004DCF59: Print 6, "cd .."
  loc_004DCF67: Print 6, "binary"
  loc_004DCF76: If var_20 < global_004F1096 Then
  loc_004DCF84:   If global_004F1090 Then
  loc_004DCF8A:     If global_004F1090 = 1 Then
  loc_004DCF95:       If (var_20 - global_004F1090(20)) >= global_004F1090(16) Then
  loc_004DCF97:         var_8008 = Err.Raise
  loc_004DCFA3:       End If
  loc_004DCFAC:     Else
  loc_004DCFAC:     End If
  loc_004DCFAC:     var_800C = Err.Raise
  loc_004DCFB8:   End If
  loc_004DCFC1:   var_28 = edx+eax
  loc_004DCFD5:   Set var_54 = FrmTransf.LabMarq
  loc_004DCFDD:   var_AC = " Recibiendo... "
  loc_004DD015:   If global_004F1090 Then
  loc_004DD01B:     If global_004F1090 = 1 Then
  loc_004DD027:       If (var_20 - global_004F1090(20)) >= global_004F1090(16) Then
  loc_004DD029:         var_8010 = Err.Raise
  loc_004DD032:       End If
  loc_004DD03B:     Else
  loc_004DD03B:     End If
  loc_004DD03B:     var_8014 = Err.Raise
  loc_004DD044:   End If
  loc_004DD047:   var_44(12) = global_004F1090(12) + var_8014
  loc_004DD0A1:   var_54.Caption = CStr(var_AC + Mid(global_004F1090(12)+var_8014, 15, 35))
  loc_004DD100:   FrmTransf.LabMarq.Refresh
  loc_004DD12E:   var_801C = FrmTransf.Proc_13_4_4DC860
  loc_004DD13C:   If global_004F108C Then
  loc_004DD142:     If global_004F108C = 1 Then
  loc_004DD14E:       If global_004F108C >= global_004F108C Then
  loc_004DD150:         var_8020 = Err.Raise
  loc_004DD15C:       End If
  loc_004DD165:     Else
  loc_004DD165:     End If
  loc_004DD165:     var_8024 = Err.Raise
  loc_004DD171:   End If
  loc_004DD190:   If CStr(var_AC + Mid(global_004F1090(12)+var_8014, 15, 35)) Then
  loc_004DD196:     If CStr(var_AC + Mid(global_004F1090(12)+var_8014, 15, 35)) = 1 Then
  loc_004DD1A2:       If CStr(var_AC + Mid(global_004F1090(12)+var_8014, 15, 35)) >= CStr(var_AC + Mid(global_004F1090(12)+var_8014, 15, 35)) Then
  loc_004DD1A4:         var_8028 = Err.Raise
  loc_004DD1B0:       End If
  loc_004DD1B9:     Else
  loc_004DD1B9:     End If
  loc_004DD1B9:     var_802C = Err.Raise
  loc_004DD1C5:   End If
  loc_004DD1F3:   var_50 = global_0045B658 & "c:\mrepor\" & CStr(var_AC + Mid(global_004F1090(12)+var_8014, 15, 35))
  loc_004DD216:   Print 6, "get " & var_28
  loc_004DD24C:   var_DC = var_20(1)
  loc_004DD265:   var_E8 = global_004F1096
  loc_004DD278:   If global_004F1000 = 0 Then
  loc_004DD282:   Else
  loc_004DD293:   End If
  loc_004DD299:   var_8C = ((var_DC / var_E8) * 100)
  loc_004DD2ED:   FrmTransf.PnlTransf.FloodPercent
  loc_004DD2FC:   GoTo loc_004DCF6C
  loc_004DD301: End If
  loc_004DD30D: Print 6, "bye"
  loc_004DD31B: Print 6, "close"
  loc_004DD322: Close #6
  loc_004DD351: var_803C = Shell("C:\Llama.bat", 3)
  loc_004DD35A: 'NO_FPU_STACK_VALUES
  loc_004DD368: var_2C = CStr()
  loc_004DD3D7: If (Ucase(var_40) <> "FIN.PRU") Then
  loc_004DD40D:   var_40 = Dir("c:\vrep\fin.pru", 32)
  loc_004DD414:   GoTo loc_004DD383
  loc_004DD419: End If
  loc_004DD41B: On Error GoTo loc_004DD4D9
  loc_004DD44E: var_48 = "c:\vrep\fin.pru"
  loc_004DD457: var_8050 = EEAMX009.EliminaArchivo(global_004F115C)
  loc_004DD4A7: var_48 = "c:\vrep\FTPIBMPC.STU"
  loc_004DD4B0: var_8058 = EEAMX009.EliminaArchivo(global_004F115C)
  loc_004DD4D6: var_3C = var_20(1)
  loc_004DD4D9: ' Referenced from: 004DD41B
  loc_004DD4D9: Exit Sub
  loc_004DD4E5: GoTo loc_004DD52C
  loc_004DD52B: Exit Sub
  loc_004DD52C: ' Referenced from: 004DD4E5
End Sub
