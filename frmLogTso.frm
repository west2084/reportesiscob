VERSION 5.00
Object = "{B9D22273-0C24-101B-AEBD04021C009402}#1.0#0"; "C:\WINDOWS\SysWow64\KEYSTA32.OCX"
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form frmLogTso
  Caption = "Acceso"
  ForeColor = &H80000008&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClipControls = 0   'False
  HelpContextID = 2000
  ClientLeft = 2580
  ClientTop = 1800
  ClientWidth = 4770
  ClientHeight = 3150
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
  Begin VB.Frame FraUsu
    Caption = "Datos del Usuario"
    Left = 270
    Top = 225
    Width = 4245
    Height = 1815
    TabIndex = 6
    Begin VB.TextBox txtUsu
      Left = 1530
      Top = 350
      Width = 1215
      Height = 300
      TabIndex = 0
      MaxLength = 7
    End
    Begin VB.TextBox txtPasw
      Left = 1530
      Top = 750
      Width = 1215
      Height = 300
      TabIndex = 1
      PasswordChar = "*"
      MaxLength = 8
    End
    Begin VB.TextBox txtNuePasw
      Left = 1530
      Top = 1150
      Width = 1215
      Height = 300
      TabIndex = 3
      PasswordChar = "*"
      MaxLength = 8
    End
    Begin KeyStatLib.MhState keyIns
      Left = 3945
      Top = 495
      Width = 495
      Height = 495
      Visible = 0   'False
      TabIndex = 7
      OleObjectBlob = "frmLogTso.frx":0000
    End
    Begin Threed.SSCommand CmdAce
      Left = 2925
      Top = 360
      Width = 1005
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmLogTso.frx":0038
    End
    Begin Threed.SSCommand CmdTer
      Left = 2925
      Top = 855
      Width = 1005
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmLogTso.frx":009F
    End
    Begin VB.Label LblUsutit
      Caption = "Nuevo"
      Index = 2
      BackColor = &H400000&
      ForeColor = &HFFFFFF&
      Left = 225
      Top = 1150
      Width = 1095
      Height = 255
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label LblUsutit
      Caption = "Password"
      Index = 1
      BackColor = &H400000&
      ForeColor = &HFFFFFF&
      Left = 225
      Top = 750
      Width = 1095
      Height = 255
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label LblUsutit
      Caption = "Usuario"
      Index = 0
      BackColor = &H400000&
      ForeColor = &HFFFFFF&
      Left = 225
      Top = 350
      Width = 1095
      Height = 255
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin VB.Label LblMsjTso
    Caption = "PROPORCIONAR USUARIO"
    BackColor = &HC0FFFF&
    Left = 270
    Top = 2205
    Width = 4245
    Height = 375
    TabIndex = 5
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Serif"
      Size = 6.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmLogTso"


Private Sub keyIns_UnknownEvent_9 '4EE310
  Dim var_18 As frmLogTso.keyIns
  Dim Me As Variant
  loc_004EE36C: Set var_18 = frmLogTso.keyIns
  loc_004EE377: var_18.Value
  loc_004EE38A: var_2C = CBool(var_18)
  loc_004EE38E: var_8008 = Proc_489560(Me, 0, 0)
  loc_004EE3AD: GoTo loc_004EE3C2
  loc_004EE3C1: Exit Sub
  loc_004EE3C2: ' Referenced from: 004EE3AD
End Sub

Private Sub CmdAce_UnknownEvent_0 '4ECE00
  loc_004ECE53: If global_52 = True Then
  loc_004ECE8B:   global_52 = CInt(frmLogTso.CmdAce.TabIndex)
  loc_004ECEBA:   var_8008 = frmLogTso.FrmLogTso_LblMsjTso("OPRIMIR PARA INICIAR ", var_30)
  loc_004ECEDF: End If
  loc_004ECEE7: GoTo loc_004ECF05
  loc_004ECF04: Exit Sub
  loc_004ECF05: ' Referenced from: 004ECEE7
End Sub

Private Sub CmdAce_UnknownEvent_1 '4ECF30
  loc_004ECFCD: If (global_52 <> CInt(frmLogTso.CmdAce.TabIndex)) = 0 Then
  loc_004ECFEB:   var_8008 = frmLogTso.FrmLogTso_LblMsjTso(var_18, var_30)
  loc_004ED010:   global_52 = &HFFFFFF
  loc_004ED016: End If
  loc_004ED01E: GoTo loc_004ED03C
  loc_004ED03B: Exit Sub
  loc_004ED03C: ' Referenced from: 004ED01E
End Sub

Private Sub CmdAce_UnknownEvent_9 '4ECA60
  loc_004ECABB: var_8004 = frmLogTso.Proc_18_24_4EC4A0(var_58)
  loc_004ECAC5: If var_58 Then
  loc_004ECB39:   global_004F10BC = Trim(frmLogTso.txtUsu.Text)
  loc_004ECB85:   global_004F10C0 = Trim(frmLogTso.txtPasw)
  loc_004ECBBE:   frmLogTso.LblMsjTso.Caption = "Iniciando comunicación ..... "
  loc_004ECBF4:   frmLogTso.LblMsjTso.Refresh
  loc_004ECC22:   var_8010 = frmLogTso.Proc_18_23_4E8EF0(var_58)
  loc_004ECC2D:   If var_58 = 0 Then
  loc_004ECC2F:     global_004F1024 = 0
  loc_004ECC3D:   Else
  loc_004ECC60:     frmLogTso.LblMsjTso.Caption = " Preparando TSO ..."
  loc_004ECCA0:     frmLogTso.LblMsjTso.Refresh
  loc_004ECD11:     Global.Screen.MousePointer = CLng(11)
  loc_004ECD36:     If Proc_6_13_488DF0 Then
  loc_004ECD7C:       var_8024 = Global.Unload frmLogTso
  loc_004ECD99:     End If
  loc_004ECD99:   End If
  loc_004ECD9B: End If
  loc_004ECDA3: GoTo loc_004ECDCB
  loc_004ECDCA: Exit Sub
  loc_004ECDCB: ' Referenced from: 004ECDA3
End Sub

Private Sub txtPasw_GotFocus() '4EEE10
  loc_004EEE66: If global_52 = True Then
  loc_004EEEB0:   global_52 = frmLogTso.txtPasw.TabIndex
  loc_004EEEDA:   var_8004 = frmLogTso.FrmLogTso_LblMsjTso("PROPORCIONAR EL PASSWORD", 0)
  loc_004EEF01: Else
  loc_004EEF07: End If
  loc_004EEF1E: frmLogTso.txtPasw.SelStart = 0
  loc_004EEFA9: frmLogTso.txtPasw.SelLength = Len(frmLogTso.txtPasw.Text)
  loc_004EF036: If (frmLogTso.txtPasw.SelStart = 0) Then
  loc_004EF038:   global_54 = 1
  loc_004EF040: Else
  loc_004EF044: End If
  loc_004EF04C: GoTo loc_004EF06B
  loc_004EF06A: Exit Sub
  loc_004EF06B: ' Referenced from: 004EF04C
End Sub

