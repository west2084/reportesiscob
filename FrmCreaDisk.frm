VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FrmCreaDisk
  Caption = "Intercambio de información entre unidades"
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 825
  ClientTop = 1335
  ClientWidth = 7965
  ClientHeight = 6195
  PaletteMode = 1
  Begin VB.ComboBox ComAnio
    Left = 4275
    Top = 4635
    Width = 915
    Height = 360
    Text = "1997"
    TabIndex = 7
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
  Begin VB.ComboBox ComMes
    Left = 2115
    Top = 4635
    Width = 1950
    Height = 315
    Text = "DICIEMBRE"
    TabIndex = 6
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
  Begin VB.ComboBox ComTipMOD
    Style = 2
    Left = 2115
    Top = 5580
    Width = 1635
    Height = 315
    TabIndex = 9
  End
  Begin VB.PictureBox PicTipMov
    Index = 3
    Picture = "FrmCreaDisk.frx":0000
    Left = 8685
    Top = 270
    Width = 555
    Height = 600
    TabIndex = 30
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin VB.PictureBox PicTipMov
    Index = 2
    Picture = "FrmCreaDisk.frx":1762
    Left = 9315
    Top = 855
    Width = 555
    Height = 600
    TabIndex = 28
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin VB.PictureBox PicTipMov
    Index = 1
    Picture = "FrmCreaDisk.frx":2EC4
    Left = 8730
    Top = 855
    Width = 555
    Height = 600
    TabIndex = 27
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin VB.PictureBox PicTipMov
    Index = 0
    Picture = "FrmCreaDisk.frx":4626
    Left = 8640
    Top = 135
    Width = 555
    Height = 600
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin VB.Frame FrmTipoMov
    BackColor = &HC0C0C0&
    Left = 1845
    Top = 900
    Width = 4560
    Height = 645
    TabIndex = 25
    Begin VB.OptionButton OptGenera
      Caption = "Crear &Base de Datos"
      BackColor = &HC0C0C0&
      Left = 90
      Top = 270
      Width = 2085
      Height = 195
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
    Begin VB.OptionButton OptBorra
      Caption = "&Borrado de Archivos"
      BackColor = &HC0C0C0&
      Left = 2340
      Top = 225
      Width = 2055
      Height = 285
      TabIndex = 2
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
    Begin VB.OptionButton OptCopy
      Caption = "&Copia de Archivos"
      BackColor = &HC0C0C0&
      Left = 90
      Top = 225
      Width = 1920
      Height = 285
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
  End
  Begin VB.ComboBox ComTipArch
    Style = 2
    Left = 2115
    Top = 5130
    Width = 3075
    Height = 315
    TabIndex = 8
  End
  Begin VB.DirListBox dirList
    Left = 8775
    Top = 4095
    Width = 1575
    Height = 1605
    TabIndex = 21
  End
  Begin VB.FileListBox filList
    Left = 8040
    Top = 1560
    Width = 1815
    Height = 2040
    TabIndex = 20
    Pattern = "*.t*;*.bat"
  End
  Begin Threed.SSPanel PanInfoUniC
    Left = 360
    Top = 1620
    Width = 3600
    Height = 2850
    TabIndex = 14
    OleObjectBlob = "FrmCreaDisk.frx":5D88
    Begin VB.ListBox LstArchUniC
      Left = 270
      Top = 990
      Width = 3075
      Height = 1035
      TabIndex = 5
      Sorted = -1  'True
      DragIcon = "FrmCreaDisk.frx":5DD9
      MultiSelect = 2 'Extendeded
    End
    Begin Threed.SSCommand CmdDirDer
      Left = 2565
      Top = 2115
      Width = 735
      Height = 600
      TabIndex = 10
      OleObjectBlob = "FrmCreaDisk.frx":621B
    End
    Begin VB.Label LblTipUNIC
      BackColor = &H808000&
      ForeColor = &HFFFFFF&
      Left = 270
      Top = 630
      Width = 3075
      Height = 285
      TabIndex = 34
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblTipMov
      Caption = "Oprimir para aceptar la copia de archivos"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 600
      Top = 2160
      Width = 1695
      Height = 375
      TabIndex = 22
      Alignment = 2 'Center
    End
    Begin VB.Label LblSpaUni
      Index = 0
      BackColor = &HC0C0C0&
      Left = 630
      Top = 360
      Width = 2220
      Height = 285
      TabIndex = 18
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblTitUni
      Caption = "ESPACIO LIBRE EN UNIDAD C:"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 240
      Top = 120
      Width = 3015
      Height = 255
      TabIndex = 16
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
  Begin Threed.SSPanel PanInfoUniA
    Left = 4185
    Top = 1605
    Width = 3600
    Height = 2850
    TabIndex = 15
    OleObjectBlob = "FrmCreaDisk.frx":66A5
    Begin VB.ListBox LstArchUniA
      Left = 270
      Top = 990
      Width = 3075
      Height = 1035
      TabIndex = 11
      Sorted = -1  'True
      DragIcon = "FrmCreaDisk.frx":66F6
      MultiSelect = 2 'Extendeded
    End
    Begin Threed.SSCommand CmdDirIzq
      Left = 270
      Top = 2115
      Width = 735
      Height = 600
      TabIndex = 12
      OleObjectBlob = "FrmCreaDisk.frx":6B38
    End
    Begin VB.Label LblTipDat
      BackColor = &H808000&
      ForeColor = &HFFFFFF&
      Left = 270
      Top = 630
      Width = 3075
      Height = 285
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblTipMov
      Caption = "Oprimir para aceptar la copia de archivos"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 1200
      Top = 2160
      Width = 1695
      Height = 495
      TabIndex = 23
      Alignment = 2 'Center
    End
    Begin VB.Label LblSpaUni
      Index = 1
      BackColor = &HC0C0C0&
      Left = 720
      Top = 360
      Width = 2220
      Height = 285
      TabIndex = 19
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label LblTitUni
      Caption = "ESPACIO LIBRE EN UNIDAD A:"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 315
      Top = 120
      Width = 3120
      Height = 240
      TabIndex = 17
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
  Begin Threed.SSPanel PnlCopy
    Left = 2430
    Top = 900
    Width = 3390
    Height = 420
    TabIndex = 29
    OleObjectBlob = "FrmCreaDisk.frx":6FC2
  End
  Begin Threed.SSCommand CmdInfUniA
    Left = 6480
    Top = 360
    Width = 1290
    Height = 1185
    DragIcon = "FrmCreaDisk.frx":7019
    TabIndex = 4
    OleObjectBlob = "FrmCreaDisk.frx":745B
  End
  Begin Threed.SSCommand CmdInfUniC
    Left = 495
    Top = 360
    Width = 1290
    Height = 1185
    DragIcon = "FrmCreaDisk.frx":B10E
    TabIndex = 0
    OleObjectBlob = "FrmCreaDisk.frx":B550
  End
  Begin Threed.SSCommand CmdCan
    Left = 6075
    Top = 5220
    Width = 1680
    Height = 600
    TabIndex = 13
    OleObjectBlob = "FrmCreaDisk.frx":F517
  End
  Begin VB.Label LblAnioMes
    Caption = "Elección Año y Mes"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 330
    Top = 4635
    Width = 1545
    Height = 285
    TabIndex = 35
  End
  Begin VB.Label LblTitUni
    Caption = "Módulo Activo"
    Index = 5
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 360
    Top = 5580
    Width = 1545
    Height = 300
    TabIndex = 32
  End
  Begin VB.Label LblInfUnidad
    Caption = "Informaciòn de la Unidad A:"
    BackColor = &HC0FFFF&
    Left = 4900
    Top = 120
    Width = 1455
    Height = 510
    TabIndex = 31
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LblTitUni
    Caption = "Tipo de Archivos"
    Index = 4
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 360
    Top = 5130
    Width = 1545
    Height = 300
    TabIndex = 24
  End
End

Attribute VB_Name = "FrmCreaDisk"


Private Sub Form_Load() '49ACC0
  Dim Me As Variant
  Dim var_30 As Variant
  Dim var_B8 As Variant
  loc_0049AD2D: global_004F1210 = "C:\VREP\"
  loc_0049AD53: global_004F120C = global_004F1210 & "LGPRCV\"
  loc_0049AD62: On Error GoTo loc_0049B556
  loc_0049ADBD: If (Dir(global_004F120C, 16) = 0) + 1 Then
  loc_0049ADCD:   MkDir global_004F120C
  loc_0049ADD3: End If
  loc_0049ADF2: global_004F120C = global_004F1210 & "LGPCOP\"
  loc_0049AE01: On Error GoTo loc_0049B556
  loc_0049AE5C: If (Dir(global_004F120C, 16) = 0) + 1 Then
  loc_0049AE6B:   MkDir global_004F120C
  loc_0049AE71: End If
  loc_0049AE78: var_801C = Proc_48DF50(1, Me, 0)
  loc_0049AE93: var_B8 = FrmCreaDisk.FrmCreaDisk_CargaMeses
  loc_0049AEE5: var_B8 = FrmCreaDisk.FrmCreaDisk_CargaAnios
  loc_0049AF42: var_B8 = FrmCreaDisk.ComTipArch
  loc_0049AF57: var_B8.Clear
  loc_0049AF5F: var_BC = var_B8.Clear
  loc_0049AFC8: var_B8 = FrmCreaDisk.ComTipArch
  loc_0049B013: var_B8.AddItem "Arch. Comprim. Respaldo para LGP (*.zip)", var_80
  loc_0049B01B: var_BC = var_B8.AddItem "Arch. Comprim. Respaldo para LGP (*.zip)", var_80
  loc_0049B084: var_B8 = FrmCreaDisk.ComTipArch
  loc_0049B0CF: var_B8.AddItem "Arch. Base Datos Descomp. (*.mdb,*.ldb,*.ctl)", var_80
  loc_0049B0D7: var_BC = var_B8.AddItem "Arch. Base Datos Descomp. (*.mdb,*.ldb,*.ctl)", var_80
  loc_0049B140: var_B8 = FrmCreaDisk.ComTipArch
  loc_0049B18B: var_B8.AddItem "Arch. para crear BD de LGP (*.BDC ò *.BDR)", var_80
  loc_0049B193: var_BC = var_B8.AddItem "Arch. para crear BD de LGP (*.BDC ò *.BDR)", var_80
  loc_0049B1FC: var_B8 = FrmCreaDisk.ComTipArch
  loc_0049B247: var_B8.AddItem "Arch. para Sistema Parcialidades (SP*.TXT)", var_80
  loc_0049B24F: var_BC = var_B8.AddItem "Arch. para Sistema Parcialidades (SP*.TXT)", var_80
  loc_0049B2B8: var_B8 = FrmCreaDisk.ComTipArch
  loc_0049B303: var_B8.AddItem "Reportes en PC (*.t*)", var_80
  loc_0049B30B: var_BC = var_B8.AddItem "Reportes en PC (*.t*)", var_80
  loc_0049B374: var_B8 = FrmCreaDisk.ComTipMOD
  loc_0049B389: var_B8.Clear
  loc_0049B391: var_BC = var_B8.Clear
  loc_0049B3FA: var_B8 = FrmCreaDisk.ComTipMOD
  loc_0049B445: var_B8.AddItem "DATOS DE COP", var_80
  loc_0049B44D: var_BC = var_B8.AddItem "DATOS DE COP", var_80
  loc_0049B4B6: var_B8 = FrmCreaDisk.ComTipMOD
  loc_0049B501: var_B8.AddItem "DATOS DE RCV", var_80
  loc_0049B509: var_BC = var_B8.AddItem "DATOS DE RCV", var_80
  loc_0049B551: GoTo loc_0049B846
  loc_0049B556: ' Referenced from: 0049AD62
  loc_0049B55D: var_8028 = Err
  loc_0049B568: Set var_30 = Err
  loc_0049B56E: var_B8 = var_30
  loc_0049B58A: var_B4 = var_30.Number
  loc_0049B58F: var_BC = var_B4
  loc_0049B5F2: If (var_B4 <> 75) Then
  loc_0049B67A:   MsgBox("ERROR AL CREAR DIRECTORIO DESTINO", 0, "LGP Copia de Archivos", 10, 10)
  loc_0049B6C4:   var_802C = Err
  loc_0049B6CF:   Set var_30 = Err
  loc_0049B6D5:   var_B8 = var_30
  loc_0049B6EE:   var_2C = var_30.Description
  loc_0049B6F3:   var_BC = var_2C
  loc_0049B761:   MsgBox(var_2C, 0, 10, 10, 10)
  loc_0049B7C9:   var_B8 = var_110
  loc_0049B7D7:   Set var_30 = Me
  loc_0049B7ED:   var_B8.Unload var_30
  loc_0049B7F2:   var_BC = var_B8.Unload var_30
  loc_0049B837: End If
  loc_0049B840: var_8034 = Resume(-1)
  loc_0049B846: ' Referenced from: 0049B551
  loc_0049B846: Exit Sub
  loc_0049B851: GoTo loc_0049B881
  loc_0049B880: Exit Sub
  loc_0049B881: ' Referenced from: 0049B851
