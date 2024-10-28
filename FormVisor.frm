VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWow64\comdlg32.ocx"
Begin VB.Form FormVisor
  Caption = "Visor de Reportes"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 1485
  ClientTop = 3975
  ClientWidth = 9660
  ClientHeight = 6690
  BeginProperty Font
    Name = "Courier New"
    Size = 3.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  PaletteMode = 1
  Begin VB.TextBox TxtCambiaHoja
    Left = 4455
    Top = 6120
    Width = 870
    Height = 450
    TabIndex = 13
    MaxLength = 4
    BeginProperty Font
      Name = "Courier New"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Timer TimerLeer
    Enabled = 0   'False
    Interval = 15
    Left = 5940
    Top = 45
  End
  Begin VB.ComboBox ComArch
    Style = 2
    Left = 120
    Top = 120
    Width = 2175
    Height = 315
    TabIndex = 1
    Sorted = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox TexVisor
    Left = 120
    Top = 585
    Width = 9495
    Height = 5415
    TabIndex = 0
    MultiLine = -1  'True
    ScrollBars = 3
    HideSelection = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Courier New"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSCommand SSCMDBusca
    Left = 1125
    Top = 6120
    Width = 855
    Height = 495
    TabIndex = 12
    OleObjectBlob = "FormVisor.frx":0000
  End
  Begin Threed.SSCommand SSCMDSalir
    Left = 2025
    Top = 6120
    Width = 855
    Height = 495
    TabIndex = 11
    OleObjectBlob = "FormVisor.frx":0B7A
  End
  Begin Threed.SSCommand SSComChico
    Left = 8685
    Top = 45
    Width = 450
    Height = 450
    TabIndex = 10
    OleObjectBlob = "FormVisor.frx":0BE6
  End
  Begin Threed.SSCommand SSComGra
    Left = 8235
    Top = 45
    Width = 450
    Height = 450
    TabIndex = 9
    OleObjectBlob = "FormVisor.frx":1098
  End
  Begin MSComDlg.CommonDialog CDImprime
    OleObjectBlob = "FormVisor.frx":154A
    Left = 5355
    Top = 5985
  End
  Begin Threed.SSCommand SSComFirst
    Left = 5880
    Top = 6120
    Width = 850
    Height = 500
    TabIndex = 6
    OleObjectBlob = "FormVisor.frx":15AE
  End
  Begin Threed.SSCommand SSComLast
    Left = 8500
    Top = 6120
    Width = 850
    Height = 500
    TabIndex = 5
    OleObjectBlob = "FormVisor.frx":23F7
  End
  Begin Threed.SSCommand SSComSig
    Left = 7620
    Top = 6120
    Width = 850
    Height = 500
    TabIndex = 4
    OleObjectBlob = "FormVisor.frx":3239
  End
  Begin Threed.SSCommand SSComImp
    Left = 240
    Top = 6120
    Width = 850
    Height = 500
    TabIndex = 3
    OleObjectBlob = "FormVisor.frx":41EB
  End
  Begin Threed.SSCommand SSComPrev
    Left = 6750
    Top = 6120
    Width = 850
    Height = 500
    TabIndex = 2
    OleObjectBlob = "FormVisor.frx":4D1D
  End
  Begin VB.Label LabIr
    Caption = "Ir  a :"
    Left = 3645
    Top = 6120
    Width = 735
    Height = 495
    TabIndex = 8
    BeginProperty Font
      Name = "Times New Roman"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LContPag
    BackColor = &HFFFFFF&
    Left = 6525
    Top = 90
    Width = 1560
    Height = 375
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Menu Ofile
    Caption = "&Archivo"
    NegotiatePosition = 2
    Begin VB.Menu OFabrir
      Caption = "&Abrir..."
      Shortcut = 15
    End
    Begin VB.Menu OFImp
      Caption = "&Imprimir..."
      Shortcut = 16
    End
    Begin VB.Menu separa
      Index = 2
      Caption = "-"
    End
    Begin VB.Menu OFsalir
      Caption = "&Salir"
      Shortcut = 17
    End
  End
  Begin VB.Menu OEditar
    Caption = "&Editar"
    Begin VB.Menu OEbusCad
      Caption = "B&uscar Palabra(s)..."
      Shortcut = 2
    End
    Begin VB.Menu OEsigOcu
      Caption = "Si&guiente Ocurrencia   "
      Enabled = 0   'False
      Shortcut = 29
    End
    Begin VB.Menu separa3
      Caption = "-"
    End
    Begin VB.Menu OEselTod
      Visible = 0   'False
      Caption = "Se&leccionar Todo"
      Shortcut = 11
    End
    Begin VB.Menu OEcop
      Visible = 0   'False
      Caption = "Co&piar"
      Enabled = 0   'False
      Shortcut = 3
    End
  End
  Begin VB.Menu OConf
    Caption = "&Opciones"
    Begin VB.Menu MnuOpRepLGP
      Caption = "Mostrar Reportes de &LGP"
    End
    Begin VB.Menu MnuOpTodos
      Caption = "Mostrar &Todos los Reportes"
    End
    Begin VB.Menu MnuOpEspec
      Caption = "Mostrar por &Especificación"
    End
    Begin VB.Menu OCBuscar
      Visible = 0   'False
      Caption = "Actualizar ruta de &búsqueda..."
    End
    Begin VB.Menu separa2
      Index = 0
      Caption = "-"
    End
    Begin VB.Menu OCCorte
      Visible = 0   'False
      Caption = "&Corte de Pagina..."
    End
  End
End

Attribute VB_Name = "FormVisor"


Private Sub TxtCambiaHoja_KeyPress(KeyAscii As Integer) '4E7310
  loc_004E737A: If (KeyAscii <> 8) <> ((KeyAscii > 57) Or (KeyAscii < 48)) Then
  loc_004E7381: End If
End Sub

Private Sub TxtCambiaHoja_KeyUp(KeyCode As Integer, Shift As Integer) '4E73B0
  Dim var_1C As Variant
  Dim var_50 As TextBox
  loc_004E744B: If (KeyCode <> 8) = (((KeyCode > 107) Or (KeyCode < 96)) And ((KeyCode > 57) Or (KeyCode < 48))) Then
  loc_004E7498:   var_8004 = CDbl(Val(FormVisor.TxtCambiaHoja.Text))
  loc_004E74A8:   var_6C = global_56
  loc_004E74BA:   GoTo loc_004E74BE
  loc_004E74D5:   If edi Then
  loc_004E74E9:     Set var_1C = FormVisor.TxtCambiaHoja
  loc_004E74F8:     var_50 = var_1C
  loc_004E74FB:     var_34 = global_56
  loc_004E7522:     var_1C.Text = CStr(Str(global_56))
  loc_004E755B:   End If
  loc_004E759C:   var_8008 = CDbl(Val(FormVisor.TxtCambiaHoja.Text))
  loc_004E75B4:   GoTo loc_004E75B8
  loc_004E75D1:   If eax Then
  loc_004E75ED:     FormVisor.TxtCambiaHoja.Text = global_00458C18
  loc_004E7614:   End If
  loc_004E7668:   global_52 = CInt(Val(FormVisor.TxtCambiaHoja.Text))
  loc_004E7683:   If global_52 = 1 Then
  loc_004E7688:     var_8010 = FormVisor.SSComFirst_UnknownEvent_9
  loc_004E76BA:     If var_8014 >= 0 Then GoTo loc_004E77C0
  loc_004E76CC:     CheckObj(var_8014, Me, global_004580F4, 1928)
  loc_004E76D3:   End If
  loc_004E76EA:   global_52 = (var_8014 - 1)
  loc_004E7721:   FormVisor.SSComSig.Visible = True
  loc_004E7766:   FormVisor.SSComLast.Visible = True
  loc_004E7788:   var_34 = True
  loc_004E77A8:   FormVisor.SSComSig.Value
  loc_004E77B5: Else
  loc_004E77B9:   If %e09 <> 8 Then
  loc_004E77C0:   End If
  loc_004E77C0: End If
  loc_004E77CD: GoTo loc_004E77EB
  loc_004E77EA: Exit Sub
  loc_004E77EB: ' Referenced from: 004E77CD
End Sub

Private Sub OFImp_Click() '4E40B0
  loc_004E40F3: var_8004 = FormVisor.SSComImp_UnknownEvent_9
End Sub

Private Sub SSComChico_UnknownEvent_9 '4E4390
  loc_004E43E8: If global_004F109A > 4 Then
  loc_004E4461:   FormVisor.TexVisor.Font.Size = ((global_004F109A - 1) - 1)
  loc_004E449C:   var_8004 = FormVisor.Proc_16_38_4E09D0(global_52, var_18)
  loc_004E44A9:   FormVisor.TexVisor.Text = var_18
  loc_004E44DB: End If
  loc_004E44E3: GoTo loc_004E4502
  loc_004E4501: Exit Sub
  loc_004E4502: ' Referenced from: 004E44E3
End Sub

Private Sub SSComGra_UnknownEvent_9 '4E4980
  loc_004E49D8: If global_004F109A < 20 Then
  loc_004E4A51:   FormVisor.TexVisor.Font.Size = global_004F109A + 1+1+1
  loc_004E4A8C:   var_8004 = FormVisor.Proc_16_38_4E09D0(global_52, var_18)
  loc_004E4A99:   FormVisor.TexVisor.Text = var_18
  loc_004E4ACB: End If
  loc_004E4AD3: GoTo loc_004E4AF2
  loc_004E4AF1: Exit Sub
  loc_004E4AF2: ' Referenced from: 004E4AD3
End Sub

