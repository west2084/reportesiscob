VERSION 5.00
Begin VB.Form frmActVer
  Caption = "Lista  de Archivos a Transferir... Elija su seleccion."
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 8295
  ClientTop = 6420
  ClientWidth = 4650
  ClientHeight = 3000
  PaletteMode = 1
  Begin VB.CommandButton cmdBorra
    Caption = "&Borrar"
    Left = 1620
    Top = 4230
    Width = 1100
    Height = 380
    Enabled = 0   'False
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
  Begin VB.CheckBox ChkSelTodo
    Caption = "Elegir Todo"
    Left = 3555
    Top = 2175
    Width = 1095
    Height = 420
    TabIndex = 5
  End
  Begin VB.CommandButton cmdSal
    Caption = "&Salir"
    Left = 3550
    Top = 1125
    Width = 1000
    Height = 380
    TabIndex = 3
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
  Begin VB.ListBox lstPro
    Left = 50
    Top = 720
    Width = 3435
    Height = 1815
    TabIndex = 0
    MultiSelect = 2 'Extendeded
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
  Begin VB.CommandButton cmdAct
    Caption = "&Transferir"
    Left = 3550
    Top = 720
    Width = 1000
    Height = 380
    Enabled = 0   'False
    TabIndex = 1
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
  Begin VB.Label LblTitNum
    Caption = "Reportes en el CIZ"
    BackColor = &HC0&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 2610
    Width = 2940
    Height = 300
    TabIndex = 7
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
  Begin VB.Label LblNumRep
    Caption = "100"
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 2970
    Top = 2610
    Width = 510
    Height = 285
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label Label1
    Caption = "Label1"
    Left = 585
    Top = 4185
    Width = 15
    Height = 195
    TabIndex = 4
  End
  Begin VB.Label LblEdoTransf
    Caption = "Se localizarón los siguientes Archivos de Datos para"
    BackColor = &H800000&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 90
    Width = 4515
    Height = 525
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
  End
End

Attribute VB_Name = "frmActVer"


Private Sub ChkSelTodo_Click() '4A26B0
  loc_004A2759: If (var_18 < frmActVer.lstPro.ListCount) Then
  loc_004A278E:   var_24 = frmActVer.ChkSelTodo.Value
  loc_004A27BF:   frmActVer.lstPro.Selected = var_18
  loc_004A27F6:   var_18 = var_18(1)
  loc_004A27F9:   GoTo loc_004A26FE
  loc_004A27FE: End If
  loc_004A280A: GoTo loc_004A2820
  loc_004A281F: Exit Sub
  loc_004A2820: ' Referenced from: 004A280A
End Sub

Private Sub cmdBorra_Click() '4A2B20
  Dim var_B4 As Variant
  loc_004A2B8D: var_B4 = frmActVer.FrmActVer_CargaSelect
  loc_004A2BB8: If var_B4 <> True Then
  loc_004A2BC0:   If var_B4 Then
  loc_004A2BC9:     If var_B4 <> 100 Then
  loc_004A2BFC:       var_38 = "Conrep " & "06.00"
  loc_004A2C17:       var_30 = "Desea eliminar archivos selccionados ?"
  loc_004A2C2F:       MsgBox(var_30, 36, var_38, var_50, var_60)
  loc_004A2C69:       If (MsgBox(var_30, 36, var_38, var_50, var_60) = 6) Then
  loc_004A2C7D:         var_B4 = frmActVer.frmActver_EliminaSEL(var_B4)
  loc_004A2CA1:         If var_B4 = 0 Then
  loc_004A2CE5:           MsgBox("ERROR AL ELIMINAR REPORTES", 16, 10, 10, 10)
  loc_004A2D34:           var_800C = Global.Unload Me
  loc_004A2D55:         End If
  loc_004A2D58:         var_8010 = frmActVer.FrmActVer_MarcaElim
  loc_004A2D74:       End If
  loc_004A2DD0:       If (ebx < frmActVer.lstPro.ListCount) = 0 Then GoTo loc_004A2F71
  loc_004A2DF2:       frmActVer.lstPro.Selected = 0
  loc_004A2E23:       GoTo loc_004A2D76
  loc_004A2E28:     End If
  loc_004A2E7E:     MsgBox("EXCESO EN EL NUMERO DE REPORTES SELECCIONADOS" + Chr(10), 48, 10, 10, 10)
  loc_004A2EA8:   Else
  loc_004A2EF0:     MsgBox("SELECCIONAR AL MENOS UN REPORTE", 0, 10, 10, 10)
  loc_004A2F08:   Else
  loc_004A2F50:     MsgBox("ERROR AL INTENTAR SELECCIONAR DATOS ", 0, 10, 10, 10)
  loc_004A2F66:   End If
  loc_004A2F71: End If
  loc_004A2F7D: GoTo loc_004A2FA8
  loc_004A2FA7: Exit Sub
  loc_004A2FA8: ' Referenced from: 004A2F7D
