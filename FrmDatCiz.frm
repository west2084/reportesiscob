VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FrmDatCiz
  Caption = "Transferencia y  Manejo de Datos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2325
  ClientTop = 3705
  ClientWidth = 7470
  ClientHeight = 4710
  PaletteMode = 1
  Begin Threed.SSPanel SSPanel2
    Left = 4860
    Top = 195
    Width = 2400
    Height = 1980
    TabIndex = 12
    OleObjectBlob = "FrmDatCiz.frx":0000
    Begin Threed.SSCommand CmdManejo
      Left = 405
      Top = 900
      Width = 1455
      Height = 870
      TabIndex = 10
      OleObjectBlob = "FrmDatCiz.frx":0079
    End
    Begin VB.Label LblTitInst
      Caption = "Entrar a la pantalla de manejo  de información"
      Index = 0
      BackColor = &HC0FFFF&
      Left = 90
      Top = 225
      Width = 2175
      Height = 600
      TabIndex = 13
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Times New Roman"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Threed.SSPanel SSPanel1
    Left = 135
    Top = 225
    Width = 4650
    Height = 4335
    TabIndex = 14
    OleObjectBlob = "FrmDatCiz.frx":3FD4
    Begin VB.ComboBox ComMesTrans
      Style = 2
      Left = 135
      Top = 3780
      Width = 1410
      Height = 315
      TabIndex = 7
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
    Begin VB.ComboBox ComAnioTrans
      Left = 1710
      Top = 3780
      Width = 915
      Height = 315
      Text = "1997"
      TabIndex = 8
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
    Begin Threed.SSFrame SSFrame1
      Left = 120
      Top = 1350
      Width = 4425
      Height = 1815
      TabIndex = 3
      OleObjectBlob = "FrmDatCiz.frx":404D
      Begin Threed.SSOption OptTipDat
        Index = 0
        Left = 200
        Top = 450
        Width = 4100
        Height = 300
        TabIndex = 4
        OleObjectBlob = "FrmDatCiz.frx":40CF
      End
      Begin Threed.SSOption OptTipDat
        Index = 2
        Left = 200
        Top = 1260
        Width = 4100
        Height = 300
        TabIndex = 6
        OleObjectBlob = "FrmDatCiz.frx":415A
      End
      Begin Threed.SSOption OptTipDat
        Index = 1
        Left = 200
        Top = 855
        Width = 4100
        Height = 300
        TabIndex = 5
        OleObjectBlob = "FrmDatCiz.frx":41DC
      End
    End
    Begin Threed.SSFrame FraOPtTRans
      Left = 135
      Top = 90
      Width = 4425
      Height = 1140
      TabIndex = 0
      OleObjectBlob = "FrmDatCiz.frx":4266
      Begin Threed.SSOption OptTipTransf
        Index = 0
        Left = 180
        Top = 270
        Width = 4005
        Height = 345
        TabIndex = 1
        OleObjectBlob = "FrmDatCiz.frx":42E2
      End
      Begin Threed.SSOption OptTipTransf
        Index = 1
        Left = 180
        Top = 630
        Width = 4005
        Height = 345
        TabIndex = 2
        OleObjectBlob = "FrmDatCiz.frx":436D
      End
    End
    Begin Threed.SSCommand CmdTransf
      Left = 3015
      Top = 3645
      Width = 1410
      Height = 420
      TabIndex = 9
      OleObjectBlob = "FrmDatCiz.frx":43F5
    End
    Begin VB.Label LblAnio
      Caption = "AÑO"
      Index = 1
      BackColor = &H800000&
      ForeColor = &HFFFFFF&
      Left = 1620
      Top = 3420
      Width = 1100
      Height = 280
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
    Begin VB.Label LblAnio
      Caption = "MES"
      Index = 0
      BackColor = &H800000&
      ForeColor = &HFFFFFF&
      Left = 270
      Top = 3420
      Width = 1095
      Height = 285
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
    End
  End
  Begin Threed.SSCommand CmdTermina
    Left = 5220
    Top = 4005
    Width = 1725
    Height = 600
    TabIndex = 11
    OleObjectBlob = "FrmDatCiz.frx":4464
  End
  Begin VB.Label LblMsjTrans
    Caption = "En este momento se descomprimen  los archivos de datos que fueron recibidos en tu PC"
    BackColor = &HC0FFC0&
    Left = 4860
    Top = 2295
    Width = 2400
    Height = 1635
    TabIndex = 17
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmDatCiz"

Public TotDeArch As Integer


Private Sub CmdManejo_UnknownEvent_0 '4D4EA0
  loc_004D4F28: FrmDatCiz.LblTitInst(0).Visible = True
  loc_004D4F61: GoTo loc_004D4F77
  loc_004D4F76: Exit Sub
  loc_004D4F77: ' Referenced from: 004D4F61
End Sub

Private Sub CmdManejo_UnknownEvent_1 '4D4FA0
  loc_004D5027: FrmDatCiz.LblTitInst(0).Visible = False
  loc_004D5060: GoTo loc_004D5076
  loc_004D5075: Exit Sub
  loc_004D5076: ' Referenced from: 004D5060
End Sub

Private Sub CmdManejo_UnknownEvent_9 '4D4CF0
  loc_004D4D51: var_8008 = FrmDatCiz.Hide
  loc_004D4DD1: var_8010 = FrmCreaDisk.Show 2, var_20
  loc_004D4E56: var_8018 = FrmDatCiz.Show 2, var_20
End Sub

Private Sub CmdManejo_UnknownEvent_E '4D50A0
  loc_004D5128: FrmDatCiz.LblTitInst(0).Visible = True
  loc_004D5161: GoTo loc_004D5177
  loc_004D5176: Exit Sub
  loc_004D5177: ' Referenced from: 004D5161
End Sub

Private Sub CmdTermina_UnknownEvent_9 '4D51A0
  Dim global_004F1DB4 As Global
  loc_004D5219: global_004F1DB4.Unload Me
  loc_004D5242: GoTo loc_004D524E
  loc_004D524D: Exit Sub
  loc_004D524E: ' Referenced from: 004D5242
End Sub

Private Sub OptTipTransf_UnknownEvent_9(arg_C) '4D8780
  Dim var_18 As Variant
  Dim var_1C As Label
  loc_004D87E9: FrmDatCiz.OptTipDat.UnkVCall_00000040h
  loc_004D8824: var_1C.Value
  loc_004D884B: Set var_18 = FrmDatCiz.OptTipDat
  loc_004D8856: var_40 = var_18
  loc_004D8859: var_18.UnkVCall_00000040h
  loc_004D8894: var_1C.Value
  loc_004D88BB: Set var_18 = FrmDatCiz.OptTipDat
  loc_004D88C6: var_40 = var_18
  loc_004D88C9: var_18.UnkVCall_00000040h
  loc_004D8904: var_1C.Value
  loc_004D8949: FrmDatCiz.CmdTransf.Visible = True
  loc_004D895F: If arg_C = 0 Then
  loc_004D8973:   Set var_18 = FrmDatCiz.OptTipDat
  loc_004D897E:   var_40 = var_18
  loc_004D8981:   var_18.UnkVCall_00000040h
  loc_004D89C0:   var_1C.Enabled = True
  loc_004D89E7:   Set var_18 = FrmDatCiz.OptTipDat
  loc_004D89F2:   var_40 = var_18
  loc_004D89F5:   var_18.UnkVCall_00000040h
  loc_004D8A34:   var_1C.Enabled = True
  loc_004D8A69:   Set var_18 = FrmDatCiz.OptTipDat
  loc_004D8A74:   var_40 = var_18
  loc_004D8A77:   var_18.UnkVCall_00000040h
  loc_004D8AD4: Else
  loc_004D8AE2:   Set var_18 = FrmDatCiz.OptTipDat
  loc_004D8AED:   var_40 = var_18
  loc_004D8AF0:   var_18.UnkVCall_00000040h
  loc_004D8B55:   Set var_18 = FrmDatCiz.OptTipDat
  loc_004D8B60:   var_40 = var_18
  loc_004D8B63:   var_18.UnkVCall_00000040h
  loc_004D8BCF:   Set var_18 = FrmDatCiz.OptTipDat
  loc_004D8BDA:   var_40 = var_18
  loc_004D8BDD:   var_18.UnkVCall_00000040h
  loc_004D8C40:   Set var_18 = FrmDatCiz.ComAnioTrans
  loc_004D8C47:   var_40 = var_18
  loc_004D8C4A:   var_18.Visible = False
  loc_004D8C82:   Set var_18 = FrmDatCiz.ComMesTrans
  loc_004D8C89:   var_40 = var_18
  loc_004D8C8C:   var_18.Visible = False
  loc_004D8CC4:   Set var_18 = FrmDatCiz.LblAnio
  loc_004D8CCF:   var_40 = var_18
  loc_004D8CD2:   Set var_1C = var_18(0)
  loc_004D8CF3:   var_48 = var_1C
  loc_004D8CF8:   var_1C.Visible = False
  loc_004D8D3A:   Set var_18 = FrmDatCiz.LblAnio
  loc_004D8D45:   var_40 = var_18
  loc_004D8D48:   Set var_1C = var_18(1)
  loc_004D8D69:   var_48 = var_1C
  loc_004D8D6E:   var_1C.Visible = False
  loc_004D8DA4: End If
  loc_004D8DD0: FrmDatCiz.CmdTransf.Caption
  loc_004D8DEB: GoTo loc_004D8E01
  loc_004D8E00: Exit Sub
  loc_004D8E01: ' Referenced from: 004D8DEB
End Sub

