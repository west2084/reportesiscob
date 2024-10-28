VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FormBus
  Caption = "Opciones de Búsqueda"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2520
  ClientTop = 2415
  ClientWidth = 4485
  ClientHeight = 3060
  LockControls = -1  'True
  PaletteMode = 1
  Begin VB.TextBox TextCadBus
    Left = 390
    Top = 2490
    Width = 2820
    Height = 375
    TabIndex = 7
  End
  Begin VB.Frame FrameCri
    Caption = "Criterio"
    Left = 375
    Top = 270
    Width = 2130
    Height = 1695
    TabIndex = 0
    Begin VB.OptionButton OptPre
      Caption = "Paginas previas"
      Left = 300
      Top = 1245
      Width = 1575
      Height = 300
      TabIndex = 4
    End
    Begin VB.OptionButton OptRes
      Caption = "Paginas restantes"
      Left = 285
      Top = 900
      Width = 1620
      Height = 315
      TabIndex = 3
    End
    Begin VB.OptionButton OptAct
      Caption = "Pagina Actual"
      Left = 270
      Top = 585
      Width = 1500
      Height = 300
      TabIndex = 2
    End
    Begin VB.OptionButton OptTot
      Caption = "Reporte Completo"
      Left = 270
      Top = 270
      Width = 1620
      Height = 315
      TabIndex = 1
    End
  End
  Begin Threed.SSCommand SSComCan
    Left = 3165
    Top = 1290
    Width = 975
    Height = 480
    TabIndex = 6
    OleObjectBlob = "FormBus.frx":0000
  End
  Begin Threed.SSCommand SSComAce
    Left = 3165
    Top = 465
    Width = 975
    Height = 480
    TabIndex = 5
    OleObjectBlob = "FormBus.frx":0045
  End
  Begin VB.Label LabCadBus
    Caption = "Palabra(s) a Buscar..."
    Left = 390
    Top = 2190
    Width = 1755
    Height = 300
    TabIndex = 8
  End
End

Attribute VB_Name = "FormBus"


Private Sub SSComAce_UnknownEvent_9 '4DDD90
  loc_004DDE43: If (FormBus.OptTot.Value = True) Then
  loc_004DDE4A:   global_004F10A4 = 1
  loc_004DDE54:   If global_52 <> 1 Then
  loc_004DDEA9:     FormVisor.SSComFirst.Value
  loc_004DDEBE:   End If
  loc_004DDEBE: End If
  loc_004DDF0F: If (FormBus.OptRes.Value = True) Then
  loc_004DDF11:   global_004F10A4 = 2
  loc_004DDF1A: End If
  loc_004DDF6B: If (FormBus.OptAct.Value = True) Then
  loc_004DDF6D:   global_004F10A4 = &HFFFFFF
  loc_004DDF76: End If
  loc_004DDFC9: If (FormBus.OptPre.Value = True) Then
  loc_004DDFD2: End If
  loc_004DE019: global_004F10A0 = Ucase(Trim(FormBus.TextCadBus))
  loc_004DE088: var_8014 = Global.Unload FormBus
  loc_004DE0E0: FormVisor.OEsigOcu.Enabled = True
  loc_004DE114: SendKeys "{F3}", True
  loc_004DE12F: GoTo loc_004DE152
  loc_004DE151: Exit Sub
  loc_004DE152: ' Referenced from: 004DE12F
End Sub

Private Sub Form_Load() '4DDC30
  Dim var_18 As Variant
  loc_004DDCAC: FormBus.SSComAce.Enabled = FormBus.SSComAce
  loc_004DDCD0: If (global_004F10A0 = global_004568F4) Then
  loc_004DDCE0:   Set var_18 = FormBus.TextCadBus
  loc_004DDCEC:   var_3C = var_18
  loc_004DDCEF:   var_18.Text = global_004F10A0
  loc_004DDD18: End If
  loc_004DDD49: FormBus.SSComAce.Enabled = True
  loc_004DDD60: GoTo loc_004DDD6C
  loc_004DDD6B: Exit Sub
  loc_004DDD6C: ' Referenced from: 004DDD60
