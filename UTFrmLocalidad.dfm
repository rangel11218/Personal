object FrmLocalidad: TFrmLocalidad
  Left = 0
  Top = 0
  Caption = 'Localidades'
  ClientHeight = 407
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 661
    Height = 366
    Align = alClient
    TabOrder = 0
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvDatosCellDblClick
      DataController.DataSource = dsDatos
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
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      object TituloOrganizacion: TcxGridDBColumn
        DataBinding.FieldName = 'TituloOrganizacion'
        Visible = False
        GroupIndex = 0
      end
      object CodigoLocalidad: TcxGridDBColumn
        DataBinding.FieldName = 'CodigoLocalidad'
      end
      object NombreLocalidad: TcxGridDBColumn
        DataBinding.FieldName = 'NombreLocalidad'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 366
    Width = 661
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object btnAdd: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Nuevo'
      ImageIndex = 0
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      TabStop = True
      OnClick = btnAddClick
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
    object btnEditar: TAdvGlowButton
      Left = 107
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Editar'
      ImageIndex = 1
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      TabStop = True
      OnClick = btnEditarClick
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
    object btnBorrar: TAdvGlowButton
      Left = 207
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Borrar'
      ImageIndex = 1
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      TabStop = True
      OnClick = btnBorrarClick
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
  object pnlEdit: TPanel
    Left = 264
    Top = 32
    Width = 321
    Height = 185
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object JvLabel1: TJvLabel
      Left = 24
      Top = 54
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel2: TJvLabel
      Left = 31
      Top = 86
      Width = 30
      Height = 13
      Caption = 'T'#237'tulo:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel3: TJvLabel
      Left = 16
      Top = 22
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrack = False
    end
    object Panel3: TPanel
      Left = 0
      Top = 144
      Width = 321
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 3
      object btnEditCancel: TAdvGlowButton
        Left = 214
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
      object btnAceptar: TAdvGlowButton
        Left = 114
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        ImageIndex = 0
        Images = connection.IconosBarra
        ModalResult = 1
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
    object eCodigoLocalidad: TDBEdit
      Left = 69
      Top = 51
      Width = 121
      Height = 21
      DataField = 'CodigoLocalidad'
      DataSource = dsDatos
      TabOrder = 1
    end
    object eNombreLocalidad: TDBEdit
      Left = 69
      Top = 83
      Width = 236
      Height = 21
      DataField = 'NombreLocalidad'
      DataSource = dsDatos
      TabOrder = 2
    end
    object IdOrganizacion: TDBLookupComboBox
      Left = 69
      Top = 19
      Width = 236
      Height = 21
      DataField = 'IdOrganizacion'
      DataSource = dsDatos
      KeyField = 'IdOrganizacion'
      ListField = 'TituloOrganizacion'
      ListSource = dsOrganizacion
      TabOrder = 0
    end
  end
  object cdDatos: TZQuery
    Connection = connection.zConnection
    AfterOpen = cdDatosAfterOpen
    AfterClose = cdDatosAfterClose
    AfterPost = cdDatosAfterPost
    AfterDelete = cdDatosAfterDelete
    Params = <>
    Left = 128
    Top = 176
  end
  object dsDatos: TDataSource
    DataSet = cdDatos
    Left = 216
    Top = 184
  end
  object cdOrganizacion: TZReadOnlyQuery
    Params = <>
    Left = 184
    Top = 256
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 280
    Top = 256
  end
end