End Sub

Private Sub cmdAct_Click() '4A2850
  Dim var_B0 As Variant
  loc_004A28BA: var_B0 = frmActVer.FrmActVer_CargaSelect
  loc_004A28E2: If var_B0 <> True Then
  loc_004A28EA:   If var_B0 Then
  loc_004A28F3:     If var_B0 <> 100 Then
  loc_004A28FE:       global_004F1026 = 1
  loc_004A2909:       global_004F1096 = var_B0
  loc_004A2956:       var_800C = Global.Unload frmActVer
  loc_004A297C:     Else
  loc_004A29D2:       MsgBox("EXCESO EN EL NUMERO DE REPORTES SELECCIONADOS" + Chr(10), 48, 10, 10, 10)
  loc_004A29FC:     Else
  loc_004A2A43:       MsgBox("SELECCIONAR AL MENOS UN REPORTE", 0, 10, 10, 10)
  loc_004A2A5B:     Else
  loc_004A2AA2:       MsgBox("ERROR AL INTENTAR SELECCIONAR DATOS ", 0, 10, 10, 10)
  loc_004A2AB8:     End If
  loc_004A2AC3:   End If
  loc_004A2AC3: End If
  loc_004A2ACB: GoTo loc_004A2AF6
  loc_004A2AF5: Exit Sub
  loc_004A2AF6: ' Referenced from: 004A2ACB
End Sub

Private Sub Form_Load() '4A34D0
  Dim var_68 As Variant
  Dim var_70 As Screen
  Dim var_30 As Variant
  loc_004A357A: var_30 = var_90.Screen
  loc_004A357F: var_6C = var_30
  loc_004A35B2: var_70 = var_30
  loc_004A35C0: var_70.MousePointer = CLng(11)
  loc_004A35C5: var_74 = var_70
  loc_004A3608: global_56 = &HFFFFFF
  loc_004A361E: If global_004F10BA = 0 Then
  loc_004A3662:   var_68 = var_9C
  loc_004A36D8:   var_6C = frmBarMsj.Show 10, var_4C
  loc_004A370B: End If
  loc_004A371F: var_8010 = frmActVer.Proc_9_12_4A1D00(var_64)
  loc_004A3740: If global_004F10BA = 0 Then
  loc_004A3784:   var_68 = var_A4
  loc_004A37C3:   Set var_30 = var_A8
  loc_004A37D3:   var_68.Unload var_30
  loc_004A37D8:   var_6C = var_68.Unload var_30
  loc_004A3811: End If
  loc_004A385F: var_30 = var_B0.Screen
  loc_004A3864: var_6C = var_30
  loc_004A3897: var_70 = var_30
  loc_004A38AA: var_74 = var_70
  loc_004A3906: If var_64 <> True Then
  loc_004A390F:   If var_64 = 0 Then GoTo loc_004A3942
  loc_004A3918:   If var_64 = 1 Then GoTo loc_004A3B0B
  loc_004A391E:   GoTo loc_004A3C15
  loc_004A3928: Else
  loc_004A392F:   global_004F1026 = 0
  loc_004A3938:   GoTo loc_004A3F6F
  loc_004A393D:   GoTo loc_004A3C15
  loc_004A3963:   var_68 = frmActVer.LblEdoTransf
  loc_004A3974:   var_68.Caption = "No se halló ningún reporte para ser transferido, oprimir Salir para continuar"
  loc_004A3979:   var_6C = var_68
  loc_004A39C2:   If global_004F10BA Then
  loc_004A39E5:     var_68 = frmActVer.LblEdoTransf
  loc_004A39F6:     var_68.Caption = "No se halló ningún Archivo de Datos para transferir, oprimir Salir para continuar"
  loc_004A39FB:     var_6C = var_68
  loc_004A3A34:   End If
  loc_004A3A55:   var_68 = frmActVer.ChkSelTodo
  loc_004A3A63:   var_68.Enabled = False
  loc_004A3A6B:   var_6C = var_68
  loc_004A3AB7:   If Proc_6_5_487C40 <> True Then
  loc_004A3AC0:     global_004F1026 = 0
  loc_004A3ACE:   Else
  loc_004A3AD5:     var_8024 = Proc_6_6_487D30
  loc_004A3ADF:     If var_8024 = 0 Then
  loc_004A3AE8:       global_004F1026 = 0
  loc_004A3AF6:     Else
  loc_004A3B00:       global_56 = 0
  loc_004A3B06:       GoTo loc_004A3C15
  loc_004A3B2C:       var_68 = frmActVer.LblEdoTransf
  loc_004A3B3D:       var_68.Caption = "Se localizaron los siguientes archivos :        Elige los que desees y oprime tu opción"
  loc_004A3B42:       var_6C = var_68
  loc_004A3B9C:       var_68 = frmActVer.ChkSelTodo
  loc_004A3BAA:       var_68.Enabled = True
  loc_004A3BB2:       var_6C = var_68
  loc_004A3BFE:       If Proc_6_5_487C40 <> True Then
  loc_004A3C07:         global_004F1026 = 0
  loc_004A3C15:       Else
  loc_004A3C15:       End If
  loc_004A3C1C:       global_004F1026 = 1
  loc_004A3C2E:       On Error GoTo loc_004A3F60
  loc_004A3C9C:       If (Dir("c:\vrep\fin.pru", 32) = global_004568F4) Then
  loc_004A3CEB:         var_2C = "c:\vrep\fin.pru"
  loc_004A3D06:         var_6C = EEAMX009.EliminaArchivo(var_D4)
  loc_004A3D42:       End If
  loc_004A3DAA:       If (Dir("c:\vrep\FTPIBMPC.STU", 32) = global_004568F4) Then
  loc_004A3DF9:         var_2C = "c:\vrep\FTPIBMPC.STU"
  loc_004A3E14:         var_6C = EEAMX009.EliminaArchivo(var_DC)
  loc_004A3E50:       End If
  loc_004A3EB8:       If (Dir("c:\vrep\*.tmp", 32) = global_004568F4) Then
  loc_004A3F07:         var_2C = "c:\vrep\*.tmp"
  loc_004A3F22:         var_6C = EEAMX009.EliminaArchivo(var_E4)
  loc_004A3F5E:       End If
  loc_004A3F5E:       GoTo loc_004A3F6F
  loc_004A3F69:       var_805C = Resume(-1)
  loc_004A3F6F:     End If
  loc_004A3F6F:   End If
  loc_004A3F6F: End If
  loc_004A3F6F: ' Referenced from: 004A3F5E
  loc_004A3F6F: Exit Sub
  loc_004A3F7A: GoTo loc_004A3F98
  loc_004A3F97: Exit Sub
  loc_004A3F98: ' Referenced from: 004A3F7A
