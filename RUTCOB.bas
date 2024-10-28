
Private Sub Proc_5_0_485D60() '485D60
  loc_00485DA8: arg_8 = Me.UnkVCall_00000300h
  loc_00485DBF: Me.UnkVCall_00000300h.WindowState = 0
  loc_00485DEE: GoTo loc_00485DFA
  loc_00485DF9: Exit Sub
  loc_00485DFA: ' Referenced from: 00485DEE
End Sub

Private Sub Proc_5_1_485E20() '485E20
  loc_00485E68: arg_8 = Me.UnkVCall_00000300h
  loc_00485E7F: Me.UnkVCall_00000300h.WindowState = 0
  loc_00485EAE: GoTo loc_00485EBA
  loc_00485EB9: Exit Sub
  loc_00485EBA: ' Referenced from: 00485EAE
End Sub

Private Sub Proc_5_2_485EE0() '485EE0
  loc_00485F28: arg_8 = Me.UnkVCall_00000300h
  loc_00485F3F: Me.UnkVCall_00000300h.WindowState = 0
  loc_00485F6E: GoTo loc_00485F7A
  loc_00485F79: Exit Sub
  loc_00485F7A: ' Referenced from: 00485F6E
End Sub

Private Sub Proc_5_3_485FA0() '485FA0
  Dim var_30 As Variant
  loc_004860A7: var_24 = Trim(Global.App.Path)
  loc_0048611C: If (Right(var_24, 1) <> "\") Then
  loc_00486132:   var_24 = var_24 & "\"
  loc_00486134: End If
  loc_00486148: var_20 = var_24 & "BMP\"
  loc_0048614C: On Error GoTo loc_00486CBE
  loc_00486173: global_004F1010.UnkVCall_000002FCh
  loc_0048628A: var_8024 = Global.LoadPicture var_20 & "LOGO.BMP", var_40, var_20 & "LOGO.BMP", var_38, 10
  loc_004862C9: var_30 = global_004F1010.UnkVCall_000002FCh.UnkVCall_00000064h
  loc_00486400: var_8030 = Global.LoadPicture var_20 & "REPCIZ.BMP", var_40, var_20 & "REPCIZ.BMP", var_38, 10
  loc_0048646B: global_004F1010.UnkVCall_00000318h
  loc_0048647D: global_004F1010.UnkVCall_00000318h.DispID_004F1010 = var_50
  loc_004865A2: var_8040 = Global.LoadPicture var_20 & "REPPC.BMP", var_40, var_20 & "REPPC.BMP", var_38, 10
  loc_0048660D: global_004F1010.UnkVCall_0000031Ch
  loc_0048661F: global_004F1010.UnkVCall_0000031Ch.DispID_004F1010 = var_50
  loc_00486744: var_8050 = Global.LoadPicture var_20 & "DATREP.BMP", var_40, var_20 & "DATREP.BMP", var_38, 10
  loc_004867AF: global_004F1010.UnkVCall_00000314h
  loc_004867C1: global_004F1010.UnkVCall_00000314h.DispID_004F1010 = var_50
  loc_004868E6: var_8060 = Global.LoadPicture var_20 & "LGPREP.BMP", var_40, var_20 & "LGPREP.BMP", var_38, 10
  loc_00486951: global_004F1010.UnkVCall_00000320h
  loc_00486963: global_004F1010.UnkVCall_00000320h.DispID_004F1010 = var_50
  loc_00486A88: var_8070 = Global.LoadPicture var_20 & "SALIR.BMP", var_40, var_20 & "SALIR.BMP", var_38, 10
  loc_00486AF3: global_004F1010.UnkVCall_00000324h
  loc_00486B05: global_004F1010.UnkVCall_00000324h.DispID_004F1010 = var_50
  loc_00486B64: var_807C = var_20 & "AYUDA.BMP"
  loc_00486C1D: var_8080 = Global.LoadPicture var_807C, var_40, var_807C, var_38, 10
  loc_00486C88: global_004F1010.UnkVCall_00000310h
  loc_00486C9A: global_004F1010.UnkVCall_00000310h.DispID_004F1010 = var_50
  loc_00486CBC: GoTo loc_00486D2D
  loc_00486CBE: ' Referenced from: 0048614C
  loc_00486D0C: MsgBox("ERROR AL CARGAR IMAGENES PARA EL PROGRAMA", 48, 10, 10, 10)
  loc_00486D2D: ' Referenced from: 00486CBC
  loc_00486D2D: Exit Sub
  loc_00486D38: GoTo loc_00486D73
  loc_00486D72: Exit Sub
  loc_00486D73: ' Referenced from: 00486D38
End Sub

Private Sub Proc_5_4_486DB0() '486DB0
  loc_00486E10: If (arg_C = 0) Then
  loc_00486E3F:   var_800C = (Dir(arg_C, 16) = global_004568F4)
  loc_00486E57:   If var_800C = 0 Then
  loc_00486E95:     var_30 = Split(arg_C, "\", -1, 0)
  loc_00486ED9:     var_8024 = LBound(1)
  loc_00486EE3:     var_18 = var_8024
  loc_00486EE6:     If var_8024 <= UBound(var_30) Then
  loc_00486F03:       var_5C = var_18
  loc_00486F1A:       var_44 = var_30(var_18)
  loc_00486F2F:       var_20 = var_30(var_18)
  loc_00486F40:       var_802C = (var_20 = 0)
  loc_00486F44:       If var_802C = 0 Then GoTo loc_Unknown_FEDDE962(var_30)
  loc_00486F6E:       var_1C = var_1C & var_20 & "\"
  loc_00486FAA:       If (Right$(var_20, 1) = ":") Then
  loc_00486FE6:         If (Dir(var_1C, 16) = 0) + 1 Then
  loc_00486FEC:           MkDir var_1C
  loc_00486FF2:         End If
  loc_00486FF2:       End If
  loc_00486FFD:       GoTo loc_00486EDF
  loc_00487002:     End If
  loc_00487002:   End If
  loc_00487002: End If
  loc_00487007: GoTo loc_00487026
  loc_00487025: Exit Sub
  loc_00487026: ' Referenced from: 00487007
End Sub