End Sub

Private Sub Form_Unload(Cancel As Integer) '49E740
  loc_0049E77F: var_8004 = Close
End Sub

Private Sub Form_Activate() '49A430
  Dim var_2C As Variant
  loc_0049A536: var_24 = Trim(Global.App.Path)
  loc_0049A5B3: If (Right(var_24, 1) <> "\") Then
  loc_0049A5C9:   var_24 = var_24 & "\"
  loc_0049A5CF: End If
  loc_0049A5E3: var_20 = var_24 & "BMP\"
  loc_0049A5EB: On Error GoTo loc_0049A9D1
  loc_0049A630: FrmCreaDisk.CmdDirDer.Visible = var_78
  loc_0049A674: FrmCreaDisk.CmdDirIzq.Visible = var_78
  loc_0049A6BC: FrmCreaDisk.LblTipMov(0).Visible = False
  loc_0049A72A: FrmCreaDisk.LblTipMov(1).Visible = False
  loc_0049A772: FrmCreaDisk.OptCopy.Value = True
  loc_0049A7B0: FrmCreaDisk.ComTipMOD.ListIndex = 0
  loc_0049A7EF: Set var_2C = FrmCreaDisk.ComTipArch
  loc_0049A825: var_B8 = var_2C.Width
  loc_0049A888: var_B4 = Global.Screen.Width
  loc_0049A8B7: If global_004F1000 = 0 Then
  loc_0049A8C1: Else
  loc_0049A8CC: End If
  loc_0049A8DB: Global.Screen.Left = ((var_B4 - var_B8) / 2)
  loc_0049A8ED: CheckObj(Err.Number, Me, global_0045BE10, 116)
  loc_0049A902: var_B8 = Global.Screen.Height
  loc_0049A965: var_B4 = Global.Screen.Height
  loc_0049A98E: If global_004F1000 = 0 Then
  loc_0049A998: Else
  loc_0049A9A3: End If
  loc_0049A9B2: Global.Screen.Top = ((var_B4 - var_B8) / 2)
  loc_0049A9C4: CheckObj(Err.Number, Me, global_0045BE10, 124)
  loc_0049A9CF: GoTo loc_0049AA3A
  loc_0049A9D1: ' Referenced from: 0049A5EB
  loc_0049AA19: MsgBox("ERROR AL CARGAR IMAGENES PARA EL PROGRAMA", 48, 10, 10, 10)
  loc_0049AA3A: Exit Sub
  loc_0049AA46: GoTo loc_0049AA7D
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '49AAC0
  loc_0049AB12: If KeyAscii = 46 Then
  loc_0049AB6B:   If FrmCreaDisk.OptBorra.Visible Then
  loc_0049AB88:     FrmCreaDisk.OptBorra.Value = True
  loc_0049ABEF:     If CBool(FrmCreaDisk.CmdDirIzq.Visible) Then
  loc_0049ABF4:       var_8008 = FrmCreaDisk.CmdDirIzq_UnknownEvent_9
  loc_0049AC10:     End If
  loc_0049AC54:     If CBool(FrmCreaDisk.CmdDirDer.Visible) Then
  loc_0049AC59:       var_8010 = FrmCreaDisk.CmdDirDer_UnknownEvent_9
  loc_0049AC75:     End If
  loc_0049AC75:   End If
  loc_0049AC75: End If
  loc_0049AC81: GoTo loc_0049AC96
  loc_0049AC95: Exit Sub
  loc_0049AC96: ' Referenced from: 0049AC81
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '49E680
  loc_0049E6DF: FrmCreaDisk.LblInfUnidad.Visible = False
  loc_0049E70E: GoTo loc_0049E71A
  loc_0049E719: Exit Sub
  loc_0049E71A: ' Referenced from: 0049E70E
End Sub

Private Sub FrmTipoMov_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) '49E7B0
  loc_0049E80F: FrmCreaDisk.LblInfUnidad.Visible = False
  loc_0049E83E: GoTo loc_0049E84A
  loc_0049E849: Exit Sub
  loc_0049E84A: ' Referenced from: 0049E83E
End Sub

Private Sub dirList_Change() '49A300
  loc_0049A3A1: FrmCreaDisk.filList.Path = FrmCreaDisk.dirList.Path
  loc_0049A3E7: GoTo loc_0049A406
  loc_0049A405: Exit Sub
  loc_0049A406: ' Referenced from: 0049A3E7
End Sub

Private Sub LstArchUniC_Click() '49F100
  loc_0049F1A9: If (FrmCreaDisk.LstArchUniC.ListCount > 0) Then
  loc_0049F1E3:   FrmCreaDisk.CmdDirDer.Visible = True
  loc_0049F221:   FrmCreaDisk.CmdDirIzq.Visible = FrmCreaDisk.CmdDirIzq
  loc_0049F269:   FrmCreaDisk.LblTipMov(0).Visible = True
  loc_0049F2D7:   FrmCreaDisk.LblTipMov(1).Visible = False
  loc_0049F363:   If (var_18 < FrmCreaDisk.LstArchUniA.ListCount) Then
  loc_0049F380:     FrmCreaDisk.LstArchUniA.Selected = var_18
  loc_0049F3B1:     var_18 = var_18(1)
  loc_0049F3B4:     GoTo loc_0049F30F
  loc_0049F3B9:   End If
  loc_0049F3B9: End If
  loc_0049F3C5: GoTo loc_0049F3DB
  loc_0049F3DA: Exit Sub
  loc_0049F3DB: ' Referenced from: 0049F3C5
End Sub

Private Sub LstArchUniC_DblClick() '49F9A0
  loc_0049FA3C: If (ebx < FrmCreaDisk.LstArchUniC.ListCount) Then
  loc_0049FA5A:   FrmCreaDisk.LstArchUniC.Selected = 0
  loc_0049FA87:   GoTo loc_0049F9E8
  loc_0049FA8C: End If
  loc_0049FA98: GoTo loc_0049FAA4
  loc_0049FAA3: Exit Sub
  loc_0049FAA4: ' Referenced from: 0049FA98
End Sub

Private Sub LstArchUniC_DragDrop(Source As Control, X As Single, Y As Single) '49FAD0
  loc_0049FB1C: If global_52 = 0 Then
  loc_0049FB26:   If global_54 Then
  loc_0049FB78:     If FrmCreaDisk.OptCopy.Visible Then
  loc_0049FB91:       FrmCreaDisk.OptCopy.Value = True
  loc_0049FBBB:       var_8004 = FrmCreaDisk.CmdDirIzq_UnknownEvent_9
  loc_0049FBD7:     End If
  loc_0049FBD7:   End If
  loc_0049FBD7: End If
  loc_0049FBE3: GoTo loc_0049FBEF
  loc_0049FBEE: Exit Sub
  loc_0049FBEF: ' Referenced from: 0049FBE3
End Sub

Private Sub LstArchUniC_GotFocus() '49FC10
  loc_0049FC8F: FrmCreaDisk.CmdDirDer.Visible = True
  loc_0049FCCF: FrmCreaDisk.CmdDirIzq.Visible = FrmCreaDisk.CmdDirIzq
  loc_0049FCEA: GoTo loc_0049FCF6
  loc_0049FCF5: Exit Sub
  loc_0049FCF6: ' Referenced from: 0049FCEA
End Sub

Private Sub LstArchUniC_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '49FD20
  Dim var_20 As FrmCreaDisk.LstArchUniC
  Dim var_18 As Variant
  Dim var_30 As Variant
  Dim var_48 As ListBox
  loc_0049FD77: global_52 = &HFFFFFF
  loc_0049FD92: Set var_20 = FrmCreaDisk.LstArchUniC
  loc_0049FDA4: var_48 = var_20
  loc_0049FDB5: Set var_18 = FrmCreaDisk.CmdInfUniC
  loc_0049FDBC: var_30 = var_18.DragIcon
  loc_0049FDDB: var_20.DragIcon = var_18.DragIcon
  loc_0049FE67: If (FrmCreaDisk.LstArchUniC.ListCount > 0) Then
  loc_0049FE9E:   FrmCreaDisk.LstArchUniC.Drag 10
  loc_0049FEC5: End If
  loc_0049FED1: GoTo loc_0049FEF4
  loc_0049FEF3: Exit Sub
  loc_0049FEF4: ' Referenced from: 0049FED1
