
Private Sub Proc_6_0_487070() '487070
  loc_004870A9: On Error GoTo loc_0048721B
  loc_004870C0: var_8004 = (global_004F1030 = "EXTRA")
  loc_004870C4: If var_8004 = 0 Then
  loc_004870D8:   var_8008 = arg_C
  loc_004870F5:   var_8014 = var_24
  loc_004870FB:   var_20 = hllapi(arg_8)
  loc_00487107:   Exit Sub
  loc_00487117: Else
  loc_00487123:   var_8018 = (global_004F1030 = "IBM")
  loc_00487127:   If var_8018 = 0 Then
  loc_0048713B:     var_801C = arg_C
  loc_00487146:     var_8020 = hllapi(arg_8)
  loc_00487157:     GoTo loc_004870F4
  loc_00487159:   End If
  loc_00487165:   var_8028 = (global_004F1030 = "SIMWARE")
  loc_00487169:   If var_8028 = 0 Then
  loc_0048717D:     var_802C = arg_C
  loc_00487188:     var_8030 = hllapi(arg_8)
  loc_00487199:     GoTo loc_004870F4
  loc_0048719E:   End If
  loc_004871A9:   var_8038 = (global_004F1030 = "ONNET")
  loc_004871AD:   If var_8038 = 0 Then
  loc_004871C1:     var_803C = arg_C
  loc_004871CC:     var_8040 = hllapi(arg_8)
  loc_004871D1:     GoTo loc_004870E8
  loc_004871D6:   End If
  loc_004871E2:   var_8044 = (global_004F1030 = "COLIBRI")
  loc_004871E6:   If var_8044 = 0 Then
  loc_004871FA:     var_8048 = arg_C
  loc_00487205:     var_804C = HLLAPI32(arg_8)
  loc_00487216:     GoTo loc_004870F4
  loc_00487223:   End If
  loc_00487223:   Exit Sub
  loc_0048722E:   GoTo loc_0048723A
  loc_00487239:   Exit Sub
  loc_0048723A: End If
  loc_0048723A: ' Referenced from: 0048722E
End Sub

Private Sub Proc_6_1_487260() '487260
  loc_00487292: global_004F13A0 = 6
  loc_004872AE: global_004F13A4 = Trim$(arg_8)
  loc_004872DC: global_004F13A8 = Len(Trim$(arg_8))
  loc_0048730D: var_8014 = Proc_6_0_487070
  loc_0048731E: global_004F13A4 = var_1C
  loc_0048733C: var_18 = global_004F13AA - 1
  loc_0048733F: GoTo loc_0048734B
  loc_0048734A: Exit Sub
  loc_0048734B: ' Referenced from: 0048733F
End Sub

Private Sub Proc_6_2_487370() '487370
  Dim global_004F1DB4 As Global
  Dim var_20 As Screen
  loc_004873E9: Global.Screen.MousePointer = CLng(11)
  loc_0048741F: global_004F13A0 = &H15
  loc_00487428: global_004F13A4 = global_004568F4
  loc_0048745C: var_8008 = Proc_6_0_487070
  loc_0048746C: global_004F13A4 = var_1C
  loc_00487481: If global_004F13AA Then
  loc_004874A9:   var_20 = Global.Screen
  loc_004874D2:   If var_20 >= 0 Then GoTo loc_004875B4
  loc_004874D8:   GoTo loc_004875A5
  loc_004874DD: End If
  loc_004874E3: global_004F13A0 = 1
  loc_00487532: var_8014 = Proc_6_0_487070
  loc_00487543: call var_8018 = global_004F1DB4(00000000h, Trim$(global_004F103C), var_1C, var_1C, 1, 0, var_1C, 1, 0, 0, 0, 0)
  loc_00487557: If 0 = 0 Then GoTo loc_004875C7
  loc_0048757A: var_20 = Global.Screen
  loc_004875A3: If var_20 >= 0 Then GoTo loc_004875B4
  loc_004875A5: ' Referenced from: 004874D8
  loc_004875AE: CheckObj(var_20, var_20, global_00457D4C, 124)
  loc_004875C2: GoTo loc_0048764C
  loc_0048760A: Global.Screen.MousePointer = 0
  loc_00487637: GoTo loc_0048764C
  loc_0048764B: Exit Sub
  loc_0048764C: ' Referenced from: 004875C2
  loc_0048764C: ' Referenced from: 00487637
End Sub