Private Sub txtPasw_KeyDown(KeyCode As Integer, Shift As Integer) '4EF090
  Dim Me As Variant
  loc_004EF0F7: If KeyCode = CLng(37) Then
  loc_004EF153:   If (frmLogTso.txtPasw.SelStart = 0) = 0 Then GoTo loc_004EF266
  loc_004EF162:   If global_54 = 1 Then
  loc_004EF17B:     SendKeys "+{TAB}", 10
  loc_004EF18A:   End If
  loc_004EF193: Else
  loc_004EF19D:   If 1 = CLng(39) Then
  loc_004EF23E:     If (frmLogTso.txtPasw.SelStart = frmLogTso.txtPasw.MaxLength) Then
  loc_004EF257:       SendKeys "{TAB}", 10
  loc_004EF266:     End If
  loc_004EF26E:   Else
  loc_004EF278:     If (frmLogTso.txtPasw.SelStart = frmLogTso.txtPasw.MaxLength) = Me Then
  loc_004EF291:       SendKeys "+{TAB}", 10
  loc_004EF2AA:     Else
  loc_004EF2AF:       Set 0 = 0
  loc_004EF2B4:       If (frmLogTso.txtPasw.SelStart = frmLogTso.txtPasw.MaxLength) = 0 Then
  loc_004EF2CD:         SendKeys "{TAB}", 10
  loc_004EF2E4:       End If
  loc_004EF2E4:     End If
  loc_004EF2E4:   End If
  loc_004EF2E4: End If
  loc_004EF2F0: GoTo loc_004EF30F
  loc_004EF30E: Exit Sub
  loc_004EF30F: ' Referenced from: 004EF2F0
End Sub

Private Sub txtPasw_KeyPress(KeyAscii As Integer) '4EF330
  loc_004EF39B: If ((KeyAscii > 122) Or (KeyAscii < 97)) = 0 Then
  loc_004EF3AA: End If
  loc_004EF3AE: If KeyAscii >= 32 Then
  loc_004EF40A:   var_44 = frmLogTso.txtPasw.MaxLength
  loc_004EF458:   If (frmLogTso.txtPasw.SelStart = 0) Then
  loc_004EF471:     SendKeys "{TAB}", 10
  loc_004EF480:   End If
  loc_004EF482: End If
  loc_004EF48A: GoTo loc_004EF4A9
  loc_004EF4A8: Exit Sub
  loc_004EF4A9: ' Referenced from: 004EF48A
End Sub

Private Sub txtPasw_LostFocus() '4EF4D0
  loc_004EF576: If (global_52 <> frmLogTso.txtPasw.TabIndex) = 0 Then
  loc_004EF60B:   If (Trim$(frmLogTso.txtPasw.Text) = global_004568F4) + 1 Then
  loc_004EF626:     If frmLogTso.FrmLogTso_LblMsjTso(var_18, var_24) >= 0 Then GoTo loc_004EF657
  loc_004EF628:     GoTo loc_004EF645
  loc_004EF62A:   End If
  loc_004EF643:   If frmLogTso.FrmLogTso_LblMsjTso(var_18, var_18) >= 0 Then GoTo loc_004EF657
  loc_004EF645:   ' Referenced from: 004EF628
  loc_004EF651:   CheckObj(frmLogTso.FrmLogTso_LblMsjTso(var_18, var_18), Me, "EéïÞB“5K¡é*1í—¤QLblUsutit", 1784)
  loc_004EF660:   global_52 = &HFFFFFF
  loc_004EF666: End If
  loc_004EF66E: GoTo loc_004EF68D
  loc_004EF68C: Exit Sub
  loc_004EF68D: ' Referenced from: 004EF66E
End Sub

Private Sub txtNuePasw_GotFocus() '4EE3F0
  loc_004EE446: If global_52 = True Then
  loc_004EE490:   global_52 = frmLogTso.txtNuePasw.TabIndex
  loc_004EE4BA:   var_8004 = frmLogTso.FrmLogTso_LblMsjTso("PROPORCIONAR EL NUEVO PASSWORD", 0)
  loc_004EE4E1: Else
  loc_004EE4E7: End If
  loc_004EE4FE: frmLogTso.txtNuePasw.SelStart = 0
  loc_004EE589: frmLogTso.txtNuePasw.SelLength = Len(frmLogTso.txtNuePasw.Text)
  loc_004EE616: If (frmLogTso.txtNuePasw.SelStart = 0) Then
  loc_004EE618:   global_54 = 1
  loc_004EE620: Else
  loc_004EE624: End If
  loc_004EE62C: GoTo loc_004EE64B
  loc_004EE64A: Exit Sub
  loc_004EE64B: ' Referenced from: 004EE62C
End Sub

Private Sub txtNuePasw_KeyDown(KeyCode As Integer, Shift As Integer) '4EE670
  Dim Me As Variant
  loc_004EE6D7: If KeyCode = CLng(37) Then
  loc_004EE733:   If (frmLogTso.txtNuePasw.SelStart = 0) = 0 Then GoTo loc_004EE846
  loc_004EE742:   If global_54 = 1 Then
  loc_004EE75B:     SendKeys "+{TAB}", 10
  loc_004EE76A:   End If
  loc_004EE773: Else
  loc_004EE77D:   If 1 = CLng(39) Then
  loc_004EE81E:     If (frmLogTso.txtNuePasw.SelStart = frmLogTso.txtNuePasw.MaxLength) Then
  loc_004EE837:       SendKeys "{TAB}", 10
  loc_004EE846:     End If
  loc_004EE84E:   Else
  loc_004EE858:     If (frmLogTso.txtNuePasw.SelStart = frmLogTso.txtNuePasw.MaxLength) = Me Then
  loc_004EE871:       SendKeys "+{TAB}", 10
  loc_004EE88A:     Else
  loc_004EE88F:       Set 0 = 0
  loc_004EE894:       If (frmLogTso.txtNuePasw.SelStart = frmLogTso.txtNuePasw.MaxLength) = 0 Then
  loc_004EE8AD:         SendKeys "{TAB}", 10
  loc_004EE8C4:       End If
  loc_004EE8C4:     End If
  loc_004EE8C4:   End If
  loc_004EE8C4: End If
  loc_004EE8D0: GoTo loc_004EE8EF
  loc_004EE8EE: Exit Sub
  loc_004EE8EF: ' Referenced from: 004EE8D0
End Sub

Private Sub txtNuePasw_KeyPress(KeyAscii As Integer) '4EE910
  loc_004EE97B: If ((KeyAscii > 122) Or (KeyAscii < 97)) = 0 Then
  loc_004EE98A: End If
  loc_004EE991: If KeyAscii = 13 Then
  loc_004EE9AE:   Call frmLogTso.CmdAce.SetFocus
  loc_004EE9C5: Else
  loc_004EE9C9:   If KeyAscii >= 32 Then
  loc_004EEA25:     var_44 = frmLogTso.txtNuePasw.MaxLength
  loc_004EEA73:     If (frmLogTso.txtNuePasw.SelStart = 0) Then
  loc_004EEA8C:       SendKeys "{TAB}", 10
  loc_004EEA9B:     End If
  loc_004EEA9D:   End If
  loc_004EEA9D: End If
  loc_004EEAA5: GoTo loc_004EEAC4
  loc_004EEAC3: Exit Sub
  loc_004EEAC4: ' Referenced from: 004EEAA5
End Sub

Private Sub txtNuePasw_LostFocus() '4EEAF0
  loc_004EEB9F: If (global_52 <> frmLogTso.txtNuePasw.TabIndex) = 0 Then
  loc_004EEC26:   If (Trim$(frmLogTso.txtNuePasw.Text) = global_004568F4) Then
  loc_004EECCB:     If (frmLogTso.txtNuePasw.TabIndex <> frmLogTso.txtPasw.TabIndex(1)) Then
  loc_004EED30:       frmLogTso.txtNuePasw.TabIndex = frmLogTso.txtPasw.TabIndex(1)
  loc_004EED61:     End If
  loc_004EED61:   End If
  loc_004EED81:   var_800C = frmLogTso.FrmLogTso_LblMsjTso(var_18, 0)
  loc_004EEDA6:   global_52 = &HFFFFFF
  loc_004EEDAC: End If
  loc_004EEDB8: GoTo loc_004EEDDE
  loc_004EEDDD: Exit Sub
  loc_004EEDDE: ' Referenced from: 004EEDB8
End Sub

