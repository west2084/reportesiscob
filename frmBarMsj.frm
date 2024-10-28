VERSION 5.00
Begin VB.Form frmBarMsj
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  ClientLeft = 1890
  ClientTop = 3330
  ClientWidth = 5595
  ClientHeight = 615
  ShowInTaskbar = 0   'False
  PaletteMode = 1
  Begin VB.Label lblBarMsj
    Caption = " Leyendo Reportes,  esperar un momento ( num rep) .."
    BackColor = &H800000&
    ForeColor = &HFFFFFF&
    Left = 80
    Top = 120
    Width = 5445
    Height = 375
    TabIndex = 0
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
End

Attribute VB_Name = "frmBarMsj"


Private Sub Form_Activate() '4F0060
  loc_004F00B2: var_20 = Me.Width
  loc_004F011F: var_1C = Global.Screen.Width
  loc_004F0149: If global_004F1000 = 0 Then
  loc_004F0153: Else
  loc_004F015E: End If
  loc_004F016C: Global.Screen.Left = ((var_1C - var_20) / 2)
  loc_004F017E: CheckObj(Err.Number, Me, global_0045CF88, 116)
  loc_004F0190: var_20 = Global.Screen.Height
  loc_004F01F0: var_1C = Global.Screen.Height
  loc_004F0214: If global_004F1000 = 0 Then
  loc_004F021E: Else
  loc_004F0229: End If
  loc_004F0233: Global.Screen.Top = ((var_1C - var_20) / 2)
  loc_004F0245: CheckObj(Err.Number, Me, global_0045CF88, 124)
  loc_004F025D: GoTo loc_004F0269
End Sub

Private Sub Proc_19_1_4EFF90() '4EFF90
  loc_004F000C: var_800C = Global.Unload frmBarMsj
  loc_004F0032: GoTo loc_004F003E
  loc_004F003D: Exit Sub
  loc_004F003E: ' Referenced from: 004F0032
End Sub
