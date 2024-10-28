VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form frmDesco
  Caption = "Descompresiòn de Archivos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 5295
  ClientTop = 5085
  ClientWidth = 5250
  ClientHeight = 3195
  LockControls = -1  'True
  PaletteMode = 1
  Begin Threed.SSPanel PnlDescTot
    Left = 135
    Top = 1665
    Width = 3030
    Height = 375
    TabIndex = 0
    OleObjectBlob = "frmDesco.frx":0000
  End
  Begin Threed.SSPanel PnlDescAct
    Left = 135
    Top = 2250
    Width = 3030
    Height = 375
    TabIndex = 1
    OleObjectBlob = "frmDesco.frx":0081
  End
  Begin VB.Label LabMarq
    Left = 315
    Top = 990
    Width = 4560
    Height = 375
    TabIndex = 4
    BeginProperty Font
      Name = "Courier New"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Descompresiòn"
    Index = 1
    Left = 3420
    Top = 1800
    Width = 1500
    Height = 240
    TabIndex = 3
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
  Begin VB.Label Label2
    Caption = "Estado actual de descompresiòn"
    Index = 2
    Left = 3420
    Top = 2250
    Width = 1500
    Height = 465
    TabIndex = 2
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
End

Attribute VB_Name = "frmDesco"


Private Sub Form_Activate() '495BB0
  Dim global_004F1DB4 As Global
  Dim Me As Variant
  Dim var_20 As Variant
  loc_00495C0F: var_28 = Me.Width
  loc_00495C7C: var_24 = Global.Screen.Width
  loc_00495CA6: If global_004F1000 = 0 Then
  loc_00495CB0: Else
  loc_00495CBB: End If
  loc_00495CC9: Global.Screen.Left = ((var_24 - var_28) / 2)
  loc_00495CDB: CheckObj(Err.Number, Me, global_0045803C, 116)
  loc_00495CED: var_28 = Global.Screen.Height
  loc_00495D4D: var_24 = Global.Screen.Height
  loc_00495D71: If global_004F1000 = 0 Then
  loc_00495D7B: Else
  loc_00495D86: End If
  loc_00495D94: Global.Screen.Top = ((var_24 - var_28) / 2)
  loc_00495DA6: CheckObj(Err.Number, Me, global_0045803C, 124)
  loc_00495DD3: var_8010 = frmDesco.Refresh
  loc_00495E31: Global.Screen.MousePointer = CLng(11)
  loc_00495E54: global_004F102A = True
  loc_00495E6E: If var_20 Then
  loc_00495EBD:   Global.Screen.MousePointer = 0
  loc_00495EE2:   var_18 = "ERROR AL DESCOMPRIMIR LOS ARCHIVOS..."
  loc_00495EEC:   var_801C = Proc_489710(Me, var_20, Me)
  loc_00495F45:   If Global.Unload frmActVer >= 0 Then GoTo loc_0049600F
  loc_00495F4B:   GoTo loc_00496004
  loc_00495F50: End If
  loc_00495F99: Global.Screen.MousePointer = 0
  loc_00496002: If Global.Unload frmDesco >= 0 Then GoTo loc_0049600F
  loc_00496004: ' Referenced from: 00495F4B
  loc_0049600D: CheckObj(Global.Unload frmDesco, global_004F1DB4, global_00457D2C, 16)
  loc_00496025: GoTo loc_0049603A
  loc_00496039: Exit Sub
  loc_0049603A: ' Referenced from: 00496025
End Sub

