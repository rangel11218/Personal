object FrmDocumentosPersonal: TFrmDocumentosPersonal
  Left = 0
  Top = 0
  Caption = 'Documentaci'#243'n recibida'
  ClientHeight = 327
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NombreCompleto: TDBText
    Left = 40
    Top = 8
    Width = 98
    Height = 13
    AutoSize = True
    DataField = 'NombreCompleto'
    DataSource = dsPersonal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DoctoActaNacimiento: TCheckBox
    Tag = 1
    Left = 72
    Top = 80
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Acta de Nacimiento'
    ParentBiDiMode = False
    TabOrder = 0
  end
  object DoctoCurp: TCheckBox
    Tag = 2
    Left = 72
    Top = 103
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Comprobante CURP'
    ParentBiDiMode = False
    TabOrder = 1
  end
  object DoctoNoPenales: TCheckBox
    Tag = 4
    Left = 256
    Top = 218
    Width = 153
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Antecedentes No Penales'
    ParentBiDiMode = False
    TabOrder = 14
  end
  object DoctoExamenMedico: TCheckBox
    Tag = 8
    Left = 72
    Top = 196
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Examen M'#233'dico'
    ParentBiDiMode = False
    TabOrder = 5
  end
  object DoctoRFC: TCheckBox
    Tag = 16
    Left = 72
    Top = 126
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Comprobante RFC'
    ParentBiDiMode = False
    TabOrder = 2
  end
  object DoctoIMSS: TCheckBox
    Tag = 32
    Left = 72
    Top = 173
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'N'#250'mero IMSS'
    ParentBiDiMode = False
    TabOrder = 4
  end
  object DoctoCompDom: TCheckBox
    Tag = 64
    Left = 64
    Top = 219
    Width = 129
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Comprobante Domicilio'
    ParentBiDiMode = False
    TabOrder = 6
  end
  object DoctoIFE: TCheckBox
    Tag = 128
    Left = 72
    Top = 150
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Copia de INE'
    ParentBiDiMode = False
    TabOrder = 3
  end
  object DoctoCurriculum: TCheckBox
    Tag = 256
    Left = 72
    Top = 242
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Curr'#237'culum'
    ParentBiDiMode = False
    TabOrder = 7
  end
  object DoctoFotos: TCheckBox
    Tag = 512
    Left = 288
    Top = 195
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Fotograf'#237'as'
    ParentBiDiMode = False
    TabOrder = 13
  end
  object DoctoContrato: TCheckBox
    Tag = 1024
    Left = 288
    Top = 172
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Contrato Firmado'
    ParentBiDiMode = False
    TabOrder = 12
  end
  object DoctoEstudios: TCheckBox
    Tag = 2048
    Left = 248
    Top = 103
    Width = 161
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Comprobante de Estudios'
    ParentBiDiMode = False
    TabOrder = 9
  end
  object DoctoInfonavit: TCheckBox
    Tag = 4096
    Left = 248
    Top = 126
    Width = 161
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Aviso Retenci'#243'n Infonavit'
    ParentBiDiMode = False
    TabOrder = 10
  end
  object DoctoLicencia: TCheckBox
    Tag = 8192
    Left = 288
    Top = 149
    Width = 121
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Licencia de Manejo'
    ParentBiDiMode = False
    TabOrder = 11
  end
  object DoctoDescripPto: TCheckBox
    Tag = 16384
    Left = 270
    Top = 80
    Width = 139
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Descripci'#243'n de Puesto'
    ParentBiDiMode = False
    TabOrder = 8
  end
  object Panel1: TPanel
    Left = 0
    Top = 286
    Width = 477
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 16
    object btnOk: TAdvGlowButton
      Left = 270
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Aceptar'
      ImageIndex = 2
      Images = connection.IconosBarra
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object btnCancelar: TAdvGlowButton
      Left = 370
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Cancelar'
      ImageIndex = 4
      Images = connection.IconosBarra
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
  object DoctoCartaConfi: TCheckBox
    Tag = 32768
    Left = 256
    Top = 241
    Width = 153
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = 'Carta de Confidenciabilidad'
    ParentBiDiMode = False
    TabOrder = 15
  end
  object cdDocumentos: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 200
    Top = 16
  end
  object dsPersonal: TDataSource
    Left = 304
    Top = 8
  end
end
