object FrmMovimientosExcel: TFrmMovimientosExcel
  Left = 0
  Top = 0
  Caption = 'FrmMovimientosExcel'
  ClientHeight = 330
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 89
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 8
      Top = 60
      Width = 152
      Height = 13
      Caption = 'Seleccionar movimientos desde:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel2: TJvLabel
      Left = 277
      Top = 60
      Width = 43
      Height = 13
      Caption = 'Hasta el:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel3: TJvLabel
      Left = 8
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrack = False
    end
    object btnProceder: TAdvGlowButton
      Left = 456
      Top = 49
      Width = 100
      Height = 33
      Caption = '&Proceder'
      ImageIndex = 47
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnProcederClick
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
    object IdOrganizacion: TComboBox
      Left = 61
      Top = 5
      Width = 300
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = IdOrganizacionChange
    end
    object Desde: TcxDateEdit
      Left = 166
      Top = 57
      TabOrder = 2
      Width = 83
    end
    object Hasta: TcxDateEdit
      Left = 326
      Top = 57
      TabOrder = 3
      Width = 83
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 573
    Height = 200
    Align = alClient
    TabOrder = 1
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPersonal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      object NombreCompleto: TcxGridDBColumn
        DataBinding.FieldName = 'NombreCompleto'
      end
      object FechaReingreso: TcxGridDBColumn
        Caption = 'Reingreso'
        DataBinding.FieldName = 'FechaReingreso'
      end
      object FechaBaja: TcxGridDBColumn
        DataBinding.FieldName = 'FechaBaja'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 289
    Width = 573
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    object btnGenerarExcel: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = 'Generar &Excel'
      ImageIndex = 30
      Images = connection.Imagenes16
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnGenerarExcelClick
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
    object btnCerrar: TAdvGlowButton
      Left = 466
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Cerrar'
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
    object Panel3: TPanel
      Left = 107
      Top = 5
      Width = 359
      Height = 31
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 12
      Padding.Top = 7
      Padding.Right = 12
      Padding.Bottom = 7
      TabOrder = 2
      object ProgressBar1: TProgressBar
        Left = 12
        Top = 7
        Width = 335
        Height = 17
        Align = alClient
        TabOrder = 0
        Visible = False
      end
    end
  end
  object cdPersonal: TZReadOnlyQuery
    AfterOpen = cdPersonalAfterOpen
    AfterClose = cdPersonalAfterClose
    AfterRefresh = cdPersonalAfterRefresh
    Params = <>
    Left = 240
    Top = 224
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 304
    Top = 224
  end
  object cdOrganizacion: TZReadOnlyQuery
    Params = <>
    Left = 168
    Top = 144
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xlsx'
    Left = 440
    Top = 112
  end
end
