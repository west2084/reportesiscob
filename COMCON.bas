
Private Sub Proc_3_0_4826E0() '4826E0
  loc_0048272A: arg_8 = Me.UnkVCall_00000300h
  loc_00482747: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_0048276B: var_8004 = Me.UnkVCall_00000300h
  loc_00482782: Me.UnkVCall_00000300h.Top = CLng(5600)
  loc_004827A6: arg_8 = Me.UnkVCall_00000300h
  loc_004827BD: Me.UnkVCall_00000300h.Caption = "  AYUDA DEL CONTROL DE REPORTES   ( TECLA ASOCIADA <F1> )"
  loc_004827E3: var_8008 = Me.UnkVCall_00000300h
  loc_004827F7: Me.UnkVCall_00000300h.WindowState = 0
  loc_00482827: GoTo loc_00482833
  loc_00482832: Exit Sub
  loc_00482833: ' Referenced from: 00482827
End Sub

Private Sub Proc_3_1_482860() '482860
  loc_004828AA: arg_8 = Me.UnkVCall_00000300h
  loc_004828C7: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_004828EB: var_8004 = Me.UnkVCall_00000300h
  loc_00482902: Me.UnkVCall_00000300h.Top = CLng(5600)
  loc_00482926: arg_8 = Me.UnkVCall_00000300h
  loc_0048293D: Me.UnkVCall_00000300h.Caption = "  AYUDA DEL CONTROL DE REPORTES   ( TECLA ASOCIADA <F1> )"
  loc_00482963: var_8008 = Me.UnkVCall_00000300h
  loc_00482977: Me.UnkVCall_00000300h.WindowState = 0
  loc_004829A7: GoTo loc_004829B3
  loc_004829B2: Exit Sub
  loc_004829B3: ' Referenced from: 004829A7
End Sub

Private Sub Proc_3_2_4829E0() '4829E0
  Dim var_40 As Variant
  Dim arg_8 As Variant
  Dim var_3C As Variant
  Dim var_1C As Variant
  loc_00482A46: var_8004 = Proc_6_15_489450(var_40, arg_8, 0)
  loc_00482A7B: If var_3C = 0 Then
  loc_00482A85:   var_18 = "ERROR AL CARGAR LA CONFIGURACION"
  loc_00482A8B:   var_8008 = Proc_489710(arg_8, var_3C, 0)
  loc_00482A99:   End
  loc_00482A9F: End If
  loc_00482AA6: var_800C = Proc_6_14_4891C0(0, , )
  loc_00482AB0: global_004F10BA = &HFFFFFF
  loc_00482B16: var_8014 = FrmDatCiz.Show 2, var_24
  loc_00482B3F: var_8018 = Proc_6_14_4891C0(1, var_1C, 10)
  loc_00482B50: GoTo loc_00482B5C
  loc_00482B5B: Exit Sub
  loc_00482B5C: ' Referenced from: 00482B50
End Sub

Private Sub Proc_3_3_482B80() '482B80
  loc_00482BCA: arg_8 = Me.UnkVCall_00000300h
  loc_00482BE7: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_00482C0B: var_8004 = Me.UnkVCall_00000300h
  loc_00482C22: Me.UnkVCall_00000300h.Top = CLng(2600)
  loc_00482C46: arg_8 = Me.UnkVCall_00000300h
  loc_00482C5D: Me.UnkVCall_00000300h.Caption = "OBTENCIÓN DE DATOS DEL CIZ Y ADMINISTRACION (CREACIÓN BASE DE DATOS, COPIA  Y BORRADO DE ARCHIVOS) DE INFORMACIÓN EN PC"
  loc_00482C83: var_8008 = Me.UnkVCall_00000300h
  loc_00482C97: Me.UnkVCall_00000300h.WindowState = 0
  loc_00482CC7: GoTo loc_00482CD3
  loc_00482CD2: Exit Sub
  loc_00482CD3: ' Referenced from: 00482CC7
End Sub

Private Sub Proc_3_4_482D00() '482D00
  loc_00482D4A: arg_8 = Me.UnkVCall_00000300h
  loc_00482D67: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_00482D8B: var_8004 = Me.UnkVCall_00000300h
  loc_00482DA2: Me.UnkVCall_00000300h.Top = CLng(2600)
  loc_00482DC6: arg_8 = Me.UnkVCall_00000300h
  loc_00482DDD: Me.UnkVCall_00000300h.Caption = "OBTENCIÓN DE DATOS DEL CIZ Y ADMINISTRACION (CREACIÓN BASE DE DATOS, COPIA  Y BORRADO DE ARCHIVOS) DE INFORMACIÓN EN PC"
  loc_00482E03: var_8008 = Me.UnkVCall_00000300h
  loc_00482E17: Me.UnkVCall_00000300h.WindowState = 0
  loc_00482E47: GoTo loc_00482E53
  loc_00482E52: Exit Sub
  loc_00482E53: ' Referenced from: 00482E47
