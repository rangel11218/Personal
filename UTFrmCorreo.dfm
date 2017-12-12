object FrmCorreo: TFrmCorreo
  Left = 0
  Top = 0
  Caption = 'FrmCorreo'
  ClientHeight = 480
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 826
    Height = 358
    Align = alClient
    DataSource = dsPersonal
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APaterno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMaterno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Correo'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 81
    Align = alTop
    TabOrder = 1
    object JvLabel1: TJvLabel
      Left = 16
      Top = 19
      Width = 37
      Height = 13
      Caption = 'Correo:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel2: TJvLabel
      Left = 16
      Top = 46
      Width = 50
      Height = 13
      Caption = 'Password:'
      Transparent = True
      HotTrack = False
    end
    object eCorreo: TEdit
      Left = 74
      Top = 16
      Width = 295
      Height = 21
      TabOrder = 0
      Text = 'eduardo.siner@gmail.com'
    end
    object ePassword: TEdit
      Left = 74
      Top = 43
      Width = 199
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      Text = '001218rangel'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 826
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    object btnEnviarCorreo: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Enviar Correo'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnEnviarCorreoClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object cdPersonal: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 400
    Top = 328
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 488
    Top = 328
  end
  object cdHost: TZReadOnlyQuery
    Params = <>
    Left = 136
    Top = 296
  end
end