End Sub

Private Sub Form_Activate() '4DD980
  Dim var_18 As Variant
  loc_004DD9D1: If global_004F10A4 <> True Then
  loc_004DD9D9:   If global_004F10A4 Then
  loc_004DD9E5:     If global_004F10A4 <> 2 Then
  loc_004DDA01:       FormBus.OptTot.Value = True
  loc_004DDA36:       Set var_18 = FormBus.OptTot
  loc_004DDA3D:       var_18.SetFocus
  loc_004DDA47:       If var_18.SetFocus >= 0 Then GoTo loc_004DDB9B
  loc_004DDA4D:       GoTo loc_004DDB89
  loc_004DDA52:     End If
  loc_004DDA6C:     FormBus.OptRes.Value = True
  loc_004DDAA1:     Set var_18 = FormBus.OptRes
  loc_004DDAA8:     var_18.SetFocus
  loc_004DDAB2:     If var_18.SetFocus >= 0 Then GoTo loc_004DDB9B
  loc_004DDAB8:     GoTo loc_004DDB89
  loc_004DDABD:   End If
  loc_004DDADA:   FormBus.OptPre.Value = True
  loc_004DDB0F:   Set var_18 = FormBus.OptPre
  loc_004DDB16:   var_18.SetFocus
  loc_004DDB20:   If var_18.SetFocus >= 0 Then GoTo loc_004DDB9B
  loc_004DDB22:   GoTo loc_004DDB89
  loc_004DDB24: End If
  loc_004DDB41: FormBus.OptAct.Value = True
  loc_004DDB76: Set var_18 = FormBus.OptAct
  loc_004DDB7D: var_18.SetFocus
  loc_004DDB87: If var_18.SetFocus >= 0 Then GoTo loc_004DDB9B
  loc_004DDB89: ' Referenced from: 004DDA4D
  loc_004DDB89: ' Referenced from: 004DDAB8
  loc_004DDB89: ' Referenced from: 004DDB22
  loc_004DDB95: CheckObj(var_18.SetFocus, var_18, global_0045C020, 420)
  loc_004DDBB0: var_8004 = (global_004F10A0 = global_004568F4)
  loc_004DDBB8: If var_8004 = 0 Then
  loc_004DDBCF:   FormBus.TextCadBus.SetFocus
  loc_004DDBF6: End If
  loc_004DDC02: GoTo loc_004DDC0E
  loc_004DDC0D: Exit Sub
  loc_004DDC0E: ' Referenced from: 004DDC02
End Sub

Private Sub TextCadBus_Change() '4DE270
  loc_004DE2ED: FormBus.SSComAce.Enabled = True
  loc_004DE304: GoTo loc_004DE310
  loc_004DE30F: Exit Sub
  loc_004DE310: ' Referenced from: 004DE304
End Sub

Private Sub TextCadBus_LostFocus() '4DE330
  loc_004DE401: If (Trim$(FormBus.TextCadBus.Text) = global_004568F4) + 1 Then
  loc_004DE43A:   FormBus.SSComAce.Enabled = FormBus.SSComAce
  loc_004DE442: Else
  loc_004DE47C:   FormBus.SSComAce.Enabled = True
  loc_004DE49F:   Call FormBus.SSComAce.SetFocus
  loc_004DE4A8: End If
  loc_004DE4B9: GoTo loc_004DE4D8
  loc_004DE4D7: Exit Sub
  loc_004DE4D8: ' Referenced from: 004DE4B9
End Sub

Private Sub SSComCan_UnknownEvent_9 '4DE180
  loc_004DE210: var_800C = Global.Unload FormBus
  loc_004DE239: GoTo loc_004DE245
  loc_004DE244: Exit Sub
  loc_004DE245: ' Referenced from: 004DE239
End Sub