End Sub

Private Sub Proc_3_5_482E80() '482E80
  Dim var_44 As Variant
  Dim arg_8 As Variant
  Dim var_1C As Variant
  loc_00482EE9: var_8004 = Proc_6_15_489450(var_44, arg_8, 0)
  loc_00482F3F: EEAMX009.LblEspera.Visible = False
  loc_00482F83: Set var_1C = EEAMX009.ChkMod
  loc_00482F8A: var_48 = var_1C
  loc_00482FC0: Set var_1C = EEAMX009.ChkDoc
  loc_00482FC7: var_48 = var_1C
  loc_00482FFD: Set var_1C = EEAMX009.ChkImp
  loc_00483004: var_48 = var_1C
  loc_0048305F: EEAMX009.mskPat.Visible = EEAMX009.mskPat
  loc_00483084: EEAMX009.CmbMod.Visible = False
  loc_004830C1: EEAMX009.CmbDoc.Visible = False
  loc_00483120: EEAMX009.TbxImp(0).Visible = False
  loc_00483189: EEAMX009.TbxImp(1).Visible = False
  loc_004831F5: EEAMX009.TbxFecMov(0).Text = global_004568F4
  loc_00483261: EEAMX009.TbxFecMov(1).Text = global_004568F4
  loc_004832CD: EEAMX009.TbxFecMov(2).Text = global_004568F4
  loc_00483328: EEAMX009.PnlCount.FloodPercent
  loc_00483380: EEAMX009.UnkVCall_000002B0h
  loc_004833B9: GoTo loc_004833D8
  loc_004833D7: Exit Sub
  loc_004833D8: ' Referenced from: 004833B9
End Sub

Private Sub Proc_3_6_483410() '483410
  loc_0048345A: arg_8 = Me.UnkVCall_00000300h
  loc_00483477: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_0048349B: var_8004 = Me.UnkVCall_00000300h
  loc_004834B2: Me.UnkVCall_00000300h.Top = CLng(3800)
  loc_004834D6: arg_8 = Me.UnkVCall_00000300h
  loc_004834ED: Me.UnkVCall_00000300h.Caption = "ENTRAR A LA PANTALLA PARA GENERAR EL REPORTE DE LISTADO GENERAL DE PAGOS"
  loc_00483513: var_8008 = Me.UnkVCall_00000300h
  loc_00483527: Me.UnkVCall_00000300h.WindowState = 0
  loc_00483557: GoTo loc_00483563
  loc_00483562: Exit Sub
  loc_00483563: ' Referenced from: 00483557
End Sub

Private Sub Proc_3_7_483590() '483590
  loc_004835DA: arg_8 = Me.UnkVCall_00000300h
  loc_004835F7: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_0048361B: var_8004 = Me.UnkVCall_00000300h
  loc_00483632: Me.UnkVCall_00000300h.Top = CLng(3800)
  loc_00483656: arg_8 = Me.UnkVCall_00000300h
  loc_0048366D: Me.UnkVCall_00000300h.Caption = "ENTRAR A LA PANTALLA PARA GENERAR EL REPORTE DE LISTADO GENERAL DE PAGOS"
  loc_00483693: var_8008 = Me.UnkVCall_00000300h
  loc_004836A7: Me.UnkVCall_00000300h.WindowState = 0
  loc_004836D7: GoTo loc_004836E3
  loc_004836E2: Exit Sub
  loc_004836E3: ' Referenced from: 004836D7
End Sub

