VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FrmLlenaTablas
  Caption = "Vaciado de Datos . . . . . "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 1320
  ClientTop = 2610
  ClientWidth = 6810
  ClientHeight = 2250
  PaletteMode = 1
  Begin Threed.SSPanel PnlLlenado
    Left = 2115
    Top = 855
    Width = 4500
    Height = 405
    TabIndex = 1
    OleObjectBlob = "FrmLlenaTablas.frx":0000
  End
  Begin Threed.SSPanel PnlIndices
    Left = 2115
    Top = 1440
    Width = 4500
    Height = 405
    TabIndex = 2
    OleObjectBlob = "FrmLlenaTablas.frx":0079
  End
  Begin VB.Label EtiTabIndic
    Caption = "Creación de Indices"
    Index = 1
    BackColor = &HC0C000&
    ForeColor = &H404040&
    Left = 180
    Top = 1440
    Width = 1800
    Height = 330
    TabIndex = 4
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
  Begin VB.Label EtiTitTab
    Caption = "Llenado de Tablas"
    Index = 0
    BackColor = &HC0C000&
    ForeColor = &H404040&
    Left = 180
    Top = 855
    Width = 1800
    Height = 330
    TabIndex = 3
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
  Begin VB.Label Label1
    Caption = "Esperar un momento mientras se lleva a cabo el vaciado de Tablas Maestras a Base de Datos"
    BackColor = &H8000&
    ForeColor = &HFFFFFF&
    Left = 405
    Top = 90
    Width = 5775
    Height = 600
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

Attribute VB_Name = "FrmLlenaTablas"


Private Sub Form_Activate() '4E7CC0
  Dim global_004F1DB4 As Global
  loc_004E7D42: var_D4 = Me.Width
  loc_004E7DB2: var_D0 = Global.Screen.Width
  loc_004E7DE2: If global_004F1000 = 0 Then
  loc_004E7DEC: Else
  loc_004E7DF7: End If
  loc_004E7E05: Global.Screen.Left = ((var_D0 - var_D4) / 2)
  loc_004E7E17: CheckObj(Err.Number, Me, global_0045C8F0, 116)
  loc_004E7E2C: var_D4 = Global.Screen.Height
  loc_004E7E8F: var_D0 = Global.Screen.Height
  loc_004E7EB9: If global_004F1000 = 0 Then
  loc_004E7EC3: Else
  loc_004E7ECE: End If
  loc_004E7EDC: Global.Screen.Top = ((var_D0 - var_D4) / 2)
  loc_004E7EEE: CheckObj(Err.Number, Me, global_0045C8F0, 124)
  loc_004E7F1B: var_8010 = FrmLlenaTablas.Refresh
  loc_004E7F3B: global_004F138C = 0
  loc_004E7F72: If FrmLlenaTablas.LlenaTablas(global_004F1234, global_004F1220) Then
  loc_004E7F74:   global_004F138C = &HFFFFFF
  loc_004E7F82: Else
  loc_004E7FFF:   MsgBox("ERROR AL GENERAR BASE DE DATOS " + Chr(10) + "REPORTAR FALLA A INFORMÁTICA", 0, 10, 10, 10)
  loc_004E8028: End If
  loc_004E8062: global_004F1DB4.Unload Me
  loc_004E808C: GoTo loc_004E80BB
  loc_004E80BA: Exit Sub
  loc_004E80BB: ' Referenced from: 004E808C
End Sub