End Sub

Private Sub Form_Activate() '4A30D0
  loc_004A3134: var_60 = Me.Width
  loc_004A31A1: var_5C = Global.Screen.Width
  loc_004A31CB: If global_004F1000 = 0 Then
  loc_004A31D5: Else
  loc_004A31E0: End If
  loc_004A31EE: Global.Screen.Left = ((var_5C - var_60) / 2)
  loc_004A3200: CheckObj(Err.Number, Me, global_00457E44, 116)
  loc_004A3212: var_60 = Global.Screen.Height
  loc_004A3272: var_5C = Global.Screen.Height
  loc_004A3296: If global_004F1000 = 0 Then
  loc_004A32A0: Else
  loc_004A32AB: End If
  loc_004A32B9: Global.Screen.Top = ((var_5C - var_60) / 2)
  loc_004A32CB: CheckObj(Err.Number, Me, global_00457E44, 124)
  loc_004A3326: frmActVer.LblTitNum.Caption = "Elementos en entidad DS:" & global_004F1040 & global_004F1044
  loc_004A338B: var_58 = frmActVer.lstPro.ListCount
  loc_004A33B5: var_2C = var_58
  loc_004A33D8: frmActVer.LblNumRep.Caption = CStr(Str(var_58))
  loc_004A3435: frmActVer.LblNumRep.Refresh
  loc_004A3469: GoTo loc_004A349F
  loc_004A349E: Exit Sub
  loc_004A349F: ' Referenced from: 004A3469
End Sub

Private Sub cmdSal_Click() '4A2FD0
  loc_004A3012: global_004F1026 = 3
  loc_004A3022: If global_56 = 0 Then
  loc_004A3024:   global_004F1026 = 2
  loc_004A302D: End If
  loc_004A3079: var_800C = Global.Unload frmActVer
  loc_004A30A2: GoTo loc_004A30AE
  loc_004A30AD: Exit Sub
  loc_004A30AE: ' Referenced from: 004A30A2
End Sub

Private Sub lstPro_Click() '4A3FD0
  loc_004A4034: frmActVer.cmdAct.Enabled = True
  loc_004A4074: frmActVer.cmdBorra.Enabled = True
  loc_004A40A3: GoTo loc_004A40AF
  loc_004A40AE: Exit Sub
  loc_004A40AF: ' Referenced from: 004A40A3
End Sub