Private Sub Proc_3_8_483710() '483710
  Dim arg_8 As Variant
  Dim var_4C As Variant
  Dim var_48 As Variant
  Dim var_50 As Form
  Dim var_28 As Variant
  Dim var_40 As Variant
  Dim var_2C As Variant
  loc_0048376B: var_8004 = Proc_6_14_4891C0(arg_8, 0, 0)
  loc_0048378B: var_8008 = Proc_6_15_489450(var_4C, 0, )
  loc_004837C0: If var_48 = 0 Then
  loc_004837CA:   var_20 = "ERROR AL CARGAR LA CONFIGURACION"
  loc_004837D0:   var_800C = Proc_489710(arg_8, var_48, )
  loc_004837DE:   End
  loc_004837E4: End If
  loc_0048382A: Global.Screen.MousePointer = 0
  loc_0048384B: var_8014 = Proc_6_8_488750(, , )
  loc_00483853: If var_8014 = 0 Then
  loc_00483860:   var_8018 = Proc_6_14_4891C0(, , )
  loc_0048386A: Else
  loc_00483893:   var_50 = global_004F1180
  loc_004838A4:   var_70 = global_004F1180
  loc_004838AC:   var_6C = stk@FFC0
  loc_004838E4:   var_8020 = frmLogTso.Show 2, var_30
  loc_0048390D:   If global_004F1024 Then
  loc_00483944:     global_004F1080 = "EE1N.DS" & global_004F1040 & global_004F1044
  loc_00483975:     var_50 = global_004F1194
  loc_004839B2:     var_8030 = frmActVer.Show 2, var_30
  loc_004839DD:     If global_004F1026(0) Then
  loc_004839E4:       If global_004F1026(0) - 1 Then
  loc_004839E9:         If global_004F1026(0) - 1(-2) Then GoTo loc_00483BB5
  loc_004839EF:         var_8034 = Proc_6_6_487D30(var_28, 10, var_40)
  loc_004839F7:         If var_8034 = 0 Then GoTo loc_00483BD2
  loc_00483A0D:       Else
  loc_00483A40:         var_50 = global_004F11A8
  loc_00483A6C:         var_803C = FrmTransf.Show 2, var_30
  loc_00483A95:         If global_004F1028 = 1 Then
  loc_00483ABD:           var_50 = global_004F11BC
  loc_00483AFA:           var_8044 = frmDesco.Show 2, var_30
  loc_00483B23:           If global_004F102A Then
  loc_00483B72:             var_50 = global_004F11D0
  loc_00483B97:             var_804C = FormVisor.Show 1, var_30
  loc_00483BB5:           End If
  loc_00483BB5:         End If
  loc_00483BC2:       Else
  loc_00483BC2:       End If
  loc_00483BCD:     End If
  loc_00483BCD:   End If
  loc_00483BCD:   var_8050 = Proc_6_14_4891C0(var_48, var_2C, var_28)
  loc_00483BD4: End If
  loc_00483BDC: GoTo loc_00483BF1
  loc_00483BF0: Exit Sub
  loc_00483BF1: ' Referenced from: 00483BDC
End Sub

Private Sub Proc_3_9_483C20() '483C20
  loc_00483C6A: arg_8 = Me.UnkVCall_00000300h
  loc_00483C87: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_00483CAB: var_8004 = Me.UnkVCall_00000300h
  loc_00483CC2: Me.UnkVCall_00000300h.Top = CLng(200)
  loc_00483CE6: arg_8 = Me.UnkVCall_00000300h
  loc_00483CFD: Me.UnkVCall_00000300h.Caption = "MOSTRAR LA LISTA  DE REPORTES QUE SE ENCUENTRAN EN EL CENTRO INFORMÁTICO CORRESPONDIENTE CON OPCION DE TRAERLOS A LA PC"
  loc_00483D23: var_8008 = Me.UnkVCall_00000300h
  loc_00483D37: Me.UnkVCall_00000300h.WindowState = 0
  loc_00483D67: GoTo loc_00483D73
  loc_00483D72: Exit Sub
  loc_00483D73: ' Referenced from: 00483D67
End Sub

Private Sub Proc_3_10_483DA0() '483DA0
  loc_00483DEA: arg_8 = Me.UnkVCall_00000300h
  loc_00483E07: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_00483E2B: var_8004 = Me.UnkVCall_00000300h
  loc_00483E42: Me.UnkVCall_00000300h.Top = CLng(200)
  loc_00483E66: arg_8 = Me.UnkVCall_00000300h
  loc_00483E7D: Me.UnkVCall_00000300h.Caption = "MOSTRAR LA LISTA  DE REPORTES QUE SE ENCUENTRAN EN EL CENTRO INFORMÁTICO CORRESPONDIENTE CON OPCION DE TRAERLOS A LA PC"
  loc_00483EA3: var_8008 = Me.UnkVCall_00000300h
  loc_00483EB7: Me.UnkVCall_00000300h.WindowState = 0
  loc_00483EE7: GoTo loc_00483EF3
  loc_00483EF2: Exit Sub
  loc_00483EF3: ' Referenced from: 00483EE7
End Sub