Private Sub Proc_6_3_487670() '487670
  Dim global_004F1DB4 As Global
  Dim var_20 As Screen
  loc_004876E9: Global.Screen.MousePointer = CLng(11)
  loc_0048771F: global_004F13A0 = 2
  loc_00487728: global_004F13A4 = global_004568F4
  loc_0048775C: var_8008 = Proc_6_0_487070
  loc_0048776C: global_004F13A4 = var_1C
  loc_00487781: If global_004F13AA Then
  loc_004877A9:   var_20 = Global.Screen
  loc_004877D2:   If var_20 >= 0 Then GoTo loc_004878A5
  loc_004877D8:   GoTo loc_00487896
  loc_004877DD: End If
  loc_004877EB: global_004F13A0 = &H15
  loc_004877F4: call var_8010 = global_004F1DB4(00000000h, global_004F13A4, global_004568F4, var_1C, global_004F13A8, global_004F13AA, 0, 0, 0)
  loc_00487822: var_8014 = Proc_6_0_487070
  loc_00487834: call var_8018 = global_004F1DB4(00000000h, global_004F13A4, var_1C, var_1C, global_004F13A8, global_004F13AA)
  loc_00487848: If global_004F13AA = 0 Then GoTo loc_004878B8
  loc_0048786B: var_20 = Global.Screen
  loc_00487894: If var_20 >= 0 Then GoTo loc_004878A5
  loc_00487896: ' Referenced from: 004877D8
  loc_0048789F: CheckObj(var_20, var_20, global_00457D4C, 124)
  loc_004878B3: GoTo loc_0048793D
  loc_004878FB: Global.Screen.MousePointer = 0
  loc_00487928: GoTo loc_0048793D
  loc_0048793C: Exit Sub
  loc_0048793D: ' Referenced from: 004878B3
  loc_0048793D: ' Referenced from: 00487928
End Sub

Private Sub Proc_6_4_487960() '487960
  Dim var_20 As Variant
  Dim global_004F13A8 As Variant
  Dim global_004F13AA As Variant
  loc_00487998: global_004F13A0 = 3
  loc_004879B7: global_004F13A4 = arg_8
  loc_004879E5: global_004F13A8 = Len(Trim$(arg_8))
  loc_004879F6: global_004F13AA = 0
  loc_00487A18: var_8010 = Proc_6_0_487070
  loc_00487A29: global_004F13A4 = var_20
  loc_00487A39: If global_004F13AA Then
  loc_00487A43:   If global_004F13AA <> 4 Then
  loc_00487A49:     If global_004F13AA <> 5 Then GoTo loc_00487BE0
  loc_00487A4F:   End If
  loc_00487A5B:   If var_18 < 5 Then
  loc_00487A65:     var_8014 = Proc_6_9_488950(var_20, global_004F13A8, global_004F13AA)
  loc_00487A89:     var_5C = (var_30 <> True)
  loc_00487A97:     If var_5C = 0 Then
  loc_00487AA8:       var_801C = Proc_6_10_488B20(0, 0, 0)
  loc_00487AB2:       global_004F13A0 = 3
  loc_00487AC1:       global_004F13A4 = arg_8
  loc_00487AE9:       global_004F13A8 = Len(Trim$(arg_8))
  loc_00487AFA:       global_004F13AA = 0
  loc_00487B1C:       var_802C = Proc_6_0_487070
  loc_00487B2E:       global_004F13A4 = var_20
  loc_00487B3F:       If global_004F13AA(0) = 0 Then GoTo loc_00487BEE
  loc_00487B48:       If global_004F13AA(0)(-4) Then
  loc_00487B4B:         If global_004F13AA(0)(-4) - 1 Then GoTo loc_00487BE0
  loc_00487B5F:         var_18 = var_18(1)
  loc_00487B62:         GoTo loc_00487A56
  loc_00487B67:       End If
  loc_00487B74:       global_004F13A0 = 3
  loc_00487B7D:       global_004F13A4 = "@R"
  loc_00487BB3:       var_8030 = Proc_6_0_487070
  loc_00487BC4:       global_004F13A4 = var_20
  loc_00487BD6:       var_8034 = Proc_6_10_488B20(var_20, 2, 0)
  loc_00487BDB:       GoTo loc_00487A56
  loc_00487BE0:     End If
  loc_00487BE0:   End If
  loc_00487BEE: Else
  loc_00487BFA:   GoTo loc_00487C19
  loc_00487C18:   Exit Sub
  loc_00487C19: End If
  loc_00487C19: ' Referenced from: 00487BFA
