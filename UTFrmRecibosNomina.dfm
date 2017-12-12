object FrmRecibosNomina: TFrmRecibosNomina
  Left = 0
  Top = 0
  Caption = 'FrmRecibosNomina'
  ClientHeight = 209
  ClientWidth = 445
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
    Width = 445
    Height = 209
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object dsPersonal: TDataSource
    Left = 224
    Top = 120
  end
  object dsDeducciones: TDataSource
    Left = 224
    Top = 56
  end
  object dsPercepciones: TDataSource
    Left = 136
    Top = 128
  end
  object frxDBDeducciones: TfrxDBDataset
    UserName = 'frxDBDeducciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdDetalleNomina=IdDetalleNomina'
      'IdNomina=IdNomina'
      'IdPersonal=IdPersonal'
      'TipoConcepto=TipoConcepto'
      'Clave=Clave'
      'Descripcion=Descripcion'
      'Importe=Importe'
      'Cantidad=Cantidad'
      'Exento=Exento')
    DataSource = dsDeducciones
    BCDToCurrency = False
    Left = 328
    Top = 80
  end
  object frxDBPersonal: TfrxDBDataset
    UserName = 'frxDBPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdNominaPersonal=IdNominaPersonal '
      'IdNomina=IdNomina'
      'IdPersonal=IdPersonal'
      'Nombres=Nombres'
      'aPaterno=aPaterno'
      'aMaterno=aMaterno'
      'NumeroSeguroSocial=NumeroSeguroSocial'
      'RFC=RFC'
      'CURP=CURP'
      'Infonavit=Infonavit'
      'NumeroInfonavit=NumeroInfonavit'
      'FactorInfonavit=FactorInfonavit'
      'AplicacionInfonavit=AplicacionInfonavit'
      'TerminoInfonavit=TerminoInfonavit'
      'tAplicacionInfonavit=tAplicacionInfonavit'
      'NombreCompleto=NombreCompleto'
      'TituloNomina=TituloNomina'
      'FechaNomina=FechaNomina'
      'FechaTerminoNomina=FechaTerminoNomina'
      'FechaPagoNomina=FechaPagoNomina'
      'Alta=Alta'
      'IdAlta=IdAlta'
      'InicioEmpleado=InicioEmpleado'
      'Baja=Baja'
      'IdBaja=IdBaja'
      'TerminoEmpleado=TerminoEmpleado'
      'Domingos=Domingos'
      'DiasPeriodo=DiasPeriodo'
      'DiasTrabajados=DiasTrabajados'
      'Inasistencias=Inasistencias'
      'DiasEfectivos=DiasEfectivos'
      'DiasPagar=DiasPagar'
      'VacacionesProgramadas=VacacionesProgramadas'
      'PrimaVacacional=PrimaVacacional'
      'CobraVacaciones=CobraVacaciones'
      'IdDepartamento=IdDepartamento'
      'IdOrganizacion=IdOrganizacion'
      'IdCargo=IdCargo'
      'IdLocalidad=IdLocalidad'
      'IdProyecto=IdProyecto'
      'NombreOrganizacion=NombreOrganizacion'
      'TituloDepartamento=TituloDepartamento'
      'NombreLocalidad=NombreLocalidad'
      'TituloProyecto=TituloProyecto'
      'TituloCargo=TituloCargo'
      'SalarioDiario=SalarioDiario'
      'SalarioDiarioFiscal=SalarioDiarioFiscal'
      'SalarioIntegrado=SalarioIntegrado'
      'Sindicato=Sindicato'
      'Percepciones=Percepciones'
      'Deducciones=Deducciones'
      'Neto=Neto'
      'LocNeto=LocNeto'
      'Letras=Letras'
      'IdFormaPago=IdFormaPago'
      'IdCuentaBanco=IdCuentaBanco'
      'Referencia=Referencia'
      'Fecha=Fecha'
      'Registro=Registro')
    DataSource = dsPersonal
    BCDToCurrency = False
    Left = 304
    Top = 128
  end
  object frxDBPercepciones: TfrxDBDataset
    UserName = 'frxDBPercepciones'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdDetalleNomina=IdDetalleNomina'
      'IdNomina=IdNomina'
      'IdPersonal=IdPersonal'
      'TipoConcepto=TipoConcepto'
      'Clave=Clave'
      'Descripcion=Descripcion'
      'Importe=Importe'
      'Cantidad=Cantidad'
      'Exento=Exento')
    DataSource = dsPercepciones
    BCDToCurrency = False
    Left = 312
    Top = 16
  end
  object frxRecibos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42923.499253310200000000
    ReportOptions.LastChange = 43020.572953252320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 136
    Datasets = <
      item
        DataSet = cdUMA
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDeducciones
        DataSetName = 'frxDBDeducciones'
      end
      item
        DataSet = frxDBPercepciones
        DataSetName = 'frxDBPercepciones'
      end
      item
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
      end
      item
        DataSet = frxDBReal
        DataSetName = 'frxDBReal'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 181.417440000000000000
        Top = 86.929190000000000000
        Width = 778.205227000000000000
        Child = frxRecibos.Child1
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
        RowCount = 0
        Stretched = True
        object Memo29: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Puesto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Depto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RFC:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000010000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CURP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 52.913420000000000000
          Top = 3.779529999999994000
          Width = 196.535560000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TituloCargo'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 52.913420000000000000
          Top = 18.897650000000000000
          Width = 196.535560000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TituloDepartamento'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."TituloDepartamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 52.913420000000000000
          Top = 34.015770000000010000
          Width = 196.535560000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'RFC'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."RFC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 52.913420000000000000
          Top = 49.133890000000010000
          Width = 196.535560000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CURP'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."CURP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 113.385900000000000000
          Top = 139.842610000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '30.4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'D'#237'as Mensual:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370129999999990000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Salario:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 113.385900000000000000
          Top = 79.370129999999990000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."SalarioDiarioFiscal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000010000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Integrado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 113.385900000000000000
          Top = 64.252010000000010000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."SalarioIntegrado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'U.M.A.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 113.385900000000000000
          Top = 124.724490000000000000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."Salario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 3.779530000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prima Vacacional:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 113.385900000000000000
          Top = 109.606370000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PrimaVacacional'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."PrimaVacacional"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'D'#237'as vacaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 113.385900000000000000
          Top = 94.488250000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VacacionesProgramadas'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."VacacionesProgramadas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Paga vacaciones:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 113.385900000000000000
          Top = 154.960730000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CobraVacaciones'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."CobraVacaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 143.622140000000000000
        Top = 340.157700000000000000
        Width = 778.205227000000000000
        Child = frxRecibos.Child2
        object Memo24: TfrxMemoView
          Top = 71.811070000000420000
          Width = 778.583180000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 294.803340000000000000
          Top = 49.133890000000010000
          Width = 90.708661420000000000
          Height = 18.897650000000000000
          ShowHint = False
          TagStr = '<frxDBPersonal."IdPersonal">'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."Neto"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 173.858380000000000000
          Top = 49.133890000000010000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Neto Recibido:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000420000
          Width = 771.024120000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            '***[frxDBPersonal."Letras"]***')
          ParentFont = False
          VAlign = vaCenter
        end
        object Subreport2: TfrxSubreport
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxRecibos.Page3
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        Condition = 'frxDBPersonal."IdPersonal"'
        KeepTogether = True
        object Memo26: TfrxMemoView
          Width = 774.803650000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = '@Malgun Gothic'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 26.456710000000000000
        Top = 291.023810000000000000
        Width = 778.205227000000000000
        object Subreport1: TfrxSubreport
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxRecibos.Page2
        end
      end
      object Child2: TfrxChild
        Height = 26.456710000000000000
        Top = 506.457020000000000000
        Width = 778.205227000000000000
        Child = frxRecibos.Child3
        object Subreport3: TfrxSubreport
          Left = 18.897650000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = frxRecibos.Page4
        end
        object Memo9: TfrxMemoView
          Left = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
        end
      end
      object Child3: TfrxChild
        Height = 22.677180000000000000
        Top = 555.590910000000000000
        Width = 778.205227000000000000
        object Memo15: TfrxMemoView
          Left = 18.897650000000000000
          Width = 207.874150000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 15.118120000000000000
        Top = 49.133890000000000000
        Width = 778.205227000000000000
        DataSet = frxDBPercepciones
        DataSetName = 'frxDBPercepciones'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPercepciones."Descripcion"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 113.385826770000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBPercepciones
          DataSetName = 'frxDBPercepciones'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPercepciones."Importe"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 7.559060000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        Condition = 'frxDBPercepciones."IdPersonal"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 86.929190000000000000
        Width = 778.205227000000000000
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPercepciones."Importe">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Percepciones:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 15.118120000000000000
        Top = 52.913420000000000000
        Width = 778.205227000000000000
        DataSet = frxDBDeducciones
        DataSetName = 'frxDBDeducciones'
        RowCount = 0
        Stretched = True
        object Memo12: TfrxMemoView
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxDBDeducciones
          DataSetName = 'frxDBDeducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDeducciones."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDeducciones
          DataSetName = 'frxDBDeducciones'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDeducciones."Importe"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 11.338590000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        Condition = 'frxDBDeducciones."IdPersonal"'
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 90.708720000000000000
        Width = 778.205227000000000000
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDeducciones."Importe">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'Deducciones:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 15.118120000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBReal
        DataSetName = 'frxDBReal'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBReal."Titulo"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 109.606370000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxDBReal
          DataSetName = 'frxDBReal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBReal."Importe"]')
          ParentFont = False
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 80
    Top = 56
  end
  object cdUMA: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Salario=Salario')
    DataSource = dsUMA
    BCDToCurrency = False
    Left = 144
    Top = 16
  end
  object dsUMA: TDataSource
    Left = 48
    Top = 112
  end
  object dsReal: TDataSource
    Left = 152
    Top = 72
  end
  object frxDBReal: TfrxDBDataset
    UserName = 'frxDBReal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'Titulo=Titulo'
      'Importe=Importe'
      'Percep=Percep')
    DataSource = dsReal
    BCDToCurrency = False
    Left = 32
    Top = 16
  end
end
