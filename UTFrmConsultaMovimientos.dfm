object FrmConsultaMovimientos: TFrmConsultaMovimientos
  Left = 0
  Top = 0
  Caption = 'Consulta Movimientos'
  ClientHeight = 387
  ClientWidth = 584
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 107
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 16
      Top = 11
      Width = 34
      Height = 13
      Caption = 'Desde:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel2: TJvLabel
      Left = 168
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Hasta:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel3: TJvLabel
      Left = 16
      Top = 75
      Width = 73
      Height = 13
      Caption = 'Departamento:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel4: TJvLabel
      Left = 44
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrack = False
    end
    object IdDepartamento: TComboBox
      Left = 97
      Top = 72
      Width = 304
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object btnProceder: TAdvGlowButton
      Left = 416
      Top = 72
      Width = 97
      Height = 21
      Caption = '&Proceder'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
      Left = 97
      Top = 45
      Width = 304
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = IdOrganizacionChange
    end
    object Desde: TcxDateEdit
      Left = 56
      Top = 8
      TabOrder = 3
      Width = 89
    end
    object Hasta: TcxDateEdit
      Left = 206
      Top = 8
      TabOrder = 4
      Width = 89
    end
  end
  object gridDatos: TcxGrid
    Left = 0
    Top = 107
    Width = 584
    Height = 280
    Align = alClient
    TabOrder = 1
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsDatos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object NombreOrganizacion: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'NombreOrganizacion'
        Visible = False
        GroupIndex = 0
      end
      object NombreLocalidad: TcxGridDBColumn
        Caption = 'Localidad'
        DataBinding.FieldName = 'NombreLocalidad'
      end
      object TituloDepartamento: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'TituloDepartamento'
      end
      object TituloProyecto: TcxGridDBColumn
        Caption = 'Proyecto'
        DataBinding.FieldName = 'TituloProyecto'
      end
      object TituloCargo: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'TituloCargo'
      end
      object TipoMovimiento: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'TipoMovimiento'
      end
      object FechaMovimiento: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FechaMovimiento'
      end
    end
    object gridDatosLevel1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object cdDatos: TZReadOnlyQuery
    Params = <>
    Left = 64
    Top = 192
  end
  object dsDatos: TDataSource
    DataSet = memDatos
    Left = 112
    Top = 192
  end
  object cdOrganizacion: TZReadOnlyQuery
    Params = <>
    Left = 432
    Top = 136
  end
  object cdDepartamento: TZReadOnlyQuery
    Params = <>
    MasterFields = 'IdOrganizacion'
    MasterSource = dsOrganizacion
    LinkedFields = 'IdOrganizacion'
    Left = 472
    Top = 184
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 208
    Top = 256
  end
  object memDatos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdPersonal'
        DataType = ftInteger
      end
      item
        Name = 'NombreCompleto'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'IMSS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RFC'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CURP'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NombreOrganizacion'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TituloDepartamento'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TituloCargo'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'NombreLocalidad'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TituloProyecto'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'Col1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col10'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col11'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col12'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col13'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col14'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col15'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col16'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col17'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col18'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col19'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col20'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col21'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col22'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col23'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col24'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col25'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col26'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col27'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col28'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col29'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col30'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col31'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col32'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col33'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col34'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col35'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col36'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col37'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col38'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col39'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Col40'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 248
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42914.453862037040000000
    ReportOptions.LastChange = 42914.573091562500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 448
    Top = 16
    Datasets = <
      item
        DataSet = frxdbMovimientos
        DataSetName = 'frxdbMovimientos'
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
      PaperSize = 119
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 102.047310000000000000
        Width = 1016.693570000000000000
        Child = frxReport1.Child1
        DataSet = frxdbMovimientos
        DataSetName = 'frxdbMovimientos'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col1"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 291.023810000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col2"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 317.480520000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col3"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col4"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 370.393940000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col5"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 396.850650000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col6"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 423.307360000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col7"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 449.764070000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col8"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 476.220780000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col9"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col10"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxdbMovimientos."NombreCompleto"]'
            'LOCALIDAD: [frxdbMovimientos."NombreLocalidad"]'
            'DEPARTAMENTO: [frxdbMovimientos."TituloDepartamento"]'
            'PROYECTO: [frxdbMovimientos."TituloProyecto"]'
            'PUESTO: [frxdbMovimientos."TituloCargo"]')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 529.134199999999900000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col1"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 555.590910000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col2"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 582.047620000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col3"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 608.504330000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col4"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 634.961040000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col5"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 661.417750000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col6"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col16"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 687.874460000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col7"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col17"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 714.331170000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col8"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col18"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col9"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col19"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 767.244590000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col10"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col20"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 793.701300000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col6"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col21"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 820.158010000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col7"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col22"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 846.614720000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col8"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col23"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 873.071430000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col9"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col24"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 899.528140000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col9"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col25"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col8"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col26"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col9"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col27"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbMovimientos
          DataSetName = 'frxdbMovimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -8
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxdbMovimientos."Col9"> = '#39'Baja'#39
          Highlight.FillType = ftBrush
          Memo.UTF8W = (
            '[frxdbMovimientos."Col28"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897664650000000000
        Top = 18.897650000000000000
        Width = 1016.693570000000000000
        Child = frxReport1.Child2
        Condition = 'frxdbMovimientos."NombreOrganizacion"'
        ReprintOnNewPage = True
        object Memo15: TfrxMemoView
          Width = 1012.914040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            '  EMPRESA: [frxdbMovimientos."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 139.842610000000000000
        Width = 1016.693570000000000000
        Stretched = True
      end
      object Child2: TfrxChild
        FillType = ftBrush
        Height = 18.897664650000000000
        Top = 60.472480000000000000
        Width = 1016.693570000000000000
        object Memo12: TfrxMemoView
          Top = 0.000014649999997118
          Width = 264.567078030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col1: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col2: TfrxMemoView
          Left = 291.023810000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col3: TfrxMemoView
          Left = 317.480520000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col3]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col4: TfrxMemoView
          Left = 343.937230000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col4]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col5: TfrxMemoView
          Left = 370.393940000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col5]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col6: TfrxMemoView
          Left = 396.850650000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col6]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col7: TfrxMemoView
          Left = 423.307360000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col7]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col8: TfrxMemoView
          Left = 449.764070000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col8]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col9: TfrxMemoView
          Left = 476.220780000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col9]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Col10: TfrxMemoView
          Left = 502.677490000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col10]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 555.590910000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col12]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 582.047620000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col13]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col14]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 634.961040000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col15]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 661.417750000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col16]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 687.874460000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col17]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 714.331170000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col18]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 740.787880000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col19]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 767.244590000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col20]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 793.701300000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col21]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 820.158010000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col22]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 846.614720000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col23]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 873.071430000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col24]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 529.134199999999900000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col11]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 899.528140000000000000
          Top = 0.000014649999997118
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col25]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 925.984850000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col26]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 952.441560000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col27]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 978.898270000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            '[Col28]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbMovimientos: TfrxDBDataset
    UserName = 'frxdbMovimientos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'NombreCompleto=NombreCompleto'
      'RFC=RFC'
      'IMSS=IMSS'
      'CURP=CURP'
      'NombreOrganizacion=NombreOrganizacion'
      'TituloDepartamento=TituloDepartamento'
      'TituloCargo=TituloCargo'
      'NombreLocalidad=NombreLocalidad'
      'TituloProyecto=TituloProyecto'
      'Col1=Col1'
      'Col2=Col2'
      'Col3=Col3'
      'Col4=Col4'
      'Col5=Col5'
      'Col6=Col6'
      'Col7=Col7'
      'Col8=Col8'
      'Col9=Col9'
      'Col10=Col10'
      'Col11=Col11'
      'Col12=Col12'
      'Col13=Col13'
      'Col14=Col14'
      'Col15=Col15'
      'Col16=Col16'
      'Col17=Col17'
      'Col18=Col18'
      'Col19=Col19'
      'Col20=Col20'
      'Col21=Col21'
      'Col22=Col22'
      'Col23=Col23'
      'Col24=Col24'
      'Col25=Col25'
      'Col26=Col26'
      'Col27=Col27'
      'Col28=Col28'
      'Col29=Col29'
      'Col30=Col30'
      'Col31=Col31'
      'Col32=Col32'
      'Col33=Col33'
      'Col34=Col34'
      'Col35=Col35'
      'Col36=Col36'
      'Col37=Col37'
      'Col38=Col38'
      'Col39=Col39'
      'Col40=Col40')
    DataSet = memDatos
    BCDToCurrency = False
    Left = 352
    Top = 264
  end
end