End Sub

Private Sub Proc_6_5_487C40() '487C40
  loc_00487C8F: var_1C = "@3"
  loc_00487CC1: If (Proc_6_7_488390("READY", 0, 0) <> True) Then
  loc_00487CCB:   var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_00487CD1:   var_8008 = Proc_489710(0, , )
  loc_00487CE6: Else
  loc_00487CF2:   GoTo loc_00487D08
  loc_00487D07:   Exit Sub
  loc_00487D08: End If
  loc_00487D08: ' Referenced from: 00487CF2
End Sub

Private Sub Proc_6_6_487D30() '487D30
  Dim global_004F1DB4 As Global
  Dim var_34 As Screen
  loc_00487DAC: Global.Screen.MousePointer = CLng(11)
  loc_00487DDB: var_30 = "@3"
  loc_00487DFF: If Proc_6_4_487960 + 1 Then
  loc_00487E09:   var_30 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_00487E0F:   var_800C = Proc_489710(0, 0, 0)
  loc_00487E3F:   var_34 = Global.Screen
  loc_00487E68:   If var_34 >= 0 Then GoTo loc_0048833C
  loc_00487E6E:   GoTo loc_0048832D
  loc_00487E73: End If
  loc_00487E7B: call var_8014 = global_004F1DB4
  loc_00487E99: If (Proc_6_1_487260 = True) Then
  loc_00487EA7:   call var_801C = global_004F1DB4
  loc_00487EC5:   If Proc_6_4_487960 + 1 Then
  loc_00487ECF:     call var_8024 = global_004F1DB4
  loc_00487ED5:     var_8028 = Proc_489710()
  loc_00487F05:     var_34 = Global.Screen
  loc_00487F2E:     If var_34 >= 0 Then GoTo loc_0048833C
  loc_00487F34:     GoTo loc_0048832D
  loc_00487F39:   End If
  loc_00487F5C:   var_4C = CSng(Timer)
  loc_00487F75:   var_8034 = CSng((Timer + var_18))
  loc_00487F85:   DoEvents
  loc_00487F8B:   GoTo loc_00487F50
  loc_00487F9B:   var_8038 = Timer
  loc_00487F9D:   call var_803C = global_004F1DB4
  loc_00487FBB:   If Proc_6_1_487260 + 1 Then
  loc_00487FC9:     call var_8044 = global_004F1DB4
  loc_00487FCF:     var_8048 = Proc_489710()
  loc_00487FFF:     var_34 = Global.Screen
  loc_00488028:     If var_34 >= 0 Then GoTo loc_0048833C
  loc_0048802E:     GoTo loc_0048832D
  loc_00488033:   End If
  loc_00488056:   var_54 = CSng(Timer)
  loc_0048806F:   var_8054 = CSng((Timer + var_18))
  loc_0048807F:   DoEvents
  loc_00488085:   GoTo loc_0048804A
  loc_00488095:   var_8058 = Timer
  loc_00488097:   call var_805C = global_004F1DB4
  loc_004880B5:   If Proc_6_1_487260 + 1 Then
  loc_004880BF:     call var_8064 = global_004F1DB4
  loc_004880C5:     var_8068 = Proc_489710()
  loc_004880F5:     var_34 = Global.Screen
  loc_0048811E:     If var_34 >= 0 Then GoTo loc_0048833C
  loc_00488124:     GoTo loc_0048832D
  loc_00488129:   End If
  loc_00488129: End If
  loc_00488131: call var_8070 = global_004F1DB4
  loc_0048814F: If Proc_6_4_487960 + 1 Then
  loc_00488159:   call var_8078 = global_004F1DB4
  loc_0048815F:   var_807C = Proc_489710()
  loc_0048818F:   var_34 = Global.Screen
  loc_004881B8:   If var_34 >= 0 Then GoTo loc_0048833C
  loc_004881BE:   GoTo loc_0048832D
  loc_004881C3: End If
  loc_004881E6: var_5C = CSng(Timer)
  loc_004881FF: var_8088 = CSng((Timer + var_18))
  loc_0048820F: DoEvents
  loc_00488215: GoTo loc_004881DA
  loc_00488225: var_808C = Timer
  loc_00488227: call var_8090 = global_004F1DB4
  loc_00488245: If Proc_6_1_487260 + 1 Then
  loc_0048824F:   call var_8098 = global_004F1DB4
  loc_00488255:   var_809C = Proc_489710()
  loc_00488285:   var_34 = Global.Screen
  loc_004882AE:   If var_34 >= 0 Then GoTo loc_0048833C
  loc_004882B4:   GoTo loc_0048832D
  loc_004882B6: End If
  loc_004882BE: If Proc_6_3_487670 Then GoTo loc_0048834D
  loc_004882CC: call var_80A8 = global_004F1DB4
  loc_004882D2: var_80AC = Proc_489710()
  loc_00488302: var_34 = Global.Screen
  loc_0048832B: If var_34 >= 0 Then GoTo loc_0048833C
  loc_0048832D: ' Referenced from: 00487E6E
  loc_0048832D: ' Referenced from: 00487F34
  loc_0048832D: ' Referenced from: 0048802E
  loc_0048832D: ' Referenced from: 00488124
  loc_0048832D: ' Referenced from: 004881BE
  loc_0048832D: ' Referenced from: 004882B4
  loc_00488336: CheckObj(var_34, var_34, global_00457D4C, 124)
  loc_0048834B: GoTo loc_0048836F
  loc_0048835A: GoTo loc_0048836F
  loc_0048836E: Exit Sub
  loc_0048836F: ' Referenced from: 0048834B
  loc_0048836F: ' Referenced from: 0048835A