Private Sub txtUsu_GotFocus() '4EF6B0
  loc_004EF706: If global_52 = True Then
  loc_004EF750:   global_52 = frmLogTso.txtUsu.TabIndex
  loc_004EF77A:   var_8004 = frmLogTso.FrmLogTso_LblMsjTso("PROPORCIONAR LA CLAVE DEL USUARIO", 0)
  loc_004EF7A1: Else
  loc_004EF7A7: End If
  loc_004EF7BE: frmLogTso.txtUsu.SelStart = 0
  loc_004EF849: frmLogTso.txtUsu.SelLength = Len(frmLogTso.txtUsu.Text)
  loc_004EF8D6: If (frmLogTso.txtUsu.SelStart = 0) Then
  loc_004EF8D8:   global_54 = 1
  loc_004EF8E0: Else
  loc_004EF8E4: End If
  loc_004EF8EC: GoTo loc_004EF90B
  loc_004EF90A: Exit Sub
  loc_004EF90B: ' Referenced from: 004EF8EC
End Sub

Private Sub txtUsu_KeyDown(KeyCode As Integer, Shift As Integer) '4EF930
  Dim Me As Variant
  loc_004EF997: If KeyCode = CLng(37) Then
  loc_004EF9F3:   If (frmLogTso.txtUsu.SelStart = 0) = 0 Then GoTo loc_004EFB06
  loc_004EFA02:   If global_54 = 1 Then
  loc_004EFA1B:     SendKeys "+{TAB}", 10
  loc_004EFA2A:   End If
  loc_004EFA33: Else
  loc_004EFA3D:   If 1 = CLng(39) Then
  loc_004EFADE:     If (frmLogTso.txtUsu.SelStart = frmLogTso.txtUsu.MaxLength) Then
  loc_004EFAF7:       SendKeys "{TAB}", 10
  loc_004EFB06:     End If
  loc_004EFB0E:   Else
  loc_004EFB18:     If (frmLogTso.txtUsu.SelStart = frmLogTso.txtUsu.MaxLength) = Me Then
  loc_004EFB31:       SendKeys "+{TAB}", 10
  loc_004EFB4A:     Else
  loc_004EFB4F:       Set 0 = 0
  loc_004EFB54:       If (frmLogTso.txtUsu.SelStart = frmLogTso.txtUsu.MaxLength) = 0 Then
  loc_004EFB6D:         SendKeys "{TAB}", 10
  loc_004EFB84:       End If
  loc_004EFB84:     End If
  loc_004EFB84:   End If
  loc_004EFB84: End If
  loc_004EFB90: GoTo loc_004EFBAF
  loc_004EFBAE: Exit Sub
  loc_004EFBAF: ' Referenced from: 004EFB90
End Sub

Private Sub txtUsu_KeyPress(KeyAscii As Integer) '4EFBD0
  loc_004EFC3B: If ((KeyAscii > 122) Or (KeyAscii < 97)) = 0 Then
  loc_004EFC4A: End If
  loc_004EFC4E: If KeyAscii >= 32 Then
  loc_004EFCAA:   var_44 = frmLogTso.txtUsu.MaxLength
  loc_004EFCF8:   If (frmLogTso.txtUsu.SelStart = 0) Then
  loc_004EFD11:     SendKeys "{TAB}", 10
  loc_004EFD20:   End If
  loc_004EFD22: End If
  loc_004EFD2A: GoTo loc_004EFD49
  loc_004EFD48: Exit Sub
  loc_004EFD49: ' Referenced from: 004EFD2A
End Sub

Private Sub txtUsu_LostFocus() '4EFD70
  loc_004EFE13: If (global_52 <> frmLogTso.txtUsu.TabIndex) = 0 Then
  loc_004EFE31:   var_8004 = frmLogTso.FrmLogTso_LblMsjTso(var_18, var_20)
  loc_004EFE56:   global_52 = &HFFFFFF
  loc_004EFE5C: End If
  loc_004EFE64: GoTo loc_004EFE79
  loc_004EFE78: Exit Sub
  loc_004EFE79: ' Referenced from: 004EFE64
End Sub

Private Sub Form_Load() '4EE1A0
  Dim var_1C As frmLogTso.keyIns
  Dim Me As Variant
  loc_004EE20A: var_8004 = frmLogTso.FrmLogTso_LblMsjTso(var_18, var_50)
  loc_004EE243: global_52 = &HFFFFFF
  loc_004EE26B: frmLogTso.keyIns.Value
  loc_004EE28E: Set var_1C = frmLogTso.keyIns
  loc_004EE295: var_1C.Value
  loc_004EE2A5: var_50 = CBool(var_1C)
  loc_004EE2AC: var_800C = Proc_489560(Me, 0, 0)
  loc_004EE2CB: GoTo loc_004EE2E9
  loc_004EE2E8: Exit Sub
  loc_004EE2E9: ' Referenced from: 004EE2CB
End Sub

Private Sub Form_Activate() '4ED940
  loc_004ED992: var_20 = Me.Width
  loc_004ED9FF: var_1C = Global.Screen.Width
  loc_004EDA29: If global_004F1000 = 0 Then
  loc_004EDA33: Else
  loc_004EDA3E: End If
  loc_004EDA4C: Global.Screen.Left = ((var_1C - var_20) / 2)
  loc_004EDA5E: CheckObj(Err.Number, Me, global_00457D6C, 116)
  loc_004EDA70: var_20 = Global.Screen.Height
  loc_004EDAD0: var_1C = Global.Screen.Height
  loc_004EDAF4: If global_004F1000 = 0 Then
  loc_004EDAFE: Else
  loc_004EDB09: End If
  loc_004EDB13: Global.Screen.Top = ((var_1C - var_20) / 2)
  loc_004EDB25: CheckObj(Err.Number, Me, global_00457D6C, 124)
  loc_004EDB3D: GoTo loc_004EDB49
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '4EDB70
  Dim var_20 As frmLogTso.keyIns
  loc_004EDC3E: Set var_20 = frmLogTso.keyIns
  loc_004EDC49: var_20.Value
  loc_004EDC98: If (CBool(var_20) + 1 And TypeOf Global.Screen.ActiveControl Is global_0045EBFC) Then
  loc_004EDCB8:   If (KeyCode <> 37) = (KeyCode <> 39) Then
  loc_004EDD6B:     If (Global.Screen.ActiveControl.SelLength < 1) Then
  loc_004EDDFA:       Global.Screen.ActiveControl.SelLength = 1
  loc_004EDE13:     End If
  loc_004EDE13:   End If
  loc_004EDE13: End If
  loc_004EDE1F: GoTo loc_004EDE49
  loc_004EDE48: Exit Sub
  loc_004EDE49: ' Referenced from: 004EDE1F
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '4EDE70
  Dim var_18 As Variant
  loc_004EDEC8: If KeyAscii = 13 Then
  loc_004EDEE1:   SendKeys "{TAB}", 10
  loc_004EDEF8: Else
  loc_004EDF86:   If TypeOf Global.Screen.ActiveControl Is global_00457C74 Then
  loc_004EDF9E:     Set var_18 = frmLogTso.keyIns
  loc_004EDFA9:     var_18.Value
  loc_004EDFE9:     If (CBool(var_18) + 1 And (KeyAscii >= 32)) Then
  loc_004EE09C:       If (Global.Screen.ActiveControl.SelLength < 1) Then
  loc_004EE12B:         Global.Screen.ActiveControl.SelLength = 1
  loc_004EE144:       End If
  loc_004EE144:     End If
  loc_004EE144:   End If
  loc_004EE146: End If
  loc_004EE14E: GoTo loc_004EE174
  loc_004EE173: Exit Sub
  loc_004EE174: ' Referenced from: 004EE14E
End Sub