Public Function FrmActVer_CargaSelect() '4A40D0
  Dim var_60 As Variant
  loc_004A41A4: global_60 = CInt(20)
  loc_004A41AC: var_8004 = CLng(global_60)
  loc_004A41C3: ReDim global_004F1090(0 To CLng(global_60))
  loc_004A42C0: var_44 = &H1A + 4+4
  loc_004A42EC: var_3C = Mid$(global_004F1064 & global_004F1048 & global_004F1080 & "." & frmActVer.lstPro.List(0), &H22, 4)
  loc_004A4305: Set var_60 = frmActVer.lstPro
  loc_004A4315: var_13C = var_60
  loc_004A431B: var_138 = var_60.ListCount
  loc_004A4368: If (var_24 < var_138) Then
  loc_004A437C:   Set var_60 = frmActVer.lstPro
  loc_004A4390:   var_13C = var_60
  loc_004A4396:   var_24 = var_60.Selected
  loc_004A43D8:   If var_138 Then
  loc_004A43EC:     Set var_60 = frmActVer.lstPro
  loc_004A43FD:     var_13C = var_60
  loc_004A44BE:     If (Mid(var_60.List(var_24), 1, 4) = "Elim") Then GoTo loc_004A4F3A
  loc_004A44DB:     If InStr(1, global_004F1034, "TSO31", 0) > 0 Then
  loc_004A44EF:       Set var_60 = frmActVer.lstPro
  loc_004A4500:       var_13C = var_60
  loc_004A457C:       var_30 = global_004F1064 & global_004F1048 & global_004F1080 & "." & var_60.List(var_24)
  loc_004A467A:       var_48 = Right(frmActVer.lstPro.List(var_24), 6) + Right(global_004F1080, 2) + ".CXT"
  loc_004A46B5:     Else
  loc_004A474E:       Set var_60 = frmActVer.lstPro
  loc_004A475F:       var_13C = var_60
  loc_004A4805:       var_30 = global_004F1064 + Trim(Mid(global_004F1034, 4, 1)) + global_004F1080 + "." + var_60.List(var_24)
  loc_004A485E:       Set var_60 = frmActVer.lstPro
  loc_004A486F:       var_13C = var_60
  loc_004A4986:       var_48 = Right(var_60.List(var_24), 6) + Mid(frmActVer.lstPro.List(var_24), 7, 2) + ".CXT"
  loc_004A49D1:     End If
  loc_004A4A6A:     If (Mid$(var_30, &H22(-2), 2) = ".U") + 1 Then
  loc_004A4A9B:       var_3C = Mid$(var_30, &H22, 4)
  loc_004A4ABD:       If InStr(1, global_004F1064, "SUEPAGP.DAT", 0) Then
  loc_004A4B11:         var_48 = "SP" & Mid$(var_30, (var_44 - 2), 6) & ".C" & CStr(global_004F1060 + 1 + 1 + 1+1)
  loc_004A4B34:       Else
  loc_004A4B6E:         var_54 = 2 & var_44 & var_30
  loc_004A4BA6:         var_48 = 2 & var_38 & var_30 & ".C" & CStr(global_004F1060 + 1 + 1 + 1+1)
  loc_004A4BD6:       End If
  loc_004A4BE0:       If global_004F1060 + 1 < 99 Then
  loc_004A4BEC:         global_004F1060 = global_004F1060 + 1 + 1+1
  loc_004A4BF4:       Else
  loc_004A4BFB:       End If
  loc_004A4BFB:     End If
  loc_004A4C1D:     var_168 = InStr(1, var_30, "EEBMX9", 0)
  loc_004A4C2D:     If (InStr(1, var_30, "EEBMX9", 0) Or InStr(1, var_30, "EEAMX9", 0)) Then
  loc_004A4C43:       var_80A4 = InStr(1, var_30, "COP.DAT", 0)
  loc_004A4C59:       var_6C = (var_80A4 - 4)
  loc_004A4C85:       var_84 = Mid(var_30, 1, (var_80A4 - 4))
  loc_004A4C90:       var_10C = "CL."
  loc_004A4CAB:       var_11C = "COP.DAT"
  loc_004A4CB7:       If global_004F1090 Then
  loc_004A4CBD:         If global_004F1090 = 1 Then
  loc_004A4CCD:           If global_004F1090 >= global_004F1090 Then
  loc_004A4CCF:             var_80A8 = Err.Raise
  loc_004A4CD5:           End If
  loc_004A4CDC:           var_16C = edi*4
  loc_004A4CE4:         Else
  loc_004A4CE4:         End If
  loc_004A4CEA:         var_16C = Err.Raise
  loc_004A4CF0:       End If
  loc_004A4D86:       var_4C = var_4C(1)
  loc_004A4D89:       If var_84 + var_10C + var_11C Then
  loc_004A4D8F:         If var_84 + var_10C + var_11C = 1 Then
  loc_004A4DA4:           If var_84 + var_10C + var_11C >= var_84 + var_10C + var_11C Then
  loc_004A4DA6:             var_80BC = Err.Raise
  loc_004A4DB8:           End If
  loc_004A4DBD:         Else
  loc_004A4DBD:         End If
  loc_004A4DBD:         var_80C0 = Err.Raise
  loc_004A4DC9:       End If
  loc_004A4DD1:       global_004F1090 = var_30
  loc_004A4DE4:       var_4C = var_4C(1)
  loc_004A4DE9:     Else
  loc_004A4DF1:       If global_004F1090 Then
  loc_004A4DF7:         If global_004F1090 = 1 Then
  loc_004A4E07:           If global_004F1090 >= global_004F1090 Then
  loc_004A4E09:             var_80C4 = Err.Raise
  loc_004A4E15:           End If
  loc_004A4E1E:         Else
  loc_004A4E1E:         End If
  loc_004A4E1E:         var_80C8 = Err.Raise
  loc_004A4E2A:       End If
  loc_004A4E4C:       var_4C = var_4C(1)
  loc_004A4E51:     End If
  loc_004A4E55:     If var_4C(1) > 100 Then GoTo loc_004A4F43
  loc_004A4E5B:     var_EC = var_4C(1)
  loc_004A4E7A:     var_170 = global_60
  loc_004A4E89:     If (var_4C(1) > global_60) Then
  loc_004A4EB6:       var_80D0 = var_170 + 10
  loc_004A4EB9:       var_80D4 = CLng(var_80D0)
  loc_004A4ED0:       ReDim Preserve var_30(0 To CLng(var_80D0))
  loc_004A4F12:       var_170 = var_170 + 10
  loc_004A4F21:     End If
  loc_004A4F24:   End If
  loc_004A4F32:   var_24 = var_24(1)
  loc_004A4F35:   GoTo loc_004A42F7
  loc_004A4F41:   GoTo loc_004A4F50
  loc_004A4F4A: End If
  loc_004A4F4D: var_18 = var_4C
  loc_004A4F50: ' Referenced from: 004A4F41
  loc_004A4F55: GoTo loc_004A4FC0
  loc_004A4FBF: Exit Function
  loc_004A4FC0: ' Referenced from: 004A4F55
