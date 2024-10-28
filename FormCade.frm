VERSION 5.00
Object = "{0BA686C6-F7D3-101A-993E0000C0EF6F5E}#1.0#0"; "C:\WINDOWS\SysWow64\THREED32.ocx"
Begin VB.Form FormCade
  Caption = " Cambio de Pagina"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 1650
  ClientTop = 2865
  ClientWidth = 4455
  ClientHeight = 1890
  Begin VB.TextBox TextCade
    BackColor = &HFFFFFF&
    Left = 495
    Top = 1395
    Width = 2100
    Height = 420
    Text = "FERNANDO.TXT"
    TabIndex = 0
    MaxLength = 12
    BeginProperty Font
      Name = "Courier New"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Threed.SSCommand SSComCan
    Left = 3330
    Top = 1305
    Width = 930
    Height = 495
    TabIndex = 3
    OleObjectBlob = "FormCade.frx":0000
  End
  Begin Threed.SSCommand SSComAce
    Left = 3330
    Top = 765
    Width = 930
    Height = 495
    TabIndex = 2
    OleObjectBlob = "FormCade.frx":006D
  End
  Begin VB.Label LabCade
    Caption = "&H00C000C0&"
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 270
    Top = 90
    Width = 2715
    Height = 1230
    TabIndex = 1
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FormCade"


Private Sub Form_Load() '4DE6F0

End Sub

Private Sub Form_Activate() '4DE500
  loc_004DE586: FormCade.TextCade.SelStart = 0
  loc_004DE626: FormCade.TextCade.SelLength = Len(FormCade.TextCade.Text)
  loc_004DE679: FormCade.TextCade.SetFocus
  loc_004DE6AC: GoTo loc_004DE6CB
  loc_004DE6CA: Exit Sub
  loc_004DE6CB: ' Referenced from: 004DE6AC
End Sub

Private Sub TextCade_GotFocus() '4DEA80

End Sub

Private Sub TextCade_KeyPress(KeyAscii As Integer) '4DEAF0
  loc_004DEB69: If KeyAscii = 13 Then
  loc_004DEB6E:   var_8004 = FormCade.SSComAce_UnknownEvent_9
  loc_004DEB8A: End If
  loc_004DEBF3: If (FormCade.TextCade.SelText = global_004568F4) Then
  loc_004DEC13:   FormCade.TextCade.Text = global_004568F4
  loc_004DEC3A: End If
  loc_004DECE7: var_8018 = CBool((Ucase(Chr(KeyAscii)) >= global_00459DC0) And (Ucase(Chr(KeyAscii)) <= global_0045BA38))
  loc_004DED09: If var_8018 = 0 Then
  loc_004DED45:   var_801C = CBool(InStr(1, "0123456789.*?", Chr(KeyAscii), 0))
  loc_004DED5F:   If var_801C = 0 Then
  loc_004DED66:   End If
  loc_004DED66: End If
  loc_004DED72: GoTo loc_004DEDB1
  loc_004DEDB0: Exit Sub
  loc_004DEDB1: ' Referenced from: 004DED72
End Sub

Private Sub TextCade_LostFocus() '4DEDE0
  loc_004DEEB1: If (Trim$(FormCade.TextCade.Text) = global_004568F4) + 1 = 0 Then
  loc_004DEECF:   Call FormCade.SSComAce.SetFocus
  loc_004DEEDD: End If
  loc_004DEEE9: GoTo loc_004DEF08
  loc_004DEF07: Exit Sub
  loc_004DEF08: ' Referenced from: 004DEEE9
End Sub

Private Sub SSComCan_UnknownEvent_9 '4DE990
  Dim global_004F1DB4 As Global
  loc_004DEA24: global_004F1DB4.Unload Me
  loc_004DEA4D: GoTo loc_004DEA59
  loc_004DEA58: Exit Sub
  loc_004DEA59: ' Referenced from: 004DEA4D
End Sub

Private Sub SSComAce_UnknownEvent_9 '4DE760
  Dim global_004F1DB4 As Global
  loc_004DE829: global_004F10B4 = Ucase(Trim(FormCade.TextCade.Text))
  loc_004DE863: If (global_004F10B4 = global_004568F4) Then
  loc_004DE8A2:   If ((InStr(1, global_004F10B4, global_00460020, 0) > 0) Or (InStr(1, global_004F10B4, "*", 0) > 0)) = 0 Then
  loc_004DE8BC:     global_004F10B4 = global_004F10B4 & "*.T*"
  loc_004DE8C2:   End If
  loc_004DE903:   global_004F1DB4.Unload Me
  loc_004DE924:   global_004F10B8 = &HFFFFFF
  loc_004DE92D: End If
  loc_004DE935: GoTo loc_004DE961
  loc_004DE960: Exit Sub
  loc_004DE961: ' Referenced from: 004DE935
End Sub