Private Sub CmdTer_UnknownEvent_9 '4ED060
  Dim global_004F1DB4 As Global
  Dim var_28 As Screen
  Dim Me As Variant
  loc_004ED116: If (Trim$(CStr(Command)) = "COBRANZA") + 1 Then
  loc_004ED138:   var_800C = Shell("C:\COBRANZA\SISCOB.EXE", 6)
  loc_004ED13E:   var_8010 = CLng(NO_FPU_STACK_VALUES)
  loc_004ED149: End If
  loc_004ED198: Global.Screen.MousePointer = CLng(11)
  loc_004ED1C7: var_20 = "READY"
  loc_004ED1EB: If (Proc_6_1_487260 = True) Then
  loc_004ED1F9:   var_18 = "LOGOFF@E"
  loc_004ED208:   If Proc_6_4_487960 <> True Then
  loc_004ED212:     var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004ED218:     var_8020 = Proc_489710(Me, 0, 0)
  loc_004ED227:     global_004F102C = 0
  loc_004ED258:     If Global.Screen >= 0 Then GoTo loc_004ED704
  loc_004ED25E:     GoTo loc_004ED6F5
  loc_004ED263:   End If
  loc_004ED267:   var_8028 = Proc_6_9_488950
  loc_004ED282:   var_802C = ("C:\COBRANZA\SISCOB.EXE" = 0)
  loc_004ED297:   If var_802C = 0 Then GoTo loc_004ED72F
  loc_004ED2A5:   call var_8030 = global_004F1DB4(0)
  loc_004ED2AB:   var_8034 = Proc_489710(, fs:[00000000h], )
  loc_004ED2BA:   global_004F102C = 0
  loc_004ED306:   Global.Screen.MousePointer = 0
  loc_004ED30E: Else
  loc_004ED316:   call var_803C = global_004F1DB4
  loc_004ED334:   If (Proc_6_1_487260 = True) Then
  loc_004ED342:     call var_8044 = global_004F1DB4
  loc_004ED351:     If Proc_6_4_487960 <> True Then
  loc_004ED35B:       call var_804C = global_004F1DB4
  loc_004ED361:       var_8050 = Proc_489710()
  loc_004ED370:       global_004F102C = 0
  loc_004ED3BC:       Global.Screen.MousePointer = 0
  loc_004ED3C4:     Else
  loc_004ED3C8:       var_8058 = Proc_6_9_488950
  loc_004ED3E3:       var_805C = ("C:\COBRANZA\SISCOB.EXE" = 0)
  loc_004ED3F8:       If var_805C = 0 Then
  loc_004ED406:         call var_8060 = global_004F1DB4
  loc_004ED415:         If Proc_6_4_487960 <> True Then
  loc_004ED41F:           call var_8068 = global_004F1DB4
  loc_004ED425:           var_806C = Proc_489710()
  loc_004ED434:           global_004F102C = var_805C
  loc_004ED47E:           Global.Screen.MousePointer = 0
  loc_004ED486:         Else
  loc_004ED48A:           var_8074 = Proc_6_9_488950
  loc_004ED4A5:           var_8078 = ("C:\COBRANZA\SISCOB.EXE" = 0)
  loc_004ED4BA:           If var_8078 = 0 Then GoTo loc_004ED72F
  loc_004ED4C0:           GoTo loc_004ED507
  loc_004ED4C2:         End If
  loc_004ED4CA:         call var_807C = global_004F1DB4
  loc_004ED4E8:         If (Proc_6_1_487260 = True) = 0 Then GoTo loc_004ED72F
  loc_004ED4F6:         call var_8084 = global_004F1DB4
  loc_004ED4FC:         var_8088 = Proc_6_4_487960
  loc_004ED505:         If var_8088 = True Then GoTo loc_004ED53A
  loc_004ED507:       End If
  loc_004ED50F:       call var_808C = global_004F1DB4
  loc_004ED515:       var_8090 = Proc_489710()
  loc_004ED524:       global_004F102C = 0
  loc_004ED52F:       If global_004F1DB4 Then GoTo loc_004ED244
  loc_004ED535:       GoTo loc_004ED234
  loc_004ED53E:       var_8094 = Proc_6_9_488950
  loc_004ED56E:       If ("C:\COBRANZA\SISCOB.EXE" = 0) Then
  loc_004ED578:         call var_809C = global_004F1DB4
  loc_004ED57E:         var_80A0 = Proc_489710()
  loc_004ED58D:         global_004F102C = 0
  loc_004ED5D9:         Global.Screen.MousePointer = 0
  loc_004ED5E1:       Else
  loc_004ED5E9:         call var_80A8 = global_004F1DB4
  loc_004ED5F8:         If Proc_6_4_487960 <> True Then
  loc_004ED602:           call var_80B0 = global_004F1DB4
  loc_004ED608:           var_80B4 = Proc_489710()
  loc_004ED617:           global_004F102C = 0
  loc_004ED663:           Global.Screen.MousePointer = 0
  loc_004ED66B:         Else
  loc_004ED66F:           var_80BC = Proc_6_9_488950
  loc_004ED68A:           var_80C0 = ("C:\COBRANZA\SISCOB.EXE" = 0)
  loc_004ED69F:           If var_80C0 = 0 Then GoTo loc_004ED72F
  loc_004ED6AD:           call var_80C4 = global_004F1DB4
  loc_004ED6B3:           var_80C8 = Proc_489710()
  loc_004ED6C2:           global_004F102C = 0
  loc_004ED6EC:           var_28 = Global.Screen
  loc_004ED6F3:           If var_28 < 0 Then
  loc_004ED6FE:             CheckObj(var_28, global_004F1DB4, global_00457D2C, 24)
  loc_004ED704:           End If
  loc_004ED711:         End If
  loc_004ED711:       End If
  loc_004ED711:     End If
  loc_004ED711:   End If
  loc_004ED711: End If
  loc_004ED715: If var_28 < 0 Then
  loc_004ED724:   CheckObj(var_28, var_28, global_00457D4C, 124)
  loc_004ED78B:   Global.Screen.MousePointer = 0
  loc_004ED7EC:   var_80DC = Global.Unload frmLogTso
  loc_004ED800: End If
  loc_004ED816: GoTo loc_004ED848
  loc_004ED847: Exit Sub
  loc_004ED848: ' Referenced from: 004ED816
End Sub

Private Sub CmdTer_UnknownEvent_D '4ED880
  loc_004ED8FA: frmLogTso.CmdTer.Value
  loc_004ED911: GoTo loc_004ED91D
  loc_004ED91C: Exit Sub
  loc_004ED91D: ' Referenced from: 004ED911
End Sub

Public Sub FrmLogTso_LblMsjTso(cadmen, colmen) '4EFEA0
  Dim colmen As Variant
  loc_004EFEFC: frmLogTso.LblMsjTso.ForeColor = colmen
  loc_004EFF3A: frmLogTso.LblMsjTso.Caption = cadmen
  loc_004EFF5C: GoTo loc_004EFF68
  loc_004EFF67: Exit Sub
  loc_004EFF68: ' Referenced from: 004EFF5C
End Sub