End Function

Public Function frmActver_EliminaSEL(numRep) '4A5020
  Dim var_30 As Variant
  Dim var_D4 As Variant
  loc_004A50AC: If var_18 < numRep Then
  loc_004A50C0:   Set var_30 = frmActVer.LblEdoTransf
  loc_004A50CE:   var_98 = " Eliminando... "
  loc_004A50E2:   var_40 = Chr(10)
  loc_004A50F0:   If global_004F1090 Then
  loc_004A50F6:     If global_004F1090 = 1 Then
  loc_004A5106:       If (var_18 - global_004F1090(20)) >= global_004F1090(16) Then
  loc_004A5108:         var_8004 = Err.Raise
  loc_004A5114:       End If
  loc_004A511D:     Else
  loc_004A511D:     End If
  loc_004A511D:     var_8008 = Err.Raise
  loc_004A5129:   End If
  loc_004A516D:   var_30.Caption = CStr(var_98 + var_40 + ecx+eax)
  loc_004A51CA:   frmActVer.LblEdoTransf.Refresh
  loc_004A5206:   If global_004F1090 Then
  loc_004A520C:     If global_004F1090 = 1 Then
  loc_004A521C:       If (var_18 - global_004F1090(20)) >= global_004F1090(16) Then
  loc_004A521E:         var_8014 = Err.Raise
  loc_004A5227:       End If
  loc_004A5230:     Else
  loc_004A5230:     End If
  loc_004A5230:     var_8018 = Err.Raise
  loc_004A5239:   End If
  loc_004A5244:   var_28(12) = global_004F1090(12) + var_8018
  loc_004A5249:   var_D4 = frmActVer.FrmTransf_BorraDSN(global_004F1090(12)+var_8018)
  loc_004A5277:   If var_D4 = 0 Then
  loc_004A527D:     var_801C = Proc_6_5_487C40
  loc_004A5285:     If var_801C = 0 Then GoTo loc_004A5448
  loc_004A5296:     var_98 = "ERROR AL ELIMINAR ARCHIVO"
  loc_004A52A6:     var_40 = Chr(10)
  loc_004A52B4:     If global_004F1090 Then
  loc_004A52BA:       If global_004F1090 = 1 Then
  loc_004A52CA:         If (var_18 - global_004F1090(20)) >= global_004F1090(16) Then
  loc_004A52CC:           var_8020 = Err.Raise
  loc_004A52D8:         End If
  loc_004A52E6:       Else
  loc_004A52E6:       End If
  loc_004A52E6:       var_8024 = Err.Raise
  loc_004A52F2:     End If
  loc_004A53C2:     var_40 = "Control de Reportes"
  loc_004A53CE:     var_98 = var_98 + var_40 + ecx+eax + Chr(10) + "DESEA ABORTAR EL PROCESO ?"
  loc_004A53F0:     MsgBox(var_98, 20, var_40, var_50, var_60)
  loc_004A53F8:     var_803C = MsgBox(var_98, 20, var_40, var_50, var_60)
  loc_004A541B:     If var_803C = 6 Then GoTo loc_004A543E
  loc_004A5426:     If Proc_6_5_487C40 <> True Then GoTo loc_004A5448
  loc_004A5428:   End If
  loc_004A5436:   var_18 = var_18(1)
  loc_004A5439:   GoTo loc_004A50A2
  loc_004A543E:   var_8044 = Proc_6_5_487C40
  loc_004A5443:   var_8048 = Proc_6_6_487D30
  loc_004A5448:   global_004F1028 = 0
  loc_004A5453: Else
  loc_004A545A: End If
  loc_004A545F: GoTo loc_004A54A4
  loc_004A54A3: Exit Function
  loc_004A54A4: ' Referenced from: 004A545F