End Sub

Private Sub Proc_6_7_488390() '488390
  Dim var_20 As Screen
  Dim global_0048872C As Variant
  loc_004883D4: global_004F102C = 1
  loc_00488428: Global.Screen.MousePointer = CLng(11)
  loc_00488455: If Proc_6_4_487960 <> True Then
  loc_0048849D:   Global.Screen.MousePointer = 0
  loc_004884C2:   var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004884CC:   var_8010 = Proc_489710(0, 0, 0)
  loc_004884EB: Else
  loc_004884F5:   If edi < 5 Then
  loc_004884FF:     var_8014 = Proc_6_9_488950(global_0048872C, , )
  loc_0048851A:     var_8018 = (var_30 = 0)
  loc_0048852B:     If var_8018 = 0 Then
  loc_00488538:       var_801C = Proc_6_10_488B20(, , )
  loc_00488541:       var_8020 = Proc_6_1_487260
  loc_0048854A:       If var_8020 = True Then GoTo loc_004885DF
  loc_0048855A:       GoTo loc_004884F1
  loc_0048855C:     End If
  loc_00488564:     var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_0048856E:     var_8024 = Proc_489710(, , )
  loc_00488581:     global_004F102C = 0
  loc_004885AB:     var_20 = Global.Screen
  loc_004885D4:     If var_20 >= 0 Then GoTo loc_00488672
  loc_004885DA:     GoTo loc_00488663
  loc_004885E3:     If edi+1 < 5 Then GoTo loc_00488685
  loc_004885E9:   End If
  loc_004885F1:   var_1C = "ERROR AL ACCESAR EL TSO"
  loc_004885FB:   var_802C = Proc_489710(, , )
  loc_0048860E:   global_004F102C = 0
  loc_00488638:   var_20 = Global.Screen
  loc_00488661:   If var_20 >= 0 Then GoTo loc_00488672
  loc_0048866C:   CheckObj(var_20, var_20, global_00457D4C, 124)
  loc_00488680:   GoTo loc_0048872B
  loc_0048868A:   global_004F102C = 0
  loc_004886D6:   Global.Screen.MousePointer = 0
  loc_00488703:   GoTo loc_0048872B
  loc_0048872A:   Exit Sub
  loc_0048872B: End If
  loc_0048872B: ' Referenced from: 00488680
  loc_0048872B: ' Referenced from: 00488703
End Sub

Private Sub Proc_6_8_488750() '488750
  loc_004887E0: Global.Screen.MousePointer = CLng(11)
  loc_00488803: If esi < 5 Then
  loc_0048880E:   If Proc_6_2_487370 <> True Then
  loc_0048881A:     GoTo loc_004887FF
  loc_0048881C:   End If
  loc_00488820:   If esi+1 < 5 Then GoTo loc_004888AA
  loc_00488826: End If
  loc_00488866: Global.Screen.MousePointer = 0
  loc_0048888B: var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_00488895: var_8010 = Proc_489710(0, 0, )
  loc_004888A8: GoTo loc_00488928
  loc_004888EA: Global.Screen.MousePointer = 0
  loc_00488913: GoTo loc_00488928
  loc_00488927: Exit Sub
  loc_00488928: ' Referenced from: 004888A8
  loc_00488928: ' Referenced from: 00488913
