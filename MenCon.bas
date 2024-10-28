
Private Sub Proc_4_0_4847D0() '4847D0
  loc_00484818: arg_8 = Me.UnkVCall_00000300h
  loc_0048482F: Me.UnkVCall_00000300h.WindowState = 0
  loc_0048485E: GoTo loc_0048486A
  loc_00484869: Exit Sub
  loc_0048486A: ' Referenced from: 0048485E
End Sub

Private Sub Proc_4_1_484890() '484890
  loc_0048492A: FrmPorta.Caption = "CONTROL DE REPORTES " & "06.00"
  loc_00484955: var_800C = Proc_490370(0, 0, 0)
  loc_0048495D: If var_800C = 0 Then
  loc_004849A6:   MsgBox("NO SE HALLO DESCRIPCIÓN PARA SUBDELEGACIÒN", 0, 10, 10, 10)
  loc_004849C7: End If
  loc_00484A0D: Global.App.HelpFile = "C:\VREP\OPERREP.HLP"
  loc_00484A38: GoTo loc_00484A68
  loc_00484A67: Exit Sub
  loc_00484A68: ' Referenced from: 00484A38
End Sub

Private Sub Proc_4_2_484AA0() '484AA0
  Dim arg_8 As Variant
  Dim var_BC As Variant
  Dim var_38 As Variant
  Dim var_C4 As Variant
  loc_00484B05: On Error GoTo loc_00484D32
  loc_00484B80: If (Dir("c:\MRepor", 16) = global_004568F4) + 1 Then
  loc_00484B9D:   var_C4 = MenCon.VTable_00000704
  loc_00484BD9: End If
  loc_00484BEA: global_004F1204 = "c:\MRepor\"
  loc_00484C0D: var_C4 = MenCon.VTable_000006FC
  loc_00484C52: If var_BC = 0 Then
  loc_00484C63:   var_34 = "ERROR AL CARGAR LA CONFIGURACION"
  loc_00484C6D:   var_800C = Proc_489710(arg_8, var_BC, arg_8)
  loc_00484C82:   End
  loc_00484C88: End If
  loc_00484C98: global_004F1204 = Me.UnkVCall_00000304h
  loc_00484CA3: Set var_38 = Me.UnkVCall_00000304h
  loc_00484CDA: var_38.Caption = "VERSIÓN " & "06.00"
  loc_00484CDF: var_C8 = var_38
  loc_00484D2D: GoTo loc_00484E68
  loc_00484D32: ' Referenced from: 00484B05
  loc_00484D39: var_8014 = Err
  loc_00484D44: Set var_38 = Err
  loc_00484D4A: var_C4 = var_38
  loc_00484D66: var_C0 = var_38.Number
  loc_00484D6B: var_C8 = var_C0
  loc_00484DCE: If (var_C0 = 75) Then
  loc_00484DD9:   var_8018 = Resume(-1)
  loc_00484DE4: Else
  loc_00484E47:   MsgBox("ERROR AL CREAR DIRECTORIO DE REPORTES", 0, 10, 10, 10)
  loc_00484E68: End If
  loc_00484E68: Exit Sub
  loc_00484E73: GoTo loc_00484EA3
  loc_00484EA2: Exit Sub
  loc_00484EA3: ' Referenced from: 00484E73
End Sub

Private Sub Proc_4_3_484EF0() '484EF0
  loc_00484F6A: On Error GoTo loc_00485280
  loc_00484F89: var_40 = False
  loc_00485017: If (DateDiff("d", CDate(global_004F1054), Date, 1, 1) > 5) Then
  loc_0048504F:   var_44 = Dir(global_004F1204 & "*.*", 0)
  loc_0048506D:   If (var_44 = global_004568F4) Then
  loc_00485153:     If (DateDiff("d", Mid$(FileDateTime(global_004F1204 & var_44), 1, 10), Date, 1, 1) > 5) Then
  loc_00485174:       Kill global_004F1204 & var_44
  loc_0048517F:     End If
  loc_0048519E:     var_44 = Dir(10, 0)
  loc_004851AB:     GoTo loc_0048505C
  loc_004851B0:   End If
  loc_004851C5:   var_5C = Str$(Date)
  loc_004851FE:   var_50 = "C:\COBRANZA\INI\conver.ini"
  loc_0048522A:   var_30 = Proc_489D60("OldFecha", 8, "Parametros")
  loc_0048525B: End If
  loc_00485278: var_40 = True
  loc_0048527E: GoTo loc_00485280
  loc_00485280: ' Referenced from: 0048527E
  loc_00485280: Exit Sub
  loc_0048528C: GoTo loc_004852D7
  loc_00485292: If var_C <> 4 Then
  loc_0048529D: End If
  loc_004852D6: Exit Sub
  loc_004852D7: ' Referenced from: 0048528C