Private Sub SSComLast_UnknownEvent_9 '4E5C80
  Dim var_1C As Variant
  Dim var_60 As TextBox
  loc_004E5CD6: If global_68 > 0 Then
  loc_004E5CE6:   global_52 = (global_56 - 1)
  loc_004E5CEC: Else
  loc_004E5CF0:   global_52 = global_56
  loc_004E5CF4: End If
  loc_004E5D18: var_8004 = FormVisor.Proc_16_38_4E09D0(global_52, var_18)
  loc_004E5D25: FormVisor.TexVisor.Text = var_18
  loc_004E5D5D: If global_004F10A8 Then
  loc_004E5D78:   FormVisor.TexVisor.SetFocus
  loc_004E5DA7:   global_004F10A8 = 0
  loc_004E5DB0:   If global_004F109C Then
  loc_004E5E09:     global_004F10A6 = InStr(1, FormVisor.TexVisor.Text, global_004F10A0, 1)
  loc_004E5E1E:   End If
  loc_004E5E48:   FormVisor.TexVisor.SelStart = (global_004F10A6 - 1)
  loc_004E5E7D:   Set var_1C = FormVisor.TexVisor
  loc_004E5E81:   var_60 = var_1C
  loc_004E5E97:   var_1C.SelLength = Len(global_004F10A0)
  loc_004E5EC0: Else
  loc_004E5EC9: End If
  loc_004E5EE2: var_8014 = FormVisor.Proc_16_35_4E0260(FormVisor.TexVisor.Text)
  loc_004E5EEF: FormVisor.LContPag.Caption = FormVisor.TexVisor.Text
  loc_004E5F27: Set var_1C = FormVisor.TxtCambiaHoja
  loc_004E5F36: var_60 = var_1C
  loc_004E5F39: var_44 = global_52
  loc_004E5F6E: var_1C.Text = CStr(Trim(Str(global_52)))
  loc_004E5FE7: FormVisor.SSComLast.Visible = var_44
  loc_004E602B: FormVisor.SSComSig.Visible = var_44
  loc_004E603B: If global_52 > 1 Then
  loc_004E607B:   FormVisor.SSComPrev.Visible = True
  loc_004E60C0:   FormVisor.SSComFirst.Visible = True
  loc_004E60CB: End If
  loc_004E60D7: GoTo loc_004E60FF
  loc_004E60FE: Exit Sub
  loc_004E60FF: ' Referenced from: 004E60D7
End Sub

Private Sub SSComPrev_UnknownEvent_9 '4E6130
  loc_004E618B: If global_52 > 1 Then
  loc_004E61BF:   var_8004 = FormVisor.Proc_16_38_4E09D0(global_52, var_18)
  loc_004E61CC:   FormVisor.TexVisor.Text = var_18
  loc_004E6207:   If global_004F10A8 Then
  loc_004E620F:     GoTo loc_004E6217
  loc_004E6211:   End If
  loc_004E6217:   ' Referenced from: 004E620F
  loc_004E6235:   var_8008 = FormVisor.Proc_16_35_4E0260(var_18)
  loc_004E6245:   FormVisor.LContPag.Caption = var_18
  loc_004E628D:   var_44 = global_52
  loc_004E62C5:   FormVisor.TxtCambiaHoja.Text = CStr(Trim(Str(global_52)))
  loc_004E6343:   FormVisor.SSComSig.Visible = True
  loc_004E6388:   FormVisor.SSComLast.Visible = True
  loc_004E6391: Else
  loc_004E639D: End If
  loc_004E63A2: If global_52 = 1 Then
  loc_004E63E5:   FormVisor.SSComPrev.Visible = var_44
  loc_004E6429:   FormVisor.SSComFirst.Visible = var_44
  loc_004E6438:   If global_52 < global_56 Then
  loc_004E647C:     FormVisor.SSComSig.Visible = True
  loc_004E64C1:     FormVisor.SSComLast.Visible = True
  loc_004E64C8:   End If
  loc_004E64C8: End If
  loc_004E64D4: GoTo loc_004E64FC
  loc_004E64FB: Exit Sub
  loc_004E64FC: ' Referenced from: 004E64D4
End Sub

Private Sub SSComSig_UnknownEvent_9 '4E6530
  Dim var_1C As Variant
  Dim var_60 As TextBox
  loc_004E6589: If global_52 < global_56 Then
  loc_004E65C1:   var_8004 = FormVisor.Proc_16_38_4E09D0(global_52 + 1+1, var_18)
  loc_004E65CE:   FormVisor.TexVisor.Text = var_18
  loc_004E6606:   If global_004F10A8 Then
  loc_004E6621:     FormVisor.TexVisor.SetFocus
  loc_004E6650:     global_004F10A8 = 0
  loc_004E6659:     If global_004F109C Then
  loc_004E66B2:       global_004F10A6 = InStrB(1, FormVisor.TexVisor.Text, global_004F10A0, 0)
  loc_004E66C7:     End If
  loc_004E66F0:     FormVisor.TexVisor.SelStart = (global_004F10A6 - 1)
  loc_004E6725:     Set var_1C = FormVisor.TexVisor
  loc_004E6730:     var_60 = var_1C
  loc_004E6740:     var_1C.SelLength = Len(global_004F10A0)
  loc_004E6769:   Else
  loc_004E6772:   End If
  loc_004E678B:   var_8014 = FormVisor.Proc_16_35_4E0260(FormVisor.TexVisor.Text)
  loc_004E6798:   FormVisor.LContPag.Caption = FormVisor.TexVisor.Text
  loc_004E67D0:   Set var_1C = FormVisor.TxtCambiaHoja
  loc_004E67D7:   var_44 = global_52 + 1+1
  loc_004E67E2:   var_60 = var_1C
  loc_004E6817:   var_1C.Text = CStr(Trim(Str(global_52 + 1+1 + 1+1 + 1+1 + 1+1)))
  loc_004E6891:   FormVisor.SSComPrev.Visible = True
  loc_004E68D6:   FormVisor.SSComFirst.Visible = True
  loc_004E68E3: Else
  loc_004E68EF: End If
  loc_004E68F7: If global_52 + 1+1 = global_56 Then
  loc_004E6936:   FormVisor.SSComSig.Visible = var_44
  loc_004E697A:   FormVisor.SSComLast.Visible = var_44
  loc_004E698A:   If global_52 + 1+1 > 1 Then
  loc_004E69CA:     FormVisor.SSComPrev.Visible = True
  loc_004E6A0F:     FormVisor.SSComFirst.Visible = True
  loc_004E6A1A:   End If
  loc_004E6A1A: End If
  loc_004E6A26: GoTo loc_004E6A4E
  loc_004E6A4D: Exit Sub
  loc_004E6A4E: ' Referenced from: 004E6A26
End Sub

Private Sub SSComImp_UnknownEvent_9 '4E4B20
  Dim var_44 As Variant
  Dim var_100 As Variant
  Dim var_58 As Variant
  loc_004E4BB6: var_40 = FormVisor.ComArch.Text
  loc_004E4BBE: var_104 = var_40
  loc_004E4C16: var_28 = var_40
  loc_004E4C2E: On Error GoTo loc_004E5266
  loc_004E4C9B: FormVisor.CDImprime.Flags = &H100004
  loc_004E4D11: FormVisor.CDImprime.CancelError = FFFFFFFFh
  loc_004E4D87: FormVisor.CDImprime.FromPage = vbNull
  loc_004E4DFD: FormVisor.CDImprime.ToPage = vbNull
  loc_004E4E75: FormVisor.CDImprime.Max = global_56
  loc_004E4EEB: FormVisor.CDImprime.Min = vbNull
  loc_004E4F20: FormVisor.CDImprime.ShowPrinter
  loc_004E4F40: var_38 = global_56
  loc_004E4F7B: var_58 = FormVisor.CDImprime.Flags
  loc_004E4F85: var_8004 = CLng(var_58)
  loc_004E4FB8: If (CLng(var_58) And 2) Then
  loc_004E4FF8:   var_3C = CInt(FormVisor.CDImprime.FromPage)
  loc_004E5048:   var_38 = CInt(FormVisor.CDImprime.ToPage)
  loc_004E510E:   If (CInt(FormVisor.CDImprime.FromPage) > CInt(FormVisor.CDImprime.ToPage)) Then
  loc_004E514E:     var_38 = CInt(FormVisor.CDImprime.FromPage)
  loc_004E519E:     var_3C = CInt(FormVisor.CDImprime.ToPage)
  loc_004E51B4:   End If
  loc_004E51B4: End If
  loc_004E51DE: var_58 = FormVisor.CDImprime.Copies
  loc_004E51EE: var_110 = CInt(var_58)
  loc_004E5216: GoTo loc_004E522D
  loc_004E5229: var_24 = 1 + var_10C+var_10C
  loc_004E522D: ' Referenced from: 004E5216
  loc_004E5238: If var_24 <= var_110 Then
  loc_004E5252:   var_8024 = FormVisor.Proc_16_34_4DFBB0(var_3C)
  loc_004E525F:   GoTo loc_004E5218
  loc_004E5261: End If
  loc_004E5261: GoTo loc_004E54B8
  loc_004E5266: ' Referenced from: 004E4C2E
  loc_004E5280: var_100 = Me
  loc_004E52C3: var_8028 = Err
  loc_004E52CE: Set var_44 = Err
  loc_004E52D4: var_100 = var_44
  loc_004E52F0: var_FC = var_44.Number
  loc_004E52F5: var_104 = var_FC
  loc_004E535B: If (var_FC <> 32755) Then
  loc_004E5368:   var_802C = Err
  loc_004E5373:   Set var_44 = Err
  loc_004E5379:   var_100 = var_44
  loc_004E5395:   var_FC = var_44.Number
  loc_004E539A:   var_104 = var_FC
  loc_004E546E:   MsgBox("HA OCURRIDO EL ERROR DE IMPRESION " + Str(var_FC), 64, 10, 10, 10)
  loc_004E54B2:   var_8034 = Resume(-1)
  loc_004E54B8: End If
  loc_004E54B8: ' Referenced from: 004E5261
  loc_004E54B8: Exit Sub
  loc_004E54C3: GoTo loc_004E550E
  loc_004E550D: Exit Sub
  loc_004E550E: ' Referenced from: 004E54C3
End Sub