End Function

Public Function FrmTransf_BorraDSN(nomDSN) '4A54E0
  Dim Me As Variant
  Dim var_24 As Screen
  loc_004A555F: var_18 = "DELETE '" & nomDSN & "'@E"
  loc_004A5579: If Proc_6_4_487960 <> True Then
  loc_004A5587:   var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A5591:   var_8010 = Proc_489710(Me, 0, 0)
  loc_004A55E9:   Global.Screen.MousePointer = 0
  loc_004A560F: Else
  loc_004A5613:   var_8018 = Proc_6_9_488950
  loc_004A563F:   If (var_34 = False) Then
  loc_004A5649:     var_20 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A5653:     var_8020 = Proc_489710(0, , )
  loc_004A568A:     var_24 = Global.Screen
  loc_004A56B2:     If var_24 >= 0 Then GoTo loc_004A5601
  loc_004A56B8:     GoTo loc_004A55F2
  loc_004A56BD:   End If
  loc_004A56C8:   var_8028 = Proc_6_10_488B20
  loc_004A56D5:   var_20 = "DELETED"
  loc_004A56F7:   If Proc_6_1_487260 + 1 Then
  loc_004A5701:     var_20 = "ERROR AL FIRMARSE A TSO"
  loc_004A570B:     var_8030 = Proc_489710(, , )
  loc_004A5742:     var_24 = Global.Screen
  loc_004A576A:     If var_24 >= 0 Then GoTo loc_004A5601
  loc_004A5770:     GoTo loc_004A55F2
  loc_004A5775:   End If
  loc_004A577C: End If
  loc_004A5781: GoTo loc_004A57A9
  loc_004A57A8: Exit Function
  loc_004A57A9: ' Referenced from: 004A5781
End Function

Public Sub FrmActVer_MarcaElim() '4A57E0
  loc_004A5848: var_2C = frmActVer.lstPro.ListCount
  loc_004A5881: If (var_18 < var_2C) Then
  loc_004A58A4:   var_18 = frmActVer.lstPro.Selected
  loc_004A58D2:   If var_2C Then
  loc_004A5947:     frmActVer.lstPro.List(var_18) = "Elim*" & frmActVer.lstPro.List(var_18)
  loc_004A5988:   End If
  loc_004A5992:   var_18 = var_18(1)
  loc_004A5995:   GoTo loc_004A5829
  loc_004A599A: End If
  loc_004A599F: GoTo loc_004A59C5
  loc_004A59C4: Exit Sub
  loc_004A59C5: ' Referenced from: 004A599F
End Sub

