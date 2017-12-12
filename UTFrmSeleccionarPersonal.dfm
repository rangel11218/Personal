object FrmSeleccionarPersonal: TFrmSeleccionarPersonal
  Left = 0
  Top = 0
  Caption = 'Seleccionar Personal'
  ClientHeight = 408
  ClientWidth = 685
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 250
    Height = 408
    Align = alLeft
    TabOrder = 0
    object tvTodo: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTodoPersonal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      object etNombreOrganizacion: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'NombreOrganizacion'
        Visible = False
        GroupIndex = 0
      end
      object etIdPersonal: TcxGridDBColumn
        DataBinding.FieldName = 'IdPersonal'
        Visible = False
      end
      object etNombreCompleto: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'NombreCompleto'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvTodo
    end
  end
  object Panel1: TPanel
    Left = 250
    Top = 0
    Width = 119
    Height = 408
    Align = alLeft
    Padding.Left = 4
    Padding.Top = 6
    Padding.Right = 4
    TabOrder = 1
    object btnAgregar: TAdvGlowButton
      Left = 5
      Top = 7
      Width = 109
      Height = 41
      Align = alTop
      Caption = '&Agregar >'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAgregarClick
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
    object btnTodos: TAdvGlowButton
      Left = 5
      Top = 48
      Width = 109
      Height = 41
      Align = alTop
      Caption = '&Todos >>'
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
    object btnQuitar: TAdvGlowButton
      Left = 5
      Top = 118
      Width = 109
      Height = 41
      Align = alTop
      Caption = '< &Quitar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = btnQuitarClick
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
    object btnNinguno: TAdvGlowButton
      Left = 5
      Top = 159
      Width = 109
      Height = 41
      Align = alTop
      Caption = '<< &Ninguno'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object Panel2: TPanel
      Left = 5
      Top = 89
      Width = 109
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
    end
  end
  object cxGrid2: TcxGrid
    Left = 369
    Top = 0
    Width = 316
    Height = 408
    Align = alClient
    TabOrder = 2
    object tvSeleccionados: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPersonalIncluido
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      object esNombreOrganizacion: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'NombreOrganizacion'
        Visible = False
        GroupIndex = 0
      end
      object esIdPersonal: TcxGridDBColumn
        DataBinding.FieldName = 'IdPersonal'
        Visible = False
      end
      object esNombreCompleto: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'NombreCompleto'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = tvSeleccionados
    end
  end
  object dsPersonalIncluido: TDataSource
    Left = 472
    Top = 160
  end
  object dsTodoPersonal: TDataSource
    Left = 136
    Top = 216
  end
end
