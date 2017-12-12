object FrmEstadoPendientes: TFrmEstadoPendientes
  Left = 0
  Top = 0
  Caption = 'Consulta estado de personal pendiente de contrataci'#243'n'
  ClientHeight = 389
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 770
    Height = 348
    Align = alClient
    TabOrder = 1
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = tvDatosCustomDrawCell
      DataController.DataSource = dsPersonalPendientes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NoDataToDisplayInfoText = '< Sin datos >'
      OptionsView.GroupByBox = False
      object ColLapsoIdx: TcxGridDBColumn
        DataBinding.FieldName = 'LapsoIdx'
        Visible = False
      end
      object ColTituloOrganizacion: TcxGridDBColumn
        Caption = 'Empresa'
        DataBinding.FieldName = 'TituloOrganizacion'
        Visible = False
        GroupIndex = 0
      end
      object ColNombreCompleto: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'NombreCompleto'
        Options.Editing = False
        Options.Grouping = False
      end
      object ColTituloDepartamento: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'TituloDepartamento'
        Options.Editing = False
        Options.Grouping = False
      end
      object ColTituloCargo: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'TituloCargo'
        Options.Editing = False
        Options.Grouping = False
      end
      object ColLapsoTitulo: TcxGridDBColumn
        Caption = 'Leyenda'
        DataBinding.FieldName = 'LapsoTitulo'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 41
    Align = alTop
    TabOrder = 0
    object JvLabel2: TJvLabel
      Left = 208
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Hasta:'
      Transparent = True
      HotTrack = False
    end
    object btnPreview: TAdvGlowButton
      Left = 544
      Top = 0
      Width = 100
      Height = 41
      Caption = 'btnPreview'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      Visible = False
      OnClick = btnPreviewClick
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
    object Hasta: TcxDateEdit
      Left = 246
      Top = 14
      TabOrder = 1
      OnClick = HastaClick
      OnKeyDown = HastaKeyDown
      Width = 121
    end
  end
  object cdPersonalPendientes: TZReadOnlyQuery
    Params = <>
    Left = 192
    Top = 296
  end
  object dsPersonalPendientes: TDataSource
    AutoEdit = False
    DataSet = cdPersonalPendientes
    Left = 312
    Top = 296
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43066.750469409700000000
    ReportOptions.LastChange = 43070.676227708330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure NombreCompletoOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBDataset1."LapsoIdx"> = 0 then'
      '  begin              '
      '    NombreCompleto.Font.Style := 3;'
      '    NombreCompleto.Font.Color := clGray;'
      ''
      
        '    FechaPase.Font.Style := 3;                                  ' +
        '                                    '
      '    FechaPase.Font.Color := clGray;'
      ''
      '    TituloCargo.Font.Style := 3;'
      '    TituloCargo.Font.Color := clGray;'
      ''
      '    Leyenda.Font.Style := 3;'
      '    Leyenda.Font.Color := clGray;'
      '  end'
      '  else'
      '  begin'
      '    NombreCompleto.Font.Style := 1;  '
      '    NombreCompleto.Font.Color := clBlack;'
      ''
      '    FechaPase.Font.Style := 1;'
      '    FechaPase.Font.Color := clBlack;'
      ''
      '    TituloCargo.Font.Style := 1;'
      '    TituloCargo.Font.Color := clBlack;'
      ''
      '    Leyenda.Font.Style := 1;'
      '    Leyenda.Font.Color := clBlack;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 496
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 113.385900000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object NombreCompleto: TfrxMemoView
          Left = 45.354360000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'NombreCompletoOnBeforePrint'
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NombreCompleto"]')
          ParentFont = False
        end
        object TituloCargo: TfrxMemoView
          Left = 393.071120000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TituloCargo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."TituloCargo"]')
          ParentFont = False
        end
        object FechaPase: TfrxMemoView
          Left = 298.582870000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'FechaPase'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."FechaPase"]')
          ParentFont = False
        end
        object Leyenda: TfrxMemoView
          Left = 521.575140000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'LapsoTitulo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."LapsoTitulo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."IdDepartamento"'
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Left = 45.354360000000000000
          Top = 45.354360000000000000
          Width = 253.228510000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."TituloOrganizacion"]')
        end
        object Memo4: TfrxMemoView
          Left = 26.456710000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."TituloDepartamento"]')
        end
        object Memo7: TfrxMemoView
          Left = 298.582870000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'Pase')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 521.575140000000000000
          Top = 45.354360000000000000
          Width = 211.653680000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'Comentario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'Puesto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'NombreCompleto=NombreCompleto'
      'FechaRegistro=FechaRegistro'
      'FechaPase=FechaPase'
      'FechaPase3=FechaPase3'
      'IdCargo=IdCargo'
      'TituloCargo=TituloCargo'
      'IdDepartamento=IdDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdOrganizacion=IdOrganizacion'
      'TituloOrganizacion=TituloOrganizacion'
      'LapsoDias=LapsoDias'
      'LapsoIdx=LapsoIdx'
      'LapsoTitulo=LapsoTitulo')
    DataSet = cdPersonalPendientes
    BCDToCurrency = False
    Left = 376
    Top = 200
  end
end