Private Sub Form_Load() '4E1CB0
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_34 As Variant
  loc_004E1D63: var_34 = var_E4.App
  loc_004E1D68: var_C0 = var_34
  loc_004E1DC0: var_30 = var_34.Path
  loc_004E1DC5: var_C8 = var_30
  loc_004E1E3E: var_2C = Trim(var_30)
  loc_004E1EC8: If (Right(var_2C, 1) <> "\") Then
  loc_004E1EE5:   var_2C = var_2C & "\"
  loc_004E1EEB: End If
  loc_004E1F06: var_24 = var_2C & "BMP\"
  loc_004E1F15: On Error GoTo loc_004E22F0
  loc_004E1F92: var_38 = FormVisor.TexVisor.Font
  loc_004E1F9A: var_C0 = var_38
  loc_004E204A: global_004F10B4 = "Lgp*.t*"
  loc_004E20A7: var_34 = var_F4.Screen
  loc_004E20AC: var_C0 = var_34
  loc_004E20EB: var_C4 = var_34
  loc_004E2102: var_C4.MousePointer = CLng(11)
  loc_004E2107: var_C8 = var_C4
  loc_004E2161: var_801C = FormVisor.Proc_16_30_4DEF30(global_004F106C, 1)
  loc_004E2188: var_BC = FormVisor.ComArch
  loc_004E21A7: var_C0 = var_BC
  loc_004E2246: var_34 = var_104.Screen
  loc_004E224B: var_C0 = var_34
  loc_004E228A: var_C4 = var_34
  loc_004E22A6: var_C8 = var_C4
  loc_004E22EB: GoTo loc_004E2383
  loc_004E22F0: ' Referenced from: 004E1F15
  loc_004E2353: MsgBox("ERROR AL CARGAR IMAGENES PARA EL PROGRAMA", 48, 10, 10, 10)
  loc_004E237D: var_8024 = Resume(-1)
  loc_004E2383: ' Referenced from: 004E22EB
  loc_004E2383: Exit Sub
  loc_004E238E: GoTo loc_004E23C8
  loc_004E23C7: Exit Sub
  loc_004E23C8: ' Referenced from: 004E238E
End Sub

Private Sub Form_Unload(Cancel As Integer) '4E24F0
  loc_004E252F: var_8004 = Close
End Sub

Private Sub Form_Activate() '4E1BC0
  loc_004E1C4F: Global.App.HelpFile = "C:\VREP\OPERREP.HLP"
  loc_004E1C7E: GoTo loc_004E1C8A
  loc_004E1C89: Exit Sub
  loc_004E1C8A: ' Referenced from: 004E1C7E
End Sub

Private Sub Form_Terminate() '4E2400
  loc_004E249F: var_8008 = FrmPorta.Show 10, var_20
End Sub

Private Sub OCBuscar_Click() '4E2C60
  loc_004E2D76: var_44 = "Actualizar Ruta."
  loc_004E2D86: var_6C = "Confirmar la Ruta Actual..." & ChrB(10) & global_004F1058
  loc_004E2D9B: MsgBox(var_6C, 49, var_44, var_54, var_64)
  loc_004E2DC1: If MsgBox(var_6C, 49, var_44, var_54, var_64) - 1 + 1 Then
  loc_004E2DDB:   var_6C = global_004F1058
  loc_004E2DF3:   var_2C = "C:\COBRANZA\INI\ConVisor.ini"
  loc_004E2E1A:   var_24 = Proc_489D60("RutBus", &H4008, "Parametros")
  loc_004E2E37: End If
  loc_004E2E3F: GoTo loc_004E2E6D
  loc_004E2E6C: Exit Sub
  loc_004E2E6D: ' Referenced from: 004E2E3F
End Sub

Private Sub OFsalir_Click() '4E4140
  loc_004E41D0: var_800C = Global.Unload FormVisor
  loc_004E41F9: GoTo loc_004E4205
  loc_004E4204: Exit Sub
  loc_004E4205: ' Referenced from: 004E41F9
End Sub

Private Sub MnuOpRepLGP_Click() '4E2990
  Dim Me As Variant
  loc_004E2A00: var_8004 = Proc_48A410("LGP*.T*", Me, 0)
  loc_004E2A26: If CInt(var_30) > 0 Then
  loc_004E2A30:   var_800C = FormVisor.Proc_16_30_4DEF30(global_004F106C, 0)
  loc_004E2A50:   FormVisor.ComArch.ListIndex = 0
  loc_004E2A79: Else
  loc_004E2AC1:   MsgBox("NO SE HALLARON REPORTES DE LGP", 48, 10, 10, 10)
  loc_004E2AE2: End If
  loc_004E2AEA: GoTo loc_004E2B1A
  loc_004E2B19: Exit Sub
  loc_004E2B1A: ' Referenced from: 004E2AEA
End Sub

Private Sub OCCorte_Click() '4E2EA0
  loc_004E2F4A: var_8008 = FormCade.Show 2, var_20
  loc_004E2F70: If 0 Then
  loc_004E2F78:   var_800C = FormVisor.Proc_16_31_4DF100(1)
  loc_004E2F7E: End If
End Sub

Private Sub SSCMDSalir_UnknownEvent_9 '4E42C0
  Dim global_004F1DB4 As Global
  loc_004E4339: global_004F1DB4.Unload Me
  loc_004E4362: GoTo loc_004E436E
  loc_004E436D: Exit Sub
  loc_004E436E: ' Referenced from: 004E4362
End Sub

Private Sub MnuOpTodos_Click() '4E2B40
  Dim Me As Variant
  loc_004E2BA1: var_8004 = Proc_48A410("*.t*", Me, 0)
  loc_004E2BAA: var_8008 = CInt(var_30)
  loc_004E2BCA: var_800C = FormVisor.Proc_16_30_4DEF30(global_004F106C, 0)
  loc_004E2BEA: FormVisor.ComArch.ListIndex = 0
  loc_004E2C19: GoTo loc_004E2C37
  loc_004E2C36: Exit Sub
  loc_004E2C37: ' Referenced from: 004E2C19
End Sub

Private Sub OFabrir_Click() '4E3750
  Dim var_38 As Variant
  loc_004E37D0: On Error GoTo loc_004E3EC2
  loc_004E3821: FormVisor.CDImprime.Flags = 4612
  loc_004E3837: var_A0 = "Reportes (*.t*)"
  loc_004E3877: FormVisor.CDImprime.Filter = "Reportes (*.t*)"
  loc_004E3887: var_A0 = global_004F1204
  loc_004E38C7: FormVisor.CDImprime.InitDir = 5181956
  loc_004E38D5: var_A0 = True
  loc_004E3915: FormVisor.CDImprime.CancelError = True
  loc_004E3925: var_A0 = "*.t*"
  loc_004E3965: FormVisor.CDImprime.FileName = "*.t*"
  loc_004E3985: FormVisor.CDImprime.ShowOpen
  loc_004E39A5: Set var_38 = FormVisor.CDImprime
  loc_004E3AAA: If (Ucase(Trim(Mid(var_38, 1, 9))) <> "C:\MREPOR") Then
  loc_004E3AFD:   MsgBox("ERROR AL INTENTAR ABRIR ARCHIVO", 16, 10, 10, 10)
  loc_004E3B1F: Else
  loc_004E3B7C:   If CInt(Len(CurDir(10))) > 3 Then
  loc_004E3B9D:     global_004F1058 = CurDir(10)
  loc_004E3BB4:   Else
  loc_004E3BD0:     var_60 = (CInt(Len(CurDir(10))) - 1)
  loc_004E3C00:     global_004F1058 = Mid(CurDir(10), 1, (CInt(Len(CurDir(10))) - 1))
  loc_004E3C1D:   End If
  loc_004E3C4E:   var_8020 = InStrB(CInt(Len(CurDir(10)))(2), var_38, global_0045B658, 0)
  loc_004E3C54:   var_30 = var_8020
  loc_004E3C5A:   If var_8020 > 0 Then
  loc_004E3C69:     var_40 = (var_8020 - CInt(Len(CurDir(10)))(1))
  loc_004E3CA4:     var_58 = Mid(var_38, CInt(Len(CurDir(10)))(2), (var_8020 - CInt(Len(CurDir(10)))(1)))
  loc_004E3CB1:     If global_004F1068 Then
  loc_004E3CB7:       If global_004F1068 = 1 Then
  loc_004E3CC3:         If (var_20 - global_004F1068(20)) >= global_004F1068(16) Then
  loc_004E3CC5:           var_8024 = Err.Raise
  loc_004E3CCB:         End If
  loc_004E3CD0:       Else
  loc_004E3CD0:       End If
  loc_004E3CD0:       var_8028 = Err.Raise
  loc_004E3CD8:     End If
  loc_004E3CF7:     global_004F1068(12) = global_004F1068(12) + var_8028
  loc_004E3CF9:     ecx = var_58
  loc_004E3D29:     var_20 = var_20(1)
  loc_004E3D34:     If var_30 > 0 Then GoTo loc_004E3C2A
  loc_004E3D3A:   End If
  loc_004E3D89:   var_58 = Mid(var_38, var_30(1), (Len(var_38) - var_30))
  loc_004E3D96:   If global_004F1068 Then
  loc_004E3D9C:     If global_004F1068 = 1 Then
  loc_004E3DA7:       var_F0 = (var_20 - global_004F1068(20))
  loc_004E3DB0:       If (var_20 - global_004F1068(20)) >= global_004F1068(16) Then
  loc_004E3DB2:         var_8034 = Err.Raise
  loc_004E3DBE:       End If
  loc_004E3DC5:       var_10C = ecx*4
  loc_004E3DCD:     Else
  loc_004E3DCD:     End If
  loc_004E3DD3:     var_10C = Err.Raise
  loc_004E3DDC:   End If
  loc_004E3DFC:   global_004F1068(12) = global_004F1068(12) + var_10C
  loc_004E3E02:   ecx = var_58
  loc_004E3E4C:   FormVisor.ComArch.Enabled = True
  loc_004E3E7D:   var_8040 = FormVisor.Proc_16_30_4DEF30(var_20(1), 1)
  loc_004E3E91:   Set var_38 = FormVisor.ComArch
  loc_004E3EBD:   GoTo loc_004E4030
  loc_004E3EF8:   var_8044 = Err
  loc_004E3F44:   If (Err.Number <> 32755) Then
  loc_004E3F4A:     var_8048 = Err
  loc_004E3FF8:     MsgBox("HA OCURRIDO EL ERROR DE IMPRESION " + Str(Err.Number), 64, 10, 10, 10)
  loc_004E4030:   End If
  loc_004E4030: End If
  loc_004E4030: ' Referenced from: 004E3EBD
  loc_004E4030: Exit Sub
  loc_004E403B: GoTo loc_004E4079
  loc_004E4078: Exit Sub
  loc_004E4079: ' Referenced from: 004E403B
End Sub

Private Sub OEselTod_Click() '4E3240
  loc_004E32A8: FormVisor.TexVisor.SelStart = 0
  loc_004E3326: FormVisor.TexVisor.SelLength = Len(FormVisor.TexVisor.Text)
  loc_004E336C: GoTo loc_004E338B
  loc_004E338A: Exit Sub
  loc_004E338B: ' Referenced from: 004E336C
End Sub

Private Sub MnuOpEspec_Click() '4E2560
  Dim var_84 As Variant
  loc_004E2604: FormCade.LabCade.Caption = "D"
  loc_004E2655: FormCade.Caption = "Especificar tipo de Reporte"
  loc_004E26A7: FormCade.TextCade.Text = global_004F10B4
  loc_004E2754: var_8014 = FormCade.Show 1, var_8C
  loc_004E27A6: If InStr(1, global_004F10B4, "*", 0) <> (global_004F10B4 = global_004568F4) Then
  loc_004E27EE:   var_8024 = Proc_48A410(Trim(global_004F10B4), 1, var_84)
  loc_004E2820:   If CInt(var_40) > 0 Then
  loc_004E282D:     var_802C = FormVisor.Proc_16_30_4DEF30(global_004F106C, 10)
  loc_004E284E:     FormVisor.ComArch.ListIndex = 0
  loc_004E287A:   Else
  loc_004E28FA:     MsgBox(1034, 48, 10, 10, 10)
  loc_004E291F:   End If
  loc_004E291F: End If
  loc_004E292B: GoTo loc_004E2963
  loc_004E2962: Exit Sub
  loc_004E2963: ' Referenced from: 004E292B
End Sub

Private Sub SSCMDBusca_UnknownEvent_9 '4E4230
  loc_004E4273: var_8004 = FormVisor.OEbusCad_Click
End Sub

Private Sub ComArch_Click() '4E1810
  Dim var_20 As Variant
  loc_004E1863: Me.MousePointer = CLng(11)
  loc_004E18EC: If (global_60 = FormVisor.ComArch.Text) Then
  loc_004E190D:   FormVisor.TimerLeer.Enabled = False
  loc_004E1988:   Close #1
  loc_004E19C5:   Open global_004F1058 & "\" & FormVisor.ComArch.Text For Binary As #1 Len = -1
  loc_004E19E0:   global_54 = &H32
  loc_004E19E7:   var_8010 = FormVisor.Proc_16_40_4E0F20(Me)
  loc_004E19F2:   If global_56 > 1 Then
  loc_004E1A29:     FormVisor.SSComFirst.Value
  loc_004E1A38:   End If
  loc_004E1A46:   Set var_20 = FormVisor.TimerLeer
  loc_004E1A53:   var_20.Enabled = True
  loc_004E1A77:   var_8014 = FormVisor.Proc_16_32_4DF340(0)
  loc_004E1A7D: End If
  loc_004E1AAC: GoTo loc_004E1ACB
  loc_004E1ACA: Exit Sub
  loc_004E1ACB: ' Referenced from: 004E1AAC
End Sub

Private Sub TimerLeer_Timer() '4E6A90
  Dim global_004F10AA As Boolean
  Dim global_004F10AC As Boolean
  loc_004E6AE6: If global_68 > 0 Then
  loc_004E6B07:   global_68 = (global_68 - global_112)
  loc_004E6B1B:   If (global_108 = global_004568F4) Then
  loc_004E6B3A:     global_92 = InStr(global_88(1), global_100, global_108, 1)
  loc_004E6B42:   Else
  loc_004E6B56:     If (global_116 - global_88) > 30000 Then
  loc_004E6BB9:       If CLng(InStrB(global_88(29700), global_100, ChrB(10), 0)) Then GoTo loc_004E6BD6
  loc_004E6BCA:       global_92 = global_88(30000)
  loc_004E6BCF:     Else
  loc_004E6BD6:     End If
  loc_004E6BD6:   End If
  loc_004E6BDB:   If global_92 > 0 Then
  loc_004E6BFA:     If global_80 + 1+1+1 >= global_54 Then
  loc_004E6C08:       global_54 = global_54 + 50+50
  loc_004E6C29:       ReDim Preserve global_64(0 To global_54+50 + 3+3)
  loc_004E6C32:     End If
  loc_004E6C37:     If global_64 Then
  loc_004E6C3D:       If global_64 = 1 Then
  loc_004E6C5A:         If global_64 >= global_64 Then
  loc_004E6C5C:           var_8014 = Err.Raise
  loc_004E6C62:         End If
  loc_004E6C6B:       Else
  loc_004E6C6B:       End If
  loc_004E6C6B:       var_8018 = Err.Raise
  loc_004E6C73:     End If
  loc_004E6C78:     If global_64 Then
  loc_004E6C7E:       If global_64 = 1 Then
  loc_004E6C8E:         If global_64 >= global_64 Then
  loc_004E6C90:           var_801C = Err.Raise
  loc_004E6C96:         End If
  loc_004E6C9F:       Else
  loc_004E6C9F:       End If
  loc_004E6C9F:       var_8020 = Err.Raise
  loc_004E6CA5:     End If
  loc_004E6CC2:     (global_92 - global_88) = (global_92 - global_88) + global_64
  loc_004E6CD0:     global_64 = (global_92 - global_88)+global_64
  loc_004E6CD8:     global_88 = global_92
  loc_004E6CDB:     If global_92 > 0 Then GoTo loc_004E6B0A
  loc_004E6CE1:   End If
  loc_004E6CE6:   If global_88 = 0 Then
  loc_004E6CF1:     If global_68 > 0 Then
  loc_004E6D0A:       If global_116(-300) > 0 Then
  loc_004E6D71:         If CLng(InStrB(global_116(-300), global_100, ChrB(10), 0)) Then GoTo loc_004E6DE6
  loc_004E6DD3:         If CLng(InStrB(global_116(-300), global_100, ChrB(vbDataObject), 0)) Then GoTo loc_004E6DE6
  loc_004E6DE3:       End If
  loc_004E6DFF:       If global_80 + 1+1 + 1+1+1 >= global_54 Then
  loc_004E6E0D:         global_54 = global_54 + 50+50 + 3
  loc_004E6E2E:         ReDim Preserve global_64(0 To global_54+50 + 3 + 3+3)
  loc_004E6E37:       End If
  loc_004E6E3C:       If global_64 Then
  loc_004E6E42:         If global_64 = 1 Then
  loc_004E6E5F:           If global_64 >= global_64 Then
  loc_004E6E61:             var_8034 = Err.Raise
  loc_004E6E67:           End If
  loc_004E6E70:         Else
  loc_004E6E70:         End If
  loc_004E6E70:         var_8038 = Err.Raise
  loc_004E6E78:       End If
  loc_004E6E7D:       If global_64 Then
  loc_004E6E83:         If global_64 = 1 Then
  loc_004E6E93:           If global_64 >= global_64 Then
  loc_004E6E95:             var_803C = Err.Raise
  loc_004E6E9B:           End If
  loc_004E6EA4:         Else
  loc_004E6EA4:         End If
  loc_004E6EA4:         var_8040 = Err.Raise
  loc_004E6EAA:       End If
  loc_004E6EC4:       global_88 = CLng(InStrB(global_116(-300), global_100, ChrB(vbDataObject), 0))
  loc_004E6EC7:     End If
  loc_004E6EC7:   End If
  loc_004E6ECF:   If global_88 < global_116 Then
  loc_004E6F28:     global_104 = Mid(global_100, global_88(1), (global_116 - global_88))
  loc_004E6F4C:   Else
  loc_004E6F5C:   End If
  loc_004E6F61:   If global_68 <= 0 Then GoTo loc_004E71BB
  loc_004E6F8C:   If (edi - (global_116 - global_88)) < global_68 Then
  loc_004E6FA3:   End If
  loc_004E6FA3:   var_8048 = (ecx - (global_116 - global_88))
  loc_004E6FB4:   var_804C = FormVisor.Proc_16_36_4E0390(global_112, Mid(global_100, global_88(1), (global_116 - global_88)))
  loc_004E6FEC:   global_100 = global_104 & Mid(global_100, global_88(1), (global_116 - global_88))
  loc_004E700C:   (global_116 - global_88) = (global_116 - global_88) + global_112
  loc_004E7014:   global_116 = (global_116 - global_88)+global_112
  loc_004E701C: Else
  loc_004E703D:   FormVisor.OEsigOcu.Enabled = global_004F10AA
  loc_004E7080:   FormVisor.OEbusCad.Enabled = global_004F10AC
  loc_004E70A2:   If global_64 Then
  loc_004E70A8:     If global_64 = 1 Then
  loc_004E70B8:       If global_64 >= global_64 Then
  loc_004E70BA:         var_8054 = Err.Raise
  loc_004E70C0:       End If
  loc_004E70C7:       var_70 = ebx*4
  loc_004E70CC:     Else
  loc_004E70CC:     End If
  loc_004E70D2:     var_70 = Err.Raise
  loc_004E70D5:   End If
  loc_004E70DA:   If global_64 Then
  loc_004E70E0:     If global_64 = 1 Then
  loc_004E70E9:       global_80 = global_80 + 1+1 + 1+1 + 1
  loc_004E70FB:       If global_64 >= global_64 Then
  loc_004E70FD:         var_805C = Err.Raise
  loc_004E7103:       End If
  loc_004E710C:     Else
  loc_004E710C:     End If
  loc_004E710C:     var_8060 = Err.Raise
  loc_004E7114:   End If
  loc_004E7138:   If LenB(global_104) + ebx+edx+ebx+edx Then
  loc_004E713E:     If LenB(global_104) + ebx+edx+ebx+edx = 1 Then
  loc_004E7147:       global_80 = global_80 + 2
  loc_004E715B:       If LenB(global_104) + ebx+edx+ebx+edx >= LenB(global_104) + ebx+edx+ebx+edx Then
  loc_004E715D:         var_8068 = Err.Raise
  loc_004E7163:       End If
  loc_004E716C:     Else
  loc_004E716C:     End If
  loc_004E716C:     var_806C = Err.Raise
  loc_004E7172:   End If
  loc_004E7179:   global_64 = 0
  loc_004E719A:   FormVisor.TimerLeer.Enabled = False
  loc_004E71BB: End If
  loc_004E71C0: If global_56 = 1 Then
  loc_004E71D9:   var_44 = True
  loc_004E71FF:   FormVisor.SSComFirst.Value
  loc_004E7210: Else
  loc_004E7216: End If
  loc_004E721D: global_56 = global_80
  loc_004E7237: var_8070 = FormVisor.Proc_16_35_4E0260(global_104 & Mid(global_100, global_88(1), (global_116 - global_88)))
  loc_004E7244: FormVisor.LContPag.Caption = global_104 & Mid(global_100, global_88(1), (global_116 - global_88))
  loc_004E7285: FormVisor.LContPag.Refresh
  loc_004E72B4: GoTo loc_004E72DC
  loc_004E72DB: Exit Sub
  loc_004E72DC: ' Referenced from: 004E72B4
End Sub

Private Sub OEsigOcu_Click() '4E33B0
  Dim var_20 As Variant
  loc_004E33F3: global_004F10A8 = &HFFFFFF
  loc_004E3434: FormVisor.TexVisor.SetFocus
  loc_004E346B: Set var_20 = FormVisor.TexVisor
  loc_004E3474: var_A8 = var_20
  loc_004E34D1: global_004F10A6 = InStr(global_004F10A6 + 1+1, var_20.Text, global_004F10A0, 1)
  loc_004E34EC: If global_004F10A6 Then
  loc_004E34FE:   Set var_20 = FormVisor.TexVisor
  loc_004E350D:   var_A8 = var_20
  loc_004E351E:   var_20.SelStart = (global_004F10A6 - 1)
  loc_004E3562:   var_800C = Len(global_004F10A0)
  loc_004E356A:   FormVisor.TexVisor.SelLength = var_800C
  loc_004E3574:   If var_800C >= 0 Then GoTo loc_004E36E7
  loc_004E3586:   CheckObj(var_800C, FormVisor.TexVisor, global_00457C74, 284)
  loc_004E3591: End If
  loc_004E359E: var_8010 = .Proc_16_37_4E0570(global_004F10A4, var_A4)
  loc_004E35AD: If var_A4 = 0 Then
  loc_004E35B4:   global_004F10A8 = var_A4
  loc_004E35FD:   MsgBox("SE CONCLUYÓ LA BUSQUEDA", 0, 10, 10, 10)
  loc_004E3623: Else
  loc_004E3627:   If eax = 1 Then
  loc_004E3636:     var_20(52) = ""
  loc_004E3642:     var_68 = True
  loc_004E365E:   Else
  loc_004E3665:     If FormVisor.SSComFirst = FormVisor.TexVisor(56) Then
  loc_004E366A:       var_20(52) = FormVisor.TexVisor(56)
  loc_004E3680:       var_68 = True
  loc_004E369C:     Else
  loc_004E36B3:       var_20(52) = (FormVisor.SSComLast - 1)
  loc_004E36C1:       var_68 = True
  loc_004E36D9:     End If
  loc_004E36D9:   End If
  loc_004E36DE:   call var_8014 = FormVisor.TexVisor(FormVisor.TexVisor, FormVisor.SSComSig, 0000000Ch, 0000000Bh, var_6C, True, var_64, 0000000Ch, 0000000Bh, var_6C, True, var_64, 0000000Ch, 0000000Bh, var_6C, True)
  loc_004E36E1:   var_8014._Value
  loc_004E36EC: End If
  loc_004E36F8: GoTo loc_004E3728
  loc_004E3727: Exit Sub
  loc_004E3728: ' Referenced from: 004E36F8
End Sub

Private Sub OEbusCad_Click() '4E2FB0
  loc_004E3066: If (FormVisor.TexVisor.SelText = global_004568F4) Then
  loc_004E30DE:   FormBus.TextCadBus.Text = FormVisor.TexVisor.SelText
  loc_004E3118: End If
  loc_004E317F: var_8010 = FormBus.Show 2, var_2C
  loc_004E31A8: var_8014 = (global_004F10A0 = global_004568F4)
  loc_004E31B0: If var_8014 = 0 Then
  loc_004E31D0:   FormVisor.OEsigOcu.Enabled = False
  loc_004E31F1: End If
  loc_004E31FD: GoTo loc_004E321C
  loc_004E321B: Exit Sub
  loc_004E321C: ' Referenced from: 004E31FD
End Sub

Private Sub SSComFirst_UnknownEvent_9 '4E4530
  Dim var_1C As Variant
  Dim var_60 As TextBox
  loc_004E4584: global_52 = 1
  loc_004E45AB: var_8004 = FormVisor.Proc_16_38_4E09D0(vbNull, var_18)
  loc_004E45B8: FormVisor.TexVisor.Text = var_18
  loc_004E45F1: If global_004F10A8 Then
  loc_004E4604:   If global_004F109C Then
  loc_004E465D:     global_004F10A6 = InStr(1, FormVisor.TexVisor.Text, global_004F10A0, 1)
  loc_004E4672:   End If
  loc_004E469B:   FormVisor.TexVisor.SelStart = (global_004F10A6 - 1)
  loc_004E46D0:   Set var_1C = FormVisor.TexVisor
  loc_004E46DB:   var_60 = var_1C
  loc_004E46EB:   var_1C.SelLength = Len(global_004F10A0)
  loc_004E4714: Else
  loc_004E471A: End If
  loc_004E4733: var_8014 = FormVisor.Proc_16_35_4E0260(FormVisor.TexVisor.Text)
  loc_004E4740: FormVisor.LContPag.Caption = FormVisor.TexVisor.Text
  loc_004E4778: Set var_1C = FormVisor.TxtCambiaHoja
  loc_004E477F: var_44 = global_52
  loc_004E478A: var_60 = var_1C
  loc_004E47BF: var_1C.Text = CStr(Trim(Str(global_52)))
  loc_004E4838: FormVisor.SSComFirst.Visible = var_44
  loc_004E487C: FormVisor.SSComPrev.Visible = var_44
  loc_004E488F: If global_52 < global_56 Then
  loc_004E48CF:   FormVisor.SSComSig.Visible = True
  loc_004E4914:   FormVisor.SSComLast.Visible = True
  loc_004E491F: End If
  loc_004E492B: GoTo loc_004E4953
  loc_004E4952: Exit Sub
  loc_004E4953: ' Referenced from: 004E492B
End Sub

Public Sub FormVisor_ImpPreim(CadArch, TipArch) '4E5560
  loc_004E55E7: On Error GoTo loc_004E5AB0
  loc_004E5653: If (Dir("C:\MREPOR\IMPFORMAT.TXT", 0) = global_004568F4) Then
  loc_004E567C:   Kill "C:\MREPOR\IMPFORMAT.TXT"
  loc_004E568B: End If
  loc_004E5696: Open "C:\MREPOR\IMPFORMAT.TXT" For Output As #2 Len = -1
  loc_004E56B8: var_20 = InStr(1, CadArch, "COBR", 0)
  loc_004E56E2: var_8018 = (TipArch = "AMA041")
  loc_004E56F9: If var_8018 = (TipArch = "BMA041") Then
  loc_004E5702:   If var_20 > 0 Then
  loc_004E5714:     Mid(CadArch, var_20, 8) = "                "
  loc_004E571A:   End If
  loc_004E576D:   var_104 = Chr$(48)
  loc_004E57AB:   var_34 = Chr$(27) & Chr$(18) & Chr$(27)
  loc_004E57B9: Else
  loc_004E57BC:   If var_34 > @%StkVar2 & %x1 Then
  loc_004E57CE:     Mid(CadArch, var_34, 16) = "                "
  loc_004E57D4:   End If
  loc_004E57E3:   var_40 = Chr$(27)
  loc_004E5815:   var_44 = %StkVar2 & %x1
  loc_004E5821:   var_48 = %StkVar2 & %x1
  loc_004E5827:   var_114 = Chr$(50)
  loc_004E582D:   var_4C = %StkVar2 & %x1
  loc_004E5865:   var_34 = %StkVar2 & %x1 & Chr$(18) & Chr$(27)
  loc_004E586E: End If
  loc_004E5885: Print 2, var_34 & var_114
  loc_004E58D6: var_4C = Chr$(120)
  loc_004E597F: Print 2, Chr$(27) & var_4C & CStr(0) & Chr$(27) & Chr$(80)
  loc_004E59CD: Print 2, CadArch
  loc_004E59D4: Close #2
  loc_004E5A29: If Not (FormVisor.FormVisor_ImpDir("C:\MREPOR\IMPFORMAT.TXT")) Then
  loc_004E5A8F:   MsgBox("ERROR AL IMPRIMIR EN FORMATO PREIMPRESO", 0, 10, 10, 10)
  loc_004E5AAB:   GoTo loc_004E5BD3
  loc_004E5AB0:   ' Referenced from: 004E55E7
  loc_004E5B16:   MsgBox("ERROR AL PREPARAR PREIMPRESIÓN", 16, 10, 10, 10)
  loc_004E5B54:   var_8074 = Err
  loc_004E5B6E:   var_24 = Err.Description
  loc_004E5BB2:   MsgBox(0, 0, 10, 10, 10)
  loc_004E5BD3:   ' Referenced from: 004E5AAB
  loc_004E5BDE: End If
  loc_004E5BDE: Exit Sub
  loc_004E5BE9: GoTo loc_004E5C55
  loc_004E5C54: Exit Sub
  loc_004E5C55: ' Referenced from: 004E5BE9
End Sub

Public Function FormVisor_ImpDir(Arc) '4E7820
  Dim var_3C As Err
  Dim var_F4 As Err
  Dim var_124 As Err
  loc_004E7887: On Error GoTo loc_004E7A25
  loc_004E78AD: Open Arc For Binary As #2 Len = -1
  loc_004E78C5: Open "lpt1" For Binary As #3 Len = -1
  loc_004E78F2: var_8008 = LOF(2)
  loc_004E7900: If Not Sign((LOF(2) And &H80001FFF) - 0) Then
  loc_004E790A: End If
  loc_004E792B: var_2C = Space$(8192)
  loc_004E7941: var_100 = LOF(2) + (0 And 8191)+(0 And 8191)
  loc_004E7957: GoTo loc_004E796E
  loc_004E796A: var_24 = 1 + var_FC+var_FC
  loc_004E796E: ' Referenced from: 004E7957
  loc_004E7979: If var_24 <= var_100 Then
  loc_004E798A:   Get #2, var_2C
  loc_004E799F:   Put #3, var_2C
  loc_004E79AC:   GoTo loc_004E7959
  loc_004E79AE: End If
  loc_004E79C5: var_2C = Space$(((LOF(2) And &H80001FFF) - 1 Or -8192) + 1)
  loc_004E79DA: Get #2, var_2C
  loc_004E79EF: Put #3, var_2C
  loc_004E79FE: Close #3
  loc_004E7A0D: Close #2
  loc_004E7A20: GoTo loc_004E7C3D
  loc_004E7A25: ' Referenced from: 004E7887
  loc_004E7A2C: var_801C = Err
  loc_004E7A37: Set var_3C = Err
  loc_004E7A3D: var_F4 = var_3C
  loc_004E7A59: var_F0 = var_3C.Number
  loc_004E7A5E: var_F8 = var_F0
  loc_004E7AC2: If var_F0 <> 57 Then
  loc_004E7AC4:   GoTo loc_004E7C3D
  loc_004E7ACE: Else
  loc_004E7ADA:   If var_28 < 3 Then
  loc_004E7B8D:     MsgBox("La Impresora no esta lista !!!" & Chr(13) & "Asegurese que tenga papel y que este encendida", 48, 10, 10, 10)
  loc_004E7BC3:     var_8020 = Err
  loc_004E7BCE:     Set var_3C = Err
  loc_004E7BD4:     var_124 = var_3C
  loc_004E7BE9:     var_3C.Clear
  loc_004E7C0A:     var_28 = var_28(1)
  loc_004E7C17:     var_8024 = Resume(-2)
  loc_004E7C1F:   Else
  loc_004E7C28:     Close #2
  loc_004E7C37:     Close #1
  loc_004E7C3D:   End If
  loc_004E7C3D: End If
  loc_004E7C3D: Exit Sub
  loc_004E7C48: GoTo loc_004E7C7D
  loc_004E7C7C: Exit Function
  loc_004E7C7D: ' Referenced from: 004E7C48
End Function

Private Sub Proc_16_30_4DEF30() '4DEF30
  Dim var_18 As Variant
  loc_004DEF7D: FormVisor.ComArch.Clear
  loc_004DEFB8: var_3C = (arg_C - 1)
  loc_004DEFC4: If edi <= (arg_C - 1) Then
  loc_004DEFD5:   Set var_18 = FormVisor.ComArch
  loc_004DEFEE:   If global_004F1068 Then
  loc_004DEFF4:     If global_004F1068 = 1 Then
  loc_004DF003:       If (edi - global_004F1068(20)) >= global_004F1068(16) Then
  loc_004DF005:         var_8004 = Err.Raise
  loc_004DF011:       End If
  loc_004DF01A:     Else
  loc_004DF01A:     End If
  loc_004DF01A:     var_8008 = Err.Raise
  loc_004DF026:   End If
  loc_004DF049:   var_18.AddItem ecx+eax, 2
  loc_004DF085:   var_14 = 1+var_14
  loc_004DF088:   GoTo loc_004DEFBE
  loc_004DF08D: End If
  loc_004DF0A3: FormVisor.ComArch.Refresh
  loc_004DF0CB: GoTo loc_004DF0D7
  loc_004DF0D6: Exit Sub
  loc_004DF0D7: ' Referenced from: 004DF0CB
End Sub

Private Sub Proc_16_31_4DF100() '4DF100
  Dim var_1C As Variant
  loc_004DF13F: Me.MousePointer = CLng(11)
  loc_004DF177: FormVisor.TimerLeer.Enabled = False
  loc_004DF1F3: Close #1
  loc_004DF232: Open global_004F1058 & "\" & FormVisor.ComArch.Text For Binary As #1 Len = -1
  loc_004DF24D: global_54 = &H32
  loc_004DF254: var_800C = FormVisor.Proc_16_40_4E0F20(0)
  loc_004DF25F: If global_56 > 1 Then
  loc_004DF296:   FormVisor.SSComFirst.Value
  loc_004DF2A1: End If
  loc_004DF2AF: Set var_1C = FormVisor.TimerLeer
  loc_004DF2BC: var_1C.Enabled = True
  loc_004DF2DC: var_8010 = FormVisor.Proc_16_32_4DF340(0)
  loc_004DF30A: GoTo loc_004DF329
  loc_004DF328: Exit Sub
  loc_004DF329: ' Referenced from: 004DF30A
End Sub

Private Sub Proc_16_32_4DF340() '4DF340
  Dim var_18 As Variant
  Dim var_3C As Label
  loc_004DF37D: var_8004 = (global_60 = global_004568F4)
  loc_004DF385: If var_8004 = 0 Then
  loc_004DF3A8:   FormVisor.ComArch.Enabled = False
  loc_004DF3DF:   Set var_18 = FormVisor.TxtCambiaHoja
  loc_004DF3E6:   var_3C = var_18
  loc_004DF3E9:   var_18.Enabled = False
  loc_004DF41D:   Set var_18 = FormVisor.OFImp
  loc_004DF424:   var_3C = var_18
  loc_004DF427:   var_18.Enabled = False
  loc_004DF46B:   var_8008 = FormVisor.Proc_16_35_4E0260(var_14)
  loc_004DF47B:   FormVisor.LContPag.Caption = var_14
  loc_004DF4D7:   FormVisor.SSComChico.Visible = FormVisor.SSComChico
  loc_004DF515:   FormVisor.SSComGra.Visible = FormVisor.SSComGra
  loc_004DF553:   FormVisor.SSComFirst.Visible = FormVisor.SSComFirst
  loc_004DF591:   FormVisor.SSComLast.Visible = FormVisor.SSComLast
  loc_004DF5CF:   FormVisor.SSComPrev.Visible = FormVisor.SSComPrev
  loc_004DF60D:   FormVisor.SSComSig.Visible = FormVisor.SSComSig
  loc_004DF64B:   FormVisor.SSComImp.Visible = FormVisor.SSComImp
  loc_004DF664:   Set var_18 = FormVisor.OEditar
  loc_004DF66B:   var_3C = var_18
  loc_004DF66E:   var_18.Enabled = False
  loc_004DF69C:   Set var_18 = FormVisor.OConf
  loc_004DF6A5:   var_18.Enabled = False
  loc_004DF6AC:   If var_18 >= 0 Then GoTo loc_004DF993
  loc_004DF6B2:   GoTo loc_004DF984
  loc_004DF6B7: End If
  loc_004DF6D4: FormVisor.OFImp.Enabled = True
  loc_004DF705: Set var_18 = FormVisor.ComArch
  loc_004DF70C: var_3C = var_18
  loc_004DF70F: var_18.Enabled = True
  loc_004DF743: Set var_18 = FormVisor.TxtCambiaHoja
  loc_004DF74A: var_3C = var_18
  loc_004DF74D: var_18.Enabled = True
  loc_004DF7A7: FormVisor.SSComChico.Visible = True
  loc_004DF7E6: FormVisor.SSComGra.Visible = True
  loc_004DF825: FormVisor.SSComFirst.Visible = True
  loc_004DF864: FormVisor.SSComLast.Visible = True
  loc_004DF8A3: FormVisor.SSComPrev.Visible = True
  loc_004DF8E2: FormVisor.SSComSig.Visible = True
  loc_004DF921: FormVisor.SSComImp.Visible = True
  loc_004DF93A: Set var_18 = FormVisor.OEditar
  loc_004DF941: var_3C = var_18
  loc_004DF944: var_18.Enabled = True
  loc_004DF972: Set var_18 = FormVisor.OConf
  loc_004DF97B: var_18.Enabled = True
  loc_004DF982: If var_18 >= 0 Then GoTo loc_004DF993
  loc_004DF984: ' Referenced from: 004DF6B2
  loc_004DF98D: CheckObj(var_18, var_18, global_00460C10, 116)
  loc_004DF99D: GoTo loc_004DF9B2
  loc_004DF9B1: Exit Sub
  loc_004DF9B2: ' Referenced from: 004DF99D
End Sub

Private Sub Proc_16_33_4DF9D0() '4DF9D0
  loc_004DFA49: var_1C = "C:\COBRANZA\INI\ConVisor.ini"
  loc_004DFAC4: If (Trim$(Proc_489B90("RutBus", "NINGUNO", "Parametros")) = "NINGUNO") + 1 Then
  loc_004DFB00:   var_1C = "C:\COBRANZA\INI\conVisor.ini"
  loc_004DFB1C:   var_14 = Proc_489D60("RutBus", "C:", "Parametros")
  loc_004DFB4C:   global_004F1058 = "C:"
  loc_004DFB4E: End If
  loc_004DFB5A: GoTo loc_004DFB7D
  loc_004DFB7C: Exit Sub
  loc_004DFB7D: ' Referenced from: 004DFB5A
End Sub

Private Sub Proc_16_34_4DFBB0() '4DFBB0
  Dim global_004F1DB4 As Global
  Dim var_3C As Variant
  loc_004DFC6D: var_34 = Global.Printer.FontName
  loc_004DFCEA: var_24 = CSgn(Global.Printer.FontSize)
  loc_004DFDCB: Global.Printer.FontName = FormVisor.TexVisor.Font.Name
  loc_004DFE71: If CInt(Global.Printer.Orientation) - 1 + 1 Then
  loc_004DFEAA:   If Global.Printer >= 0 Then GoTo loc_004DFEF6
  loc_004DFEAC:   GoTo loc_004DFEE7
  loc_004DFEAE: End If
  loc_004DFEDE: var_3C = Global.Printer
  loc_004DFEE5: If var_3C >= 0 Then GoTo loc_004DFEF6
  loc_004DFEE7: ' Referenced from: 004DFEAC
  loc_004DFEF0: CheckObj(var_3C, global_004F1DB4, global_00457D2C, 32)
  loc_004DFF1B: var_3C.FontSize = var_6C
  loc_004DFF2E: Me.MousePointer = CLng(11)
  loc_004DFF5E: var_9C = (arg_10 - ecx)
  loc_004DFF69: If edi <= (arg_10 - ecx) Then
  loc_004DFF95:   var_3C = Global.Printer
  loc_004DFFC7:   var_802C = FormVisor.Proc_16_38_4E09D0(arg_C + edi+edi)
  loc_004DFFDA:   Print var_38
  loc_004E0040:   Global.Printer.NewPage
  loc_004E0064:   GoTo loc_004DFF66
  loc_004E0069: End If
  loc_004E00F0: Global.Printer.FontName = CStr(var_34)
  loc_004E0177: Global.Printer.FontSize = CSgn(var_24)
  loc_004E01C9: Global.Printer.EndDoc
  loc_004E01DF: Me.MousePointer = 0
  loc_004E01FF: GoTo loc_004E0232
  loc_004E0231: Exit Sub
  loc_004E0232: ' Referenced from: 004E01FF
End Sub

Private Sub Proc_16_35_4E0260() '4E0260
  loc_004E02C1: var_60 = global_52
  loc_004E02E5: var_80 = global_56
  loc_004E031B: var_18 = Str(global_52) + "/" + Str(global_56)
  loc_004E0341: GoTo loc_004E036E
  loc_004E0347: If var_4 <> 4 Then
  loc_004E0352: End If
  loc_004E036D: Exit Sub
  loc_004E036E: ' Referenced from: 004E0341
End Sub

Private Sub Proc_16_36_4E0390() '4E0390
  loc_004E03D8: Dim var_18 As String * 10000
  loc_004E03F2: If global_76 < arg_C Then
  loc_004E0403:   Get #1, global_84, var_18
  loc_004E041C:   global_84 = Seek(1)
  loc_004E0430:   global_72 = global_72 & var_18
  loc_004E044D:   global_76 = global_76(10000)
  loc_004E0450:   GoTo loc_004E03E7
  loc_004E0452: End If
  loc_004E045D: var_48 = global_76(10000)
  loc_004E049F: var_1C = Mid(global_72, 1, global_76(10000))
  loc_004E04F9: global_72 = Mid(global_72, arg_C + 1 + 1 + 1+1, global_76)
  loc_004E0516: GoTo loc_004E053A
  loc_004E051C: If var_4 <> 4 Then
  loc_004E0527: End If
  loc_004E0539: Exit Sub
  loc_004E053A: ' Referenced from: 004E0516
End Sub

Private Sub Proc_16_37_4E0570() '4E0570
  loc_004E05B6: Dim var_1C As String * 32000
  loc_004E05C6: If arg_C <> True Then
  loc_004E05D4:   Me.MousePointer = CLng(11)
  loc_004E05F6:   If arg_C >= 1 Then
  loc_004E0600:     global_52 = global_52 + 1
  loc_004E060A:     var_18 = global_52+1
  loc_004E0611:     If global_52+1 > global_56 Then GoTo loc_004E094C
  loc_004E061C:     If global_64 Then
  loc_004E0622:       If global_64 = 1 Then
  loc_004E063B:         If (global_52+1 + 1+1 - global_64(20)) >= global_64(16) Then
  loc_004E063D:           var_8004 = Err.Raise
  loc_004E0643:         End If
  loc_004E064F:       Else
  loc_004E064F:       End If
  loc_004E064F:       var_8008 = Err.Raise
  loc_004E0657:     End If
  loc_004E065C:     If global_64 Then
  loc_004E0662:       If global_64 = 1 Then
  loc_004E0671:         If (var_18 - global_64(20)) >= global_64(16) Then
  loc_004E0673:           var_800C = Err.Raise
  loc_004E0679:         End If
  loc_004E0685:       Else
  loc_004E0685:       End If
  loc_004E0685:       var_8010 = Err.Raise
  loc_004E068B:     End If
  loc_004E06A7:     var_20 = (edx+ebx - edx+eax)
  loc_004E06AF:     If global_64 Then
  loc_004E06B5:       If global_64 = 1 Then
  loc_004E06C4:         If (var_18 - global_64(20)) >= global_64(16) Then
  loc_004E06C6:           var_8018 = Err.Raise
  loc_004E06CC:         End If
  loc_004E06D8:       Else
  loc_004E06D8:       End If
  loc_004E06D8:       var_801C = Err.Raise
  loc_004E06DE:     End If
  loc_004E06F3:     Get #1, edx+eax, var_1C
  loc_004E06FF:     var_50 = var_20
  loc_004E070C:     var_28 = var_1C
  loc_004E073D:     var_1C = var_28
  loc_004E0781:     var_8028 = InStr(1, Mid(var_28, 1, var_20), global_004F10A0, 1)
  loc_004E0786:     global_004F10A6 = var_8028
  loc_004E078C:     If var_8028 > 0 Then GoTo loc_004E094C
  loc_004E079C:     var_18 = var_18(1)
  loc_004E079F:     GoTo loc_004E060D
  loc_004E07A4:   End If
  loc_004E07B9:   If (global_52 - 1) >= 1 Then
  loc_004E07C4:     If global_64 Then
  loc_004E07CA:       If global_64 = 1 Then
  loc_004E07E7:         If ((global_52 - 1)(1) - global_64(20)) >= global_64(16) Then
  loc_004E07E9:           var_802C = Err.Raise
  loc_004E07EF:         End If
  loc_004E07F8:       Else
  loc_004E07F8:       End If
  loc_004E07F8:       var_8030 = Err.Raise
  loc_004E0800:     End If
  loc_004E0805:     If global_64 Then
  loc_004E080B:       If global_64 = 1 Then
  loc_004E081B:         If ((global_52 - 1) - global_64(20)) >= global_64(16) Then
  loc_004E081D:           var_8034 = Err.Raise
  loc_004E0823:         End If
  loc_004E082C:       Else
  loc_004E082C:       End If
  loc_004E082C:       var_8038 = Err.Raise
  loc_004E0832:     End If
  loc_004E084E:     var_20 = (edx+ebx - edx+eax)
  loc_004E0856:     If global_64 Then
  loc_004E085C:       If global_64 = 1 Then
  loc_004E086C:         If ((global_52 - 1) - global_64(20)) >= global_64(16) Then
  loc_004E086E:           var_8040 = Err.Raise
  loc_004E0874:         End If
  loc_004E087D:       Else
  loc_004E087D:       End If
  loc_004E087D:       var_8044 = Err.Raise
  loc_004E0883:     End If
  loc_004E0898:     Get #1, edx+eax, var_1C
  loc_004E08A4:     var_50 = var_20
  loc_004E08B1:     var_28 = var_1C
  loc_004E08E2:     var_1C = var_28
  loc_004E0926:     var_8050 = InStr(1, Mid(var_28, 1, var_20), global_004F10A0, 1)
  loc_004E092B:     global_004F10A6 = var_8050
  loc_004E0931:     If var_8050 <= 0 Then
  loc_004E0941:       var_18 = ((global_52 - 1) - 1)
  loc_004E0944:       GoTo loc_004E07B5
  loc_004E0949:     End If
  loc_004E0949:   End If
  loc_004E0951:   global_64.MousePointer = 0
  loc_004E0973:   If var_18 <= global_56 Then
  loc_004E0979:     If var_18 >= 1 Then
  loc_004E097B:       var_24 = var_18
  loc_004E097E:     End If
  loc_004E097E:   End If
  loc_004E097E: End If
  loc_004E0983: GoTo loc_004E0998
  loc_004E0997: Exit Sub
  loc_004E0998: ' Referenced from: 004E0983
End Sub

Private Sub Proc_16_38_4E09D0() '4E09D0
  loc_004E0A48: Dim var_2C As String * 32000
  loc_004E0A56: If global_64 Then
  loc_004E0A5C:   If global_64 = 1 Then
  loc_004E0A77:     If (arg_C + 1+1 - global_64(20)) >= global_64(16) Then
  loc_004E0A79:       var_8004 = Err.Raise
  loc_004E0A7F:     End If
  loc_004E0A88:   Else
  loc_004E0A88:   End If
  loc_004E0A88:   var_8008 = Err.Raise
  loc_004E0A8E: End If
  loc_004E0A99: If global_64 Then
  loc_004E0A9F:   If global_64 = 1 Then
  loc_004E0AAF:     If (arg_C + 1 - global_64(20)) >= global_64(16) Then
  loc_004E0AB1:       var_800C = Err.Raise
  loc_004E0AB7:     End If
  loc_004E0AC0:   Else
  loc_004E0AC0:   End If
  loc_004E0AC0:   var_8010 = Err.Raise
  loc_004E0AC6: End If
  loc_004E0AE6: var_30 = (edx+ecx - edx+eax)
  loc_004E0AEE: If global_64 Then
  loc_004E0AF4:   If global_64 = 1 Then
  loc_004E0B04:     If (arg_C + 1 - global_64(20)) >= global_64(16) Then
  loc_004E0B06:       var_8018 = Err.Raise
  loc_004E0B0C:     End If
  loc_004E0B15:   Else
  loc_004E0B15:   End If
  loc_004E0B15:   var_801C = Err.Raise
  loc_004E0B1B: End If
  loc_004E0B30: Get #1, ecx+eax, var_2C
  loc_004E0B3C: var_BC = var_30
  loc_004E0B4F: var_34 = var_2C
  loc_004E0B8B: var_2C = var_34
  loc_004E0BA2: var_24 = Mid(var_34, 1, var_30)
  loc_004E0C03: var_8024 = CLng(InStrB(esi(1), var_24, Chr(0), 0))
  loc_004E0C1C: If var_8024 > 0 Then
  loc_004E0C45:   MidB(var_24, var_8024, 1) = Chr(0)
  loc_004E0C5F:   If var_8024 > 0 Then GoTo loc_004E0BC2
  loc_004E0C65: End If
  loc_004E0CAF: var_802C = CLng(InStr(var_8024(1), var_24, Chr(10), 0))
  loc_004E0CC9: If var_802C > 1 Then
  loc_004E0D4C:   If (Asc(CStr(Mid(var_24, var_802C(-1), 1))) <> 13) Then
  loc_004E0E27:     var_24 = MidB(var_24, 1, var_802C(-1)) + ChrB(vbDataObject) + MidB(var_24, var_802C, (var_30 - var_802C)(1))
  loc_004E0E67:     var_30 = var_30(1)
  loc_004E0E6A:     global_004F109C = &HFFFFFF
  loc_004E0E75:   Else
  loc_004E0E75:   End If
  loc_004E0E78: End If
  loc_004E0E7D: If var_802C < var_30 Then
  loc_004E0E81:   If var_802C > 0 Then GoTo loc_004E0C6E
  loc_004E0E87: End If
  loc_004E0E8D: var_18 = var_24
  loc_004E0E98: GoTo loc_004E0EE3
  loc_004E0E9E: If var_4 <> 4 Then
  loc_004E0EA9: End If
  loc_004E0EE2: Exit Sub
  loc_004E0EE3: ' Referenced from: 004E0E98
End Sub

Private Sub Proc_16_39_4E6A80() '4E6A80

End Sub

Private Sub Proc_16_40_4E0F20() '4E0F20
  loc_004E0F9F: global_004F10AA = FormVisor.OEsigOcu.Enabled
  loc_004E0FE7: global_004F10AC = FormVisor.OEbusCad.Enabled
  loc_004E100A: FormVisor.OEsigOcu.Enabled = False
  loc_004E1042: FormVisor.OEbusCad.Enabled = False
  loc_004E106C: global_80 = 1
  loc_004E1070: global_84 = 1
  loc_004E109B: global_76 = 0
  loc_004E10A2: ReDim global_64(0 To global_54 + 3+3)
  loc_004E10B2: global_68 = LOF(1)
  loc_004E10B9: If global_64 Then
  loc_004E10BE:   If global_64 = 1 Then
  loc_004E10CE:     If global_64 >= global_64 Then
  loc_004E10D0:       var_8008 = Err.Raise
  loc_004E10D6:     End If
  loc_004E10DF:   Else
  loc_004E10DF:   End If
  loc_004E10DF:   var_800C = Err.Raise
  loc_004E10E5: End If
  loc_004E10EA: global_64 = 1
  loc_004E10FA: If global_68 > 31000 Then
  loc_004E10FC:   global_112 = &H7918
  loc_004E1104: Else
  loc_004E110A:   global_112 = global_68
  loc_004E110E: End If
  loc_004E1119: var_8014 = FormVisor.Proc_16_36_4E0390
  loc_004E1127: global_96 = var_14
  loc_004E1159: If (global_004F10B0 = global_004568F4) Then
  loc_004E1171:   If InStrB(1, global_96, global_004F10B0, 0) Then
  loc_004E1181:   End If
  loc_004E1181: End If
  loc_004E1189: var_8020 = (global_108 = global_004568F4)
  loc_004E1191: If var_8020 = 0 Then
  loc_004E11E9:   If InStrB(1, global_96, Chr(12), 0) Then
  loc_004E11F2:   Else
  loc_004E1268:     If InStrB(1, global_96, Chr(10) + global_00458C18, 0) Then
  loc_004E126E:     Else
  loc_004E1273:     End If
  loc_004E1273:   End If
  loc_004E127C: End If
  loc_004E128E: global_116 = global_112
  loc_004E12A0: global_68 = (global_68 - global_112)
  loc_004E12B4: If (global_108 = global_004568F4) Then
  loc_004E12D3:   global_92 = InStr(0(1), global_96, global_108, 1)
  loc_004E12DB: Else
  loc_004E12EE:   If (global_116 - 0) > 30000 Then
  loc_004E1358:     If CLng(InStrB(0(29700), global_96, ChrB(10), 0)) Then GoTo loc_004E1374
  loc_004E1368:     global_92 = 0(30000)
  loc_004E136D:   Else
  loc_004E1374:   End If
  loc_004E1374: End If
  loc_004E1379: If global_92 > 0 Then
  loc_004E139C:   If global_80(1) >= global_54 + 3 Then
  loc_004E13AA:     global_54 = global_54 + 3 + 50+50
  loc_004E13CA:     ReDim Preserve global_64(0 To global_54+50 + 3+3)
  loc_004E13D3:   End If
  loc_004E13DB:   If global_80(1) = 2 Then
  loc_004E13E0:     If global_92 = 1 Then
  loc_004E13E2:       global_80 = 1
  loc_004E13EB:     Else
  loc_004E13EB:     End If
  loc_004E13F0:     If global_64 Then
  loc_004E13F5:       If global_64 = 1 Then
  loc_004E140D:         If global_64 >= global_64 Then
  loc_004E140F:           var_8048 = Err.Raise
  loc_004E1415:         End If
  loc_004E141E:       Else
  loc_004E141E:       End If
  loc_004E141E:       var_804C = Err.Raise
  loc_004E1426:     End If
  loc_004E142B:     If global_64 Then
  loc_004E1431:       If global_64 = 1 Then
  loc_004E1441:         If global_64 >= global_64 Then
  loc_004E1443:           var_8050 = Err.Raise
  loc_004E1449:         End If
  loc_004E1452:       Else
  loc_004E1452:       End If
  loc_004E1452:       var_8054 = Err.Raise
  loc_004E1458:     End If
  loc_004E146C:     (global_92 - 0) = (global_92 - 0) + ecx+edi
  loc_004E1475:     global_64 = (global_92 - 0)+ecx+edi
  loc_004E1478:   End If
  loc_004E147D:   global_88 = global_92
  loc_004E1480:   If global_92 > 0 Then GoTo loc_004E12A3
  loc_004E1486: End If
  loc_004E148B: If global_88 = 0 Then
  loc_004E1496:   If global_68 > 0 Then
  loc_004E14AF:     If global_116(-300) > 0 Then
  loc_004E1521:       If CLng(InStrB(global_116(-300), global_96, ChrB(10), 0)) Then GoTo loc_004E1596
  loc_004E1583:       If CLng(InStrB(global_116(-300), global_96, ChrB(vbDataObject), 0)) Then GoTo loc_004E1596
  loc_004E1593:     End If
  loc_004E15AF:     If global_80 + 1+1+1 >= global_54 Then
  loc_004E15BD:       global_54 = global_54 + 50+50 + 3
  loc_004E15DE:       ReDim Preserve global_64(0 To global_54+50 + 3 + 3+3)
  loc_004E15E7:     End If
  loc_004E15EC:     If global_64 Then
  loc_004E15F2:       If global_64 = 1 Then
  loc_004E160F:         If global_64 >= global_64 Then
  loc_004E1611:           var_8068 = Err.Raise
  loc_004E1617:         End If
  loc_004E161C:       Else
  loc_004E161C:       End If
  loc_004E161C:       var_806C = Err.Raise
  loc_004E1624:     End If
  loc_004E1629:     If global_64 Then
  loc_004E162F:       If global_64 = 1 Then
  loc_004E163F:         If global_64 >= global_64 Then
  loc_004E1641:           var_8070 = Err.Raise
  loc_004E1647:         End If
  loc_004E1650:       Else
  loc_004E1650:       End If
  loc_004E1650:       var_8074 = Err.Raise
  loc_004E1656:     End If
  loc_004E1670:     global_88 = CLng(InStrB(global_116(-300), global_96, ChrB(vbDataObject), 0))
  loc_004E1673:   End If
  loc_004E1673: End If
  loc_004E167B: If global_88 < global_116 Then
  loc_004E16D4:   global_104 = Mid(global_96, global_88(1), (global_116 - global_88))
  loc_004E16F8: Else
  loc_004E1708: End If
  loc_004E170D: If global_68 > 0 Then
  loc_004E1738:   If (ebx - (global_116 - global_88)) < global_68 Then
  loc_004E174F:   End If
  loc_004E174F:   var_807C = (ecx - (global_116 - global_88))
  loc_004E1760:   var_8080 = FormVisor.Proc_16_36_4E0390
  loc_004E1798:   global_100 = global_104 & Mid(Mid(global_96, global_88(1), (global_116 - global_88)), global_88(1), (global_116 - global_88))
  loc_004E17B4:   (global_116 - global_88) = (global_116 - global_88) + global_112
  loc_004E17B8:   global_116 = (global_116 - global_88)+global_112
  loc_004E17BB: End If
  loc_004E17C4: global_56 = global_80 + 1+1
  loc_004E17C8: GoTo loc_004E17F0
  loc_004E17EF: Exit Sub
  loc_004E17F0: ' Referenced from: 004E17C8
End Sub

Private Sub Proc_16_41_4E1AF0() '4E1AF0
  loc_004E1B6C: var_800C = Global.Unload FormVisor
  loc_004E1B92: GoTo loc_004E1B9E
  loc_004E1B9D: Exit Sub
  loc_004E1B9E: ' Referenced from: 004E1B92
End Sub