End Sub

Private Sub CmdInfUniC_UnknownEvent_0 '497F10
  loc_00497F74: FrmCreaDisk.LblInfUnidad.Visible = True
  loc_00497FB5: FrmCreaDisk.LblInfUnidad.Caption = "Informaciòn de la Unidad C:"
  loc_00497FF0: FrmCreaDisk.LblInfUnidad.Left = CLng(1800)
  loc_0049802D: FrmCreaDisk.LblInfUnidad.Top = CLng(80)
  loc_00498057: GoTo loc_00498063
  loc_00498062: Exit Sub
  loc_00498063: ' Referenced from: 00498057
End Sub

Private Sub CmdInfUniC_UnknownEvent_1 '498090
  loc_004980EF: FrmCreaDisk.LblInfUnidad.Visible = False
  loc_0049811E: GoTo loc_0049812A
  loc_00498129: Exit Sub
  loc_0049812A: ' Referenced from: 0049811E
End Sub

Private Sub CmdInfUniC_UnknownEvent_9 '4977E0
  Dim Me As Variant
  loc_00497891: FrmCreaDisk.CmdDirDer.Visible = var_74
  loc_004978D7: FrmCreaDisk.CmdDirIzq.Visible = var_74
  loc_00497923: FrmCreaDisk.LblTipMov(0).Visible = False
  loc_00497991: FrmCreaDisk.LblTipMov(1).Visible = False
  loc_004979D9: FrmCreaDisk.ComTipArch.Visible = True
  loc_00497A17: FrmCreaDisk.ComMes.Visible = True
  loc_00497A55: FrmCreaDisk.ComAnio.Visible = True
  loc_00497A93: FrmCreaDisk.ComTipMOD.Visible = True
  loc_00497AD1: FrmCreaDisk.LblAnioMes.Visible = True
  loc_00497B35: FrmCreaDisk.LblTitUni(4).Visible = True
  loc_00497BA3: FrmCreaDisk.LblTitUni(5).Visible = True
  loc_00497BE9: FrmCreaDisk.LstArchUniC.Clear
  loc_00497C25: FrmCreaDisk.LstArchUniA.Clear
  loc_00497C87: FrmCreaDisk.CmdDirDer.Visible = var_74
  loc_00497CB1: var_1C = Proc_48E340("C:", Me, 0)
  loc_00497CBE: If var_1C <> True Then
  loc_00497D94:   FrmCreaDisk.LblSpaUni(0).Caption = Format(var_1C, "#,###,###,##0") & "   Bytes"
  loc_00497DD2:   var_8010 = FrmCreaDisk.Proc_8_44_49B8C0(var_B0)
  loc_00497DE0:   If var_B0 < 0 Then GoTo loc_00497E8F
  loc_00497DFD:   FrmCreaDisk.OptCopy.Value = True
  loc_00497E26: Else
  loc_00497E6E:   MsgBox("ERROR AL CARGAR BASES DE DATOS DE LA UNIDAD c:\", 0, 10, 10, 10)
  loc_00497E8F: End If
  loc_00497E9B: GoTo loc_00497ED2
  loc_00497ED1: Exit Sub
  loc_00497ED2: ' Referenced from: 00497E9B
End Sub

Private Sub CmdInfUniC_UnknownEvent_E '498150
  loc_004981B4: FrmCreaDisk.LblInfUnidad.Visible = True
  loc_004981F5: FrmCreaDisk.LblInfUnidad.Caption = "Informaciòn de la Unidad C:"
  loc_00498230: FrmCreaDisk.LblInfUnidad.Left = CLng(1800)
  loc_0049826D: FrmCreaDisk.LblInfUnidad.Top = CLng(80)
  loc_00498297: GoTo loc_004982A3
  loc_004982A2: Exit Sub
  loc_004982A3: ' Referenced from: 00498297
End Sub

Private Sub OptBorra_Click() '49FF20
  loc_0049FFDE: var_2C = FrmCreaDisk.PicTipMov(0).Picture
  loc_004A000C: FrmCreaDisk.CmdDirDer.Picture
  loc_004A0099: var_2C = FrmCreaDisk.PicTipMov(0).Picture
  loc_004A00C7: FrmCreaDisk.CmdDirIzq.Picture
  loc_004A012D: FrmCreaDisk.LblTipMov(0).Caption = "Oprimir para borrar archivos seleccionados"
  loc_004A019A: FrmCreaDisk.LblTipMov(1).Caption = "Oprimir para borrar archivos seleccionados"
  loc_004A01CD: GoTo loc_004A01F4
  loc_004A01F3: Exit Sub
  loc_004A01F4: ' Referenced from: 004A01CD
End Sub

Private Sub OptGenera_Click() '4A0760
  loc_004A081E: var_2C = FrmCreaDisk.PicTipMov(3).Picture
  loc_004A084C: FrmCreaDisk.CmdDirDer.Picture
  loc_004A08B2: FrmCreaDisk.LblTipMov(0).Caption = "Oprimir para iniciar la creación de la BD para LGP"
  loc_004A08F7: FrmCreaDisk.LblTipUNIC.Caption = "Archivos para Crear BD de LGP"
  loc_004A0924: GoTo loc_004A094B
  loc_004A094A: Exit Sub
  loc_004A094B: ' Referenced from: 004A0924
End Sub

Private Sub OptCopy_Click() '4A0220
  loc_004A02DE: var_2C = FrmCreaDisk.PicTipMov(2).Picture
  loc_004A030C: FrmCreaDisk.CmdDirDer.Picture
  loc_004A0399: var_2C = FrmCreaDisk.PicTipMov(1).Picture
  loc_004A03C7: FrmCreaDisk.CmdDirIzq.Picture
  loc_004A042D: FrmCreaDisk.LblTipMov(0).Caption = "Oprimir para aceptar la copia de archivos"
  loc_004A049A: FrmCreaDisk.LblTipMov(1).Caption = "Oprimir para aceptar la copia de archivos"
  loc_004A04CD: GoTo loc_004A04F4
  loc_004A04F3: Exit Sub
  loc_004A04F4: ' Referenced from: 004A04CD
End Sub

Private Sub PanInfoUniA_UnknownEvent_C '4A0970
  loc_004A09CF: FrmCreaDisk.LblInfUnidad.Visible = False
  loc_004A09FE: GoTo loc_004A0A0A
  loc_004A0A09: Exit Sub
  loc_004A0A0A: ' Referenced from: 004A09FE
End Sub

Private Sub PanInfoUniC_UnknownEvent_C '4A0A30
  loc_004A0A8F: FrmCreaDisk.LblInfUnidad.Visible = False
  loc_004A0ABE: GoTo loc_004A0ACA
  loc_004A0AC9: Exit Sub
  loc_004A0ACA: ' Referenced from: 004A0ABE
End Sub

Private Sub LstArchUniA_Click() '49E870
  loc_0049E919: If (FrmCreaDisk.LstArchUniA.ListCount > 0) Then
  loc_0049E952:   FrmCreaDisk.CmdDirDer.Visible = FrmCreaDisk.CmdDirDer
  loc_0049E991:   FrmCreaDisk.CmdDirIzq.Visible = True
  loc_0049E9D9:   FrmCreaDisk.LblTipMov(0).Visible = False
  loc_0049EA47:   FrmCreaDisk.LblTipMov(1).Visible = True
  loc_0049EAD3:   If (var_18 < FrmCreaDisk.LstArchUniC.ListCount) Then
  loc_0049EAF0:     FrmCreaDisk.LstArchUniC.Selected = var_18
  loc_0049EB21:     var_18 = var_18(1)
  loc_0049EB24:     GoTo loc_0049EA7F
  loc_0049EB29:   End If
  loc_0049EB29: End If
  loc_0049EB35: GoTo loc_0049EB4B
  loc_0049EB4A: Exit Sub
  loc_0049EB4B: ' Referenced from: 0049EB35
End Sub

Private Sub LstArchUniA_DblClick() '49EB80
  loc_0049EC1C: If (ebx < FrmCreaDisk.LstArchUniA.ListCount) Then
  loc_0049EC3A:   FrmCreaDisk.LstArchUniA.Selected = 0
  loc_0049EC67:   GoTo loc_0049EBC8
  loc_0049EC6C: End If
  loc_0049EC78: GoTo loc_0049EC84
  loc_0049EC83: Exit Sub
  loc_0049EC84: ' Referenced from: 0049EC78
End Sub

Private Sub LstArchUniA_DragDrop(Source As Control, X As Single, Y As Single) '49ECB0
  loc_0049ECFC: If global_54 = 0 Then
  loc_0049ED06:   If global_52 Then
  loc_0049ED58:     If FrmCreaDisk.OptCopy.Visible Then
  loc_0049ED71:       FrmCreaDisk.OptCopy.Value = True
  loc_0049ED9B:       var_8004 = FrmCreaDisk.CmdDirDer_UnknownEvent_9
  loc_0049EDB7:     End If
  loc_0049EDB7:   End If
  loc_0049EDB7: End If
  loc_0049EDC3: GoTo loc_0049EDCF
  loc_0049EDCE: Exit Sub
  loc_0049EDCF: ' Referenced from: 0049EDC3
End Sub

Private Sub LstArchUniA_GotFocus() '49EDF0
  loc_0049EE6A: FrmCreaDisk.CmdDirDer.Visible = FrmCreaDisk.CmdDirDer
  loc_0049EEAB: FrmCreaDisk.CmdDirIzq.Visible = True
  loc_0049EEC6: GoTo loc_0049EED2
  loc_0049EED1: Exit Sub
  loc_0049EED2: ' Referenced from: 0049EEC6
End Sub

Private Sub LstArchUniA_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) '49EF00
  Dim var_20 As FrmCreaDisk.LstArchUniA
  Dim var_18 As Variant
  Dim var_30 As Variant
  Dim var_48 As ListBox
  loc_0049EF5B: global_54 = &HFFFFFF
  loc_0049EF72: Set var_20 = FrmCreaDisk.LstArchUniA
  loc_0049EF84: var_48 = var_20
  loc_0049EF95: Set var_18 = FrmCreaDisk.CmdInfUniC
  loc_0049EF9C: var_30 = var_18.DragIcon
  loc_0049EFBB: var_20.DragIcon = var_18.DragIcon
  loc_0049F047: If (FrmCreaDisk.LstArchUniA.ListCount > 0) Then
  loc_0049F07E:   FrmCreaDisk.LstArchUniA.Drag 10
  loc_0049F0A5: End If
  loc_0049F0B1: GoTo loc_0049F0D4
  loc_0049F0D3: Exit Sub
  loc_0049F0D4: ' Referenced from: 0049F0B1