End Sub

Private Sub Proc_4_4_485330() '485330
  loc_004853BE: var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_0048542F: var_5C = (Trim$(Proc_489B90("Emulador", "NINGUNO", "Parametros")) = "NINGUNO") + 1
  loc_0048543D: If var_5C = 0 Then
  loc_00485479:   var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_004854DF:   var_5C = (Trim$(Proc_489B90("Login", "NINGUNO", "Parametros")) = "NINGUNO") + 1
  loc_004854ED:   If var_5C = 0 Then
  loc_00485529:     var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_0048558F:     var_5C = (Trim$(Proc_489B90("Sesion", "NINGUNO", "Parametros")) = "NINGUNO") + 1
  loc_0048559D:     If var_5C = 0 Then
  loc_004855D9:       var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_0048563E:       var_5C = (Trim$(Proc_489B90("Delegacion", "NINGUNO", "Parametros")) = "NINGUNO") + 1
  loc_0048564C:       If var_5C = 0 Then
  loc_00485688:         var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_004856EE:         var_5C = (Trim$(Proc_489B90("Subdelegacion", "NINGUNO", "Parametros")) = "NINGUNO") + 1
  loc_004856FC:         If var_5C = 0 Then
  loc_00485738:           var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_004857AC:           If (Trim$(Proc_489B90("CIZ", "NINGUNO", "Parametros")) = "NINGUNO") + 1 Then
  loc_004857B8:             global_004F1048 = "1"
  loc_004857F0:             var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_0048580C:             var_18 = Proc_489D60("CIZ", global_00458C18, "Parametros")
  loc_0048582A:           End If
  loc_00485860:           var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_004858D4:           If (Trim$(Proc_489B90("OldFecha", "NINGUNO", "Parametros")) = "NINGUNO") + 1 Then
  loc_0048592A:             var_50 = Str(Date)
  loc_00485942:             var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_0048595E:             var_18 = Proc_489D60("OldFecha", &H4008, "Parametros")
  loc_00485973:           End If
  loc_004859A9:           var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_00485A18:           If (Trim$(Proc_489B90("CurSerie", "NINGUNO", "Parametros")) = "NINGUNO") + 1 Then
  loc_00485A50:             var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_00485A6C:             var_18 = Proc_489D60("CurSerie", "00", "Parametros")
  loc_00485A8A:             global_004F1060 = 0
  loc_00485A95:           Else
  loc_00485AA5:             global_004F1060 = CInt(Val(var_18))
  loc_00485AAB:           End If
  loc_00485AE1:           var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_00485B55:           If (Trim$(Proc_489B90("Ambiente", "NINGUNO", "Parametros")) = "NINGUNO") + 1 Then
  loc_00485B8D:             var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_00485BA9:             var_18 = Proc_489D60("Ambiente", global_00458C5C, "Parametros")
  loc_00485BD1:             global_004F1064 = "P"
  loc_00485BD3:           End If
  loc_00485C09:           var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_00485C7D:           If (Trim$(Proc_489B90("ConRep", "NINGUNO", "Versiones")) = "NINGUNO") + 1 Then
  loc_00485CB5:             var_20 = "C:\COBRANZA\INI\conver.ini"
  loc_00485CD1:             var_18 = Proc_489D60("ConRep", "06.00", "Versiones")
  loc_00485CEF:           End If
  loc_00485CF6:         End If
  loc_00485CF6:       End If
  loc_00485CF6:     End If
  loc_00485CF6:   End If
  loc_00485CF6: End If
  loc_00485CFC: GoTo loc_00485D26
  loc_00485D25: Exit Sub
  loc_00485D26: ' Referenced from: 00485CFC
End Sub