Public Function LlenaTablas(pathMaestros, ArchBD) '4E80E0
  Dim global_004F11F4 As var_40
  Dim var_40 As Variant
  Dim global_004F1200 As Variant
  loc_004E8228: ArchBD = global_004F1DF4.UnkVCall_00000058h
  loc_004E824C: Set global_004F11F4 = var_40
  loc_004E8265: If global_004F1370 Then
  loc_004E826A:   If global_004F1370 = 1 Then
  loc_004E8276:     If (esi - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004E8278:       var_8008 = Err.Raise
  loc_004E8284:     End If
  loc_004E828C:   Else
  loc_004E828C:   End If
  loc_004E828C:   var_800C = Err.Raise
  loc_004E8298: End If
  loc_004E829B: global_004F1370(12) = global_004F1370(12) + var_800C
  loc_004E82A0: Dim global_004F1370(12)+var_800C As String * 10
  loc_004E82D1: var_5C = Trim(global_004F1370(12)+var_800C)
  loc_004E82DF: If global_004F1370 Then
  loc_004E82E5:   If global_004F1370 = 1 Then
  loc_004E82F6:     If (esi - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004E82F8:       var_8010 = Err.Raise
  loc_004E8304:     End If
  loc_004E830C:   Else
  loc_004E830C:   End If
  loc_004E830C:   var_8014 = Err.Raise
  loc_004E8318: End If
  loc_004E831E: global_004F1370(12) = global_004F1370(12) + var_8014
  loc_004E8324: global_004F1370(12)+var_8014 = global_004F1370(12)+var_800C
  loc_004E8339: var_1C = var_5C
  loc_004E8359: GoTo loc_004E8361
  loc_004E8361: ' Referenced from: 004E8359
  loc_004E8372: If (var_1C = "FIN") Then
  loc_004E844F:   var_28 = Trim(var_1C) + ".TXT"
  loc_004E84A1:   var_64 = "SELECT " & var_1C & ".* INTO " & "LGP" + Mid(var_1C, 3, 6) & " FROM "
  loc_004E84AD:   If global_004F1370 Then
  loc_004E84B3:     If global_004F1370 = 1 Then
  loc_004E84C2:       If (var_2C - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004E84C4:         var_8040 = Err.Raise
  loc_004E84D0:       End If
  loc_004E84D8:     Else
  loc_004E84D8:     End If
  loc_004E84D8:     var_8044 = Err.Raise
  loc_004E84E4:   End If
  loc_004E84E7:   global_004F1370(12) = global_004F1370(12) + var_8044
  loc_004E84EC:   Dim global_004F1370(12)+var_8044 As String * 10
  loc_004E8517:   var_5C = Trim(global_004F1370(12)+var_8044)
  loc_004E8525:   If global_004F1370 Then
  loc_004E852B:     If global_004F1370 = 1 Then
  loc_004E853A:       If (var_2C - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004E853C:         var_8048 = Err.Raise
  loc_004E8548:       End If
  loc_004E8550:     Else
  loc_004E8550:     End If
  loc_004E8550:     var_804C = Err.Raise
  loc_004E855C:   End If
  loc_004E8562:   global_004F1370(12) = global_004F1370(12) + var_804C
  loc_004E8568:   global_004F1370(12)+var_804C = global_004F1370(12)+var_8044
  loc_004E8588:   var_20 = var_64 + var_5C
  loc_004E85F5:   var_20 = global_004F11F4.UnkVCall_0000005Ch
  loc_004E864B:   global_004F11F4.UnkVCall_00000044h.UnkVCall_00000024h
  loc_004E868F:   var_10C = var_2C(-1)
  loc_004E869B:   var_118 = global_004F1230
  loc_004E86AE:   If global_004F1000 = 0 Then
  loc_004E86B8:   Else
  loc_004E86C9:   End If
  loc_004E86CF:   var_94 = ((var_10C / var_118) * 100)
  loc_004E8726:   FrmLlenaTablas.PnlLlenado.FloodPercent
  loc_004E873D:   var_40 = global_004F11F4.UnkVCall_00000044h
  loc_004E8771:   var_94 = var_1C
  loc_004E8782:   var_D4 = var_40
  loc_004E879D:   var_40.UnkVCall_00000030h
  loc_004E880B:   var_30 = var_44.UnkVCall_00000038h
  loc_004E882C:   var_30 = global_004F11F4.UnkVCall_00000044h.UnkVCall_0000002Ch
  loc_004E885E:   var_40 = global_004F11F4.UnkVCall_00000044h
  loc_004E8885:   var_94 = "LGP" + Mid(var_1C, 3, 6)
  loc_004E88A3:   var_D4 = var_40
  loc_004E88BE:   var_40.UnkVCall_00000030h
  loc_004E88E5:   var_A4 = "LGP" + Mid(var_1C, 3, 6)
  loc_004E8903:   var_DC = var_44
  loc_004E891E:   var_44.UnkVCall_00000074h
  loc_004E8948:   Set global_004F1200 = 0
  loc_004E8977:   var_94 = "RC_PATRON;RC_MOD;RC_PER;RC_CRED;RC_NUM_FOL"
  loc_004E899D:   global_004F1200.UnkVCall_0000005Ch
  loc_004E89C1:   global_004F1200.UnkVCall_00000040h
  loc_004E89E7:   var_40 = global_004F11F4.UnkVCall_00000044h
  loc_004E8A1B:   var_94 = "LGP" + Mid(var_1C, 3, 6)
  loc_004E8A2C:   var_D4 = var_40
  loc_004E8A47:   var_40.UnkVCall_00000030h
  loc_004E8A6D:   var_48 = var_44.UnkVCall_00000064h
  loc_004E8A87:   var_E4 = var_48
  loc_004E8A96:   Set var_4C = var_44.UnkVCall_00000064h
  loc_004E8AA6:   var_4C = var_48.UnkVCall_00000028h
  loc_004E8B03:   global_004F1200 = global_004F11F4.UnkVCall_00000044h.UnkVCall_00000024h
  loc_004E8B49:   var_128 = var_2C(-1)
  loc_004E8B55:   var_134 = global_004F1230
  loc_004E8B68:   If global_004F1000 = 0 Then
  loc_004E8B72:   Else
  loc_004E8B83:   End If
  loc_004E8B89:   var_94 = ((var_128 / var_134) * 100)
  loc_004E8BE0:   FrmLlenaTablas.PnlIndices.FloodPercent
  loc_004E8BFF:   If global_004F1370 Then
  loc_004E8C05:     If global_004F1370 = 1 Then
  loc_004E8C13:       If (var_2C(1) - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004E8C15:         var_8058 = Err.Raise
  loc_004E8C21:       End If
  loc_004E8C29:     Else
  loc_004E8C29:     End If
  loc_004E8C29:     var_805C = Err.Raise
  loc_004E8C35:   End If
  loc_004E8C38:   global_004F1370(12) = global_004F1370(12) + var_805C
  loc_004E8C3D:   Dim global_004F1370(12)+var_805C As String * 10
  loc_004E8C68:   var_5C = Trim(global_004F1370(12)+var_805C)
  loc_004E8C76:   If global_004F1370 Then
  loc_004E8C7C:     If global_004F1370 = 1 Then
  loc_004E8C88:       If (var_2C(1) - global_004F1370(20)) >= global_004F1370(16) Then
  loc_004E8C8A:         var_8060 = Err.Raise
  loc_004E8C96:       End If
  loc_004E8C9E:     Else
  loc_004E8C9E:     End If
  loc_004E8C9E:     var_8064 = Err.Raise
  loc_004E8CAA:   End If
  loc_004E8CB0:   global_004F1370(12) = global_004F1370(12) + var_8064
  loc_004E8CB6:   global_004F1370(12)+var_8064 = global_004F1370(12)+var_805C
  loc_004E8CCB:   var_1C = var_5C
  loc_004E8D14:   var_8074 = (Dir(pathMaestros & var_28, 0) = global_004568F4)
  loc_004E8D39:   If var_8074 = 0 Then GoTo loc_004E835B
  loc_004E8D59:   Kill pathMaestros & var_28
  loc_004E8D68:   GoTo loc_004E835B
  loc_004E8D6D: End If
  loc_004E8D75: var_40 = global_004F11F4.UnkVCall_00000058h
  loc_004E8DE5: FrmLlenaTablas.PnlLlenado.FloodPercent
  loc_004E8E3B: FrmLlenaTablas.PnlIndices.FloodPercent
  loc_004E8E4F: GoTo loc_004E8EA0
  loc_004E8E9F: Exit Function
  loc_004E8EA0: ' Referenced from: 004E8E4F
End Function