End Sub

Private Sub CmdDirDer_UnknownEvent_9 '496130
  Dim var_20 As Variant
  loc_004961E1: Global.Screen.MousePointer = CLng(11)
  loc_0049625C: If (FrmCreaDisk.LstArchUniC.ListCount > 0) Then
  loc_0049627E:   var_A4 = FrmCreaDisk.OptCopy.Visible
  loc_004962AA:   Set var_20 = FrmCreaDisk.OptCopy
  loc_004962B8:   var_A8 = var_20.Value
  loc_004962FA:   If (var_20.Value And var_A4) Then
  loc_0049630E:     Set var_20 = FrmCreaDisk.LstArchUniC
  loc_00496318:     var_18 = "COPIA"
  loc_00496341:     var_8008 = FrmCreaDisk.Proc_8_46_49C800(0)
  loc_0049636E:     If Not (var_A4) Then
  loc_004963B8:       MsgBox("ERROR AL COPIAR EN UNIDAD A:", 0, 10, 10, 10)
  loc_004963D9:     End If
  loc_004963D9:   End If
  loc_00496421:   Set var_20 = FrmCreaDisk.OptBorra
  loc_0049642F:   var_A8 = var_20.Value
  loc_00496471:   If (var_20.Value And FrmCreaDisk.OptBorra.Visible) Then
  loc_00496485:     Set var_20 = FrmCreaDisk.LstArchUniC
  loc_0049648F:     var_18 = "BORRA"
  loc_004964B8:     var_800C = FrmCreaDisk.Proc_8_46_49C800(0)
  loc_004964DD:     var_8010 = FrmCreaDisk.ComTipArch_Click
  loc_004964F9:   End If
  loc_00496515:   var_A4 = FrmCreaDisk.OptGenera.Visible
  loc_00496541:   Set var_20 = FrmCreaDisk.OptGenera
  loc_0049654F:   var_A8 = var_20.Value
  loc_00496591:   If (var_20.Value And var_A4) Then
  loc_004965AE:     var_8014 = FrmCreaDisk.FrmCreaDisk_CargaSeleccion(FrmCreaDisk.LstArchUniC)
  loc_004965E1:     Set var_20 = FrmCreaDisk.LstArchUniC
  loc_004965EB:     var_18 = "CREA"
  loc_00496614:     var_8018 = FrmCreaDisk.Proc_8_46_49C800(0)
  loc_00496641:     If Not (var_A4) Then
  loc_0049668B:       MsgBox("ERROR AL CREAR BASE DE DATOS", 0, 10, 10, 10)
  loc_004966AC:     End If
  loc_004966AC:   End If
  loc_004966AC: End If
  loc_004966E5: FrmCreaDisk.PnlCopy.Visible = var_68
  loc_00496746: Global.Screen.MousePointer = 0
  loc_00496777: var_8020 = FrmCreaDisk.Estado_Controles(FFFFFFFFh)
  loc_0049679B: GoTo loc_004967D2
  loc_004967D1: Exit Sub
  loc_004967D2: ' Referenced from: 0049679B
End Sub

Private Sub CmdCan_UnknownEvent_9 '496060
  Dim global_004F1DB4 As Global
  loc_004960D9: global_004F1DB4.Unload Me
  loc_00496102: GoTo loc_0049610E
  loc_0049610D: Exit Sub
  loc_0049610E: ' Referenced from: 00496102
End Sub

Private Sub ComTipArch_Click() '498610
  Dim var_20 As Variant
  Dim var_24 As Variant
  Dim var_28 As FrmCreaDisk.LblTipUNIC
  Dim var_E8 As Label
  loc_004986E9: FrmCreaDisk.CmdDirDer.Visible = var_A4
  loc_00498706: Set var_20 = FrmCreaDisk.LblTipMov
  loc_00498710: var_D8 = var_20
  loc_00498716: Set var_24 = var_20(0)
  loc_00498744: var_E0 = var_24
  loc_0049874C: var_24.Visible = False
  loc_0049878D: Set var_20 = FrmCreaDisk.FrmTipoMov
  loc_00498794: var_D8 = var_20
  loc_0049879A: var_20.Enabled = True
  loc_004987D1: Set var_20 = FrmCreaDisk.OptBorra
  loc_004987D8: var_D8 = var_20
  loc_004987DE: var_20.Enabled = True
  loc_00498815: Set var_20 = FrmCreaDisk.ComTipArch
  loc_00498821: var_D8 = var_20
  loc_00498855: Set var_24 = FrmCreaDisk.ComTipArch
  loc_00498861: var_E0 = var_24
  loc_004988C7: If ((var_24.ListIndex = 1) Or (var_20.ListIndex = 0)) Then
  loc_004988DB:   Set var_20 = FrmCreaDisk.ComMes
  loc_004988E2:   var_D8 = var_20
  loc_004988E8:   var_20.Enabled = True
  loc_0049891F:   Set var_20 = FrmCreaDisk.ComAnio
  loc_00498926:   var_D8 = var_20
  loc_0049892C:   var_20.Enabled = True
  loc_00498963:   Set var_20 = FrmCreaDisk.OptCopy
  loc_0049896A:   var_D8 = var_20
  loc_00498970:   var_20.Visible = True
  loc_004989A7:   Set var_20 = FrmCreaDisk.OptBorra
  loc_004989AE:   var_D8 = var_20
  loc_004989B4:   var_20.Visible = True
  loc_004989EB:   Set var_20 = FrmCreaDisk.OptGenera
  loc_004989F2:   var_D8 = var_20
  loc_004989F8:   var_20.Visible = False
  loc_00498A2F:   Set var_20 = FrmCreaDisk.ComTipArch
  loc_00498A3B:   var_D8 = var_20
  loc_00498A87:   If (var_20.ListIndex = 0) Then
  loc_00498A99:     global_004F1326 = "*.ZIP"
  loc_00498AAD:     Set var_20 = FrmCreaDisk.ComTipMOD
  loc_00498AB9:     var_D8 = var_20
  loc_00498AED:     Set var_24 = FrmCreaDisk.ComTipMOD
  loc_00498AFD:     var_E0 = var_24
  loc_00498B31:     Set var_28 = FrmCreaDisk.LblTipUNIC
  loc_00498B4A:     var_E8 = var_28
  loc_00498B8C:     var_1C = CStr("Arch. Comprim. para LGP  " + Right(var_24.List(var_20.ListIndex), 3))
  loc_00498B9C:     var_28.Caption = var_1C
  loc_00498BA3:     If var_1C >= 0 Then GoTo loc_00498CD5
  loc_00498BA9:     GoTo loc_00498CC6
  loc_00498BAE:   End If
  loc_00498BBA:   global_004F1326 = "*.MDB;*.LDB;*.CTL"
  loc_00498BCE:   Set var_20 = FrmCreaDisk.ComTipMOD
  loc_00498BE0:   var_D0 = var_20.ListIndex
  loc_00498BEA:   If var_D0 < 0 Then
  loc_00498BFE:     call var_8008 = var_E8(var_D0, var_20, global_00457C54, 000000F0h, Me, 0, 0, 0)
  loc_00498C00:   End If
  loc_00498C0E:   Set var_24 = FrmCreaDisk.ComTipMOD
  loc_00498C24:   var_18 = var_24.List(var_D0)
  loc_00498C2E:   If var_18 < 0 Then
  loc_00498C42:     call var_800C = var_E8(var_18, var_24, global_00457C54, 000000F8h)
  loc_00498C44:   End If
  loc_00498C52:   Set var_28 = FrmCreaDisk.LblTipUNIC
  loc_00498C6B:   var_E8 = var_28
  loc_00498CAD:   var_1C = CStr("Arch. Descomp. para LGP  " + Right(var_18, 3))
  loc_00498CBD:   var_28.Caption = var_1C
  loc_00498CC4:   If var_1C >= 0 Then GoTo loc_00498CD5
  loc_00498CC6:   ' Referenced from: 00498BA9
  loc_00498CCF:   CheckObj(var_1C, var_E8, global_00457038, 84)
  loc_00498D33:   var_18 = FrmCreaDisk.ComMes.Text
  loc_00498D97:   Set var_24 = FrmCreaDisk.ComAnio
  loc_00498DA0:   var_E0 = var_24
  loc_00498E78:   If CBool((Trim(0) <> global_004568F4) And (Trim(var_24.Text) = global_004568F4)) Then GoTo loc_00499FDD
  loc_00498E8C:   Set var_20 = FrmCreaDisk.ComAnio
  loc_00498E95:   var_D8 = var_20
  loc_00498F2D:   If (Trim(var_20.Text) <> global_004568F4) Then
  loc_00498F41:     Set var_20 = FrmCreaDisk.ComAnio
  loc_00498F4A:     var_D8 = var_20
  loc_00499055:   End If
  loc_00499063:   Set var_20 = FrmCreaDisk.ComMes
  loc_0049906C:   var_D8 = var_20
  loc_004990D6:   Set var_24 = FrmCreaDisk.ComAnio
  loc_004990DF:   var_E0 = var_24
  loc_004991B7:   If CBool((Trim(var_20.Text) <> global_004568F4) And (Trim(var_24.Text) <> global_004568F4)) Then
  loc_004991CB:     Set var_20 = FrmCreaDisk.ComMes
  loc_004991D4:     var_D8 = var_20
  loc_0049929B:     global_004F1358 = global_004F120C & "anio" + Mid(Trim(var_20.Text), 3, 2) + "\" + Trim(Mid(var_20.Text, 1, 3)) + "\"
  loc_004992D0:   End If
  loc_00499337:   var_34 = FrmCreaDisk.PicTipMov(2).Picture
  loc_00499365:   FrmCreaDisk.CmdDirDer.Picture
  loc_004993CB:   FrmCreaDisk.LblTipMov(0).Caption = "Oprimir para aceptar la copia de archivos"
  loc_004993FC: End If
  loc_0049940A: Set var_20 = FrmCreaDisk.ComTipArch
  loc_00499416: var_D8 = var_20
  loc_00499463: If (var_20.ListIndex = 2) Then
  loc_00499477:   Set var_20 = FrmCreaDisk.ComMes
  loc_0049947E:   var_D8 = var_20
  loc_00499484:   var_20.Enabled = False
  loc_004994BB:   Set var_20 = FrmCreaDisk.ComAnio
  loc_004994C2:   var_D8 = var_20
  loc_004994C8:   var_20.Enabled = False
  loc_004994FF:   Set var_20 = FrmCreaDisk.OptCopy
  loc_00499506:   var_D8 = var_20
  loc_0049950C:   var_20.Visible = False
  loc_00499543:   Set var_20 = FrmCreaDisk.OptBorra
  loc_0049954A:   var_D8 = var_20
  loc_00499550:   var_20.Visible = True
  loc_00499587:   Set var_20 = FrmCreaDisk.OptGenera
  loc_0049958E:   var_D8 = var_20
  loc_00499594:   var_20.Visible = True
  loc_004995CB:   Set var_20 = FrmCreaDisk.PicTipMov
  loc_004995D6:   var_D8 = var_20
  loc_004995DC:   Set var_24 = var_20(3)
  loc_00499600:   var_E0 = var_24
  loc_00499630:   var_34 = var_24.Picture
  loc_0049965E:   FrmCreaDisk.CmdDirDer.Picture
  loc_00499692:   Set var_20 = FrmCreaDisk.ComTipMOD
  loc_0049969E:   var_D8 = var_20
  loc_004996EA:   If (var_20.ListIndex = 0) Then
  loc_004996F8:     global_004F1326 = global_0045C3D4
  loc_004996FE:   End If
  loc_0049970C:   Set var_20 = FrmCreaDisk.ComTipMOD
  loc_00499718:   var_D8 = var_20
  loc_00499765:   If (var_20.ListIndex = 1) Then
  loc_00499773:     global_004F1326 = global_0045C3F4
  loc_00499779:   End If
  loc_00499783:   global_004F1358 = "C:\MREPOR\"
  loc_00499797:   Set var_20 = FrmCreaDisk.PicTipMov
  loc_004997A2:   var_D8 = var_20
  loc_004997A8:   Set var_24 = var_20(3)
  loc_004997CC:   var_E0 = var_24
  loc_004997FC:   var_34 = var_24.Picture
  loc_0049982A:   FrmCreaDisk.CmdDirDer.Picture
  loc_0049985E:   Set var_20 = FrmCreaDisk.LblTipMov
  loc_00499869:   var_D8 = var_20
  loc_0049986F:   Set var_24 = var_20(0)
  loc_00499892:   var_E0 = var_24
  loc_0049989A:   var_24.Caption = "Oprimir para iniciar la creación de la BD para LGP"
  loc_004998D5:   Set var_20 = FrmCreaDisk.LblTipUNIC
  loc_004998DF:   var_D8 = var_20
  loc_004998E5:   var_20.Caption = "Arch. para crear BD para LGP "
  loc_00499908: End If
  loc_00499916: Set var_20 = FrmCreaDisk.ComTipArch
  loc_00499922: var_D8 = var_20
  loc_0049996F: If (var_20.ListIndex = 3) Then
  loc_00499983:   Set var_20 = FrmCreaDisk.ComMes
  loc_0049998A:   var_D8 = var_20
  loc_00499990:   var_20.Enabled = False
  loc_004999C7:   Set var_20 = FrmCreaDisk.ComAnio
  loc_004999CE:   var_D8 = var_20
  loc_004999D4:   var_20.Enabled = False
  loc_00499A0B:   Set var_20 = FrmCreaDisk.OptCopy
  loc_00499A12:   var_D8 = var_20
  loc_00499A18:   var_20.Visible = True
  loc_00499A4F:   Set var_20 = FrmCreaDisk.OptBorra
  loc_00499A56:   var_D8 = var_20
  loc_00499A5C:   var_20.Visible = True
  loc_00499A93:   Set var_20 = FrmCreaDisk.OptGenera
  loc_00499A9A:   var_D8 = var_20
  loc_00499AA0:   var_20.Visible = False
  loc_00499AD5:   global_004F1326 = "SP*.TXT"
  loc_00499AE5:   global_004F1358 = "C:\MREPOR\"
  loc_00499AF9:   Set var_20 = FrmCreaDisk.PicTipMov
  loc_00499B04:   var_D8 = var_20
  loc_00499B0A:   Set var_24 = var_20(2)
  loc_00499B2E:   var_E0 = var_24
  loc_00499B5E:   var_34 = var_24.Picture
  loc_00499B8C:   FrmCreaDisk.CmdDirDer.Picture
  loc_00499BC0:   Set var_20 = FrmCreaDisk.LblTipMov
  loc_00499BCB:   var_D8 = var_20
  loc_00499BD1:   Set var_24 = var_20(0)
  loc_00499BF4:   var_E0 = var_24
  loc_00499BFC:   var_24.Caption = "Oprimir para aceptar la copia de archivos"
  loc_00499C37:   Set var_20 = FrmCreaDisk.LblTipUNIC
  loc_00499C41:   var_D8 = var_20
  loc_00499C47:   var_20.Caption = "Arch. Sistema Parcialidades"
  loc_00499C6A: End If
  loc_00499C78: Set var_20 = FrmCreaDisk.ComTipArch
  loc_00499C84: var_D8 = var_20
  loc_00499CD1: If (var_20.ListIndex = 4) Then
  loc_00499CE5:   Set var_20 = FrmCreaDisk.ComMes
  loc_00499CEC:   var_D8 = var_20
  loc_00499CF2:   var_20.Enabled = False
  loc_00499D29:   Set var_20 = FrmCreaDisk.ComAnio
  loc_00499D30:   var_D8 = var_20
  loc_00499D36:   var_20.Enabled = False
  loc_00499D6D:   Set var_20 = FrmCreaDisk.OptCopy
  loc_00499D74:   var_D8 = var_20
  loc_00499D7A:   var_20.Visible = True
  loc_00499DB1:   Set var_20 = FrmCreaDisk.OptBorra
  loc_00499DB8:   var_D8 = var_20
  loc_00499DBE:   var_20.Visible = True
  loc_00499DF5:   Set var_20 = FrmCreaDisk.OptGenera
  loc_00499DFC:   var_D8 = var_20
  loc_00499E02:   var_20.Visible = False
  loc_00499E37:   global_004F1326 = "*.T*"
  loc_00499E47:   global_004F1358 = "C:\MREPOR\"
  loc_00499E5B:   Set var_20 = FrmCreaDisk.PicTipMov
  loc_00499E66:   var_D8 = var_20
  loc_00499E6C:   Set var_24 = var_20(2)
  loc_00499E90:   var_E0 = var_24
  loc_00499EC0:   var_34 = var_24.Picture
  loc_00499EEE:   FrmCreaDisk.CmdDirDer.Picture
  loc_00499F22:   Set var_20 = FrmCreaDisk.LblTipMov
  loc_00499F2D:   var_D8 = var_20
  loc_00499F33:   Set var_24 = var_20(0)
  loc_00499F56:   var_E0 = var_24
  loc_00499F5E:   var_24.Caption = "Oprimir para aceptar la copia de archivos"
  loc_00499FA5:   FrmCreaDisk.LblTipUNIC.Caption = "Reportes en PC y Arch. Asoc."
  loc_00499FC2: End If
  loc_00499FC5: var_8054 = FrmCreaDisk.CmdInfUniC_UnknownEvent_9
  loc_00499FE9: GoTo loc_0049A041
  loc_0049A040: Exit Sub
  loc_0049A041: ' Referenced from: 00499FE9
