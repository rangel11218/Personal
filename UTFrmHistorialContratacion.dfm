object FrmHistorialContratacion: TFrmHistorialContratacion
  Left = 0
  Top = 0
  Caption = 'Historial de Contrataci'#243'n'
  ClientHeight = 497
  ClientWidth = 746
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
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 746
    Height = 456
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    OnClick = frxPreview1Click
    UseReportHints = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 746
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    Visible = False
    object btnAbrir: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Abrir'
      ImageIndex = 14
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAbrirClick
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
  object pnlEditar: TPanel
    Left = 304
    Top = 8
    Width = 377
    Height = 417
    TabOrder = 2
    Visible = False
    object lblDiario: TJvLabel
      Left = 24
      Top = 184
      Width = 66
      Height = 13
      Caption = 'Salario Diario:'
      Transparent = True
      HotTrack = False
    end
    object lblIntegrado: TJvLabel
      Left = 24
      Top = 208
      Width = 87
      Height = 13
      Caption = 'Salario Integrado:'
      Transparent = True
      HotTrack = False
    end
    object lblFecha: TJvLabel
      Left = 24
      Top = 136
      Width = 57
      Height = 13
      Caption = 'Fecha Baja:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel1: TJvLabel
      Left = 24
      Top = 64
      Width = 48
      Height = 13
      Caption = 'Localidad:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel2: TJvLabel
      Left = 24
      Top = 40
      Width = 73
      Height = 13
      Caption = 'Departamento:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel3: TJvLabel
      Left = 24
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel4: TJvLabel
      Left = 24
      Top = 88
      Width = 47
      Height = 13
      Caption = 'Proyecto:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel5: TJvLabel
      Left = 24
      Top = 112
      Width = 37
      Height = 13
      Caption = 'Puesto:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel6: TJvLabel
      Left = 24
      Top = 160
      Width = 57
      Height = 13
      Caption = 'Fecha Real:'
      Transparent = True
      HotTrack = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 375
      Width = 375
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 9
      object btnEditCancelar: TAdvGlowButton
        Left = 268
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 3
        Images = connection.IconosBarra
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        TabStop = True
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
      object btnEditAceptar: TAdvGlowButton
        Left = 168
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
        TabStop = True
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
    object Sindicato: TDBCheckBox
      Left = 8
      Top = 232
      Width = 125
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = '?Retenci'#243'n Sindical'#191
      DataField = 'Sindicato'
      DataSource = dsEditar
      ParentBiDiMode = False
      TabOrder = 7
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object IdLocalidad: TDBLookupComboBox
      Left = 119
      Top = 61
      Width = 250
      Height = 21
      DataField = 'IdLocalidad'
      DataSource = dsEditar
      Enabled = False
      KeyField = 'IdLocalidad'
      ListField = 'NombreLocalidad'
      ListSource = dsLocalidad
      TabOrder = 2
    end
    object IdDepartamento: TDBLookupComboBox
      Left = 119
      Top = 37
      Width = 250
      Height = 21
      DataField = 'IdDepartamento'
      DataSource = dsEditar
      Enabled = False
      KeyField = 'IdDepartamento'
      ListField = 'TituloDepartamento'
      ListSource = dsDepartamento
      TabOrder = 1
    end
    object IdOrganizacion: TComboBox
      Left = 119
      Top = 13
      Width = 250
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'IdOrganizacion'
      OnChange = IdOrganizacionChange
    end
    object IdProyecto: TDBLookupComboBox
      Left = 119
      Top = 85
      Width = 250
      Height = 21
      DataField = 'IdProyecto'
      DataSource = dsEditar
      Enabled = False
      KeyField = 'IdProyecto'
      ListField = 'TituloProyecto'
      ListSource = dsProyecto
      TabOrder = 3
    end
    object IdCargo: TDBLookupComboBox
      Left = 119
      Top = 112
      Width = 250
      Height = 21
      DataField = 'IdCargo'
      DataSource = dsEditar
      KeyField = 'IdCargo'
      ListField = 'TituloCargo'
      ListSource = dsCargo
      TabOrder = 4
    end
    object IdSolicita: TDBLookupComboBox
      Left = 119
      Top = 25
      Width = 250
      Height = 21
      DataField = 'IdSolicita'
      DataSource = dsEditar
      KeyField = 'IdPersonal'
      ListField = 'NombreCompleto'
      ListSource = dsSolicita
      TabOrder = 11
    end
    object MotivoBaja: TDBComboBox
      Left = 119
      Top = 52
      Width = 194
      Height = 21
      DataField = 'MotivoBaja'
      DataSource = dsEditar
      Items.Strings = (
        'Terminacion de proyecto'
        'Causa administrativa'
        'Baja definitiva'
        'Baja temporal')
      TabOrder = 5
    end
    object CuantoSiTemporal: TDBMemo
      Left = 119
      Top = 79
      Width = 250
      Height = 48
      DataField = 'CuantoSiTemporal'
      DataSource = dsEditar
      TabOrder = 6
    end
    object BajaRecontratar: TDBComboBox
      Left = 120
      Top = 143
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'BajaRecontratar'
      DataSource = dsEditar
      Items.Strings = (
        'Recontratable'
        'No recontratable')
      TabOrder = 8
    end
    object Comentarios: TDBMemo
      Left = 119
      Top = 323
      Width = 249
      Height = 46
      DataField = 'Comentarios'
      DataSource = dsEditar
      TabOrder = 10
    end
    object Fecha: TcxDBDateEdit
      Left = 119
      Top = 133
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsEditar
      TabOrder = 12
      Width = 98
    end
    object FechaReal: TcxDBDateEdit
      Left = 119
      Top = 157
      DataBinding.DataField = 'FechaReal'
      DataBinding.DataSource = dsEditar
      TabOrder = 13
      Width = 98
    end
    object SalarioDiario: TcxDBCalcEdit
      Left = 119
      Top = 181
      TabOrder = 14
      Width = 98
    end
    object SalarioIntegrado: TcxDBCalcEdit
      Left = 119
      Top = 205
      TabOrder = 15
      Width = 98
    end
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42913.458101284700000000
    ReportOptions.LastChange = 43068.752394293980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxReport1ClickObject
    OnDblClickObject = frxReport1DblClickObject
    Left = 200
    Top = 232
    Datasets = <
      item
        DataSet = frxDBHistorial
        DataSetName = 'frxDBHistorial'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.000000000000000000
      PaperHeight = 216.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 109.606370000000000000
        Width = 1016.693570000000000000
        DataSet = frxDBHistorial
        DataSetName = 'frxDBHistorial'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Tag = 1
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBHistorial."FechaReingreso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Tag = 2
          Left = 105.826840000000000000
          Width = 120.944874570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'NombreOrganizacion'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBHistorial."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Tag = 3
          Left = 226.771800000000000000
          Width = 113.385814570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'TituloDepartamento'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBHistorial."TituloDepartamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Tag = 4
          Left = 340.157700000000000000
          Width = 90.708634570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'NombreLocalidad'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBHistorial."NombreLocalidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Tag = 5
          Left = 430.866420000000000000
          Width = 113.385814570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'TituloProyecto'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBHistorial."TituloProyecto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Tag = 6
          Left = 544.252320000000100000
          Width = 105.826754570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'TituloCargo'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBHistorial."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Tag = 9
          Left = 755.906000000000000000
          Width = 52.913358980000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSSBaja"]'
          DataField = 'FechaBaja'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBHistorial."FechaBaja"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 854.173780000000000000
          Width = 162.519728980000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          DataField = 'Comentarios'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBHistorial."Comentarios"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Tag = 8
          Left = 702.992580000000000000
          Width = 52.913358980000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'SalarioIntegrado'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBHistorial."SalarioIntegrado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Tag = 7
          Left = 650.079160000000000000
          Width = 52.913358980000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'SalarioDiario'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBHistorial."SalarioDiario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Tag = 10
          Left = 808.819420000000000000
          Width = 45.354298980000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSSBaja"]'
          DataField = 'Sindicato'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBHistorial."Sindicato"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Tag = 1
          Left = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Cursor = crHandPoint
          TagStr = '[frxDBHistorial."IdPersonalIMSS"]'
          DataField = 'FechaReal'
          DataSet = frxDBHistorial
          DataSetName = 'frxDBHistorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBHistorial."FechaReal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 1016.693570000000000000
        Child = frxReport1.Child1
        Condition = 'frxDBHistorial."IdPersonal"'
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '[frxDBHistorial."NombreCompleto"]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 60.472480000000000000
        Width = 1016.693570000000000000
        object Memo3: TfrxMemoView
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha Alta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 105.826840000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 226.771800000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Departamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Localidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 430.866420000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Proyecto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 544.252320000000100000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Puesto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 755.906000000000000000
          Width = 52.913385830000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha Baja')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 854.173780000000000000
          Width = 162.519790000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Comentarios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 650.079160000000000000
          Width = 52.913385830000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Salario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 702.992580000000000000
          Width = 52.913385830000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Sal. Int.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 808.819420000000000000
          Width = 45.354325830000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Sindicato')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha Real')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBHistorial: TfrxDBDataset
    UserName = 'frxDBHistorial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NombreCompleto=NombreCompleto'
      'FechaReingreso=FechaReingreso'
      'FechaReal=FechaReal'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdOrganizacion=IdOrganizacion'
      'CodigoOrganizacion=CodigoOrganizacion'
      'NombreOrganizacion=NombreOrganizacion'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'IdLocalidad=IdLocalidad'
      'CodigoLocalidad=CodigoLocalidad'
      'NombreLocalidad=NombreLocalidad'
      'IdProyecto=IdProyecto'
      'CodigoProyecto=CodigoProyecto'
      'TituloProyecto=TituloProyecto'
      'IdPersonalIMSS=IdPersonalIMSS'
      'SalarioDiario=SalarioDiario'
      'SalarioIntegrado=SalarioIntegrado'
      'IdPersonalIMSSBaja=IdPersonalIMSSBaja'
      'FechaBaja=FechaBaja'
      'Comentarios=Comentarios'
      'Sindicato=Sindicato')
    DataSet = cdHistorial
    BCDToCurrency = False
    Left = 256
    Top = 129
  end
  object cdHistorial: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 424
    Top = 248
  end
  object dsBuscarPersonal: TDataSource
    Left = 56
    Top = 176
  end
  object cdEditar: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 512
    Top = 248
  end
  object dsEditar: TDataSource
    DataSet = cdEditar
    Left = 600
    Top = 272
  end
  object cdDepartamento: TZReadOnlyQuery
    Params = <>
    MasterFields = 'IdOrganizacion'
    MasterSource = dsOrganizacion
    LinkedFields = 'IdOrganizacion'
    Left = 304
    Top = 312
  end
  object cdLocalidad: TZReadOnlyQuery
    Params = <>
    Left = 384
    Top = 296
  end
  object cdOrganizacion: TZReadOnlyQuery
    Params = <>
    Left = 216
    Top = 296
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 144
    Top = 32
  end
  object dsDepartamento: TDataSource
    DataSet = cdDepartamento
    Left = 144
    Top = 80
  end
  object dsLocalidad: TDataSource
    DataSet = cdLocalidad
    Left = 144
    Top = 128
  end
  object dsProyecto: TDataSource
    DataSet = cdProyecto
    Left = 200
    Top = 8
  end
  object dsCargo: TDataSource
    DataSet = cdCargo
    Left = 224
    Top = 72
  end
  object cdProyecto: TZReadOnlyQuery
    Params = <>
    Left = 96
    Top = 304
  end
  object cdCargo: TZReadOnlyQuery
    Params = <>
    MasterFields = 'IdDepartamento'
    LinkedFields = 'IdDepartamento'
    Left = 496
    Top = 304
  end
  object pmOpciones: TPopupMenu
    Left = 664
    Top = 144
    object Editarregistrodecontratacin1: TMenuItem
      Caption = '&Editar registro de contrataci'#243'n'
    end
    object Eliminarregistrodecontratacin1: TMenuItem
      Caption = '&Borrar registro de contrataci'#243'n'
    end
  end
  object cdSolicita: TZReadOnlyQuery
    Params = <>
    Left = 664
    Top = 16
  end
  object dsSolicita: TDataSource
    DataSet = cdSolicita
    Left = 664
    Top = 64
  end
  object cdDepartamentoPlazasPendientes: TZReadOnlyQuery
    Params = <>
    Left = 200
    Top = 160
  end
  object cdPlazaDetalle: TZQuery
    Params = <>
    Left = 664
    Top = 216
  end
  object cdPlaza: TZQuery
    Params = <>
    Left = 664
    Top = 264
  end
end