Public Function Descom_Reg(Cadena, Cad_Sobra, NumRegLGP, NumRegLeid) '493EB0
  Dim var_40 As frmDesco.PnlDescAct
  loc_00493F22: Dim var_30 As String * 133
  loc_00493F61: If 1 <= Len(Cadena) Then
  loc_00493F95:   var_8010 = Asc(Mid$(Cadena, 1, 1))
  loc_00493FB8:   If var_8010 >= 258 Then
  loc_00493FBA:     var_8014 = Err.Raise
  loc_00493FC0:   End If
  loc_00493FCB:   var_8010 = var_8010 + global_004F110C
  loc_00493FD1:   Dim var_8010+global_004F110C As String * 8
  loc_0049401E:   var_18 = 1+1
  loc_00494023:   GoTo loc_00493F5A
  loc_00494028: End If
  loc_00494093: global_56 = Len(Cad_Sobra & global_60 & var_8010+global_004F110C & var_8010+global_004F110C & var_8010+global_004F110C & "*")(-1)
  loc_0049409A: If global_74 Then
  loc_004940B8:   If var_94 <> True Then
  loc_004940C4:   Else
  loc_004940D6:     var_28 = global_54 + var_28+var_28
  loc_004940D9:     GoTo loc_004940DD
  loc_004940DD:   End If
  loc_004940EE:   If (var_20 = "FIN") Then
  loc_0049412A:     var_20 = frmDesco.ObtenSimb(var_28)
  loc_0049413D:     If (var_20 = "FIN") Then
  loc_0049414C:       var_8030 = (var_20 = global_0045B658)
  loc_00494154:       If var_8030 = 0 Then
  loc_004941C5:         global_64 = global_64 + String(global_52, global_0045B658)
  loc_004941F0:       Else
  loc_004941F9:         var_803C = (var_20 = global_0045BC88)
  loc_00494201:         If var_803C = 0 Then
  loc_00494209:           global_54 = global_54 + var_28 + var_28
  loc_0049421E:           var_28 = global_54+var_28
  loc_00494231:           global_68 = True
  loc_00494242:           If var_94 Then GoTo loc_004944EE
  loc_0049424C:           GoTo loc_00494279
  loc_0049424E:         End If
  loc_00494259:         var_8040 = global_64 & var_20
  loc_00494264:         call True(Me, var_28, var_94, Me, var_28, var_94, Me, 0, 0, 0)
  loc_0049426A:         global_64 = True(Me, var_28, var_94, Me, var_28, var_94, Me, 0, 0, 0)
  loc_00494279:       End If
  loc_0049428E:       var_28 = global_54 + var_28+var_28
  loc_004942B6:       If (Len(global_64) <= 133) <> (Len(global_64) <> 133) Then GoTo loc_004940DB
  loc_00494327:       Print 2, RTrim(Mid$(global_64, 1, 133))
  loc_0049433B:       var_30 = global_004568F4
  loc_00494363:       Set var_40 = frmDesco.PnlDescAct
  loc_0049436E:       var_40.FloodPercent
  loc_0049439E:       If (CInt(var_40) >= 100) Then
  loc_004943C2:       Else
  loc_004943CA:         var_B4 = NumRegLeid
  loc_004943D2:         var_BC = NumRegLGP
  loc_004943E5:         If global_004F1000 = 0 Then
  loc_004943EF:         Else
  loc_00494400:         End If
  loc_00494406:         var_78 = ((var_B4 / var_BC) * 100)
  loc_0049442E:       End If
  loc_0049444B:       frmDesco.PnlDescAct.FloodPercent
  loc_0049448E:       global_64 = Mid$(global_64, 134, Len(global_64))
  loc_004944A6:       GoTo loc_004940DB
  loc_004944AB:     End If
  loc_004944D6:     var_8060 = Mid$(Cad_Sobra & global_60 & var_8010+global_004F110C & var_8010+global_004F110C & var_8010+global_004F110C & "*", var_28, (global_56 - var_28)(1))
  loc_004944E1:     call var_8064 = global_64(00000002h, var_7C, 00000064h)
  loc_004944EC:     GoTo loc_00494500
  loc_004944F6:     global_74 = global_64
  loc_00494500:   End If
  loc_00494505: End If
  loc_00494508: var_34 = Cad_Sobra
  loc_00494514: GoTo loc_00494559
  loc_0049451A: If var_4 <> 4 Then
  loc_00494525: End If
  loc_00494558: Exit Function
  loc_00494559: ' Referenced from: 00494514
End Function