End Sub

Private Sub Proc_6_9_488950() '488950
  Dim var_30 As Variant
  Dim global_004F13A8 As Variant
  Dim global_004F13AA As Variant
  loc_00488999: global_004F13A0 = 4
  loc_004889A2: global_004F13A4 = global_004568F4
  loc_004889C2: var_24 = False
  loc_004889EA: var_8004 = Proc_6_0_487070
  loc_004889FA: global_004F13A4 = var_30
  loc_00488A10: If global_004F13AA Then
  loc_00488A1B:   If ebx < 600 Then
  loc_00488A28:     var_8008 = Proc_6_10_488B20(var_30, global_004F13A8, global_004F13AA)
  loc_00488A3A:     global_004F13A0 = 4
  loc_00488A43:     global_004F13A4 = global_004568F4
  loc_00488A75:     var_800C = Proc_6_0_487070
  loc_00488A97:     GoTo loc_00488A07
  loc_00488A9C:   End If
  loc_00488A9F:   If var_30 Then GoTo loc_00488ABB
  loc_00488AA1: End If
  loc_00488AB5: var_24 = True
  loc_00488AC0: GoTo loc_00488ADB
  loc_00488AC6: If var_4 <> 4 Then
  loc_00488AD1: End If
  loc_00488ADA: Exit Sub
  loc_00488ADB: ' Referenced from: 00488AC0
End Sub

Private Sub Proc_6_10_488B20() '488B20
  loc_00488B60: global_004F13A0 = &H12
  loc_00488B69: global_004F13A4 = global_004568F4
  loc_00488B74: global_004F13A8 = Me
  loc_00488BA1: var_8004 = Proc_6_0_487070
  loc_00488BB2: global_004F13A4 = var_18
  loc_00488BC2: GoTo loc_00488BCE
  loc_00488BCD: Exit Sub
  loc_00488BCE: ' Referenced from: 00488BC2
End Sub

Private Sub Proc_6_11_488BF0() '488BF0
  loc_00488C22: global_004F13A0 = &H5B
  loc_00488C3E: global_004F13A4 = Trim$(arg_8)
  loc_00488C6C: global_004F13A8 = Len(Trim$(arg_8))
  loc_00488C9D: var_8014 = Proc_6_0_487070
  loc_00488CAE: global_004F13A4 = var_1C
  loc_00488CCC: var_14 = (global_004F13AA <> 3) - 1
  loc_00488CCF: GoTo loc_00488CDB
  loc_00488CDA: Exit Sub
  loc_00488CDB: ' Referenced from: 00488CCF
End Sub

Private Sub Proc_6_12_488D00() '488D00
  loc_00488D40: global_004F13A0 = 5
  loc_00488D49: global_004F13A4 = global_004568F4
  loc_00488D7D: var_8004 = Proc_6_0_487070
  loc_00488D8D: global_004F13A4 = var_1C
  loc_00488D9F: If global_004F13AA Then
  loc_00488DB5: Else
  loc_00488DCC:   GoTo loc_00488DD8
  loc_00488DD7:   Exit Sub
  loc_00488DD8: End If
  loc_00488DD8: ' Referenced from: 00488DCC
End Sub