End Sub

Private Sub ComMes_Change() '498470
  loc_00498520: If (FrmCreaDisk.ComMes.Text = global_004568F4) + 1 Then
  loc_00498525:   var_8008 = FrmCreaDisk.ComTipArch_Click
  loc_00498541: End If
  loc_00498549: GoTo loc_0049855E
  loc_0049855D: Exit Sub
  loc_0049855E: ' Referenced from: 00498549
End Sub

Private Sub ComMes_Click() '498580
  loc_004985C3: var_8004 = FrmCreaDisk.ComTipArch_Click
End Sub

Private Sub ComAnio_Change() '4982D0
  loc_00498380: If (FrmCreaDisk.ComAnio.Text = global_004568F4) + 1 Then
  loc_00498385:   var_8008 = FrmCreaDisk.ComTipArch_Click
  loc_004983A1: End If
  loc_004983A9: GoTo loc_004983BE
  loc_004983BD: Exit Sub
  loc_004983BE: ' Referenced from: 004983A9
End Sub

Private Sub ComAnio_Click() '4983E0
  loc_00498423: var_8004 = FrmCreaDisk.ComTipArch_Click
End Sub

Private Sub ComTipMOD_Click() '49A070
  loc_0049A10E: If (FrmCreaDisk.ComTipMOD.ListIndex = 0) Then
  loc_0049A12D:   global_004F120C = global_004F1210 & "LGPCOP\"
  loc_0049A13F:   global_004F1360 = "COP"
  loc_0049A15C:   FrmCreaDisk.ComTipArch.ListIndex = 0
  loc_0049A18E:   If FrmCreaDisk.ComTipArch_Click >= 0 Then GoTo loc_0049A2BC
  loc_0049A194:   GoTo loc_0049A2AA
  loc_0049A199: End If
  loc_0049A1EA: If (FrmCreaDisk.ComTipMOD.ListIndex = 1) = 0 Then GoTo loc_0049A2BC
  loc_0049A209: global_004F120C = global_004F1210 & "LGPRCV\"
  loc_0049A226: FrmCreaDisk.ComTipArch.ListIndex = 0
  loc_0049A259: global_004F1360 = "RCV"
  loc_0049A276: FrmCreaDisk.ComTipArch.ListIndex = 0
  loc_0049A2A8: If FrmCreaDisk.ComTipArch_Click >= 0 Then GoTo loc_0049A2BC
  loc_0049A2AA: ' Referenced from: 0049A194
  loc_0049A2B6: CheckObj(FrmCreaDisk.ComTipArch_Click, Me, global_0045BE40, 1864)
  loc_0049A2C8: GoTo loc_0049A2D4
  loc_0049A2D3: Exit Sub
  loc_0049A2D4: ' Referenced from: 0049A2C8
End Sub

Private Sub CmdInfUniA_UnknownEvent_0 '497420
  loc_00497484: FrmCreaDisk.LblInfUnidad.Visible = True
  loc_004974C5: FrmCreaDisk.LblInfUnidad.Caption = "Informaciòn de la Unidad A:"
  loc_00497500: FrmCreaDisk.LblInfUnidad.Left = CLng(4900)
  loc_0049753D: FrmCreaDisk.LblInfUnidad.Top = CLng(80)
  loc_00497567: GoTo loc_00497573
  loc_00497572: Exit Sub
  loc_00497573: ' Referenced from: 00497567
End Sub

Private Sub CmdInfUniA_UnknownEvent_1 '4975A0
  loc_004975FF: FrmCreaDisk.LblInfUnidad.Visible = False
  loc_0049762E: GoTo loc_0049763A
  loc_00497639: Exit Sub
  loc_0049763A: ' Referenced from: 0049762E