Private Sub OptTipDat_UnknownEvent_9(arg_C) '4D8440
  loc_004D84A6: FrmDatCiz.ComAnioTrans.Visible = True
  loc_004D84F2: FrmDatCiz.ComMesTrans.Visible = True
  loc_004D8552: FrmDatCiz.LblAnio(0).Visible = True
  loc_004D85BC: FrmDatCiz.LblAnio(1).Visible = True
  loc_004D8602: If (arg_C) = (arg_C <> 1) Then
  loc_004D8648:   FrmDatCiz.LblAnio(0).Caption = "MES"
  loc_004D867D:   var_8004 = FrmDatCiz.FrmDatCiz_CargaMeses(vbVariant)
  loc_004D8695: End If
  loc_004D869C: If arg_C = 2 Then
  loc_004D86E2:   FrmDatCiz.LblAnio(0).Caption = "BIMESTRE"
  loc_004D8717:   var_8008 = FrmDatCiz.FrmDatCiz_CargaMeses(0#)
  loc_004D872F: End If
  loc_004D873B: GoTo loc_004D8751
  loc_004D8750: Exit Sub
  loc_004D8751: ' Referenced from: 004D873B
End Sub

Private Sub Form_Load() '4D81A0
  loc_004D81E0: var_8004 = Proc_48DF50(0, 0, 0)
  loc_004D81E8: var_8008 = FrmDatCiz.FrmDatCiz_CargaDiaFinMes
  loc_004D8207: var_800C = FrmDatCiz.FrmDatCiz_CargaAnios
End Sub

Private Sub Form_Activate() '4D78C0
  Dim var_2C As Variant
  Dim var_30 As Label
  loc_004D79C6: var_24 = Trim(Global.App.Path)
  loc_004D7A39: If (Right(var_24, 1) <> "\") Then
  loc_004D7A4F:   var_24 = var_24 & "\"
  loc_004D7A55: End If
  loc_004D7A69: var_20 = var_24 & "BMP\"
  loc_004D7A71: On Error GoTo loc_004D80B0
  loc_004D7AA2: FrmDatCiz.OptTipDat.UnkVCall_00000040h
  loc_004D7ADF: var_30.Enabled = var_78
  loc_004D7B21: FrmDatCiz.OptTipDat.UnkVCall_00000040h
  loc_004D7BA0: FrmDatCiz.OptTipDat.UnkVCall_00000040h
  loc_004D7C0D: FrmDatCiz.ComAnioTrans.Visible = False
  loc_004D7C4B: FrmDatCiz.ComMesTrans.Visible = False
  loc_004D7CAD: FrmDatCiz.CmdTransf.Visible = var_78
  loc_004D7CF5: FrmDatCiz.LblAnio(0).Visible = False
  loc_004D7D63: FrmDatCiz.LblAnio(1).Visible = False
  loc_004D7DA2: Set var_2C = FrmDatCiz.LblMsjTrans
  loc_004D7DAB: var_2C.Visible = False
  loc_004D7DDC: var_B8 = var_2C.Width
  loc_004D7E20: var_2C = Global.Screen
  loc_004D7E45: var_C8 = var_2C
  loc_004D7E55: var_B4 = var_2C.Width
  loc_004D7E8A: If global_004F1000 = 0 Then
  loc_004D7E94: Else
  loc_004D7E9F: End If
  loc_004D7EAE: var_2C.Left = ((var_B4 - var_B8) / 2)
  loc_004D7EC0: CheckObj(Err.Number, Me, global_004572E8, 116)
  loc_004D7ED5: var_B8 = var_2C.Height
  loc_004D7F3C: var_B4 = Global.Screen.Height
  loc_004D7F69: If global_004F1000 = 0 Then
  loc_004D7F73: Else
  loc_004D7F7E: End If
  loc_004D7F8D: Global.Screen.Top = ((var_B4 - var_B8) / 2)
  loc_004D7F9F: CheckObj(Err.Number, Me, global_004572E8, 124)
  loc_004D7FEE: FrmDatCiz.CmdManejo.Enabled = True
  loc_004D8033: FrmDatCiz.CmdTermina.Enabled = True
  loc_004D808B: Global.App.HelpFile = "C:\VREP\OPERREP.HLP"
  loc_004D80AE: GoTo loc_004D8119
  loc_004D80B0: ' Referenced from: 004D7A71
  loc_004D80F8: MsgBox("ERROR AL CARGAR IMAGENES PARA EL PROGRAMA", 48, 10, 10, 10)
  loc_004D8119: ' Referenced from: 004D80AE
  loc_004D8119: Exit Sub
  loc_004D8125: GoTo loc_004D815C
  loc_004D815B: Exit Sub
  loc_004D815C: ' Referenced from: 004D8125
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '4D8250
  loc_004D82D7: FrmDatCiz.LblTitInst(0).Visible = False
  loc_004D8310: GoTo loc_004D8326
  loc_004D8325: Exit Sub
  loc_004D8326: ' Referenced from: 004D8310
End Sub

Private Sub Form_Terminate() '4D8350
  loc_004D83EF: var_8008 = FrmPorta.Show 10, var_20
End Sub

Private Sub CmdTransf_UnknownEvent_9 '4D5270
  Dim var_34 As Variant
  Dim global_004F1148 As Form
  Dim var_38 As Variant
  Dim global_004F1DB4 As Global
  Dim var_1CC As Variant
  loc_004D53A3: FrmDatCiz.CmdManejo.Enabled = var_150
  loc_004D53F5: FrmDatCiz.CmdTermina.Enabled = var_150
  loc_004D5412: Set var_34 = FrmDatCiz.OptTipTransf
  loc_004D541C: var_1D0 = var_34
  loc_004D5422: var_34.UnkVCall_00000040h
  loc_004D544B: var_38.Value
  loc_004D5485: If CBool(var_38) Then
  loc_004D549E:   ReDim global_004F1090(0 To 2)
  loc_004D54B5:   Set var_34 = FrmDatCiz.ComAnioTrans
  loc_004D54BE:   var_1D0 = var_34
  loc_004D5555:   If (Trim(var_34.Text) = global_004568F4) Then
  loc_004D5569:     Set var_34 = FrmDatCiz.ComAnioTrans
  loc_004D5573:     var_1D0 = var_34
  loc_004D5579:     var_34.Text = "0000"
  loc_004D55BB:     FrmDatCiz.ComAnioTrans.SetFocus
  loc_004D560D:     If FrmDatCiz.Refresh >= 0 Then GoTo loc_004D77F1
  loc_004D561F:     CheckObj(FrmDatCiz.Refresh, global_004F1148, global_004572E8, 672)
  loc_004D562A:   End If
  loc_004D5638:   Set var_34 = FrmDatCiz.ComAnioTrans
  loc_004D5641:   var_1D0 = var_34
  loc_004D5647:   var_2C = var_34.Text
  loc_004D566F:   var_2C = CInt(var_34)
  loc_004D5675:   var_160 = var_2C
  loc_004D56C0:   Set var_38 = FrmDatCiz.ComAnioTrans
  loc_004D56C9:   var_1D8 = var_38
  loc_004D56CF:   var_30 = var_38.Text
  loc_004D56F7:   var_30 = CInt(0)
  loc_004D5703:   var_170 = var_30
  loc_004D57D5:   If CBool((var_2C <= Year(Date) - 8) And (var_30 > Year(Date))) Then
  loc_004D57EC:     FrmDatCiz.ComAnioTrans.SetFocus
  loc_004D5819:     If global_004F1148 Then GoTo loc_004D55FA
  loc_004D581F:     GoTo loc_004D55EA
  loc_004D5824:   End If
  loc_004D5832:   Set var_34 = FrmDatCiz.ComMesTrans
  loc_004D583E:   var_1D0 = var_34
  loc_004D5844:   var_1CC = var_34.ListIndex
  loc_004D5881:   var_40 = var_1CC(1)
  loc_004D58DC:   var_28 = Format(Str(var_1CC(1)), "00")
  loc_004D5914:   Set var_34 = FrmDatCiz.ComAnioTrans
  loc_004D591D:   var_1D0 = var_34
  loc_004D5987:   var_24 = Mid(var_34.Text, 3, 2)
  loc_004D59BB:   Set var_34 = FrmDatCiz.ComAnioTrans
  loc_004D5A0F:   var_1C = CInt(Trim(var_34.Text))
  loc_004D5A3B:   Dim var_28 As String * 2
  loc_004D5A42:   var_2C = var_28
  loc_004D5A52:   var_20 = CInt(1)
  loc_004D5A60:   If var_34(56) Then
  loc_004D5A66:     If var_34(56) = 1 Then
  loc_004D5A76:       var_1D0 = (var_20 - var_34(56)(20))
  loc_004D5A7C:       If (var_20 - var_34(56)(20)) >= var_34(56)(16) Then
  loc_004D5A7E:         var_8030 = Err.Raise
  loc_004D5A8A:       End If
  loc_004D5A93:     Else
  loc_004D5A93:     End If
  loc_004D5A93:     var_8034 = Err.Raise
  loc_004D5A99:   End If
  loc_004D5A9F:   var_34(56)(12) = var_34(56)(12) + var_8034
  loc_004D5AA4:   Dim var_34(56)(12)+var_8034 As String * 2
  loc_004D5AAD:   var_18 = var_34(56)(12)+var_8034
  loc_004D5AB9:   Dim var_28 As String * 2
  loc_004D5AF0:   If (var_28 = "02") + 1 Then
  loc_004D5B11:     If Not Sign((CInt(Trim(var_34.Text)) And 3) - 0) Then
  loc_004D5B1B:     End If
  loc_004D5B3F:     If var_1C Mod 00000190h = (var_1C Mod 00000064h + 1 Or ((CInt(Trim(var_34.Text)) And 3) - 1 Or 16777212) + 1) Then
  loc_004D5B4C:       var_18 = "29"
  loc_004D5B52:     End If
  loc_004D5B54:   End If
  loc_004D5B62:   Set var_34 = FrmDatCiz.OptTipDat
  loc_004D5B70:   var_1D0 = var_34
  loc_004D5B76:   var_34.UnkVCall_00000040h
  loc_004D5B9F:   var_38.Value
  loc_004D5BD9:   If CBool(var_38) Then
  loc_004D5C74:     Dim var_24 As String * 2
  loc_004D5C88:     Dim var_28 As String * 2
  loc_004D5C9C:     Dim var_18 As String * 2
  loc_004D5D42:     var_8058 = global_004F1064 + Trim(Right(global_004F1034, 1)) + "EE1N.DS" + global_004F1040 + global_004F1044 + ".FE" + var_24 + var_28
  loc_004D5D7F:     var_138 = Trim(var_8058 + var_18 + ".EEAMX9CL" + ".COP.DAT")
  loc_004D5D8C:     If global_004F1090 Then
  loc_004D5D92:       If global_004F1090 = 1 Then
  loc_004D5DA4:         If global_004F1090 >= global_004F1090 Then
  loc_004D5DA6:           var_8068 = Err.Raise
  loc_004D5DB2:         End If
  loc_004D5DBB:       Else
  loc_004D5DBB:       End If
  loc_004D5DBB:       var_806C = Err.Raise
  loc_004D5DC1:     End If
  loc_004D5DC7:     var_200 = var_806C
  loc_004D5F09:     Dim var_24 As String * 2
  loc_004D5F21:     Dim var_28 As String * 2
  loc_004D5F39:     Dim var_18 As String * 2
  loc_004D5FDE:     var_808C = global_004F1064 + Trim(Right(global_004F1034, 1)) + "EE1N.DS" + global_004F1040 + global_004F1044 + ".FE" + var_24 + var_28
  loc_004D601B:     var_138 = Trim(var_808C + var_18 + ".EEAMX9DS" + ".COP.DAT")
  loc_004D6028:     If var_138 Then
  loc_004D602E:       If var_138 = 1 Then
  loc_004D603F:         If var_138 >= var_138 Then
  loc_004D6041:           var_809C = Err.Raise
  loc_004D6047:         End If
  loc_004D604C:       Else
  loc_004D604C:       End If
  loc_004D604C:       var_80A0 = Err.Raise
  loc_004D6054:     End If
  loc_004D6078:     global_004F1090 = var_138
  loc_004D6101:   Else
  loc_004D610F:     Set var_34 = FrmDatCiz.OptTipDat
  loc_004D611E:     var_1D0 = var_34
  loc_004D6124:     var_34.UnkVCall_00000040h
  loc_004D614D:     var_38.Value
  loc_004D6187:     If CBool(Right(global_004F1034, 1)) <> @#StkVar1%StkVar3 + %StkVar2 Then
  loc_004D6221:       call var_80AC = var_80A0(00000002h, var_24, var_34, 00000001h, var_38, var_34, 0, var_38, 00000001h, var_38, Me, 0, 0, 0)
  loc_004D6235:       call var_80B0 = var_80A0(00000002h, var_28)
  loc_004D6249:       call var_80B4 = var_80A0(00000002h, var_18)
  loc_004D62EF:       var_80D0 = global_004F1064 + Trim(Right(global_004F1034, 1)) + "EE1N.DS" + global_004F1040 + global_004F1044 + ".FE" + var_80AC + var_80B0
  loc_004D632C:       var_138 = Trim(var_80D0 + var_80B4 + ".EEBMX9CL" + ".COP.DAT")
  loc_004D6339:       If global_004F1090 Then
  loc_004D633F:         If global_004F1090 = 1 Then
  loc_004D6351:           If global_004F1090 >= global_004F1090 Then
  loc_004D6353:             var_80E0 = Err.Raise
  loc_004D635F:           End If
  loc_004D6366:           var_204 = ecx*4
  loc_004D636E:         Else
  loc_004D636E:         End If
  loc_004D6374:         var_204 = Err.Raise
  loc_004D637A:       End If
  loc_004D64BC:       call var_80EC = var_80A0(00000002h, var_24)
  loc_004D64D4:       call var_80F0 = var_80A0(00000002h, var_28)
  loc_004D64EC:       call var_80F4 = var_80A0(00000002h, var_18)
  loc_004D6591:       var_8110 = global_004F1064 + Trim(Right(global_004F1034, 1)) + "EE1N.DS" + global_004F1040 + global_004F1044 + ".FE" + var_80EC + var_80F0
  loc_004D65CE:       var_138 = Trim(var_8110 + var_80F4 + ".EEBMX9DS" + ".COP.DAT")
  loc_004D65DB:       If var_138 Then
  loc_004D65E1:         If var_138 = 1 Then
  loc_004D65F2:           If var_138 >= var_138 Then
  loc_004D65F4:             var_8120 = Err.Raise
  loc_004D65FA:           End If
  loc_004D65FF:         Else
  loc_004D65FF:         End If
  loc_004D6607:       End If
  loc_004D669F:       GoTo loc_004D60EB
  loc_004D66A4:     End If
  loc_004D66B2:     Set var_34 = FrmDatCiz.OptTipDat
  loc_004D66C1:     var_1D0 = var_34
  loc_004D66C7:     var_34.UnkVCall_00000040h
  loc_004D66F0:     var_38.Value
  loc_004D672A:     If CBool(var_38) <> @#StkVar1%StkVar3 + %StkVar2 Then
  loc_004D673E:       Set var_34 = FrmDatCiz.ComAnioTrans
  loc_004D674B:       var_1D0 = var_34
  loc_004D67AD:       var_48 = Right(global_004F1034, 1)
  loc_004D67BB:       var_58 = Trim(var_48)
  loc_004D6843:       var_D8 = Mid(var_34.Text, 3, 2)
  loc_004D684F:       call var_8130 = Err.Raise(00000002h, var_28, var_34, 00000002h, var_38, var_48, var_58, Mid(var_34.Text, 3, 2), Format(Str(var_1CC(1)), "00"), Date, Year(Date), var_A8, 8, 2, var_D8, var_E8)
  loc_004D68F6:       var_8150 = global_004F1064 + var_58 + "EE1N.DS" + global_004F1040 + global_004F1044 + ".FE" + var_D8 + var_8130 + ".EEBBP001.SUEPAGP.DAT"
  loc_004D6900:       var_128 = Trim(var_8150)
  loc_004D690D:       If var_138 Then
  loc_004D6913:         If var_138 = 1 Then
  loc_004D691F:           If var_138 >= var_138 Then
  loc_004D6921:             var_8154 = Err.Raise
  loc_004D6927:           End If
  loc_004D692C:         Else
  loc_004D692C:         End If
  loc_004D692C:         var_8158 = Err.Raise
  loc_004D6934:       End If
  loc_004D6958:       global_004F1090 = var_128
  loc_004D69E0:     Else
  loc_004D6A01:       var_8164 = FrmDatCiz.Refresh
  loc_004D6A07:       GoTo loc_004D5609
  loc_004D6A0C:     End If
  loc_004D6A12:   End If
  loc_004D6A12: End If
  loc_004D6A12: var_8168 = Proc_6_8_488750
  loc_004D6A1A: If var_8168 = 0 Then
  loc_004D6A2D:   var_816C = Proc_6_14_4891C0
  loc_004D6A5E:   If FrmDatCiz.Refresh >= 0 Then GoTo loc_004D77F1
  loc_004D6A70:   CheckObj(FrmDatCiz.Refresh, global_004F1148, global_004572E8, 672)
  loc_004D6A7B: End If
  loc_004D6B10: var_817C = frmLogTso.Show 1, var_154
  loc_004D6B76: Global.Screen.MousePointer = CLng(11)
  loc_004D6BAE: If global_004F1024 = 0 Then
  loc_004D6BF3:   Global.Screen.MousePointer = 0
  loc_004D6C3C:   If FrmDatCiz.Refresh >= 0 Then GoTo loc_004D77F1
  loc_004D6C4E:   CheckObj(FrmDatCiz.Refresh, global_004F1148, global_004572E8, 672)
  loc_004D6C55: End If
  loc_004D6C98: Global.Screen.MousePointer = CLng(11)
  loc_004D6CC7: Set var_34 = FrmDatCiz.OptTipTransf
  loc_004D6CD8: var_34.UnkVCall_00000040h
  loc_004D6CFC: var_38.Value
  loc_004D6D2E: If CBool(var_34.UnkVCall_00000040h) Then
  loc_004D6DC9:   var_819C = FrmTransf.Show 1, var_154
  loc_004D6DEF:   If global_004F1028 = 0 Then
  loc_004D6E17:     var_81A4 = FrmDatCiz.Refresh
  loc_004D6E65:     var_34 = Global.Screen
  loc_004D6E8A:     If var_34 >= 0 Then GoTo loc_004D77E8
  loc_004D6E90:     GoTo loc_004D77DD
  loc_004D6E95:   End If
  loc_004D6E9F:   var_1CC = .frmDatCiz_DescoDAT
  loc_004D6ECD:   If var_1CC = 0 Then
  loc_004D6F17:     Global.Screen.MousePointer = 0
  loc_004D6F60:     If FrmDatCiz.Refresh >= 0 Then GoTo loc_004D77F1
  loc_004D6F72:     CheckObj(FrmDatCiz.Refresh, global_004F1148, global_004572E8, 672)
  loc_004D6F79:   End If
  loc_004D6F94:   FrmDatCiz.LblMsjTrans.Visible = True
  loc_004D6FD9:   FrmDatCiz.LblMsjTrans.Caption = "Buscando archivos de datos, esperar... "
  loc_004D7013:   FrmDatCiz.LblMsjTrans.Refresh
  loc_004D7069:   global_004F1080 = "EE1N.DS" & global_004F1040 & global_004F1044
  loc_004D710D:   var_81C4 = frmActVer.Show 1, var_154
  loc_004D7135:   If global_004F1026(0) Then
  loc_004D713C:     If global_004F1026(0) - 1 Then
  loc_004D7145:       If global_004F1026(0) - 1(-2) Then GoTo loc_004D74AA
  loc_004D714B:       var_81C8 = Proc_6_6_487D30
  loc_004D7172:       var_81D0 = FrmDatCiz.Refresh
  loc_004D71C0:       var_34 = Global.Screen
  loc_004D71E5:       If var_34 >= 0 Then GoTo loc_004D77E8
  loc_004D71EB:       GoTo loc_004D77DD
  loc_004D71F0:     End If
  loc_004D7285:     var_81DC = FrmTransf.Show 1, var_154
  loc_004D72AB:     If global_004F1028 <> 1 Then
  loc_004D72D3:       var_81E4 = FrmDatCiz.Refresh
  loc_004D7321:       var_34 = Global.Screen
  loc_004D7346:       If var_34 >= 0 Then GoTo loc_004D77E8
  loc_004D734C:       GoTo loc_004D77DD
  loc_004D7351:     End If
  loc_004D736F:     FrmDatCiz.LblMsjTrans.Caption = "En este momento son desencriptados los archivos de datos que fueron recibidos en tu PC"
  loc_004D73A9:     FrmDatCiz.LblMsjTrans.Refresh
  loc_004D73E0:     var_1CC = .frmDatCiz_DescoDAT
  loc_004D7404:     If var_1CC = 0 Then
  loc_004D742C:       var_81F0 = FrmDatCiz.Refresh
  loc_004D747A:       var_34 = Global.Screen
  loc_004D749F:       If var_34 >= 0 Then GoTo loc_004D77E8
  loc_004D74A5:       GoTo loc_004D77DD
  loc_004D74AA:     End If
  loc_004D74AA:   End If
  loc_004D74D0:   var_34 = Global.Screen
  loc_004D751B:   If global_004F1028 Then
  loc_004D7556:     var_108 = Chr(10)
  loc_004D75CA:     var_150 = "SI ELEGISTE DATOS PARA EL LISTADO GENERAL DE PAGOS,"
  loc_004D75D4:     var_160 = "UTILIZA LA OPCIÓN DE MANEJO DE INFORMACIÓN QUE SE "
  loc_004D75DE:     var_170 = "ENCUENTRA EN LA PANTALLA DE FONDO."
  loc_004D75E8:     var_180 = "BUSCA EN EL TIPO DE ARCHIVOS PARA BASES DE DATOS Y"
  loc_004D75F2:     var_190 = "ELIGE CREAR BASE DE DATOS "
  loc_004D75FC:     call var_81FC = global_004F1DB4(var_58, Chr(10), 8, 00000040h, var_128, var_138, 10, var_150, var_14C, 0000000Ah, var_164, var_160, var_15C, var_14C, 0000000Ah, var_164)
  loc_004D760A:     call var_8200 = global_004F1DB4(Mid(var_34.Text, 3, 2), 8, var_81FC, var_160, var_15C, var_150, var_14C, 0000000Ah, var_164, var_160, var_15C, var_34, 00000000h, var_38, var_150, var_14C)
  loc_004D7618:     call var_8204 = global_004F1DB4(Date, Chr(10), var_8200, 0000000Ah, var_164, var_160, var_15C, var_108, var_118, var_128, var_138)
  loc_004D7629:     call var_8208 = global_004F1DB4(Year(Date), 8, var_8204)
  loc_004D763A:     call var_820C = global_004F1DB4(8, Chr(10), var_8208)
  loc_004D764B:     call var_8210 = global_004F1DB4(2, 8, var_820C)
  loc_004D765C:     call var_8214 = global_004F1DB4(var_E8, Chr(10), var_8210)
  loc_004D766D:     call var_8218 = global_004F1DB4(var_F8, 8, var_8214)
  loc_004D767E:     call var_821C = global_004F1DB4(var_118, var_108, var_8218)
  loc_004D7681:     MsgBox(var_821C, , , , )
  loc_004D76FD:   End If
  loc_004D7729:   If FrmDatCiz.Refresh >= 0 Then GoTo loc_004D77F1
  loc_004D773B:   CheckObj(FrmDatCiz.Refresh, global_004F1148, global_004572E8, 672)
  loc_004D7746: End If
  loc_004D7768: var_822C = FrmDatCiz.Refresh
  loc_004D77B6: var_34 = Global.Screen
  loc_004D77DB: If var_34 < 0 Then
  loc_004D77DD:   ' Referenced from: 004D6E90
  loc_004D77DD:   ' Referenced from: 004D71EB
  loc_004D77DD:   ' Referenced from: 004D734C
  loc_004D77DD:   ' Referenced from: 004D74A5
  loc_004D77E6:   CheckObj(var_34, var_34, global_00457D4C, 124)
  loc_004D77E8: End If
  loc_004D77FD: GoTo loc_004D7899
  loc_004D7898: Exit Sub
  loc_004D7899: ' Referenced from: 004D77FD
End Sub

Private Sub SSPanel2_UnknownEvent_C '4DA070
  loc_004DA0F7: FrmDatCiz.LblTitInst(0).Visible = False
  loc_004DA130: GoTo loc_004DA146
  loc_004DA145: Exit Sub
  loc_004DA146: ' Referenced from: 004DA130
End Sub

Public Sub FrmDatCiz_CargaMeses(indFin) '4D8E30
  Dim var_20 As Variant
  Dim var_38 As ComboBox
  loc_004D8E8E: FrmDatCiz.ComMesTrans.Clear
  loc_004D8EBF: var_58 = indFin
  loc_004D8EC2: If indFin >= 12 Then
  loc_004D8ED6:   If 1 <= indFin Then
  loc_004D8EE7:     Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D8EF3:     If global_004F136C Then
  loc_004D8EF9:       If global_004F136C = 1 Then
  loc_004D8F08:         If (ebx - global_004F136C(20)) >= global_004F136C(16) Then
  loc_004D8F0A:           var_8004 = Err.Raise
  loc_004D8F16:         End If
  loc_004D8F22:         var_5C = (ebx*8 - (ebx - global_004F136C(20)))
  loc_004D8F27:       Else
  loc_004D8F27:       End If
  loc_004D8F33:       var_5C = Err.Raise
  loc_004D8F36:     End If
  loc_004D8F5E:     global_004F136C(12) = global_004F136C(12) + var_5C
  loc_004D8F63:     Dim global_004F136C(12)+var_5C As String * 14
  loc_004D8F76:     var_20.AddItem global_004F136C(12)+var_5C, 10
  loc_004D8F9C:     If global_004F136C Then
  loc_004D8FA2:       If global_004F136C = 1 Then
  loc_004D8FB2:         If (var_18 - global_004F136C(20)) >= global_004F136C(16) Then
  loc_004D8FB4:           var_800C = Err.Raise
  loc_004D8FC0:         End If
  loc_004D8FCE:       Else
  loc_004D8FCE:       End If
  loc_004D8FCE:       var_8010 = Err.Raise
  loc_004D8FDA:     End If
  loc_004D8FE0:     global_004F136C(12) = global_004F136C(12) + var_8010
  loc_004D8FE6:     global_004F136C(12)+var_8010 = global_004F136C(12)+var_5C
  loc_004D9018:     var_18 = 1+var_18
  loc_004D901B:     GoTo loc_004D8ED0
  loc_004D9020:   End If
  loc_004D906F:   FrmDatCiz.ComMesTrans.Text = FrmDatCiz.ComMesTrans.List(0)
  loc_004D90AE: Else
  loc_004D90BC:   Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D90BE:   var_38 = var_20
  loc_004D90F2:   var_20.AddItem "1er Bimestre", 10
  loc_004D912A:   Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D913B:   var_38 = var_20
  loc_004D915D:   var_20.AddItem "2do Bimestre", 10
  loc_004D9195:   Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D91A6:   var_38 = var_20
  loc_004D91C8:   var_20.AddItem "3er Bimestre", 10
  loc_004D9200:   Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D9211:   var_38 = var_20
  loc_004D9233:   var_20.AddItem "4to Bimestre", 10
  loc_004D926B:   Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D927C:   var_38 = var_20
  loc_004D929E:   var_20.AddItem "5to Bimestre", 10
  loc_004D92D6:   Set var_20 = FrmDatCiz.ComMesTrans
  loc_004D92DD:   var_38 = var_20
  loc_004D9308:   var_20.AddItem "6to Bimestre", 10
  loc_004D934B:   FrmDatCiz.ComMesTrans.Text = "1er Bimestre"
  loc_004D936E: End If
  loc_004D9373: GoTo loc_004D9392
  loc_004D9391: Exit Sub
  loc_004D9392: ' Referenced from: 004D9373
End Sub

Public Sub FrmDatCiz_CargaAnios() '4D93C0
  loc_004D9424: If var_18 <= 4 Then
  loc_004D9460:   var_5C = var_18
  loc_004D94B0:   FrmDatCiz.ComAnioTrans.AddItem CStr(Year(Date) - var_18), 10
  loc_004D9502:   var_18 = 1+var_18
  loc_004D9505:   GoTo loc_004D9415
  loc_004D950A: End If
  loc_004D955C: FrmDatCiz.ComAnioTrans.Text = FrmDatCiz.ComAnioTrans.List(0)
  loc_004D959B: GoTo loc_004D95CE
  loc_004D95CD: Exit Sub
  loc_004D95CE: ' Referenced from: 004D959B
End Sub

Public Function frmDatCiz_DescoDAT() '4D9600
  Dim var_50 As Variant
  loc_004D96E7: Global.Screen.MousePointer = CLng(11)
  loc_004D9714: GoTo loc_004D9718
  loc_004D9718: ' Referenced from: 004D9714
  loc_004D9720: If global_004F108C Then
  loc_004D9726:   If global_004F108C = 1 Then
  loc_004D972F:     var_138 = (var_20 - global_004F108C(20))
  loc_004D9738:     If (var_20 - global_004F108C(20)) >= global_004F108C(16) Then
  loc_004D973A:       var_8008 = Err.Raise
  loc_004D974C:     End If
  loc_004D9751:   Else
  loc_004D9751:   End If
  loc_004D9751:   var_800C = Err.Raise
  loc_004D975D: End If
  loc_004D9776: var_30 = global_004F1204 & ecx+eax
  loc_004D9792: var_2C = InStr(1, var_30, ".", 0)
  loc_004D97B0: If InStr(1, var_30, ".CBD", 0) Then
  loc_004D97C0:   var_E8 = var_2C
  loc_004D983E:   var_38 = Trim(Mid(var_30, 1, var_2C)) + "BDC"
  loc_004D9864:   var_8028 = InStr(1, var_30, "BMX9", 0)
  loc_004D986C:   If var_8028 = 0 Then GoTo loc_004D987D
  loc_004D9877: Else
  loc_004D987D: End If
  loc_004D9892: If InStr(1, var_30, "SP", 0) Then
  loc_004D989B: End If
  loc_004D98B0: If InStr(1, var_30, ".CCL", 0) Then
  loc_004D98B9:   var_E8 = var_2C
  loc_004D9931:   var_38 = Trim(Mid(var_30, 1, var_2C)) + "CTL"
  loc_004D994A: End If
  loc_004D995F: If InStr(1, var_30, ".C00", 0) Then
  loc_004D996F:   var_E8 = var_2C
  loc_004D9A00: End If
  loc_004D9A00: DoEvents
  loc_004D9A08: On Error GoTo loc_004D9EE2
  loc_004D9A1F: Set var_50 = FrmDatCiz.LblMsjTrans
  loc_004D9A25: var_138 = var_50
  loc_004D9A30: var_50.Visible = True
  loc_004D9A6B: Set var_50 = FrmDatCiz.LblMsjTrans
  loc_004D9A71: var_138 = var_50
  loc_004D9A7A: var_50.Refresh
  loc_004D9ABD: var_8048 = FrmDatCiz.Proc_12_17_4DA510(var_30)
  loc_004D9ACC: If var_134 = 0 Then
  loc_004D9B9C:   MsgBox(Chr(10)4C + Chr(10) + " CON DECRIPTACIÓN EXITOSA", 48, 10, 10, 10)
  loc_004D9C26:   If (Dir(var_30, 32) = global_004568F4) Then
  loc_004D9C4E:     Kill var_30
  loc_004D9C5D:   End If
  loc_004D9C6E:   DoEvents
  loc_004D9C7B:   If var_20(1) < global_76 Then GoTo loc_004D9716
  loc_004D9CC9:   Global.Screen.MousePointer = 0
  loc_004D9D08:   FrmDatCiz.LblMsjTrans.Visible = False
  loc_004D9DC3:   var_8070 = "LA DECRIPTACIÓN DE DATOS HA SIDO EXITOSA," + Chr(10) + "SI SE PRESENTA ALGUN PROBLEMA DURANTE LAS " + Chr(10) + "FASES SIGUIENTES DEL PROCESO, REINICIE EL EQUIPO"
  loc_004D9E45:   MsgBox(var_8070, 64, 10, 10, 10)
  loc_004D9E6A: Else
  loc_004D9EC4:   MsgBox("ERROR AL DECRIPTAR ARCHIVOS DE DATOS", 0, 10, 10, 10)
  loc_004D9EDD:   GoTo loc_004D9FAE
  loc_004D9EE2:   var_8078 = Err
  loc_004D9F79:   MsgBox("ERROR EN EL PROCESO DE DECRIPTACIÓN" & vbCrLf & Err.Description, 16, 10, 10, 10)
  loc_004D9FB9: End If
  loc_004D9FB9: Exit Sub
  loc_004D9FC4: GoTo loc_004DA01D
  loc_004DA01C: Exit Function
  loc_004DA01D: ' Referenced from: 004D9FC4
End Function

Public Sub FrmDatCiz_CargaDiaFinMes() '4DA170
  loc_004DA1BC: ReDim global_56(0 To 12)
  loc_004DA1C9: If global_56 Then
  loc_004DA1CF:   If global_56 = 1 Then
  loc_004DA1E0:     If global_56 >= global_56 Then
  loc_004DA1E2:       var_8004 = Err.Raise
  loc_004DA1E8:     End If
  loc_004DA1F1:   Else
  loc_004DA1F1:   End If
  loc_004DA1F1:   var_8008 = Err.Raise
  loc_004DA1F7: End If
  loc_004DA212: If "31" Then
  loc_004DA218:   If "31" = 1 Then
  loc_004DA229:     If "31" >= "31" Then
  loc_004DA22B:       var_800C = Err.Raise
  loc_004DA231:     End If
  loc_004DA23A:   Else
  loc_004DA23A:   End If
  loc_004DA23A:   var_8010 = Err.Raise
  loc_004DA240: End If
  loc_004DA255: If "28" Then
  loc_004DA25B:   If "28" = 1 Then
  loc_004DA26C:     If "28" >= "28" Then
  loc_004DA26E:       var_8014 = Err.Raise
  loc_004DA274:     End If
  loc_004DA27D:   Else
  loc_004DA27D:   End If
  loc_004DA27D:   var_8018 = Err.Raise
  loc_004DA283: End If
  loc_004DA298: If "31" Then
  loc_004DA29E:   If "31" = 1 Then
  loc_004DA2AF:     If "31" >= "31" Then
  loc_004DA2B1:       var_801C = Err.Raise
  loc_004DA2B7:     End If
  loc_004DA2C0:   Else
  loc_004DA2C0:   End If
  loc_004DA2C0:   var_8020 = Err.Raise
  loc_004DA2C6: End If
  loc_004DA2DB: If "30" Then
  loc_004DA2E1:   If "30" = 1 Then
  loc_004DA2F2:     If "30" >= "30" Then
  loc_004DA2F4:       var_8024 = Err.Raise
  loc_004DA2FA:     End If
  loc_004DA303:   Else
  loc_004DA303:   End If
  loc_004DA303:   var_8028 = Err.Raise
  loc_004DA309: End If
  loc_004DA31E: If "31" Then
  loc_004DA324:   If "31" = 1 Then
  loc_004DA335:     If "31" >= "31" Then
  loc_004DA337:       var_802C = Err.Raise
  loc_004DA33D:     End If
  loc_004DA346:   Else
  loc_004DA346:   End If
  loc_004DA346:   var_8030 = Err.Raise
  loc_004DA34C: End If
  loc_004DA361: If "30" Then
  loc_004DA367:   If "30" = 1 Then
  loc_004DA378:     If "30" >= "30" Then
  loc_004DA37A:       var_8034 = Err.Raise
  loc_004DA380:     End If
  loc_004DA389:   Else
  loc_004DA389:   End If
  loc_004DA389:   var_8038 = Err.Raise
  loc_004DA38F: End If
  loc_004DA3A4: If "31" Then
  loc_004DA3AA:   If "31" = 1 Then
  loc_004DA3BB:     If "31" >= "31" Then
  loc_004DA3BD:       var_803C = Err.Raise
  loc_004DA3C3:     End If
  loc_004DA3CC:   Else
  loc_004DA3CC:   End If
  loc_004DA3CC:   var_8040 = Err.Raise
  loc_004DA3D2: End If
  loc_004DA3E7: If "31" Then
  loc_004DA3ED:   If "31" = 1 Then
  loc_004DA3FE:     If "31" >= "31" Then
  loc_004DA400:       var_8044 = Err.Raise
  loc_004DA406:     End If
  loc_004DA40F:   Else
  loc_004DA40F:   End If
  loc_004DA40F:   var_8048 = Err.Raise
  loc_004DA415: End If
  loc_004DA42A: If "30" Then
  loc_004DA430:   If "30" = 1 Then
  loc_004DA441:     If "30" >= "30" Then
  loc_004DA443:       var_804C = Err.Raise
  loc_004DA449:     End If
  loc_004DA452:   Else
  loc_004DA452:   End If
  loc_004DA452:   var_8050 = Err.Raise
  loc_004DA458: End If
  loc_004DA46D: If "31" Then
  loc_004DA473:   If "31" = 1 Then
  loc_004DA484:     If "31" >= "31" Then
  loc_004DA486:       var_8054 = Err.Raise
  loc_004DA48C:     End If
  loc_004DA495:   Else
  loc_004DA495:   End If
  loc_004DA495:   var_8058 = Err.Raise
  loc_004DA49B: End If
  loc_004DA4B0: If "30" Then
  loc_004DA4B6:   If "30" = 1 Then
  loc_004DA4C7:     If "30" >= "30" Then
  loc_004DA4C9:       var_805C = Err.Raise
  loc_004DA4CF:     End If
  loc_004DA4D8:   Else
  loc_004DA4D8:   End If
  loc_004DA4D8:   var_8060 = Err.Raise
  loc_004DA4DE: End If
  loc_004DA4ED: global_56 = "31"
End Sub

Private Sub Proc_12_17_4DA510() '4DA510
  Dim var_3C As Err
  loc_004DA56D: On Error GoTo loc_004DA6EC
  loc_004DA589: ReDim global_004F1068(0 To 10)
  loc_004DA598: var_8004 = FrmDatCiz.Proc_12_23_493750(1)
  loc_004DA5A1: var_8008 = FrmDatCiz.Proc_12_22_4DBA80(0)
  loc_004DA5AA: var_800C = FrmDatCiz.Proc_12_24_4945A0(0)
  loc_004DA5B3: var_8010 = FrmDatCiz.Proc_12_25_4DBC80(0)
  loc_004DA5CC: var_28 = arg_C
  loc_004DA5E2: If (arg_C = global_004568F4) Then
  loc_004DA60A:   var_8018 = FrmDatCiz.Proc_12_18_4DA890(arg_C)
  loc_004DA623: End If
  loc_004DA634: If (var_28 = global_004568F4) Then
  loc_004DA642:   If global_004F1068 Then
  loc_004DA648:     If global_004F1068 = 1 Then
  loc_004DA65A:       If global_004F1068 >= global_004F1068 Then
  loc_004DA65C:         var_8020 = Err.Raise
  loc_004DA668:       End If
  loc_004DA671:     Else
  loc_004DA671:     End If
  loc_004DA671:     var_8024 = Err.Raise
  loc_004DA67D:   End If
  loc_004DA699:   var_24 = var_24(1)
  loc_004DA69F:   If var_24(1) > 10 Then
  loc_004DA6C1:     ReDim Preserve var_28(0 To 10+10)
  loc_004DA6CA:   End If
  loc_004DA6CA: End If
  loc_004DA6DE: If var_20(1) < 0 Then GoTo loc_004DA5C4
  loc_004DA6E8: TotDeArch = var_24
  loc_004DA6EC: ' Referenced from: 004DA56D
  loc_004DA702: var_802C = CBool(Err)
  loc_004DA70B: var_B0 = var_802C
  loc_004DA71E: If var_802C Then
  loc_004DA72B:   var_8030 = Err
  loc_004DA732:   Set var_3C = Err
  loc_004DA73A:   var_B0 = var_3C
  loc_004DA7D5:   MsgBox("Error rutina desencriptaFiles" & vbCrLf & var_3C.Description, 16, "Control de Reportes", 10, 10)
  loc_004DA812: End If
  loc_004DA812: Exit Sub
  loc_004DA81D: GoTo loc_004DA857
  loc_004DA856: Exit Sub
  loc_004DA857: ' Referenced from: 004DA81D
End Sub

Private Sub Proc_12_18_4DA890() '4DA890
  loc_004DA8F6: Dim var_20 As String * 100
  loc_004DA911: var_1C = arg_10
  loc_004DA971: var_A4 = CLng((FileLen(CStr(arg_C)) * 5.5))
  loc_004DA983: var_B0 = arg_14
  loc_004DA996: If global_004F1000 = 0 Then
  loc_004DA9A0: Else
  loc_004DA9B1: End If
  loc_004DA9C4: var_18 = CLng((var_A4 / var_B0))
  loc_004DA9F5: Open CStr(arg_C) For Unknown As #1 Len = -1
  loc_004DAA16: Open var_1C For Unknown As #2 Len = arg_14
  loc_004DAA49: var_8014 = EOF(1)
  loc_004DAA52: If var_8014 = 0 Then
  loc_004DAA60:   Get #1, var_24, var_20
  loc_004DAA6C:   var_4C = var_20
  loc_004DAA8C:   var_8018 = FrmDatCiz.Proc_12_19_4DAC20(var_4C)
  loc_004DAA9B:   var_20 = var_4C
  loc_004DAAAA:   global_152 = var_50
  loc_004DAACB:   var_24 = var_24(26)
  loc_004DAACE:   GoTo loc_004DAA47
  loc_004DAAD3: End If
  loc_004DAB0B: Print 2, Space(254)
  loc_004DAB1C: Close #1
  loc_004DAB20: Close #2
  loc_004DAB28: var_2C = var_1C
  loc_004DAB62: If (Dir(arg_C, 0) = global_004568F4) Then
  loc_004DAB7E:   Kill arg_C
  loc_004DAB8D: End If
  loc_004DAB93: GoTo loc_004DABC1
  loc_004DAB99: If var_4 <> 4 Then
  loc_004DABA4: End If
  loc_004DABC0: Exit Sub
  loc_004DABC1: ' Referenced from: 004DAB93
End Sub

Private Sub Proc_12_19_4DAC20() '4DAC20
  loc_004DACBD: If 1 <= Len(arg_C) Then
  loc_004DACED:   var_8010 = Asc(Mid$(arg_C, 1, 1))
  loc_004DAD10:   If var_8010 >= 258 Then
  loc_004DAD12:     var_8014 = Err.Raise
  loc_004DAD18:   End If
  loc_004DAD24:   var_8010 = var_8010 + global_004F110C
  loc_004DAD2A:   Dim var_8010+global_004F110C As String * 8
  loc_004DAD72:   var_18 = 1+1
  loc_004DAD77:   GoTo loc_004DACB6
  loc_004DAD7C: End If
  loc_004DADE2: global_64 = Len(arg_10 & global_68 & var_8010+global_004F110C & var_8010+global_004F110C & var_8010+global_004F110C & "*")(-1)
  loc_004DADE9: If global_84 Then
  loc_004DADF9:   var_8028 = FrmDatCiz.Proc_12_21_4DB650(vbNull)
  loc_004DAE07:   If var_90 <> True Then
  loc_004DAE21:   Else
  loc_004DAE33:     var_28 = global_62 + var_28+var_28
  loc_004DAE36:     GoTo loc_004DAE3A
  loc_004DAE3A:   End If
  loc_004DAE4B:   If (var_20 = "FIN") Then
  loc_004DAE5C:     var_8030 = FrmDatCiz.Proc_12_20_4DB230(var_28)
  loc_004DAE6B:     var_20 = arg_10 & arg_10 & global_68 & var_8010+global_004F110C & var_8010+global_004F110C & var_8010+global_004F110C & "*" & var_8010+global_004F110C
  loc_004DAE7E:     If (var_20 = "FIN") Then
  loc_004DAE8D:       var_8038 = (var_20 = global_0045B658)
  loc_004DAE95:       If var_8038 = 0 Then
  loc_004DAF02:         global_72 = global_72 + String(global_60, global_0045B658)
  loc_004DAF2D:       Else
  loc_004DAF36:         var_8044 = (var_20 = global_0045BC88)
  loc_004DAF3E:         If var_8044 = 0 Then
  loc_004DAF46:           global_62 = global_62 + var_28 + var_28
  loc_004DAF63:           global_86 = global_72
  loc_004DAF67:           global_88 = global_72
  loc_004DAF6B:           global_78 = &HFFFFFF
  loc_004DAF71:           var_8048 = FrmDatCiz.Proc_12_21_4DB650(global_72+var_28)
  loc_004DAF81:           If var_90 Then GoTo loc_004DB19C
  loc_004DAF87:           global_84 = global_72
  loc_004DAF8D:         Else
  loc_004DAFA9:           global_72 = global_72 & var_20
  loc_004DAFB8:         End If
  loc_004DAFB8:       End If
  loc_004DAFCD:       var_28 = global_72 + global_72+global_72+var_28+global_72+var_28
  loc_004DAFDE:       If Len(global_72) < arg_1C Then GoTo loc_004DAE38
  loc_004DAFEB:       var_74 = arg_1C
  loc_004DB026:       var_30 = RTrim(Mid$(global_72, 1, arg_1C))
  loc_004DB043:       If arg_1C = 253 Then
  loc_004DB069:         If ((Len(var_30) >= 253) Or (arg_18 <= 0)) = 0 Then
  loc_004DB0B6:           var_30 = var_30 & Space((arg_1C - Len(var_30)))
  loc_004DB0CB:         End If
  loc_004DB0CB:       End If
  loc_004DB0D6:       Print 2, var_30
  loc_004DB13C:       global_72 = Mid$(global_72, arg_1C + 1 + 1+1, Len(global_72))
  loc_004DB154:       GoTo loc_004DAE38
  loc_004DB159:     End If
  loc_004DB184:     var_8070 = Mid$(arg_10 & global_68 & var_8010+global_004F110C & var_8010+global_004F110C & var_8010+global_004F110C & "*", var_28, (global_64 - var_28)(1))
  loc_004DB18F:     arg_10 = var_8070
  loc_004DB19A:     GoTo loc_004DB1AE
  loc_004DB1AE:   End If
  loc_004DB1B6:   var_34 = arg_10
  loc_004DB1C1:   GoTo loc_004DB1FA
  loc_004DB1C7:   If var_4 <> 4 Then
  loc_004DB1D2:   End If
  loc_004DB1F9:   Exit Sub
  loc_004DB1FA: End If
  loc_004DB1FA: ' Referenced from: 004DB1C1
End Sub

Private Sub Proc_12_20_4DB230() '4DB230
  loc_004DB291: If ebx >= 111 Then
  loc_004DB293:   var_8004 = Err.Raise
  loc_004DB299: End If
  loc_004DB2A7: If global_004F10D4(edi+edi*2*2) <> True Then
  loc_004DB2BD:   arg_C = arg_C + esi+0000003Eh
  loc_004DB329:   If (Mid(global_68, arg_C+esi+0000003Eh, 1) = "*") Then GoTo loc_004DB478
  loc_004DB3AE:   If (Mid(global_68, arg_C + esi+0000003Eh + esi+0000003Eh+esi+0000003Eh, 1) = global_00459E00) Then
  loc_004DB3B3:     If var_A4 >= 111 Then
  loc_004DB3B5:       var_8010 = Err.Raise
  loc_004DB3BB:     End If
  loc_004DB3C9:   Else
  loc_004DB3CC:     If var_A4 >= 111 Then
  loc_004DB3CE:       var_8014 = Err.Raise
  loc_004DB3D4:     End If
  loc_004DB3E1:   End If
  loc_004DB3F6:   global_62 = global_62 + 1+1
  loc_004DB3FA:   GoTo loc_004DB285
  loc_004DB3FF: End If
  loc_004DB405: If eax+edx*2+00000002h >= 111 Then
  loc_004DB407:   var_8018 = Err.Raise
  loc_004DB40D: End If
  loc_004DB41D: Dim ecx+eax*2+00000004h As String * 1
  loc_004DB44F: If (ecx+eax*2+00000004h = global_0045B658) + 1 Then
  loc_004DB476:   If (global_64 - arg_C + esi+0000003Eh + esi+0000003Eh+esi+0000003Eh) < 4 Then
  loc_004DB480:     var_20 = "FIN"
  loc_004DB490:   Else
  loc_004DB4A0:     If ebx <= 3 Then
  loc_004DB4B6:       arg_C = arg_C + esi+0000003Eh + esi+0000003Eh + esi+0000003Eh
  loc_004DB52B:       If (Mid(global_68, arg_C+esi+0000003Eh + ebx + ebx+ebx, 1) = global_00458C18) Then
  loc_004DB535:         Select Case Me
  loc_004DB53C:           Case 1
  loc_004DB544:             GoTo loc_004DB576
  loc_004DB546:           Case 2
  loc_004DB558:             GoTo loc_004DB580
  loc_004DB55A:           Case 3
  loc_004DB56C:             GoTo loc_004DB580
  loc_004DB56E:           Case 4
  loc_004DB572:             global_60 = global_60 + 8 + 4+4 + 2+2 + 1
  loc_004DB57C:             global_60 = global_60+1
  loc_004DB580:           End If
  loc_004DB580:       End Select
  loc_004DB590:       GoTo loc_004DB498
  loc_004DB595:     End If
  loc_004DB5A6:     global_62 = global_62 + 4+4
  loc_004DB5AA:   End If
  loc_004DB5B0:   If eax+edx*2+00000002h >= 111 Then
  loc_004DB5B2:     var_8024 = Err.Raise
  loc_004DB5B8:   End If
  loc_004DB5C7:   Dim eax+edx*2+00000004h As String * 1
  loc_004DB5D2:   var_20 = eax+edx*2+00000004h
  loc_004DB5DD:   GoTo loc_004DB60F
  loc_004DB5E3:   If var_4 <> 4 Then
  loc_004DB5EE:   End If
  loc_004DB60E:   Exit Sub
  loc_004DB60F: End If
  loc_004DB60F: ' Referenced from: 004DB5DD
End Sub

Private Sub Proc_12_21_4DB650() '4DB650
  loc_004DB691: If global_78 Then
  loc_004DB6A7:   arg_C = arg_C + esi+0000003Eh
  loc_004DB709:   var_8008 = (Mid(global_68, arg_C+esi+0000003Eh, 1) = global_00459E00)
  loc_004DB711:   If var_8008 = 0 Then
  loc_004DB725:     global_62 = global_62 + 1+1
  loc_004DB77C:     GoTo loc_004DB6F5
  loc_004DB781:   End If
  loc_004DB78A:   var_8010 = (Mid(global_68, arg_C + global_62+1 + global_62+1 + global_62+1+global_62+1, 1) = "*")
  loc_004DB792:   If var_8010 = 0 Then GoTo loc_004DB9EB
  loc_004DB798:   global_78 = 0
  loc_004DB79E:   global_80 = &HFFFFFF
  loc_004DB7A8: Else
  loc_004DB7AB: End If
  loc_004DB7AF: If global_80 Then
  loc_004DB808:   var_14 = Mid(global_68, arg_C + global_62+1 + esi+0000003Eh + global_62+1 + esi+0000003Eh+esi+0000003Eh, 1)
  loc_004DB82E:   If (var_14 = "*") Then
  loc_004DB839:     If global_86 >= 8 Then GoTo loc_004DB97B
  loc_004DB848:     var_801C = (var_14 = global_00458C18)
  loc_004DB850:     If var_801C = 0 Then
  loc_004DB863:       Select Case Me
  loc_004DB86A:         Case 0
  loc_004DB87D:           GoTo loc_004DB8F5
  loc_004DB87F:         Case 1
  loc_004DB887:           GoTo loc_004DB8EB
  loc_004DB889:         Case 2
  loc_004DB89B:           GoTo loc_004DB8F5
  loc_004DB89D:         Case 3
  loc_004DB8AF:           GoTo loc_004DB8F5
  loc_004DB8B1:         Case 4
  loc_004DB8B9:           GoTo loc_004DB8EB
  loc_004DB8BB:         Case 5
  loc_004DB8CD:           GoTo loc_004DB8F5
  loc_004DB8CF:         Case 6
  loc_004DB8E1:           GoTo loc_004DB8F5
  loc_004DB8E3:         Case 7
  loc_004DB8E7:           global_88 = global_88 + 128+128 + 64 + 32+32 + 16+16 + 8 + 4+4 + 2+2 + 1
  loc_004DB8EB:           ' Referenced from: 004DB887
  loc_004DB8EB:           ' Referenced from: 004DB8B9
  loc_004DB8F1:           global_88 = global_88+1
  loc_004DB8F5:         End If
  loc_004DB8F5:     End Select
  loc_004DB8F5:     ' Referenced from: 004DB87D
  loc_004DB8F5:     ' Referenced from: 004DB89B
  loc_004DB8F5:     ' Referenced from: 004DB8AF
  loc_004DB8F5:     ' Referenced from: 004DB8CD
  loc_004DB8F5:     ' Referenced from: 004DB8E1
  loc_004DB91C:     global_62 = global_62 + 1+1
  loc_004DB92D:     arg_C = arg_C + global_62+1 + esi+0000003Eh + global_62+1
  loc_004DB965:     var_14 = Mid(global_68, arg_C+global_62+1, 1)
  loc_004DB96F:     GoTo loc_004DB812
  loc_004DB974:   End If
  loc_004DB979:   If global_86 + 1+1 < 8 Then GoTo loc_004DB9EB
  loc_004DB97F:   global_80 = 0
  loc_004DB989:   global_82 = &HFFFFFF
  loc_004DB9A9:   ((edx - global_88) - 1)*0008h = ((edx - global_88) - 1)*0008h + esi+0000003Eh
  loc_004DB9B9: End If
  loc_004DB9BD: If global_82 Then
  loc_004DB9CC:   global_88 = ((edx - global_88) - 1)*0008h+esi+0000003Eh + arg_C
  loc_004DB9DA:   If global_88+arg_C >= global_64 Then GoTo loc_004DB9F2
  loc_004DB9DC:   global_62 = global_88
  loc_004DB9E0: End If
  loc_004DB9F0: GoTo loc_004DBA2A
  loc_004DBA0B: global_88 = (global_88 - (global_64 - arg_C)(1))
  loc_004DBA14: GoTo loc_004DBA2A
  loc_004DBA29: Exit Sub
  loc_004DBA2A: ' Referenced from: 004DB9F0
  loc_004DBA2A: ' Referenced from: 004DBA14
End Sub

Private Sub Proc_12_22_4DBA80() '4DBA80
  loc_004DBAC5: If esi <= 255 Then
  loc_004DBAE9:   If 1 > 8 Then GoTo loc_Unknown_EC45894F(0)
  loc_004DBAFC:   Select Case 00000001h - 1
  loc_004DBB03:     Case 1
  loc_004DBB08:       If esi >= 128 Then
  loc_004DBB13:         GoTo loc_004DBB98
  loc_004DBB18:       Case 2
  loc_004DBB1C:         If (esi - 128) < 64 Then GoTo loc_004DBBCA
  loc_004DBB35:         GoTo loc_004DBBD3
  loc_004DBB3A:       Case 3
  loc_004DBB3E:         If ((esi - 128) - 64) >= 32 Then
  loc_004DBB44:           GoTo loc_004DBB77
  loc_004DBB46:         Case 4
  loc_004DBB4A:           If (((esi - 128) - 64) - 32) < 16 Then GoTo loc_004DBBA9
  loc_004DBB50:           GoTo loc_004DBB98
  loc_004DBB52:         Case 5
  loc_004DBB56:           If ((((esi - 128) - 64) - 32) - 16) < 8 Then GoTo loc_004DBBCA
  loc_004DBB6B:           GoTo loc_004DBBD3
  loc_004DBB6D:         Case 6
  loc_004DBB71:           If (((((esi - 128) - 64) - 32) - 16) - 8) >= 4 Then
  loc_004DBB77:             ' Referenced from: 004DBB44
  loc_004DBB88:           Else
  loc_004DBB88:           End If
  loc_004DBB8C:           GoTo loc_004DBBCE
  loc_004DBB8E:         Case 7
  loc_004DBB92:           If ((((((esi - 128) - 64) - 32) - 16) - 8) - 4) >= 2 Then
  loc_004DBBA9:           Else
  loc_004DBBA9:           End If
  loc_004DBBAD:           GoTo loc_004DBBCE
  loc_004DBBAF:         Case 8
  loc_004DBBB3:           If (((((((esi - 128) - 64) - 32) - 16) - 8) - 4) - 2) >= 1 Then
  loc_004DBBCA:           Else
  loc_004DBBD3:           End If
  loc_004DBBD3:         End If
  loc_004DBBD3:       End If
  loc_004DBBDC:   End Select
  loc_004DBBE8:   If var_14 >= 258 Then
  loc_004DBBEA:     var_8008 = Err.Raise
  loc_004DBBF3:   End If
  loc_004DBC05:   var_24+global_004F110C = var_1C & global_00459E00
  loc_004DBC16:   var_18 = 1+var_18
  loc_004DBC19:   GoTo loc_004DBAE1
  loc_004DBC29:   var_14 = 1+var_14
  loc_004DBC2E:   GoTo loc_004DBABD
  loc_004DBC33: End If
End Sub

Private Sub Proc_12_23_493750() '493750
  loc_00493765: global_004F10F0 = global_0045B658
  loc_0049377B: global_004F10F0(4) = "000"
  loc_0049378E: global_004F10F0(8) = global_00459E00
  loc_0049379D: global_004F10F0(12) = "001"
  loc_004937B0: global_004F10F0(16) = global_00458C18
  loc_004937BF: global_004F10F0(20) = "0100"
  loc_004937D2: global_004F10F0(24) = global_0045B770
  loc_004937E1: global_004F10F0(28) = "010100"
  loc_004937F4: global_004F10F0(32) = global_0045B37C
  loc_00493803: global_004F10F0(36) = "010101"
  loc_00493816: global_004F10F0(40) = "."
  loc_00493825: global_004F10F0(44) = "01011"
  loc_00493838: global_004F10F0(48) = global_00459DC0
  loc_00493847: global_004F10F0(52) = "01100"
  loc_0049385A: global_004F10F0(56) = global_0045B818
  loc_00493869: global_004F10F0(60) = "01101"
  loc_0049387C: global_004F10F0(64) = global_0045B830
  loc_0049388B: global_004F10F0(68) = "01110"
  loc_0049389E: global_004F10F0(72) = global_0045B848
  loc_004938AD: global_004F10F0(76) = "01111"
  loc_004938C0: global_004F10F0(80) = global_0045B860
  loc_004938CF: global_004F10F0(84) = "10000"
  loc_004938E2: global_004F10F0(88) = global_0045B878
  loc_004938F1: global_004F10F0(92) = "10001"
  loc_00493904: global_004F10F0(96) = global_0045B890
  loc_00493913: global_004F10F0(100) = "10010"
  loc_00493926: global_004F10F0(104) = global_0045B8A8
  loc_00493935: global_004F10F0(108) = "10011"
  loc_00493948: global_004F10F0(112) = global_0045B8C0
  loc_00493957: global_004F10F0(116) = "10100"
  loc_0049396A: global_004F10F0(120) = global_0045B8D8
  loc_00493979: global_004F10F0(124) = "10101"
  loc_0049398F: global_004F10F0(128) = "S"
  loc_004939A1: global_004F10F0(132) = "10110"
  loc_004939B7: global_004F10F0(136) = global_0045B908
  loc_004939C9: global_004F10F0(140) = "101110"
  loc_004939DF: global_004F10F0(144) = "N"
  loc_004939F1: global_004F10F0(148) = "101111"
  loc_00493A07: global_004F10F0(152) = global_0045B940
  loc_00493A19: global_004F10F0(156) = "11000"
  loc_00493A2F: global_004F10F0(160) = global_0045B958
  loc_00493A41: global_004F10F0(164) = "11001"
  loc_00493A57: global_004F10F0(168) = "D"
  loc_00493A69: global_004F10F0(172) = "11010"
  loc_00493A7F: global_004F10F0(176) = global_00459868
  loc_00493A91: global_004F10F0(180) = "110110"
  loc_00493AA7: global_004F10F0(184) = global_00458C5C
  loc_00493AB9: global_004F10F0(188) = "110111"
  loc_00493ACF: global_004F10F0(192) = Chr(37)
  loc_00493AE1: global_004F10F0(196) = "111000"
  loc_00493AF7: global_004F10F0(200) = global_0045B9D0
  loc_00493B09: global_004F10F0(204) = "111001"
  loc_00493B1F: global_004F10F0(208) = "M"
  loc_00493B31: global_004F10F0(212) = "111010"
  loc_00493B47: global_004F10F0(216) = global_0045BA08
  loc_00493B59: global_004F10F0(220) = "1110110"
  loc_00493B6F: global_004F10F0(224) = "/"
  loc_00493B81: global_004F10F0(228) = "1111000"
  loc_00493B97: global_004F10F0(232) = global_0045BA38
  loc_00493BA9: global_004F10F0(236) = "1111001"
  loc_00493BBF: global_004F10F0(240) = global_0045BA54
  loc_00493BD1: global_004F10F0(244) = "1111010"
  loc_00493BE7: global_004F10F0(248) = global_0045BA70
  loc_00493BF9: global_004F10F0(252) = "1111011"
  loc_00493C0F: global_004F10F0(256) = global_0045BA8C
  loc_00493C21: global_004F10F0(260) = "11111000"
  loc_00493C37: global_004F10F0(264) = ":"
  loc_00493C49: global_004F10F0(268) = "11111010"
  loc_00493C5F: global_004F10F0(272) = global_0045BAC4
  loc_00493C71: global_004F10F0(276) = "11111011"
  loc_00493C87: global_004F10F0(280) = "Y"
  loc_00493C99: global_004F10F0(284) = "1111110"
  loc_00493CAF: global_004F10F0(288) = "H"
  loc_00493CC1: global_004F10F0(292) = "111111100"
  loc_00493CD7: global_004F10F0(296) = global_0045B384
  loc_00493CE9: global_004F10F0(300) = "111111101"
  loc_00493CFF: global_004F10F0(304) = global_0045BB3C
  loc_00493D11: global_004F10F0(308) = "1111111100"
  loc_00493D27: global_004F10F0(312) = global_0045BB60
  loc_00493D39: global_004F10F0(316) = "1111111101"
  loc_00493D4F: global_004F10F0(320) = global_0045BB84
  loc_00493D61: global_004F10F0(324) = "11111111100"
  loc_00493D77: global_004F10F0(328) = global_0045BBA8
  loc_00493D89: global_004F10F0(332) = "11111111101"
  loc_00493D9F: global_004F10F0(336) = global_0045BBCC
  loc_00493DB1: global_004F10F0(340) = "11111111110"
  loc_00493DC7: global_004F10F0(344) = "#"
  loc_00493DD9: global_004F10F0(348) = "111111111110"
  loc_00493DEF: global_004F10F0(352) = "-"
  loc_00493E01: global_004F10F0(356) = "11111001"
  loc_00493E17: global_004F10F0(360) = global_00459E38
  loc_00493E29: global_004F10F0(364) = "11101110"
  loc_00493E3F: global_004F10F0(368) = "&"
  loc_00493E51: global_004F10F0(372) = "111011110"
  loc_00493E67: global_004F10F0(376) = global_0045BC68
  loc_00493E79: global_004F10F0(380) = "111011111"
  loc_00493E8F: global_004F10F0(384) = global_0045BC88
  loc_00493EA1: global_004F10F0(388) = "111111111111"
End Sub

Private Sub Proc_12_24_4945A0() '4945A0
  loc_004945B1: If edi >= 111 Then
  loc_004945B3:   var_8004 = Err.Raise
  loc_004945B5: End If
  loc_004945C7: If edi >= 111 Then
  loc_004945C9:   var_8008 = Err.Raise
  loc_004945CB: End If
  loc_004945E4: If edi+1 <= 110 Then GoTo loc_004945AB
End Sub

Private Sub Proc_12_25_4DBC80() '4DBC80
  loc_004DBCD3: If eax <= 48 Then
  loc_004DBCDF:   If eax >= 51 Then
  loc_004DBCE1:     var_8004 = Err.Raise
  loc_004DBCE7:   End If
  loc_004DBCF3:   var_28 = eax+esi*8+00000004h
  loc_004DBD20:   If 1 <= Len(var_28) Then
  loc_004DBD68:     var_14 = Mid(var_28, 1, 1)
  loc_004DBD87:     Dim var_14 As String * 1
  loc_004DBDBC:     If (var_14 = global_00459E00) + 1 Then
  loc_004DBDC7:       If Err.Raise() >= 111 Then
  loc_004DBDC9:         var_8018 = Err.Raise
  loc_004DBDCB:       End If
  loc_004DBDD9:       If global_004F10D4(esi+esi*2*2) = True Then
  loc_004DBDDE:         If Err.Raise() >= 111 Then
  loc_004DBDE0:           var_801C = Err.Raise
  loc_004DBDE2:         End If
  loc_004DBDFB:         var_1C = 1+1
  loc_004DBE00:       Else
  loc_004DBE03:         If 00000001h >= 111 Then
  loc_004DBE05:           call edi(0, 0, 0)
  loc_004DBE07:         End If
  loc_004DBE15:       Else
  loc_004DBE1E:         If Err.Raise() >= 111 Then
  loc_004DBE20:           var_8020 = Err.Raise
  loc_004DBE22:         End If
  loc_004DBE31:         If edx+ecx*2+00000002h = True Then
  loc_004DBE36:           If Err.Raise() >= 111 Then
  loc_004DBE38:             var_8024 = Err.Raise
  loc_004DBE3A:           End If
  loc_004DBE4A:           1+1 = 1+1 + 1
  loc_004DBE54:           var_1C = 1+1+1
  loc_004DBE59:         Else
  loc_004DBE5C:           If 1+1 >= 111 Then
  loc_004DBE5E:             call 1+1
  loc_004DBE60:           End If
  loc_004DBE6D:         End If
  loc_004DBE6D:       End If
  loc_004DBE6D:     End If
  loc_004DBE7C:     var_20 = 1+var_20
  loc_004DBE7F:     GoTo loc_004DBD19
  loc_004DBE84:   End If
  loc_004DBE8B:   If var_18 >= 51 Then
  loc_004DBE8D:     var_8028 = Err.Raise
  loc_004DBE93:   End If
  loc_004DBE99:   If eax+edx*2+00000002h >= 111 Then
  loc_004DBE9B:     var_802C = Err.Raise
  loc_004DBEA1:   End If
  loc_004DBEAD:   Dim global_004F10F0(var_18*8) As String * 1
  loc_004DBECF:   ecx+eax*2+00000004h = global_004F10F0(var_18*8)
  loc_004DBEEC:   var_18 = 1+var_18
  loc_004DBEF1:   GoTo loc_004DBCCB
  loc_004DBEF6: End If
  loc_004DBEFB: GoTo loc_004DBF1A
  loc_004DBF19: Exit Sub
  loc_004DBF1A: ' Referenced from: 004DBEFB
End Sub
