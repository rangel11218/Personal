object FrmConsultaVacaciones: TFrmConsultaVacaciones
  Left = 0
  Top = 0
  Caption = 'Consulta de Vacaciones'
  ClientHeight = 369
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 57
    Align = alTop
    TabOrder = 0
    object NombreCompleto: TDBText
      Left = 8
      Top = 6
      Width = 142
      Height = 19
      AutoSize = True
      DataField = 'NombreCompleto'
      DataSource = dsPeriodos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel1: TJvLabel
      Left = 8
      Top = 33
      Width = 111
      Height = 13
      Caption = 'Datos estimados al d'#237'a:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel2: TJvLabel
      Left = 248
      Top = 30
      Width = 113
      Height = 13
      Caption = 'Incluir prescritas hasta:'
      Transparent = True
      HotTrack = False
    end
    object Prescritas: TComboBox
      Left = 369
      Top = 30
      Width = 88
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = PrescritasChange
    end
    object FechaProceso: TcxDateEdit
      Left = 125
      Top = 30
      TabOrder = 1
      Width = 100
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 794
    Height = 271
    Align = alClient
    TabOrder = 1
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPeriodos
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
      object Desde: TcxGridDBColumn
        DataBinding.FieldName = 'Desde'
      end
      object Hasta: TcxGridDBColumn
        DataBinding.FieldName = 'Hasta'
      end
      object FactorAnio: TcxGridDBColumn
        Caption = 'Factor A'#241'o'
        DataBinding.FieldName = 'FactorAnio'
      end
      object Periodo: TcxGridDBColumn
        DataBinding.FieldName = 'Periodo'
      end
      object DiasTabla: TcxGridDBColumn
        DataBinding.FieldName = 'DiasTabla'
      end
      object Factor: TcxGridDBColumn
        DataBinding.FieldName = 'Factor'
      end
      object Pagadas: TcxGridDBColumn
        DataBinding.FieldName = 'Pagadas'
      end
      object Pendientes: TcxGridDBColumn
        DataBinding.FieldName = 'Pendientes'
      end
      object AcumVac: TcxGridDBColumn
        Caption = 'Acumulado'
        DataBinding.FieldName = 'AcumVac'
      end
      object Comentario: TcxGridDBColumn
        DataBinding.FieldName = 'Comentario'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 328
    Width = 794
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 2
    object AdvGlowButton1: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = 'AdvGlowButton1'
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
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 72
    Top = 256
  end
  object dsBuscarPersonal: TDataSource
    Left = 152
    Top = 256
  end
  object memPeriodos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 264
    object memPeriodosIdPersonal: TIntegerField
      FieldName = 'IdPersonalIMSS'
    end
    object memPeriodosNombreCompleto: TStringField
      FieldName = 'NombreCompleto'
      Size = 200
    end
    object memPeriodosPeriodo: TIntegerField
      FieldName = 'Periodo'
    end
    object memPeriodosDiasTabla: TIntegerField
      FieldName = 'DiasTabla'
    end
    object memPeriodosFactorAnio: TFloatField
      FieldName = 'FactorAnio'
    end
    object memPeriodosFactor: TFloatField
      FieldName = 'Factor'
    end
    object memPeriodosDesde: TDateField
      FieldName = 'Desde'
    end
    object memPeriodosHasta: TDateField
      FieldName = 'Hasta'
    end
    object memPeriodosPagadas: TFloatField
      FieldName = 'Pagadas'
    end
    object memPeriodosPendientes: TFloatField
      FieldName = 'Pendientes'
    end
    object memPeriodosAcumVac: TFloatField
      FieldName = 'AcumVac'
    end
    object memPeriodosComentario: TStringField
      FieldName = 'Comentario'
      Size = 200
    end
  end
  object cdPeriodoContrato: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 472
    Top = 240
  end
  object cdTablaVacaciones: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 240
    Top = 296
  end
  object dsPeriodos: TDataSource
    DataSet = memPeriodos
    Left = 384
    Top = 264
  end
  object cdPagadas: TZReadOnlyQuery
    Params = <>
    Left = 184
    Top = 184
  end
end