Private Sub Proc_6_13_488DF0() '488DF0
  Dim global_0048919A As Variant
  loc_00488E41: If var_18 < 10 Then
  loc_00488E4F:   var_1C = "@E"
  loc_00488E6D:   If Proc_6_4_487960 + 1 = 0 Then
  loc_00488E77:     var_8008 = Proc_6_9_488950
  loc_00488E92:     var_800C = (var_2C = 0)
  loc_00488EA6:     If var_800C = 0 Then
  loc_00488EB7:       var_8010 = Proc_6_10_488B20
  loc_00488EC4:       var_1C = "READY"
  loc_00488EE4:       If (Proc_6_1_487260 = True) = 0 Then
  loc_00488EEE:         var_1C = "Select Option"
  loc_00488F0E:         If (Proc_6_1_487260 = True) = 0 Then
  loc_00488F1E:           var_18 = var_18(1)
  loc_00488F21:           GoTo loc_00488E3C
  loc_00488F26:         End If
  loc_00488F26:       End If
  loc_00488F2B:       If var_18 >= 10 Then GoTo loc_00489175
  loc_00488F39:       var_1C = "Select Option"
  loc_00488F59:       If (Proc_6_1_487260 = True) Then
  loc_00488F5F:         var_18 = 0
  loc_00488F6B:         If var_18 >= 10 Then GoTo loc_00489175
  loc_00488F79:         var_1C = "@3"
  loc_00488F97:         If Proc_6_4_487960 + 1 Then GoTo loc_00489059
  loc_00488FA1:         var_8024 = Proc_6_9_488950
  loc_00488FD0:         If (var_2C = 0) Then GoTo loc_004890E8
  loc_00488FE1:         var_802C = Proc_6_10_488B20
  loc_00488FEE:         var_1C = "READY"
  loc_0048900E:         If (Proc_6_1_487260 = True) = 0 Then
  loc_00489021:           GoTo loc_00488F66
  loc_00489026:         End If
  loc_0048902B:         If var_18(1) >= 10 Then GoTo loc_00489175
  loc_00489031:       End If
  loc_00489039:       var_1C = "@0"
  loc_00489057:       If Proc_6_4_487960 + 1 = 0 Then GoTo loc_0048907B
  loc_00489059:     End If
  loc_00489061:     var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_00489067:     var_8038 = Proc_489710(0, 0, 0)
  loc_00489076:     GoTo loc_00489199
  loc_0048907F:     var_803C = Proc_6_9_488950
  loc_0048909A:     var_8040 = (var_2C = 0)
  loc_004890AE:     If var_8040 = 0 Then
  loc_004890BB:       var_8044 = Proc_6_10_488B20
  loc_004890C8:       var_1C = "@C"
  loc_004890E6:       If Proc_6_4_487960 + 1 = 0 Then GoTo loc_0048910A
  loc_004890E8:     End If
  loc_004890F0:     var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004890F6:     var_804C = Proc_489710(global_0048919A, , )
  loc_00489105:     GoTo loc_00489199
  loc_0048910E:     var_8050 = Proc_6_9_488950
  loc_0048913D:     If (var_2C = 0) Then
  loc_0048913F:     End If
  loc_00489147:     var_1C = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_0048914D:     var_8058 = Proc_489710(global_0048919A, , )
  loc_0048915E:   Else
  loc_00489169:     var_805C = Proc_6_10_488B20
  loc_00489175:   End If
  loc_0048917A:   GoTo loc_00489199
  loc_00489198:   Exit Sub
  loc_00489199: End If
  loc_00489199: ' Referenced from: 0048917A
End Sub

Private Sub Proc_6_14_4891C0() '4891C0
  Dim var_14 As Variant
  loc_00489211: global_004F1010.UnkVCall_000002FCh
  loc_00489230: global_004F1010.UnkVCall_000002FCh.UnkVCall_0000009Ch
  loc_00489298: global_80010007 = global_004F1010.UnkVCall_00000318h
  loc_004892A6: global_004F1010.UnkVCall_00000318h.DispID_400B = var_20
  loc_004892F3: global_80010007 = global_004F1010.UnkVCall_0000031Ch
  loc_00489301: global_004F1010.UnkVCall_0000031Ch.DispID_400B = var_20
  loc_0048934E: global_80010007 = global_004F1010.UnkVCall_00000320h
  loc_0048935C: global_004F1010.UnkVCall_00000320h.DispID_400B = var_20
  loc_004893AE: global_80010007 = global_004F1010.UnkVCall_00000324h
  loc_004893B9: Set var_14 = global_004F1010.UnkVCall_00000324h
  loc_004893BC: var_14 = var_18
  loc_004893EE: global_004F1010.UnkVCall_00000304h
  loc_00489404: global_004F1010.UnkVCall_00000304h.UnkVCall_0000009Ch
  loc_0048942C: GoTo loc_00489438
  loc_00489437: Exit Sub
  loc_00489438: ' Referenced from: 0048942C
End Sub

Private Sub Proc_6_15_489450() '489450
  loc_004894A1: global_004F1010.UnkVCall_00000308h
  loc_004894BF: arg_C = global_004F1010.UnkVCall_00000308h.UnkVCall_0000006Ch
  loc_0048951B: global_004F1010.UnkVCall_00000308h.UnkVCall_00000308h.UnkVCall_00000308h.UnkVCall_00000054h
  loc_0048953D: GoTo loc_00489549
  loc_00489548: Exit Sub
  loc_00489549: ' Referenced from: 0048953D
End Sub