Private Sub Proc_18_23_4E8EF0() '4E8EF0
  Dim var_28 As Variant
  Dim global_004EC46E As Variant
  loc_004E8F66: If global_004F102C = 1 Then
  loc_004E8F85:   var_3C = "EN COMUNICACION ..."
  loc_004E8F8F:   var_8004 = Proc_489660(0, 0, 0)
  loc_004E8FA7: Else
  loc_004E8FFF:   Global.Screen.MousePointer = CLng(11)
  loc_004E9074:   If (frmLogTso.txtUsu.Enabled = True) Then
  loc_004E9088:     var_14 = "@C"
  loc_004E9097:     If Proc_6_4_487960 <> True Then
  loc_004E90A5:       var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E90AB:       var_8010 = Proc_489710(global_004EC46E, , )
  loc_004E90BE:       global_004F102C = 0
  loc_004E9106:       Global.Screen.MousePointer = 0
  loc_004E912D:     Else
  loc_004E9131:       var_8018 = Proc_6_9_488950
  loc_004E916A:       If (var_3C = 0) Then
  loc_004E9178:         var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9182:         var_8020 = Proc_489710(global_004EC46E, , )
  loc_004E9195:         global_004F102C = 0
  loc_004E91DD:         Global.Screen.MousePointer = 0
  loc_004E9204:       Else
  loc_004E921A:         var_14 = global_004F1034 & "@E"
  loc_004E922D:         If Proc_6_4_487960 <> True Then
  loc_004E923B:           var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9245:           var_8030 = Proc_489710(global_004EC46E, , )
  loc_004E9258:           global_004F102C = 0
  loc_004E92A0:           Global.Screen.MousePointer = 0
  loc_004E92C7:         Else
  loc_004E92CC:           If var_1C < 5 Then
  loc_004E92D6:             var_8038 = Proc_6_9_488950
  loc_004E92FA:             var_803C = (var_3C = 0)
  loc_004E930F:             If var_803C = 0 Then
  loc_004E931D:               var_20 = "ENTER USERID"
  loc_004E9343:               If (Proc_6_1_487260 = True) Then GoTo loc_004E94BC
  loc_004E935A:               var_8044 = Proc_6_10_488B20
  loc_004E936D:               var_14 = "@E"
  loc_004E937C:               If Proc_6_4_487960 <> True Then GoTo loc_004E942C
  loc_004E9393:               GoTo loc_004E92C7
  loc_004E9398:             End If
  loc_004E93A0:             var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E93AA:             var_804C = Proc_489710(global_004EC46E, , )
  loc_004E93BD:             global_004F102C = 0
  loc_004E9405:             Global.Screen.MousePointer = 0
  loc_004E9427:             GoTo loc_004EC464
  loc_004E9434:             var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E943A:             var_8054 = Proc_489710(global_004EC46E, , )
  loc_004E944D:             global_004F102C = 0
  loc_004E9495:             Global.Screen.MousePointer = 0
  loc_004E94B7:             GoTo loc_004EC464
  loc_004E94C1:             If var_1C(1) >= 5 Then
  loc_004E94C7:             End If
  loc_004E94CF:             var_20 = "ERROR AL ACCESAR EL TSO"
  loc_004E94D9:             var_805C = Proc_489710(global_004EC46E, , )
  loc_004E94EC:             global_004F102C = 0
  loc_004E9534:             Global.Screen.MousePointer = 0
  loc_004E955B:           Else
  loc_004E9579:             frmLogTso.LblMsjTso.Caption = "Enviando Firma...  "
  loc_004E95AF:             frmLogTso.LblMsjTso.Refresh
  loc_004E9631:             var_14 = Trim$(frmLogTso.txtUsu.Text) & "@E"
  loc_004E965E:             If Proc_6_4_487960 <> True Then
  loc_004E966C:               var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9676:               var_8070 = Proc_489710(global_004EC46E, , )
  loc_004E9689:               global_004F102C = 0
  loc_004E96D1:               Global.Screen.MousePointer = 0
  loc_004E96F4:             Else
  loc_004E96F8:               var_8078 = Proc_6_9_488950
  loc_004E9731:               If (var_3C = 0) Then
  loc_004E973F:                 var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9749:                 var_8080 = Proc_489710(global_004EC46E, , )
  loc_004E975C:                 global_004F102C = 0
  loc_004E97A4:                 Global.Screen.MousePointer = 0
  loc_004E97CB:               Else
  loc_004E97DC:                 var_8088 = Proc_6_10_488B20
  loc_004E97E9:                 var_20 = "Password"
  loc_004E980F:                 If Proc_6_1_487260 + 1 Then
  loc_004E981D:                   var_20 = "ERROR AL FIRMARSE A TSO"
  loc_004E9827:                   var_8090 = Proc_489710(global_004EC46E, fs:[00000000h], )
  loc_004E983A:                   global_004F102C = 0
  loc_004E9882:                   Global.Screen.MousePointer = 0
  loc_004E98A9:                 Else
  loc_004E9925:                   If (Len(Trim$(frmLogTso.txtPasw.Text)) < 8) Then
  loc_004E9986:                     var_14 = Trim$(frmLogTso.txtPasw.Text) & "@T"
  loc_004E999D:                   Else
  loc_004E99E3:                     var_14 = Trim$(frmLogTso.txtPasw.Text)
  loc_004E99F2:                   End If
  loc_004E9A08:                   If Proc_6_4_487960 <> True Then
  loc_004E9A16:                     var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9A20:                     var_80B0 = Proc_489710(global_004EC46E, , 0)
  loc_004E9A33:                     global_004F102C = 0
  loc_004E9A7B:                     Global.Screen.MousePointer = 0
  loc_004E9AA2:                   Else
  loc_004E9AA6:                     var_80B8 = Proc_6_9_488950
  loc_004E9ADF:                     If (var_3C = 0) Then
  loc_004E9AED:                       var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9AF7:                       var_80C0 = Proc_489710(global_004EC46E, )
  loc_004E9B0A:                       global_004F102C = 0
  loc_004E9B52:                       Global.Screen.MousePointer = 0
  loc_004E9B79:                     Else
  loc_004E9B8A:                       var_80C8 = Proc_6_10_488B20
  loc_004E9C10:                       If (Trim$(frmLogTso.txtNuePasw.Text) = global_004568F4) Then
  loc_004E9C5C:                         var_14 = Trim$(frmLogTso.txtNuePasw.Text)
  loc_004E9C83:                         If Proc_6_4_487960 <> True Then
  loc_004E9C91:                           var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9C9B:                           var_80DC = Proc_489710(global_004EC46E, )
  loc_004E9CAA:                           global_004F102C = 0
  loc_004E9CF2:                           Global.Screen.MousePointer = 0
  loc_004E9D19:                         Else
  loc_004E9D1D:                           var_80E4 = Proc_6_9_488950
  loc_004E9D56:                           If (var_3C = 0) Then
  loc_004E9D64:                             var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9D6E:                             var_80EC = Proc_489710(global_004EC46E, )
  loc_004E9D81:                             global_004F102C = 0
  loc_004E9DC9:                             Global.Screen.MousePointer = 0
  loc_004E9DF0:                           Else
  loc_004E9E01:                             var_80F4 = Proc_6_10_488B20
  loc_004E9E06:                           End If
  loc_004E9E14:                           var_14 = "@E"
  loc_004E9E23:                           If Proc_6_4_487960 <> True Then
  loc_004E9E31:                             var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9E37:                             var_80FC = Proc_489710(global_004EC46E, )
  loc_004E9E4A:                             global_004F102C = 0
  loc_004E9E92:                             Global.Screen.MousePointer = 0
  loc_004E9EB9:                           Else
  loc_004E9F11:                             If (frmLogTso.txtPasw.Enabled = True) Then
  loc_004E9F5A:                               var_14 = Trim$(frmLogTso.txtPasw.Text)
  loc_004E9F81:                               If Proc_6_4_487960 <> True Then
  loc_004E9F8F:                                 var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004E9F99:                                 var_810C = Proc_489710(global_004EC46E, )
  loc_004E9FA8:                                 global_004F102C = 0
  loc_004E9FF0:                                 Global.Screen.MousePointer = 0
  loc_004EA017:                               Else
  loc_004EA01B:                                 var_8114 = Proc_6_9_488950
  loc_004EA03F:                                 var_8118 = (var_3C = 0)
  loc_004EA054:                                 If var_8118 = 0 Then GoTo loc_004E9E06
  loc_004EA062:                                 var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EA06C:                                 var_811C = Proc_489710(global_004EC46E, )
  loc_004EA07F:                                 global_004F102C = 0
  loc_004EA0C7:                                 Global.Screen.MousePointer = 0
  loc_004EA0EE:                               Else
  loc_004EA140:                                 If (frmLogTso.txtNuePasw.Enabled = True) = 0 Then GoTo loc_004E9E06
  loc_004EA18C:                                 var_14 = Trim$(frmLogTso.txtNuePasw.Text)
  loc_004EA1B3:                                 If Proc_6_4_487960 <> True Then
  loc_004EA1C1:                                   var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EA1CB:                                   var_812C = Proc_489710()
  loc_004EA1DA:                                   global_004F102C = 0
  loc_004EA222:                                   Global.Screen.MousePointer = 0
  loc_004EA249:                                 Else
  loc_004EA24D:                                   var_8134 = Proc_6_9_488950
  loc_004EA271:                                   var_8138 = (var_3C = 0)
  loc_004EA286:                                   If var_8138 = 0 Then GoTo loc_004E9E06
  loc_004EA294:                                   var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EA29E:                                   var_813C = Proc_489710(global_004EC46E, )
  loc_004EA2B1:                                   global_004F102C = 0
  loc_004EA2F9:                                   Global.Screen.MousePointer = 0
  loc_004EA320:                                 Else
  loc_004EA324:                                   var_8144 = Proc_6_9_488950
  loc_004EA366:                                   If (var_3C = 0) Then
  loc_004EA374:                                     call var_814C = var_8138(global_004EC46E)
  loc_004EA37A:                                     var_8150 = Proc_489710()
  loc_004EA38D:                                     global_004F102C = 0
  loc_004EA3D5:                                     Global.Screen.MousePointer = 0
  loc_004EA3FC:                                   Else
  loc_004EA40D:                                     var_8158 = Proc_6_10_488B20
  loc_004EA41A:                                     call var_815C = var_8138(global_004EC46E)
  loc_004EA448:                                     If (Proc_6_1_487260 = True) Then
  loc_004EA45F:                                       var_8164 = Proc_6_10_488B20
  loc_004EA468:                                       var_8168 = Proc_6_9_488950
  loc_004EA4AA:                                       If (var_3C = 0) Then
  loc_004EA4B8:                                         call var_8170 = var_8138
  loc_004EA4BE:                                         var_8174 = Proc_489710()
  loc_004EA4D1:                                         global_004F102C = 0
  loc_004EA519:                                         Global.Screen.MousePointer = 0
  loc_004EA540:                                       Else
  loc_004EA55E:                                         frmLogTso.LblMsjTso.Caption = "Firma aceptada...esperar  "
  loc_004EA594:                                         frmLogTso.LblMsjTso.Refresh
  loc_004EA5BD:                                         If ebx < 5 Then
  loc_004EA5CB:                                           var_14 = "@3"
  loc_004EA5DE:                                           If Proc_6_4_487960 <> True Then
  loc_004EA5E8:                                             var_8180 = Proc_6_9_488950
  loc_004EA60C:                                             var_8184 = (var_3C = 0)
  loc_004EA621:                                             If var_8184 = 0 Then
  loc_004EA634:                                               var_8188 = Proc_6_10_488B20
  loc_004EA643:                                               GoTo loc_004EA5B9
  loc_004EA648:                                             End If
  loc_004EA650:                                             var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EA65A:                                             var_818C = Proc_489710(global_004EC46E, )
  loc_004EA66D:                                             global_004F102C = 0
  loc_004EA6B5:                                             Global.Screen.MousePointer = 0
  loc_004EA6DC:                                           Else
  loc_004EA6E0:                                             If ebx+1 >= 5 Then
  loc_004EA6E6:                                             End If
  loc_004EA6EE:                                             var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EA6F8:                                             var_8194 = Proc_489710(global_004EC46E, )
  loc_004EA70B:                                             global_004F102C = 0
  loc_004EA753:                                             Global.Screen.MousePointer = 0
  loc_004EA77A:                                           Else
  loc_004EA783:                                             If ebx < 5 Then
  loc_004EA791:                                               var_20 = "READY"
  loc_004EA7BA:                                               If (Proc_6_1_487260 = True) = 0 Then
  loc_004EA7CE:                                                 var_14 = "@3"
  loc_004EA7D4:                                                 var_81A0 = Proc_6_4_487960
  loc_004EA7DD:                                                 If var_81A0 = True Then
  loc_004EA7E3:                                                   var_81A4 = Proc_6_9_488950
  loc_004EA81C:                                                   If (var_3C = 0) Then GoTo loc_004EA8DB
  loc_004EA833:                                                   var_81AC = Proc_6_10_488B20
  loc_004EA846:                                                   GoTo loc_004EA77C
  loc_004EA84B:                                                 End If
  loc_004EA853:                                                 var_1C(1)
  loc_004EA859:                                                 var_81B0 = Proc_489710(global_004EC46E, )
  loc_004EA86C:                                                 global_004F102C = 0
  loc_004EA8B4:                                                 Global.Screen.MousePointer = 0
  loc_004EA8D6:                                                 GoTo loc_004EC464
  loc_004EA8E3:                                                 var_1C(1)
  loc_004EA8E9:                                                 var_81B8 = Proc_489710(global_004EC46E, )
  loc_004EA8FC:                                                 global_004F102C = 0
  loc_004EA944:                                                 Global.Screen.MousePointer = 0
  loc_004EA96B:                                               Else
  loc_004EA96F:                                                 If var_1C(1) >= 5 Then
  loc_004EA975:                                                 End If
  loc_004EA97A:                                                 global_004F102C = 0
  loc_004EA9C2:                                                 Global.Screen.MousePointer = 0
  loc_004EA9E7:                                                 var_20 = "ERROR NO MANEJABLE"
  loc_004EA9F1:                                                 var_81C4 = Proc_489710(global_004EC46E, )
  loc_004EA9FF:                                                 End
  loc_004EAA05:                                               End If
  loc_004EAA0A:                                               global_004F102C = 0
  loc_004EAA52:                                               Global.Screen.MousePointer = 0
  loc_004EAA80:                                             Else
  loc_004EAA88:                                               var_1C(1)
  loc_004EAAB6:                                               If (Proc_6_1_487260 = True) Then
  loc_004EAAC4:                                                 var_1C(1)
  loc_004EAAD3:                                                 If Proc_6_4_487960 <> True Then
  loc_004EAAE1:                                                   var_1C(1)
  loc_004EAAE7:                                                   var_81D4 = Proc_489710(global_004EC46E, )
  loc_004EAAFA:                                                   global_004F102C = 0
  loc_004EAB42:                                                   Global.Screen.MousePointer = 0
  loc_004EAB69:                                                 Else
  loc_004EAB6D:                                                   var_81DC = Proc_6_9_488950
  loc_004EABAF:                                                   If (var_3C = 0) Then
  loc_004EABBD:                                                     var_1C(1)
  loc_004EABC3:                                                     var_81E4 = Proc_489710(global_004EC46E, )
  loc_004EABD6:                                                     global_004F102C = 0
  loc_004EAC1E:                                                     Global.Screen.MousePointer = 0
  loc_004EAC45:                                                   Else
  loc_004EAC4D:                                                     var_20 = "LOGON"
  loc_004EAC73:                                                     If Proc_6_1_487260 + 1 Then
  loc_004EAC81:                                                       var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EAC8B:                                                       var_81F0 = Proc_489710(global_004EC46E, )
  loc_004EAC9E:                                                       global_004F102C = 0
  loc_004EACE6:                                                       Global.Screen.MousePointer = 0
  loc_004EAD0D:                                                     Else
  loc_004EAD1B:                                                       var_14 = "LOGOFF@E"
  loc_004EAD2A:                                                       If Proc_6_4_487960 <> True Then
  loc_004EAD38:                                                         var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EAD3E:                                                         var_81FC = Proc_489710(global_004EC46E, )
  loc_004EAD51:                                                         global_004F102C = 0
  loc_004EAD99:                                                         Global.Screen.MousePointer = 0
  loc_004EADC0:                                                       Else
  loc_004EADC4:                                                         var_8204 = Proc_6_9_488950
  loc_004EADFD:                                                         If (var_3C = 0) Then
  loc_004EAE0B:                                                           var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004EAE15:                                                           var_820C = Proc_489710(global_004EC46E, )
  loc_004EAE28:                                                           global_004F102C = 0
  loc_004EAE70:                                                           Global.Screen.MousePointer = 0
  loc_004EAE97:                                                         Else
  loc_004EAE9C:                                                           global_004F102C = 0
  loc_004EAEE4:                                                           Global.Screen.MousePointer = 0
  loc_004EAF0F:                                                           Set var_28 = frmLogTso.txtUsu
  loc_004EAF42:                                                           var_28(52) = var_28.TabIndex
  loc_004EAF75:                                                           var_8218 = .FrmLogTso_LblMsjTso("USUARIO INVALIDO", &HFF)
  loc_004EAFD3:                                                           frmLogTso.LblUsutit(0).Enabled = True
  loc_004EB01B:                                                           frmLogTso.txtUsu.Enabled = True
  loc_004EB059:                                                           frmLogTso.txtPasw.Enabled = True
  loc_004EB0C8:                                                           If frmLogTso.txtUsu.Visible Then
  loc_004EB0CE:                                                             GoTo loc_004EC333
  loc_004EB0D3:                                                           End If
  loc_004EB0DB:                                                           call var_821C = frmLogTso.txtUsu.Visible(global_004EC46E)
  loc_004EB109:                                                           If (Proc_6_1_487260 = True) Then
  loc_004EB114:                                                             global_004F102C = 0
  loc_004EB15C:                                                             Global.Screen.MousePointer = 0
  loc_004EB194:                                                             frmLogTso.txtUsu.Enabled = False
  loc_004EB1D2:                                                             frmLogTso.txtPasw.Enabled = True
  loc_004EB210:                                                             frmLogTso.txtNuePasw.Enabled = True
  loc_004EB241:                                                             Set var_28 = frmLogTso.txtPasw
  loc_004EB277:                                                             var_28(52) = var_28.TabIndex
  loc_004EB2A7:                                                             var_8228 = .FrmLogTso_LblMsjTso("PASSWORD INVALIDO", &HFF)
  loc_004EB2E8:                                                             var_E0 = frmLogTso.txtPasw.Visible
  loc_004EB314:                                                             If var_E0 = 0 Then GoTo loc_004EC361
  loc_004EB328:                                                           Else
  loc_004EB330:                                                             call var_822C = var_E0
  loc_004EB352:                                                             If (Proc_6_1_487260 = True) Then
  loc_004EB35D:                                                               global_004F102C = 0
  loc_004EB3A5:                                                               Global.Screen.MousePointer = 0
  loc_004EB3DD:                                                               frmLogTso.txtUsu.Enabled = False
  loc_004EB41B:                                                               frmLogTso.txtPasw.Enabled = False
  loc_004EB459:                                                               frmLogTso.txtNuePasw.Enabled = True
  loc_004EB48A:                                                               Set var_28 = frmLogTso.txtNuePasw
  loc_004EB4BD:                                                               var_28(52) = var_28.TabIndex
  loc_004EB4F0:                                                               var_8238 = .FrmLogTso_LblMsjTso("EL PASSWORD HA EXPIRADO, FAVOR DE TECLEAR UNO NUEVO", &HFF)
  loc_004EB55D:                                                               If frmLogTso.txtNuePasw.Visible Then
  loc_004EB578:                                                                 frmLogTso.txtNuePasw.SetFocus
  loc_004EB5A5:                                                               Else
  loc_004EB62B:                                                                 var_8240 = "ERROR AL REINGRESAR A TSO " + Chr(10) + "FAVOR DE REINICIAR CONTROL DE REPORTES"
  loc_004EB62E:                                                                 MsgBox(var_8240, 0, 10, 10, 10)
  loc_004EB654:                                                               Else
  loc_004EB662:                                                                 var_20 = "IKJ56443I"
  loc_004EB66C:                                                                 var_24 = "IKJ56425I"
  loc_004EB6AE:                                                                 If ((Proc_6_1_487260 = True) Or (Proc_6_1_487260 = True)) Then
  loc_004EB6B9:                                                                   global_004F102C = 0
  loc_004EB701:                                                                   Global.Screen.MousePointer = 0
  loc_004EB739:                                                                   frmLogTso.txtUsu.Enabled = True
  loc_004EB777:                                                                   frmLogTso.txtPasw.Enabled = True
  loc_004EB7B5:                                                                   frmLogTso.txtNuePasw.Enabled = True
  loc_004EB7F8:                                                                   var_E0 = frmLogTso.txtUsu.TabIndex
  loc_004EB84C:                                                                   var_8250 = .FrmLogTso_LblMsjTso("EL USUARIO SE ENCUENTRA INHABILITADO", &HFF)
  loc_004EB88D:                                                                   var_E0 = frmLogTso.txtUsu.Visible
  loc_004EB8B9:                                                                   If var_E0 = 0 Then GoTo loc_004EC361
  loc_004EB8BF:                                                                   GoTo loc_004EC333
  loc_004EB8C4:                                                                 End If
  loc_004EB8D2:                                                                 var_20 = "IKJ56447A"
  loc_004EB900:                                                                 If (Proc_6_1_487260 = True) Then
  loc_004EB90B:                                                                   global_004F102C = 0
  loc_004EB953:                                                                   Global.Screen.MousePointer = 0
  loc_004EB98B:                                                                   frmLogTso.txtUsu.Enabled = False
  loc_004EB9C9:                                                                   frmLogTso.txtPasw.Enabled = False
  loc_004EBA07:                                                                   frmLogTso.txtNuePasw.Enabled = True
  loc_004EBA4A:                                                                   var_E0 = frmLogTso.txtNuePasw.TabIndex
  loc_004EBA9E:                                                                   var_825C = .FrmLogTso_LblMsjTso("FAVOR DE CONFIRMAR EL NUEVO PASSWORD", 0)
  loc_004EBADF:                                                                   var_E0 = frmLogTso.txtNuePasw.Visible
  loc_004EBB0B:                                                                   If var_E0 = 0 Then GoTo loc_004EC361
  loc_004EBB1F:                                                                 Else
  loc_004EBB27:                                                                   call var_8260 = var_E0
  loc_004EBB55:                                                                   If (Proc_6_1_487260 = True) Then
  loc_004EBB60:                                                                     global_004F102C = 0
  loc_004EBBA8:                                                                     Global.Screen.MousePointer = 0
  loc_004EBBE0:                                                                     frmLogTso.txtUsu.Enabled = False
  loc_004EBC1E:                                                                     frmLogTso.txtPasw.Enabled = False
  loc_004EBC5C:                                                                     frmLogTso.txtNuePasw.Enabled = True
  loc_004EBC9F:                                                                     var_E0 = frmLogTso.txtNuePasw.TabIndex
  loc_004EBCF3:                                                                     var_826C = .FrmLogTso_LblMsjTso("EL NUEVO PASSWORD ES INVALIDO", &HFF)
  loc_004EBD34:                                                                     var_E0 = frmLogTso.txtNuePasw.Visible
  loc_004EBD60:                                                                     If var_E0 = 0 Then GoTo loc_004EC361
  loc_004EBD74:                                                                   Else
  loc_004EBD7C:                                                                     call var_8270 = var_E0
  loc_004EBD8B:                                                                     If Proc_6_4_487960 <> True Then
  loc_004EBD99:                                                                       call var_8278 = var_E0
  loc_004EBD9F:                                                                       var_827C = Proc_489710()
  loc_004EBDB2:                                                                       global_004F102C = 0
  loc_004EBDFA:                                                                       Global.Screen.MousePointer = 0
  loc_004EBE21:                                                                     Else
  loc_004EBE25:                                                                       var_8284 = Proc_6_9_488950
  loc_004EBE67:                                                                       If (Chr(10) = 0) Then
  loc_004EBE75:                                                                         call var_828C = var_E0(global_004EC46E)
  loc_004EBE7B:                                                                         var_8290 = Proc_489710()
  loc_004EBE8E:                                                                         global_004F102C = 0
  loc_004EBED6:                                                                         Global.Screen.MousePointer = 0
  loc_004EBEFD:                                                                       Else
  loc_004EBF05:                                                                         call var_8298 = var_E0(global_004EC46E)
  loc_004EBF33:                                                                         If (Proc_6_1_487260 = True) Then
  loc_004EBF41:                                                                           call var_82A0 = var_E0
  loc_004EBF50:                                                                           If Proc_6_4_487960 <> True Then
  loc_004EBF5E:                                                                             call var_82A8 = var_E0
  loc_004EBF64:                                                                             var_82AC = Proc_489710()
  loc_004EBF77:                                                                             global_004F102C = 0
  loc_004EBFBF:                                                                             Global.Screen.MousePointer = 0
  loc_004EBFE6:                                                                           Else
  loc_004EBFEA:                                                                             var_82B4 = Proc_6_9_488950
  loc_004EC02C:                                                                             If (Chr(10) = 0) Then
  loc_004EC03A:                                                                               call var_82BC = var_E0(global_004EC46E)
  loc_004EC040:                                                                               var_82C0 = Proc_489710()
  loc_004EC053:                                                                               global_004F102C = 0
  loc_004EC09B:                                                                               Global.Screen.MousePointer = 0
  loc_004EC0C2:                                                                             Else
  loc_004EC0C2:                                                                             End If
  loc_004EC0C7:                                                                             global_004F102C = 0
  loc_004EC10F:                                                                             Global.Screen.MousePointer = 0
  loc_004EC13A:                                                                             Set var_28 = frmLogTso.txtUsu
  loc_004EC16D:                                                                             var_28(52) = var_28.TabIndex
  loc_004EC1A0:                                                                             var_82CC = .FrmLogTso_LblMsjTso("ERROR DESCONOCIDO, INTENTE DE NUEVO", &HFF)
  loc_004EC1FE:                                                                             frmLogTso.LblUsutit(0).Enabled = True
  loc_004EC246:                                                                             frmLogTso.txtUsu.Enabled = True
  loc_004EC284:                                                                             frmLogTso.txtPasw.Enabled = True
  loc_004EC2C2:                                                                             frmLogTso.txtNuePasw.Enabled = True
  loc_004EC331:                                                                             If frmLogTso.txtUsu.Visible Then
  loc_004EC33C:                                                                             End If
  loc_004EC33C:                                                                           End If
  loc_004EC33C:                                                                         End If
  loc_004EC341:                                                                         Set var_28 = frmLogTso.txtUsu
  loc_004EC34C:                                                                         var_28.SetFocus
  loc_004EC356:                                                                         If var_28.SetFocus >= 0 Then GoTo loc_004EB592
  loc_004EC35C:                                                                         GoTo loc_004EB584
  loc_004EC361:                                                                       End If
  loc_004EC361:                                                                     End If
  loc_004EC3E7:                                                                     var_82D4 = "ERROR AL REINGRESAR A TSO " + Chr(10) + "FAVOR DE REINICIAR CONTROL DE REPORTES"
  loc_004EC3EA:                                                                     MsgBox(var_82D4, 0, 10, 10, 10)
  loc_004EC40B:                                                                   End If
  loc_004EC41B:                                                                   GoTo loc_004EC464
  loc_004EC463:                                                                   Exit Sub
  loc_004EC464:                                                                 End If
  loc_004EC464:                                                               End If
  loc_004EC464:                                                             End If
  loc_004EC464:                                                           End If
  loc_004EC464:                                                         End If
  loc_004EC464:                                                       End If
  loc_004EC464:                                                     End If
  loc_004EC464:                                                   End If
  loc_004EC464:                                                 End If
  loc_004EC464:                                               End If
  loc_004EC464:                                             End If
  loc_004EC464:                                           End If
  loc_004EC464:                                         End If
  loc_004EC464:                                       End If
  loc_004EC464:                                     End If
  loc_004EC464:                                   End If
  loc_004EC464:                                 End If
  loc_004EC464:                               End If
  loc_004EC464:                             End If
  loc_004EC464:                           End If
  loc_004EC464:                         End If
  loc_004EC464:                       End If
  loc_004EC464:                     End If
  loc_004EC464:                   End If
  loc_004EC464:                 End If
  loc_004EC464:               End If
  loc_004EC464:             End If
  loc_004EC464:           End If
  loc_004EC464:         End If
  loc_004EC464:       End If
  loc_004EC464:     End If
  loc_004EC464:   End If
  loc_004EC464: End If
  loc_004EC464: ' Referenced from: 004EC41B