Private Sub Proc_9_11_4A1250() '4A1250
  Dim var_40 As Variant
  Dim var_C4 As Variant
  loc_004A12B4: If arg_10 Then
  loc_004A12BC:   var_28 = global_004F107C
  loc_004A12C1: Else
  loc_004A12C8: End If
  loc_004A1322: var_8004 = CInt(InStr(vbNull, Trim(arg_C), "NONVSAM", 0))
  loc_004A1334: var_24 = var_8004
  loc_004A133F: If var_8004 > 0 Then
  loc_004A134C:   If arg_10 = 0 Then
  loc_004A1358:     var_24 = var_8004(1)
  loc_004A135B:   End If
  loc_004A13A3:   var_800C = (Mid$(arg_C, var_8004(7), 4) = "EE1N")
  loc_004A1415:   If (Mid$(arg_C, var_8004(6), 4) = "EE1N") + 1 Then
  loc_004A1515:     If (Mid(Trim(Trim(Mid$(arg_C, var_8004(6), 44))), 1, 4) = "----") Then
  loc_004A1569:       var_30 = Trim(Mid$(arg_C, var_8004(7), 44))
  loc_004A1582:     End If
  loc_004A1599:     If InStr(1, var_30, ".DAT", 0) Then
  loc_004A15A7:       If global_004F10BA = 0 Then GoTo loc_004A1A4C
  loc_004A15CB:       var_D0 = InStr(1, var_30, ".EEBBP001", 0)
  loc_004A15F0:       If ((InStr(1, var_30, ".EEBBP001", 0) Or InStr(1, var_30, ".EEBMX9DS", 0)) Or InStr(1, var_30, ".EEAMX9DS", 0)) Then
  loc_004A163F:         Set var_40 = frmActVer.lstPro
  loc_004A1660:         var_C4 = var_40
  loc_004A1697:         var_40.AddItem CStr(Mid(var_30, 15, 40)), 10
  loc_004A16D6:       End If
  loc_004A16EE:       global_004F1096 = global_004F1096 + 1+1
  loc_004A171A:       Set var_40 = frmBarMsj.lblBarMsj
  loc_004A172D:       var_C4 = var_40
  loc_004A1747:       var_88 = global_004F1096
  loc_004A178D:       var_40.Caption = CStr(" Leyendo Reportes,  esperar un momento ( num rep) .." + Str(global_004F1096))
  loc_004A17FD:       frmBarMsj.lblBarMsj.Refresh
  loc_004A1829:     Else
  loc_004A1831:       If global_004F10BA = 0 Then
  loc_004A18CC:         frmActVer.lstPro.AddItem CStr(Mid(var_30, 15, 40)), 10
  loc_004A1923:         global_004F1096 = global_004F1096 + 1+1
  loc_004A1976:         var_88 = global_004F1096
  loc_004A19B4:         frmBarMsj.lblBarMsj.Caption = CStr(" Leyendo Reportes,  esperar un momento ( num rep) .." + Str(global_004F1096))
  loc_004A1A1B:         Set var_40 = frmBarMsj.lblBarMsj
  loc_004A1A26:         var_40.Refresh
  loc_004A1A4C:       End If
  loc_004A1A4C:     End If
  loc_004A1A58:     If global_004F1096 > 500 Then GoTo loc_004A1BA5
  loc_004A1A67:     If global_004F1096 > global_004F1094 Then
  loc_004A1A73:       global_004F1094 = global_004F1094 + 30+30
  loc_004A1A79:     End If
  loc_004A1A79:   End If
  loc_004A1A88:   GoTo loc_004A12CE
  loc_004A1A8D: End If
  loc_004A1B36: var_8058 = (Trim(arg_C) = global_004568F4)
  loc_004A1B4B: If var_8058 = 0 Then
  loc_004A1B55:   If CInt(InStr(var_40, Trim(arg_C), "READY", 0)) <= var_8058 Then
  loc_004A1B62:     If var_24(3) <= 8 Then
  loc_004A1B6E:     End If
  loc_004A1B8E:     If InStr((var_28 - 8), arg_C, "***", 0) > 0 Then
  loc_004A1BA0:       GoTo loc_004A1CBF
  loc_004A1C2A:       var_50 = "Control de Reportes"
  loc_004A1C36:       var_88 = "SE HA EXCEDIDO LA CAPACIDAD DE LA LISTA" + Chr(10)
  loc_004A1C58:       MsgBox(var_88, 16, var_50, var_60, var_70)
  loc_004A1C60:       var_8068 = MsgBox(var_88, 16, var_50, var_60, var_70)
  loc_004A1C80:     End If
  loc_004A1C80:   End If
  loc_004A1C80: End If
  loc_004A1C85: GoTo loc_004A1CBF
  loc_004A1CBE: Exit Sub
  loc_004A1CBF: ' Referenced from: 004A1BA0
  loc_004A1CBF: ' Referenced from: 004A1C85
End Sub