End Sub

Private Sub CmdInfUniA_UnknownEvent_9 '496CA0
  Dim var_28 As Variant
  Dim var_2C As Label
  Dim Me As Variant
  loc_00496D42: FrmCreaDisk.CmdDirDer.Visible = var_54
  loc_00496D88: FrmCreaDisk.CmdDirIzq.Visible = var_54
  loc_00496DB2: Set var_2C = FrmCreaDisk.LblTipMov(0)
  loc_00496DDA: var_7C = var_2C
  loc_00496DDF: var_2C.Visible = False
  loc_00496E1D: Set var_28 = FrmCreaDisk.LblTipMov
  loc_00496E28: var_74 = var_28
  loc_00496E2B: Set var_2C = var_28(1)
  loc_00496E48: var_7C = var_2C
  loc_00496E4D: var_2C.Visible = False
  loc_00496E8B: Set var_28 = FrmCreaDisk.ComTipArch
  loc_00496E92: var_74 = var_28
  loc_00496E95: var_28.Visible = False
  loc_00496EC9: Set var_28 = FrmCreaDisk.ComMes
  loc_00496ED0: var_74 = var_28
  loc_00496ED3: var_28.Visible = False
  loc_00496F07: Set var_28 = FrmCreaDisk.ComAnio
  loc_00496F0E: var_74 = var_28
  loc_00496F11: var_28.Visible = False
  loc_00496F45: Set var_28 = FrmCreaDisk.ComTipMOD
  loc_00496F4C: var_74 = var_28
  loc_00496F4F: var_28.Visible = False
  loc_00496F83: Set var_28 = FrmCreaDisk.OptGenera
  loc_00496F8A: var_74 = var_28
  loc_00496F8D: var_28.Visible = False
  loc_00496FC1: Set var_28 = FrmCreaDisk.LblAnioMes
  loc_00496FC8: var_74 = var_28
  loc_00496FCB: var_28.Visible = False
  loc_00496FFF: Set var_28 = FrmCreaDisk.LblTitUni
  loc_0049700A: var_74 = var_28
  loc_0049700D: Set var_2C = var_28(4)
  loc_0049702A: var_7C = var_2C
  loc_0049702F: var_2C.Visible = False
  loc_0049706D: Set var_28 = FrmCreaDisk.LblTitUni
  loc_00497078: var_74 = var_28
  loc_0049707B: Set var_2C = var_28(5)
  loc_00497098: var_7C = var_2C
  loc_0049709D: var_2C.Visible = False
  loc_004970DB: Set var_28 = FrmCreaDisk.LstArchUniC
  loc_004970E0: var_74 = var_28
  loc_004970E3: var_28.Clear
  loc_00497117: Set var_28 = FrmCreaDisk.LstArchUniA
  loc_0049711C: var_74 = var_28
  loc_0049711F: var_28.Clear
  loc_00497180: FrmCreaDisk.CmdDirIzq.Visible = var_54
  loc_004971CB: FrmCreaDisk.LblTipMov(1).Caption = global_004568F4
  loc_00497215: var_20 = Proc_48E340("C:", Me, 0)
  loc_00497222: If var_20 <> True Then
  loc_004972E1:   FrmCreaDisk.LblSpaUni(1).Caption = Format(var_20, "#,###,###,##0") & "   Bytes"
  loc_00497362:   If (FrmCreaDisk.Carga_ArchUniA("A:") < 0) Then
  loc_00497392:     var_8014 = Global.Unload Me
  loc_004973B3:   End If
  loc_004973B3: End If
  loc_004973BF: GoTo loc_004973EE
  loc_004973ED: Exit Sub
  loc_004973EE: ' Referenced from: 004973BF
End Sub

Private Sub CmdInfUniA_UnknownEvent_E '497660
  loc_004976C4: FrmCreaDisk.LblInfUnidad.Visible = True
  loc_00497705: FrmCreaDisk.LblInfUnidad.Caption = "Informaciòn de la Unidad A:"
  loc_00497740: FrmCreaDisk.LblInfUnidad.Left = CLng(4900)
  loc_0049777D: FrmCreaDisk.LblInfUnidad.Top = CLng(80)
  loc_004977A7: GoTo loc_004977B3
  loc_004977B2: Exit Sub
  loc_004977B3: ' Referenced from: 004977A7
End Sub

Private Sub CmdDirIzq_UnknownEvent_9 '496800
  Dim var_20 As FrmCreaDisk.LstArchUniA
  loc_004968AB: Global.Screen.MousePointer = CLng(11)
  loc_00496926: If (FrmCreaDisk.LstArchUniA.ListCount > 0) Then
  loc_00496948:   var_A4 = FrmCreaDisk.OptCopy.Value
  loc_0049697C:   If var_A4 Then
  loc_0049698D:     Set var_20 = FrmCreaDisk.LstArchUniA
  loc_00496997:     var_18 = "COPIA"
  loc_004969C0:     var_8008 = FrmCreaDisk.Proc_8_46_49C800(0)
  loc_004969ED:     If Not (var_A4) = 0 Then GoTo loc_00496B56
  loc_00496A3B:     MsgBox("ERROR AL COPIAR EN UNIDAD C:", 0, 10, 10, 10)
  loc_00496A61:   Else
  loc_00496A6C:     Set var_20 = FrmCreaDisk.LstArchUniA
  loc_00496A76:     var_18 = "BORRA"
  loc_00496A9F:     var_800C = FrmCreaDisk.Proc_8_46_49C800(0)
  loc_00496ACC:     If Not (var_A4) Then
  loc_00496B16:       MsgBox("ERROR AL ELIMINAR EN UNIDAD A:", 0, 10, 10, 10)
  loc_00496B37:     End If
  loc_00496B3A:     var_8010 = FrmCreaDisk.CmdInfUniA_UnknownEvent_9
  loc_00496B56:   End If
  loc_00496B56: End If
  loc_00496B8F: FrmCreaDisk.PnlCopy.Visible = var_68
  loc_00496BF0: Global.Screen.MousePointer = 0
  loc_00496C21: var_8018 = FrmCreaDisk.Estado_Controles(FFFFFFFFh)
  loc_00496C45: GoTo loc_00496C7C
  loc_00496C7B: Exit Sub
  loc_00496C7C: ' Referenced from: 00496C45
End Sub