Private Sub Proc_3_11_483F20() '483F20
  Dim var_20 As Variant
  Dim var_64 As Variant
  Dim arg_8 As Variant
  Dim var_30 As Variant
  Dim var_1C As Variant
  Dim global_004F11D0 As Form
  Dim var_44 As Variant
  loc_00483F84: var_48 = True
  loc_00483FA3: global_80010007 = Me.UnkVCall_00000328h
  loc_00483FB5: Me.UnkVCall_00000328h.DispID_000B = var_4C
  loc_0048400B: Global.Screen.MousePointer = CLng(11)
  loc_0048403D: var_1C = "BORRANDO REPORTES VIEJOS..."
  loc_00484047: var_8008 = Proc_6_15_489450(var_64, 0, 0)
  loc_00484061: global_FFFFFDDA = Me.UnkVCall_00000328h
  loc_0048406C: Set var_20 = Me.UnkVCall_00000328h
  loc_004840D6: If (var_30 = True) Then
  loc_004840EB:   var_1C = "CARGANDO LOS REPORTES ACTUALES..."
  loc_004840F5:   var_8010 = Proc_6_15_489450(0, arg_8, var_30)
  loc_00484109:   global_FFFFFDDA = Me.UnkVCall_00000328h
  loc_00484114:   Set var_20 = Me.UnkVCall_00000328h
  loc_0048413F:   var_8014 = Proc_48A410("*.t*", , )
  loc_00484161:   If CInt(var_30) > 0 Then
  loc_004841AF:     Global.Screen.MousePointer = 0
  loc_0048423A:     var_8024 = FormVisor.Show 1, var_4C
  loc_00484275:     var_8028 = Proc_6_15_489450(0, 1, var_44)
  loc_00484285:   Else
  loc_00484285:     If Not Asm.z_flag Then
  loc_00484296:       call var_802C = global_004F11D0(0000000Ah, var_5C, 80020004h, var_54)
  loc_004842A0:       var_8030 = Proc_6_15_489450(&HFF, , fs:[00000000h])
  loc_004842A7:     Else
  loc_004842AA:       If global_004F11D0 >= 0 Then GoTo loc_004842D4
  loc_004842B4:       call var_8034 = global_004F11D0
  loc_004842BC:     Else
  loc_004842C4:       call var_8038 = global_004F11D0(var_1C)
  loc_004842CA:     End If
  loc_004842CA:     var_803C = Proc_489710()
  loc_004842CF:   End If
  loc_004842D4: End If
  loc_0048431C: Global.Screen.MousePointer = 0
  loc_00484349: GoTo loc_00484371
  loc_00484370: Exit Sub
  loc_00484371: ' Referenced from: 00484349
End Sub

Private Sub Proc_3_12_4843A0() '4843A0
  loc_004843EA: arg_8 = Me.UnkVCall_00000300h
  loc_00484407: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_0048442B: var_8004 = Me.UnkVCall_00000300h
  loc_00484442: Me.UnkVCall_00000300h.Top = CLng(1500)
  loc_00484466: arg_8 = Me.UnkVCall_00000300h
  loc_0048447D: Me.UnkVCall_00000300h.Caption = "MOSTRAR LOS REPORTES QUE SE HAN BAJADO DEL CIZ O SE HAN PROCESADO EN LA PC, CON OPCIÓN A IMPRIMIR"
  loc_004844A3: var_8008 = Me.UnkVCall_00000300h
  loc_004844B7: Me.UnkVCall_00000300h.WindowState = 0
  loc_004844E7: GoTo loc_004844F3
  loc_004844F2: Exit Sub
  loc_004844F3: ' Referenced from: 004844E7
End Sub

Private Sub Proc_3_13_484520() '484520
  loc_0048456A: arg_8 = Me.UnkVCall_00000300h
  loc_00484587: Me.UnkVCall_00000300h.Left = CLng(1800)
  loc_004845AB: var_8004 = Me.UnkVCall_00000300h
  loc_004845C2: Me.UnkVCall_00000300h.Top = CLng(1500)
  loc_004845E6: arg_8 = Me.UnkVCall_00000300h
  loc_004845FD: Me.UnkVCall_00000300h.Caption = "MOSTRAR LOS REPORTES QUE SE HAN BAJADO DEL CIZ O SE HAN PROCESADO EN LA PC, CON OPCIÓN A IMPRIMIR"
  loc_00484623: var_8008 = Me.UnkVCall_00000300h
  loc_00484637: Me.UnkVCall_00000300h.WindowState = 0
  loc_00484667: GoTo loc_00484673
  loc_00484672: Exit Sub
  loc_00484673: ' Referenced from: 00484667
End Sub

Private Sub Proc_3_14_4846A0() '4846A0
  loc_004846DF: End
End Sub

Private Sub Proc_3_15_484710() '484710
  loc_00484758: arg_8 = Me.UnkVCall_00000300h
  loc_0048476F: Me.UnkVCall_00000300h.WindowState = 0
  loc_0048479E: GoTo loc_004847AA
  loc_004847A9: Exit Sub
  loc_004847AA: ' Referenced from: 0048479E
End Sub