Private Sub Proc_9_12_4A1D00() '4A1D00
  Dim var_70 As Variant
  Dim var_60 As Variant
  Dim global_004A2687 As Variant
  Dim var_3C As Variant
  Dim var_D4 As Variant
  loc_004A1D85: global_004F1094 = &H1E
  loc_004A1DA4: var_8008 = InStr(1, global_004F1034, "TSO1", 0)
  loc_004A1E4C: If (Trim(Mid(Trim(global_004F1034), 4, 1)) = global_00458C18) Then
  loc_004A1E56:   var_2C = "UCATR1.COBRA.ZSER"
  loc_004A1E99:   If (global_004F1064 = global_0045B848) <> (global_004F1064 = "D") Then GoTo loc_004A2090
  loc_004A1EAD:   var_2C = "UCAT.COBRA.VIMSS23"
  loc_004A1EB4: Else
  loc_004A1ED3:   var_50 = Trim(global_004F1034)
  loc_004A1F3E:   var_60 = var_50
  loc_004A1F4A:   If (Trim(Mid(var_50, 4, 1)) = global_0045B830) Then
  loc_004A1F5A:     var_2C = "UCATR2.COBRANPR.ZSERSMS"
  loc_004A1F61:   Else
  loc_004A1FEB:     var_70 = CInt(1)
  loc_004A1FF7:     If (Trim(Mid(Trim(global_004F1034), 4, 1)) = global_0045B8A8) Then
  loc_004A2001:       var_2C = "UCATR3.COBRA.ZSER"
  loc_004A2044:       If (global_004F1064 = global_0045B848) <> (global_004F1064 = "D") Then GoTo loc_004A2090
  loc_004A2054:       var_2C = "UCAT.COBRA.IMSS19"
  loc_004A2058:     Else
  loc_004A2078:       If InStr(1, global_004F1034, "TSO31", 0) <= 0 Then GoTo loc_004A25A9
  loc_004A208C:       var_2C = "UCATR1.DESA.COBRA"
  loc_004A208E:       GoTo loc_004A2096
  loc_004A2096:     End If
  loc_004A2096:   End If
  loc_004A2096: End If
  loc_004A2096: ' Referenced from: 004A208E
  loc_004A20B2: If InStr(1, global_004F1034, "TSO31", 0) > 0 Then
  loc_004A20E1:   var_18 = global_004F1064 & global_004F1048 & global_004F1080
  loc_004A20F1: Else
  loc_004A2194:   var_18 = global_004F1064 & global_004F1048 + var_70 + global_004F1080
  loc_004A21B8: End If
  loc_004A2232: global_004F107C = Len("LISTCAT CATALOG('" & var_2C & "') LEVEL('" & var_18 & "') NONVSAM@E")
  loc_004A2239: var_8060 = Proc_6_4_487960
  loc_004A2241: If var_8060 = 0 Then
  loc_004A224B:   var_40 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A2251:   var_8064 = Proc_489710(var_70, Mid(global_004F1034, 4, 1), 0)
  loc_004A2265: Else
  loc_004A2269:   var_8068 = Proc_6_9_488950
  loc_004A22A5:   If (1 = False) Then
  loc_004A22AF:     var_40 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A22B5:     var_8070 = Proc_489710(global_004A2687, 0, 0)
  loc_004A22C9:   Else
  loc_004A22DA:     var_8074 = Proc_6_10_488B20
  loc_004A22E7:     var_40 = "INVALID COMMAND"
  loc_004A230F:     If (Proc_6_1_487260 = True) Then
  loc_004A2316:       GoTo loc_004A2248
  loc_004A231B:     End If
  loc_004A2323:     var_40 = "NOT FOUND"
  loc_004A234B:     If (Proc_6_1_487260 = True) Then
  loc_004A235A:     Else
  loc_004A235D:       var_3C = True
  loc_004A2363:       If True Then
  loc_004A2376:         If Proc_6_12_488D00 <> True Then GoTo loc_004A2243
  loc_004A2391:         var_8084 = frmActVer.Proc_9_11_4A1250
  loc_004A23A5:         var_14 = var_D4
  loc_004A23A8:         var_40 = "@E"
  loc_004A23CA:         If Proc_6_4_487960 + 1 Then GoTo loc_004A255F
  loc_004A23D4:         var_808C = Proc_6_9_488950
  loc_004A2408:         If (1 = False) Then GoTo loc_004A245D
  loc_004A241B:         var_8094 = Proc_6_10_488B20
  loc_004A242C:         GoTo loc_004A2360
  loc_004A2431:       End If
  loc_004A2439:       var_40 = "@C"
  loc_004A245B:       If Proc_6_4_487960 + 1 Then
  loc_004A2465:         var_40 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A246B:         var_809C = Proc_489710("LISTCAT CATALOG('" & var_2C & "') LEVEL('" & var_18 & "') NONVSAM@E", var_3C, 5)
  loc_004A2483:       Else
  loc_004A2487:         var_80A0 = Proc_6_9_488950
  loc_004A24BB:         If (1 = False) Then
  loc_004A24C5:           var_40 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A24CB:           var_80A8 = Proc_489710(global_004A2687, global_004A2687, global_004A2687)
  loc_004A24E3:         Else
  loc_004A24F4:           var_80AC = Proc_6_10_488B20
  loc_004A2501:           var_40 = "@E"
  loc_004A2523:           If Proc_6_4_487960 + 1 Then GoTo loc_004A24BD
  loc_004A2529:           var_80B4 = Proc_6_9_488950
  loc_004A255D:           If (1 = False) Then
  loc_004A2567:             var_40 = "ERROR EN LAS FUNCIONES DEL EMULADOR"
  loc_004A256D:             GoTo loc_004A24CB
  loc_004A2572:           End If
  loc_004A2583:           var_80BC = Proc_6_10_488B20
  loc_004A2596:           If global_004F1096 = 0 Then
  loc_004A25A4:             GoTo loc_004A266C
  loc_004A25EA:             var_50 = "Control de Reportes"
  loc_004A25F6:             var_98 = "ERROR EN CONFIGURACIÒN DE TSO"
  loc_004A2618:             MsgBox(var_98, 48, var_50, var_60, var_70)
  loc_004A2620:             var_80C0 = MsgBox(var_98, 48, var_50, var_60, var_70)
  loc_004A2634:             var_70 = var_60
  loc_004A2639:           End If
  loc_004A263E:           GoTo loc_004A266C
  loc_004A266B:           Exit Sub
  loc_004A266C:         End If
  loc_004A266C:       End If
  loc_004A266C:     End If
  loc_004A266C:   End If
  loc_004A266C: End If
  loc_004A266C: ' Referenced from: 004A25A4
  loc_004A266C: ' Referenced from: 004A263E
End Sub