Public Function Carga_ArchUniA(PathFte) '49F410
  loc_0049F459: stosw
  loc_0049F49C: On Error GoTo loc_0049F85E
  loc_0049F4BE: FrmCreaDisk.LstArchUniA.Clear
  loc_0049F560: If (Right(Trim(PathFte), 1) <> "\") Then
  loc_0049F57C:   PathFte = PathFte & "\"
  loc_0049F580: Else
  loc_0049F58C: End If
  loc_0049F5EF: var_40 = Trim(Dir(PathFte & "*.*", 0))
  loc_0049F60E: If (var_40 = global_004568F4) Then
  loc_0049F618:   If var_4C <= 20 Then
  loc_0049F628:     var_4C = var_4C(1)
  loc_0049F68E:     var_3C = Trim(Mid(var_40, 1, 12))
  loc_0049F756:     Dim var_3C As String * 15
  loc_0049F7FD:     FrmCreaDisk.LstArchUniA.AddItem var_3C & "       " & Format(FileLen(PathFte & var_40), "###,###,##0") & " Bytes", 10
  loc_0049F843:     var_58 = Dir(10, 0)
  loc_0049F851:     GoTo loc_0049F5BC
  loc_0049F856:   End If
  loc_0049F856: End If
  loc_0049F859: GoTo loc_0049F8F1
  loc_0049F85E: ' Referenced from: 0049F49C
  loc_0049F8C7: MsgBox("ERROR AL ACCESAR AL DIRECTORIO DE A:\", 0, 10, 10, 10)
  loc_0049F8F1: ' Referenced from: 0049F859
  loc_0049F8F1: Exit Sub
  loc_0049F8FC: GoTo loc_0049F943
  loc_0049F942: Exit Function
  loc_0049F943: ' Referenced from: 0049F8FC
End Function

Public Sub Estado_Controles(valor_enable) '4A0520
  Dim var_18 As Variant
  Dim valor_enable As Boolean
  loc_004A057C: FrmCreaDisk.FrmTipoMov.Visible = valor_enable
  loc_004A05D9: FrmCreaDisk.CmdInfUniC.Enabled = valor_enable
  loc_004A0618: FrmCreaDisk.CmdInfUniA.Enabled = valor_enable
  loc_004A0657: FrmCreaDisk.CmdDirDer.Enabled = valor_enable
  loc_004A0696: FrmCreaDisk.CmdDirIzq.Enabled = valor_enable
  loc_004A06AF: Set var_18 = FrmCreaDisk.ComTipArch
  loc_004A06B6: var_2C = var_18
  loc_004A06BE: var_18.Enabled = valor_enable
  loc_004A0718: FrmCreaDisk.CmdCan.Enabled = valor_enable
  loc_004A0728: GoTo loc_004A0734
  loc_004A0733: Exit Sub
  loc_004A0734: ' Referenced from: 004A0728
End Sub

Public Sub FrmCreaDisk_CargaMeses() '4A0AF0
  Dim var_20 As Variant
  loc_004A0B4E: FrmCreaDisk.ComMes.Clear
  loc_004A0B85: If 1 <= 12 Then
  loc_004A0B99:   Set var_20 = FrmCreaDisk.ComMes
  loc_004A0BAA:   If global_004F136C Then
  loc_004A0BB0:     If global_004F136C = 1 Then
  loc_004A0BBF:       If (edi - global_004F136C(20)) >= global_004F136C(16) Then
  loc_004A0BC1:         var_8004 = Err.Raise
  loc_004A0BCD:       End If
  loc_004A0BDB:     Else
  loc_004A0BDB:     End If
  loc_004A0BDB:     var_8008 = Err.Raise
  loc_004A0BE7:   End If
  loc_004A0BF7:   global_004F136C(12) = global_004F136C(12) + var_8008
  loc_004A0C0F:   Dim global_004F136C(12)+var_8008 As String * 14
  loc_004A0C25:   var_20.AddItem global_004F136C(12)+var_8008, 10
  loc_004A0C4B:   If global_004F136C Then
  loc_004A0C51:     If global_004F136C = 1 Then
  loc_004A0C61:       If (var_18 - global_004F136C(20)) >= global_004F136C(16) Then
  loc_004A0C63:         var_800C = Err.Raise
  loc_004A0C6F:       End If
  loc_004A0C7D:     Else
  loc_004A0C7D:     End If
  loc_004A0C7D:     var_8010 = Err.Raise
  loc_004A0C89:   End If
  loc_004A0C8F:   global_004F136C(12) = global_004F136C(12) + var_8010
  loc_004A0C95:   global_004F136C(12)+var_8010 = global_004F136C(12)+var_8008
  loc_004A0CC7:   var_18 = 1+var_18
  loc_004A0CCA:   GoTo loc_004A0B7D
  loc_004A0CCF: End If
  loc_004A0D21: FrmCreaDisk.ComMes.Text = FrmCreaDisk.ComMes.List(0)
  loc_004A0D60: GoTo loc_004A0D7F
  loc_004A0D7E: Exit Sub
  loc_004A0D7F: ' Referenced from: 004A0D60
End Sub

Public Sub FrmCreaDisk_CargaAnios() '4A0DB0
  loc_004A0E1B: var_1C = CInt(Year(Date))
  loc_004A0E4C: FrmCreaDisk.ComAnio.Clear
  loc_004A0E86: If var_18 <= 5 Then
  loc_004A0EB6:   var_30 = (var_1C - var_18)
  loc_004A0F00:   FrmCreaDisk.ComAnio.AddItem CStr(Str((var_1C - var_18))), 10
  loc_004A0F58:   var_18 = 1+var_18
  loc_004A0F5B:   GoTo loc_004A0E7A
  loc_004A0F60: End If
  loc_004A0FAF: FrmCreaDisk.ComAnio.Text = FrmCreaDisk.ComAnio.List(0)
  loc_004A0FEE: GoTo loc_004A101D
  loc_004A101C: Exit Sub
  loc_004A101D: ' Referenced from: 004A0FEE
End Sub

Public Sub FrmCreaDisk_CargaSeleccion(ListaArch) '4A1050
  Dim ListaArch As Me
  loc_004A109F: ReDim global_56(0 To 12)
  loc_004A10B8: If 1 <= 12 Then
  loc_004A10BE:   If global_56 Then
  loc_004A10C4:     If global_56 = 1 Then
  loc_004A10D3:       If global_56 >= global_56 Then
  loc_004A10D5:         var_8004 = Err.Raise
  loc_004A10DB:       End If
  loc_004A10E4:     Else
  loc_004A10E4:     End If
  loc_004A10E4:     var_8008 = Err.Raise
  loc_004A10EA:   End If
  loc_004A110C:   GoTo loc_004A10B4
  loc_004A110E: End If
  loc_004A1129: var_24 = ListaArch.hDC
  loc_004A1147: If edi < var_24 Then
  loc_004A115A:   0 = ListaArch.FillColor
  loc_004A1179:   If var_24 Then
  loc_004A118C:     0 = ListaArch.CurrentY
  loc_004A11AE:     If global_56 Then
  loc_004A11B4:       If global_56 = 1 Then
  loc_004A11C4:         If global_56 >= global_56 Then
  loc_004A11C6:           var_800C = Err.Raise
  loc_004A11CC:         End If
  loc_004A11D5:       Else
  loc_004A11D5:       End If
  loc_004A11D5:       var_8010 = Err.Raise
  loc_004A11DB:     End If
  loc_004A11E9:     global_56 = var_20
  loc_004A1202:     var_1C = var_1C(1)
  loc_004A1205:   End If
  loc_004A120B:   GoTo loc_004A111D
  loc_004A1210: End If
  loc_004A1215: GoTo loc_004A1221
  loc_004A1220: Exit Sub
  loc_004A1221: ' Referenced from: 004A1215
End Sub

Private Sub Proc_8_44_49B8C0() '49B8C0
  loc_0049B929: On Error GoTo loc_0049BBA2
  loc_0049B9A6: If (Trim(Right(global_004F1358, 1)) <> "\") Then
  loc_0049B9C1:   global_004F1358 = global_004F1358 & "\"
  loc_0049B9C7: End If
  loc_0049B9E5: FrmCreaDisk.dirList.Refresh
  loc_0049BA27: FrmCreaDisk.dirList.Path = global_004F1358
  loc_0049BA72: FrmCreaDisk.filList.Refresh
  loc_0049BAB4: Dim global_004F1326 As String * 25
  loc_0049BAC7: FrmCreaDisk.filList.Pattern = var_34
  loc_0049BAF0: global_004F1326 = var_34
  loc_0049BB2A: var_BC = FrmCreaDisk.dirList.ListCount
  loc_0049BB4E: var_30 = var_BC
  loc_0049BB7E: var_800C = FrmCreaDisk.Proc_8_45_49BCD0(var_28)
  loc_0049BB8A: var_20 = var_BC
  loc_0049BB92: Exit Sub
  loc_0049BB9D: GoTo loc_0049BC9F
  loc_0049BBA2: ' Referenced from: 0049B929
  loc_0049BBA2: var_8010 = Err
  loc_0049BBF3: If (Err.Number <> 76) Then
  loc_0049BC43:   MsgBox("ERROR AL INTENTAR LEER INFORMACIÓN DE UNIDAD", 0, 10, 10, 10)
  loc_0049BC64: End If
  loc_0049BC64: Exit Sub
  loc_0049BC6F: GoTo loc_0049BC9F
  loc_0049BC9E: Exit Sub
  loc_0049BC9F: ' Referenced from: 0049BB9D
  loc_0049BC9F: ' Referenced from: 0049BC6F
End Sub

Private Sub Proc_8_45_49BCD0() '49BCD0
  Dim var_58 As Variant
  Dim var_100 As DirListBox
  loc_0049BD5E: global_004F1324 = True
  loc_0049BD68: DoEvents
  loc_0049BD75: If global_004F1324 = 0 Then
  loc_0049BD77:   var_4C = True
  loc_0049BD7A:   Exit Sub
  loc_0049BD8A: Else
  loc_0049BD8C:   On Error GoTo loc_0049C5C3
  loc_0049BDA9:   Set var_58 = FrmCreaDisk.dirList
  loc_0049BDAB:   var_F8 = var_58
  loc_0049BDE5:   var_34 = var_58.ListCount
  loc_0049BDFC:   If var_34 > 0 Then
  loc_0049BE0A:     If global_004F1324 = True Then
  loc_0049BE29:       var_50 = FrmCreaDisk.dirList.Path
  loc_0049BE7E:       FrmCreaDisk.dirList.Path = arg_C
  loc_0049BEC5:       var_F0 = FrmCreaDisk.dirList.ListCount
  loc_0049BEF1:       var_100 = (var_F0 > 0)
  loc_0049BF03:       If (var_F0 > 0) Then
  loc_0049BF78:         FrmCreaDisk.dirList.Path = FrmCreaDisk.dirList.List((var_34 - 1))
  loc_0049BFCF:         var_50 = FrmCreaDisk.dirList.Path
  loc_0049C012:         var_8004 = FrmCreaDisk.Proc_8_45_49BCD0(0)
  loc_0049C01E:         var_30 = var_F0
  loc_0049C033:       End If
  loc_0049C041:       var_34 = (var_34 - 1)
  loc_0049C049:       If var_30 = True Then GoTo loc_0049C752
  loc_0049C055:       GoTo loc_0049BDF7
  loc_0049C05A:     End If
  loc_0049C05A:   End If
  loc_0049C068:   Set var_58 = FrmCreaDisk.filList
  loc_0049C06A:   var_F8 = var_58
  loc_0049C0BB:   If var_58.ListCount Then
  loc_0049C0CF:     Set var_58 = FrmCreaDisk.dirList
  loc_0049C0D1:     var_F8 = var_58
  loc_0049C139:     If (Len(var_58.Path) <= 3) Then
  loc_0049C146:       Set var_58 = FrmCreaDisk.dirList
  loc_0049C148:       var_F8 = var_58
  loc_0049C155:       var_50 = var_58.Path
  loc_0049C193:     Else
  loc_0049C1F5:     End If
  loc_0049C211:     var_F0 = FrmCreaDisk.filList.ListCount
  loc_0049C240:     var_10C = (var_F0 - 1)
  loc_0049C25A:     If var_24 <= (var_F0 - 1) Then
  loc_0049C2B2:       var_38 = FrmCreaDisk.dirList.Path & "\" & FrmCreaDisk.filList.List(var_24)
  loc_0049C309:       var_20 = Trim(Right(var_38, 12))
  loc_0049C333:       var_801C = InStr(1, var_20, "\", 0)
  loc_0049C33E:       If var_801C > 0 Then
  loc_0049C3A4:         var_20 = Mid(var_20, var_801C(1), (Len(var_20) - var_801C))
  loc_0049C3B9:       End If
  loc_0049C511:       FrmCreaDisk.LstArchUniC.AddItem Ucase(var_20 & "       " & Format(FileLen(var_38), "###,###,##0") & " Bytes"), 10
  loc_0049C547:       var_24 = 1+var_24
  loc_0049C550:       GoTo loc_0049C256
  loc_0049C555:     End If
  loc_0049C55B:   End If
  loc_0049C56E:   If (arg_14 = global_004568F4) Then
  loc_0049C58C:     FrmCreaDisk.dirList.Path = arg_14
  loc_0049C5B3:     Exit Sub
  loc_0049C5BE:     GoTo loc_0049C7A8
  loc_0049C5C3:     var_8044 = Err
  loc_0049C5E0:     var_F4 = Err.Number
  loc_0049C608:     var_100 = (var_F4 = 7)
  loc_0049C61A:     If (var_F4 = 7) Then
  loc_0049C68A:       MsgBox("SE LLENO LA LISTA DE ARCHIVOS.. DESHACER BUSQUEDA", 0, 10, 10, 10)
  loc_0049C6B1:       Exit Sub
  loc_0049C6C1:     Else
  loc_0049C71E:       MsgBox(Error(10), 0, 10, 10, 10)
  loc_0049C74C:       End
  loc_0049C752:     End If
  loc_0049C752:     Exit Sub
  loc_0049C75D:     GoTo loc_0049C7A8
  loc_0049C7A7:     Exit Sub
  loc_0049C7A8:   End If
  loc_0049C7A8: End If
  loc_0049C7A8: ' Referenced from: 0049C75D
End Sub

Private Sub Proc_8_46_49C800() '49C800
  Dim arg_C As Variant
  Dim var_4C As Variant
  Dim var_50 As Variant
  Dim var_44 As Variant
  Dim var_48C As Form
  Dim global_004F1410 As Form
  Dim global_004F1DB4 As Global
  loc_0049C9E5: var_8004 = FrmCreaDisk.Estado_Controles(var_484)
  loc_0049CA13: var_484 = arg_C.hDC
  loc_0049CA3A: var_40 = var_484
  loc_0049CA72: Set var_4C = FrmCreaDisk.LstArchUniC
  loc_0049CADD: If (arg_C.ScaleTop = var_4C.Text) + 1 = 0 Then
  loc_0049CAE2: End If
  loc_0049CAE2: var_38 = "A:\"
  loc_0049CB05: 0 = var_4C.Selected
  loc_0049CB2A: If var_484 Then
  loc_0049CB33: End If
  loc_0049CB7D: FrmCreaDisk.PnlCopy.FloodPercent
  loc_0049CBD4: FrmCreaDisk.PnlCopy.Visible = True
  loc_0049CBF1: If var_34 Then
  loc_0049CC01:   var_48C = arg_C
  loc_0049CC3E:   Set var_4C = FrmCreaDisk.LstArchUniC
  loc_0049CC4B:   var_494 = var_4C
  loc_0049CCB4:   If (arg_C.UnkVCall_000000F8h = var_4C.Text) + 1 Then
  loc_0049CCC8:     var_48C = arg_C
  loc_0049CCD0:     var_44 = var_4C.List(var_3C)
  loc_0049CD6C:     var_14 = Ucase(Trim(Mid(0, 1, 12)))
  loc_0049CD9D:     Set var_4C = FrmCreaDisk.ComTipArch
  loc_0049CDAD:     var_48C = var_4C
  loc_0049CDE8:     Set var_50 = FrmCreaDisk.ComTipArch
  loc_0049CDF8:     var_494 = var_50
  loc_0049CE62:     If ((var_50.ListIndex = 1) Or (var_4C.ListIndex = 0)) Then
  loc_0049D036:       var_8034 = "C:\VREP\" & "LGP" + Mid(var_14, 1, 3) + "\" & "ANIO" + Trim(Mid(var_14, 7, 2)) + "\" + Trim(Mid(var_14, 4, 3)) + "\"
  loc_0049D044:       var_38 = var_8034
  loc_0049D097:     Else
  loc_0049D0A6:     End If
  loc_0049D0B9:     var_2C = var_38 & var_14
  loc_0049D0C0:   Else
  loc_0049D0D0:     var_48C = arg_C
  loc_0049D0D6:     var_3C = var_50.ListCount
  loc_0049D172:     var_14 = Ucase(Trim(Mid(0, 1, 12)))
  loc_0049D2E4:     If CBool((Ucase(Mid(var_14, 1, 3)) = "COP") Or (Ucase(Mid(var_14, 1, 3)) = "RCV")) Then
  loc_0049D313:       var_2C = Trim(var_38 & var_14)
  loc_0049D4F6:       var_8078 = "C:\VREP\" & "LGP" + Mid(var_14, 1, 3) + "\" & "ANIO" + Trim(Mid(var_14, 7, 2)) + "\" + Trim(Mid(var_14, 4, 3)) + "\"
  loc_0049D504:       var_24 = var_8078
  loc_0049D557:     Else
  loc_0049D580:       var_2C = Trim(var_4C.ListIndex & 0)
  loc_0049D5A4:     End If
  loc_0049D5A4:   End If
  loc_0049D5C1:   var_8088 = (arg_10 = "COPIA")
  loc_0049D5C9:   If var_8088 = 0 Then
  loc_0049D607:     If Not (Proc_48EE40(var_24 & var_14, 0, 0)) Then GoTo loc_0049E32F
  loc_0049D60D:     GoTo loc_0049E165
  loc_0049D612:   End If
  loc_0049D61E:   var_8094 = (arg_10 = "BORRA")
  loc_0049D626:   If var_8094 = 0 Then
  loc_0049D62C:     var_8098 = Proc_48FC20(0, , )
  loc_0049D634:     If var_8098 = 0 Then GoTo loc_0049E384
  loc_0049D64B:     var_48C = arg_C
  loc_0049D65B:     If arg_C.UnkVCall_000000ECh >= 0 Then GoTo loc_0049E165
  loc_0049D673:     CheckObj(arg_C.UnkVCall_000000ECh, var_48C, global_0045BFF8, 236)
  loc_0049D67E:   End If
  loc_0049D686:   If global_56 Then
  loc_0049D68C:     If global_56 = 1 Then
  loc_0049D69C:       var_48C = (var_18 - global_56(20))
  loc_0049D6A2:       If (var_18 - global_56(20)) >= global_56(16) Then
  loc_0049D6A4:         var_809C = Err.Raise
  loc_0049D6B0:       End If
  loc_0049D6B9:     Else
  loc_0049D6B9:     End If
  loc_0049D6B9:     var_80A0 = Err.Raise
  loc_0049D6BF:   End If
  loc_0049D6D1:   var_80A4 = (ecx+eax = global_004568F4)
  loc_0049D6D9:   If var_80A4 = 0 Then GoTo loc_0049E466
  loc_0049D6E7:   If global_56 Then
  loc_0049D6ED:     If global_56 = 1 Then
  loc_0049D6FD:       var_48C = (var_18 - global_56(20))
  loc_0049D703:       If (var_18 - global_56(20)) >= global_56(16) Then
  loc_0049D705:         var_80A8 = Err.Raise
  loc_0049D711:       End If
  loc_0049D71A:     Else
  loc_0049D71A:     End If
  loc_0049D71A:     var_80AC = Err.Raise
  loc_0049D720:   End If
  loc_0049D7D5:   global_004F1218 = global_004F1204 & Ucase(Trim(Mid(ecx+eax, 1, 12)))
  loc_0049D7F5:   var_28 = InStr(1, global_004F1218, ".", 0)
  loc_0049D801:   var_308 = var_28
  loc_0049D876:   global_004F121C = Trim(Mid(global_004F1218, 1, var_28)) + "CTL"
  loc_0049D8F0:   var_48C = global_004F13FC
  loc_0049D930:   var_80CC = FrmCreaBD.Show 1, var_2FC
  loc_0049D973:   var_48C = global_004F1410
  loc_0049D97B:   var_80D4 = FrmCreaDisk.Refresh
  loc_0049D9C4:   var_48C = global_004F1DB4
  loc_0049D9CA:   var_4C = Global.Screen
  loc_0049D9EE:   var_494 = var_4C
  loc_0049D9F6:   var_4C.MousePointer = CLng(11)
  loc_0049DA7E:   var_48C = global_004F1424
  loc_0049DABE:   var_80E0 = FrmLlenaTablas.Show 1, var_2FC
  loc_0049DB01:   var_48C = global_004F1410
  loc_0049DB09:   var_80E8 = FrmCreaDisk.Refresh
  loc_0049DB52:   var_48C = global_004F1DB4
  loc_0049DB58:   var_4C = Global.Screen
  loc_0049DB7C:   var_494 = var_4C
  loc_0049DBB3:   If global_004F138C Then
  loc_0049DE0B:     var_80FC = "PARA CONFIRMAR QUE LA BASE DE DATOS YA SE CREO" + Chr(10) + "REVISAR CON LA PANTALLA DE INTERCAMBIO DE " + Chr(10) + "INFORMACIÓN QUE EXISTAN LOS SIGUIENTES ARCHIVOS : "
  loc_0049DE93:     var_811C = var_80FC + Chr(10) + "       " + global_004F1390 + ".ZIP" + "  BASE DE DATOS EMPACADA   " + Chr(10) + "       " + global_004F1390
  loc_0049DF0A:     var_8138 = var_811C + ".MDB" + "  BASE DE DATOS MAESTRA    " + Chr(10) + "       " + global_004F1390 + ".LDB" + "  CONTROL PARA B. DATOS      "
  loc_0049DF81:     var_8154 = var_8138 + Chr(10) + "       " + global_004F1390 + ".CTL" + "  FECHAS DE CONTROL        " + Chr(10) + "RECUERDA QUE DEBES SELECCIONAR MES Y AÑO DEL ARCHIVO "
  loc_0049DFC5:     var_8164 = var_8154 + Chr(10) + "QUE SE CONVIRTIÓ A BASE DE DATOS PARA PC " + Chr(10) + "SI ALGUNO DE LOS ARCHIVOS SEÑALADOS NO EXISTE REPORTAR A MESA DE AYUDA"
  loc_0049DFC8:     MsgBox(var_8164, 64, 10, 10, 10)
  loc_0049E0F9:   End If
  loc_0049E145:   FrmCreaDisk.PnlCopy.Visible = var_2F8
  loc_0049E162:   var_18 = var_18(1)
  loc_0049E165: End If
  loc_0049E165: ' Referenced from: 0049D60D
  loc_0049E192: var_4B8 = arg_C.UnkVCall_000000ECh(1)
  loc_0049E19E: var_4C4 = var_40
  loc_0049E1B1: If global_004F1000 = 0 Then
  loc_0049E1BB: Else
  loc_0049E1CC: End If
  loc_0049E1D2: var_2F8 = ((var_4B8 / var_4C4) * 100)
  loc_0049E223: FrmCreaDisk.PnlCopy.FloodPercent
  loc_0049E255: var_48C = arg_C
  loc_0049E2A7: If ((arg_10 = "CREA") + 1 Or (arg_C.UnkVCall_000000D8h <= 0)) = 0 Then
  loc_0049E2B1:   If arg_C.UnkVCall_000000ECh(1) >= var_40 Then GoTo loc_0049E31C
  loc_0049E2C6:   var_48C = arg_C
  loc_0049E2CC:   var_3C = arg_C.UnkVCall_00000138h
  loc_0049E2F8:   If arg_C.UnkVCall_000000D8h = 0 Then GoTo loc_0049E31C
  loc_0049E2FA:   GoTo loc_0049E315
  loc_0049E2FC: End If
  loc_0049E30F: If (arg_10 = "CREA") Then GoTo loc_0049E466
  loc_0049E315: ' Referenced from: 0049E2FA
  loc_0049E324: If var_3C < var_40 Then
  loc_0049E32A:   GoTo loc_0049CBEC
  loc_0049E380:   If Global.App.Path < 0 Then
  loc_0049E382:     GoTo loc_0049E3D7
  loc_0049E3CE:     var_44 = Global.App.Path
  loc_0049E3D5:     If var_44 >= 0 Then GoTo loc_0049E3E6
  loc_0049E3D7:     ' Referenced from: 0049E382
  loc_0049E3E0:     CheckObj(var_44, Global.App, global_00458A78, 80)
  loc_0049E3E6:   End If
  loc_0049E3EA:   ChDir var_44
  loc_0049E450:   FrmCreaDisk.PnlCopy.Visible = var_2F8
  loc_0049E466: Else
  loc_0049E4B9:   FrmCreaDisk.PnlCopy.Visible = var_2F8
  loc_0049E4CE:   GoTo loc_0049E61F
  loc_0049E61E:   Exit Sub
  loc_0049E61F: End If
  loc_0049E61F: ' Referenced from: 0049E4CE
End Sub