End Sub

Private Sub Proc_18_24_4EC4A0() '4EC4A0
  Dim var_20 As Variant
  loc_004EC53A: If (frmLogTso.txtUsu.Enabled = True) Then
  loc_004EC5C0:   If (Trim$(frmLogTso.txtUsu.Text) = global_004568F4) + 1 Then
  loc_004EC5E6:     var_800C = frmLogTso.FrmLogTso_LblMsjTso("DEBE PROPORCIONAR LA CLAVE DEL USUARIO", &HFF)
  loc_004EC64C:     global_52 = frmLogTso.txtUsu.TabIndex
  loc_004EC663:     Set var_20 = frmLogTso.txtUsu
  loc_004EC66A:     var_20.SetFocus
  loc_004EC674:     If var_20.SetFocus >= 0 Then GoTo loc_004ECA02
  loc_004EC67A:     GoTo loc_004EC9F0
  loc_004EC67F:   End If
  loc_004EC67F: End If
  loc_004EC6D0: If (frmLogTso.txtPasw.Enabled = True) Then
  loc_004EC756:   If (Trim$(frmLogTso.txtPasw.Text) = global_004568F4) + 1 Then
  loc_004EC77C:     var_8018 = .FrmLogTso_LblMsjTso("DEBE PROPORCIONAR EL PASSWORD", &HFF)
  loc_004EC7AF:     Set var_20 = frmLogTso.txtPasw
  loc_004EC7E5:     var_20(52) = var_20.TabIndex
  loc_004EC7F9:     Set var_20 = frmLogTso.txtPasw
  loc_004EC800:     var_20.SetFocus
  loc_004EC80A:     If var_20.SetFocus >= 0 Then GoTo loc_004ECA02
  loc_004EC810:     GoTo loc_004EC9F0
  loc_004EC815:   End If
  loc_004EC815: End If
  loc_004EC8B4: If ((frmLogTso.txtNuePasw.Enabled = True) And (frmLogTso.txtPasw.Enabled = 0)) = 0 Then GoTo loc_004ECA0E
  loc_004EC93A: If (Trim$(frmLogTso.txtNuePasw.Text) = global_004568F4) + 1 = 0 Then GoTo loc_004ECA0E
  loc_004EC960: var_8024 = .FrmLogTso_LblMsjTso("DEBE PROPORCIONAR EL NUEVO PASSWORD", &HFF)
  loc_004EC993: Set var_20 = frmLogTso.txtNuePasw
  loc_004EC9C9: var_20(52) = var_20.TabIndex
  loc_004EC9DD: Set var_20 = frmLogTso.txtNuePasw
  loc_004EC9E4: var_20.SetFocus
  loc_004EC9EE: If var_20.SetFocus >= 0 Then GoTo loc_004ECA02
  loc_004EC9F0: ' Referenced from: 004EC67A
  loc_004EC9F0: ' Referenced from: 004EC810
  loc_004EC9FC: CheckObj(var_20.SetFocus, var_20, global_00457C74, 516)
  loc_004ECA0C: GoTo loc_004ECA40
  loc_004ECA1A: GoTo loc_004ECA40
  loc_004ECA3F: Exit Sub
  loc_004ECA40: ' Referenced from: 004ECA0C
  loc_004ECA40: ' Referenced from: 004ECA1A
End Sub