Public Function ObtenSimb(pos) '495580
  loc_004955EA: If ebx >= 111 Then
  loc_004955EC:   var_8004 = Err.Raise
  loc_004955F2: End If
  loc_004955FF: If global_004F10D4(edi+edi*2*2) <> True Then
  loc_00495612:   global_54 = global_54 + eax
  loc_00495681:   If (Mid(global_60, global_54+eax, 1) = "*") Then GoTo loc_004957D2
  loc_00495706:   If (Mid(global_60, global_54 + ecx + ecx+ecx, 1) = global_00459E00) Then
  loc_0049570B:     If var_A4 >= 111 Then
  loc_0049570D:       var_8010 = Err.Raise
  loc_00495713:     End If
  loc_00495722:   Else
  loc_00495725:     If var_A4 >= 111 Then
  loc_00495727:       var_8014 = Err.Raise
  loc_0049572D:     End If
  loc_0049573B:   End If
  loc_00495754:   GoTo loc_004955DE
  loc_00495759: End If
  loc_0049575F: If ecx+eax*2+00000002h >= 111 Then
  loc_00495761:   var_8018 = Err.Raise
  loc_00495767: End If
  loc_00495777: Dim edx+ecx*2+00000004h As String * 1
  loc_004957A9: If (edx+ecx*2+00000004h = global_0045B658) + 1 Then
  loc_004957D0:   If (global_56 - global_54 + ecx + 1+1 + edx+edx) < 4 Then
  loc_004957DA:     var_20 = "FIN"
  loc_004957E5:   Else
  loc_004957F5:     If ebx <= 3 Then
  loc_00495812:       global_54 = global_54 + ecx + 1+1 + edx + edx
  loc_00495880:       If (Mid(global_60, global_54+edx + ebx + ebx+ebx, 1) = global_00458C18) Then
  loc_0049588A:         Select Case Me
  loc_00495891:           Case 1
  loc_00495899:             GoTo loc_004958CB
  loc_0049589B:           Case 2
  loc_004958AD:             GoTo loc_004958D5
  loc_004958AF:           Case 3
  loc_004958C1:             GoTo loc_004958D5
  loc_004958C3:           Case 4
  loc_004958C7:             global_52 = global_52 + 8 + 4+4 + 2+2 + 1
  loc_004958D1:             global_52 = global_52+1
  loc_004958D5:           End If
  loc_004958D5:       End Select
  loc_004958E5:       GoTo loc_004957ED
  loc_004958EA:     End If
  loc_004958FB:     global_54 = global_54 + 4+4
  loc_004958FF:   End If
  loc_00495905:   If ecx+eax*2+00000002h >= 111 Then
  loc_00495907:     var_8024 = Err.Raise
  loc_0049590D:   End If
  loc_0049591D:   Dim ecx+eax*2+00000004h As String * 1
  loc_00495928:   var_20 = ecx+eax*2+00000004h
  loc_0049592E: End If
  loc_00495933: GoTo loc_00495965
  loc_00495939: If var_4 <> 4 Then
  loc_00495944: End If
  loc_00495964: Exit Function
  loc_00495965: ' Referenced from: 00495933
End Function

Private Sub Proc_7_3_493490() '493490
  loc_004934E3: If eax <= 48 Then
  loc_004934EF:   If eax >= 51 Then
  loc_004934F1:     var_8004 = Err.Raise
  loc_004934F7:   End If
  loc_00493503:   var_28 = eax+esi*8+00000004h
  loc_00493530:   If 1 <= Len(var_28) Then
  loc_00493578:     var_14 = Mid(var_28, 1, 1)
  loc_00493597:     Dim var_14 As String * 1
  loc_004935CC:     If (var_14 = global_00459E00) + 1 Then
  loc_004935D7:       If Err.Raise() >= 111 Then
  loc_004935D9:         var_8018 = Err.Raise
  loc_004935DB:       End If
  loc_004935E9:       If global_004F10D4(esi+esi*2*2) = True Then
  loc_004935EE:         If Err.Raise() >= 111 Then
  loc_004935F0:           var_801C = Err.Raise
  loc_004935F2:         End If
  loc_0049360B:         var_1C = 1+1
  loc_00493610:       Else
  loc_00493613:         If 00000001h >= 111 Then
  loc_00493615:           call edi(0, 0, 0)
  loc_00493617:         End If
  loc_00493625:       Else
  loc_0049362E:         If Err.Raise() >= 111 Then
  loc_00493630:           var_8020 = Err.Raise
  loc_00493632:         End If
  loc_00493641:         If edx+ecx*2+00000002h = True Then
  loc_00493646:           If Err.Raise() >= 111 Then
  loc_00493648:             var_8024 = Err.Raise
  loc_0049364A:           End If
  loc_0049365A:           1+1 = 1+1 + 1
  loc_00493664:           var_1C = 1+1+1
  loc_00493669:         Else
  loc_0049366C:           If 1+1 >= 111 Then
  loc_0049366E:             call 1+1
  loc_00493670:           End If
  loc_0049367D:         End If
  loc_0049367D:       End If
  loc_0049367D:     End If
  loc_0049368C:     var_20 = 1+var_20
  loc_0049368F:     GoTo loc_00493529
  loc_00493694:   End If
  loc_0049369B:   If var_18 >= 51 Then
  loc_0049369D:     var_8028 = Err.Raise
  loc_004936A3:   End If
  loc_004936A9:   If eax+edx*2+00000002h >= 111 Then
  loc_004936AB:     var_802C = Err.Raise
  loc_004936B1:   End If
  loc_004936BD:   Dim global_004F10F0(var_18*8) As String * 1
  loc_004936DF:   ecx+eax*2+00000004h = global_004F10F0(var_18*8)
  loc_004936FC:   var_18 = 1+var_18
  loc_00493701:   GoTo loc_004934DB
  loc_00493706: End If
  loc_0049370B: GoTo loc_0049372A
  loc_00493729: Exit Sub
  loc_0049372A: ' Referenced from: 0049370B
End Sub
