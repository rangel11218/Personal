object FrmListaRaya: TFrmListaRaya
  Left = 0
  Top = 0
  Caption = 'FrmListaRaya'
  ClientHeight = 383
  ClientWidth = 582
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
    Width = 582
    Height = 383
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
    ExplicitWidth = 445
    ExplicitHeight = 209
  end
  object dsPersonal: TDataSource
    Left = 232
    Top = 120
  end
  object dsDeducciones: TDataSource
    Left = 232
    Top = 56
  end
  object dsPercepciones: TDataSource
    Left = 160
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
    Top = 72
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
      'DiasPagar=DiasPagar'
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
    ReportOptions.LastChange = 42930.689735636580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxRecibosGetValue
    Left = 368
    Top = 136
    Datasets = <
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
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 132.283550000000000000
        Width = 1018.205382000000000000
        Child = frxRecibos.Child1
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 34.015770000000010000
          Width = 196.535560000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 226.771800000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloCargo'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPersonal."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DiasPagar'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."DiasPagar"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 370.393940000000000000
          Width = 56.692950000000010000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."SalarioDiario"]')
          ParentFont = False
        end
        object Subreport1: TfrxSubreport
          Left = 427.086890000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = frxRecibos.Page2
        end
        object Subreport2: TfrxSubreport
          Left = 650.079160000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Page = frxRecibos.Page3
        end
        object Memo18: TfrxMemoView
          Width = 34.015770000000010000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Conse]')
          ParentFont = False
        end
      end
      object GroupHeader4: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 90.708720000000000000
        Width = 1018.205382000000000000
        Condition = 'frxDBPersonal."IdNomina"'
        KeepTogether = True
        object Memo29: TfrxMemoView
          Left = 230.551330000000000000
          Width = 113.385900000000000000
          Height = 18.897640240000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Puesto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 34.015770000000010000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Empleado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456710000000000000
          Height = 18.897640240000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dias')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 370.393940000000000000
          Width = 56.692950000000010000
          Height = 18.897640240000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Sal. D'#237'a')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 427.086890000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 468.661720000000000000
          Width = 117.165329920000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 650.079160000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 691.653990000000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 808.819420000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 873.071430000000000000
          Width = 143.622098500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Firma')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        object Picture1: TfrxPictureView
          Width = 147.401670000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000BC0000
            00350806000000FBF681BB0000000467414D410000B18F0BFC61050000001974
            455874536F6674776172650041646F626520496D616765526561647971C9653C
            00000C524944415478DAED5D4D882C57153E6FA10822E987A262C057B3310B23
            3383C180844CF7C66C92CC6B11170ACE34447761DE2CB29E9E855B6786EC62C0
            9E882E4260E6E5B9898B74BD20424479F3501771937A820B17920E2268B288F7
            AB3EA7FBF4ED5BD5F573ABAB5F531F14F57B6F9D73EBBBA7CEBDE754F7355A41
            3CF9D5CEFEBB7F1F0EEA96A3C1FAE15ADD02B860087F6108DFAD5B8E06EB8755
            25FC0766B561483FAA5B9606EB859523BC217B6056EF9BA56B087F59B73C0DD6
            0BAB48F85B667562965343F8C3BAE569B05E5845C25F98D54DB34486F01B75CB
            D360BDB0528437646F99D507EAD0B621FD55DD7235581FAC1AE16377A6F5F92F
            D1E85FFFC4A181217CAF6EB91AAC0F568DF018AC065FFCCA0DFACFBF3F34CB08
            B334CD6C4D036F5819C223D86456BF90FDED6F7F87EEFDFEB7D83C3684EFD72D
            5F83F5C02A113EB6EEB20FC2FFE58FEFD0C71FFDB7B1F20DBC612508AFA62227
            7834788CAE7FE1CB86F477B1DBF8F20DBCA076C273A0E99E595AF6B9677FF022
            0DEFFC12BE3C763B86F461DDF23678B8B10A841F9A55DB75EE6BDF7832B6F4C3
            3BAF6137A2F13465E3DA34288C5A096FC8DE37ABA3A4F39FFAF467E8B91FBE18
            0F5EDF7FEF3E0E35AE4D8352A88DF086EC6DB31A2EBA0E56FEF1279EA6B7DEF8
            B9B836BD2675B84151D442788EA86256A695E57AF8F21F7FF43F43FA57B00BD6
            779A086C8322A88BF018A46E65BD1E81A8CE733FA2BFFDF95D999B8FA8F1E71B
            14C0D2096FC88EE0D27EDE724F3DF3FD7800FB87F04DF1E7AF0CE1B7972D7F83
            871B4B25BC1D4DCD0319C0026FBFF95A936BD3A0109646784376B830F7CAD4B1
            F1D8267DABFD3CA2AF74E7572FC76B6A06B10D72602984CF3B484D037C79F8F4
            B0F0750C628D2EC8D547E7DDB14EB5797DC5F2E41A5F70BD075C4FC475447C4E
            47A243B31CFAD0D7D47BC2F7833ECE0F6EF8D9DD647D034B578D5C1FECF0DB1E
            F72FCB8990D7682BF8BA97D26E2E2C8BF089C1A5BCF8ECE75AF4CCF77E1CBB38
            6A105B88643975C043873B96E5018190A739EBEFD36C4C629234C7DFF8EAFB42
            CF5ED94F204DBD9FE87D53DF3575AEC5F2DCCA5A9F2E9FE1DEDE38E140480946
            A172C2BBF264CAE2F12776E8EBDF7C3ADEFEDD5BAFD33FA2F7B059D9278105C6
            1EB9DDAC0584FF24A15829772E89F04C761032F34C9A2E9FF1DE55121E70BEF9
            2B257C5A9E4C59606E1ED6DEF2E72BC9B7715858000D8AC6BC6B1D8F8A90B020
            E181C203F714C2C340D9963D495F4198A7ED1D84479B3D28A287C10DAE2BB08E
            CF7D265A35E1E5FB54EF90B97900161E969E2AF80E3621229CDB65C9709F3E15
            233C00D7A65760DC904478BB830F58676F2EA383F0A58D15BB9D17D6E199CF44
            2B237CD6D4813290012CA05C1BAFB3360E3D60C93ABE75C949783CC02DC7B16E
            DA80CD71CF24C227FAF61EF5F54EF82CF55649F8AA7DB4192B8F3C9BDFFCFA65
            6C7AB5F22B4AF8EB341E53D86FCF5C33560DE1FD29537ACE3D2BB495FFEB9FDE
            910F46BC597907E123AA20AD210FE115315D516BC8759845FF86F0FE9429943E
            5004128C029495F79676A07E094D23A2B1DF8CDE9585F8A34556B708E1F9DC3E
            B96790168E33D68DF03CBB04431B24D55B15E15DB31A112F1A20C18739AA7E84
            E67DD7E0BBBD9702CCCB032AD766238F3FBB401FD7AC4511409ED02C67760728
            4A783EDFA6F160CD6EF3D4199CAC84F78849FCC017E1D99B80DE582370175897
            5CD76FE32A7AAEDC1C885CA47BF59557DB79EA74E1859FBC30D7383FFBE9DB81
            716B02766BAE3CCF2AF822BD606666A50CE1F91AB439481F58A7D04E5D575BD4
            40F8581E8C819631C623476CC60BE10D8185E49AEC9B34B538552B0684BCC683
            BDCFDB57BC7F653A4869F233A9F658C780E6C9951713D7AB2CE1F9BAA48011DA
            A1E778ABD441F8F8ADB304C23B0391B908AF880D4131520C2A16DA37421ABB15
            0F78DB4B47D0609F3FB00EA3CDD05EFB34EF76C4036C1F84E76B51FF09B907B3
            33333839087FECA9792003083FAA88F0D02D34CB79D2982995F086E0018DA7BE
            36693E9225D613800FB193A2C086215664D5ED0A1264C1A1A9EBD4AACBFE4D4A
            8D50C907E8B71010F135782B84A6EECA92D0988C17563BC5C4F64578752FBB3E
            C164066BC506ADE0525A443E32CB198D796763E1A480604E11431EB1E09B7CE8
            014D079CA324429872FB949C6FD2B17D6EEE4C2893F811B703F07B0F1D9D07F2
            2605B9E63A88A52B1A39E0E586D2F9B20AF22711DB37E1B91CDAD7F54CE49EAB
            4478C436F02C0E28DDF28734B6E08322F7F5A64811D231E1F2CCD7775C83D5BC
            9DAD4E2C93F05C166D8CE73237834396DB5337E1659686DD42B4C54D4AB6FA78
            23C0E20FF2CCC6F9247C9A5B11B1E0DBDA3A33E15D0F2349C18E6D754D1D281F
            50F20072CE9DAA138EFCA24A09CFE5D1CE3008A9D98F293EBCF7A4BC2CD392EC
            02EE937BBA51634063ABBF5046AF3DD7906FD1E8FED890AF6F9569B3E27B094A
            455086C603CC4BAB2C1A23356DD79429AD63C240342FA0E32ECD93AE72C2731D
            AEF1C30C14E15D1FD90FCC729BB205DA9230F1B5F3CEC373AC01C44F4B4644DD
            6769EE8E6FC263760081A4A4016C6408B89150769FA679F367AC1C1E52CF9419
            249499F90156DDB0AC3CEE57EA9BD78448AB4FC401B2AA09AFF4498C822BC2B7
            A9BAC4BF38025C34F0C4CFE380DC335E82D8DD71FDEA742591D6147FBE6B5B69
            47D92DB82DB25E706DD24C4FE240352F2A7CF833392FCB223CD7E7FC28C74A59
            80DEE81C8167BDE58D562AD2AA3E3D3C4A9171AECECAB22513AC6FFC299E8FB9
            6F1E33B8822CF1CF6BFB9A5FAFC0C28734760D66BEBD749070F22F86D64F897B
            C906757CB2E84C43E0991EB8626DF2F3218FC41DECC875E1BF374A7077465C67
            A4AFAD92F06828977F1D9AE590853BCD4B4C532F1A6940EEF458606E9C50163E
            7CF88CAF6B99261D5901221D3BF09632A1EBCD289F1DC3C80B5B2FD137CA33D3
            92225F40D3E7E46CA7AA5C1ADCF42243E340C9C3456E0ED7A9671AD28214718E
            8AEF086A83F5405584CF936895C922E7ACD39B0FDF60BD50A54B93F57BD649FE
            03EFEB40147C55199C244D5BDA407A80F72F921AAC07AA247CA19F7A28096F83
            624B97C0AC02446C553A02A63C2395503792D9253E7FC56B1C1FF175015F83ED
            962A2FE90D5A8F40CAF39A9222C6221F5F4B32BBA567BAB45C2C8FB8865A3EB9
            DF969243B6450ED17B4BDD2F72E8B4B540E6B6AA4BCBDF52F70EF44C1DDF9352
            74927A22D566CBFB990E565C7E710CBE759BFCFE64C7881769AC6DDF5155351E
            41BD4830438C4192D1102F80AB75CEE7F7689A8D89ED3810C21DA58F63884348
            B00DAE9C0ABC0930DB30609D703FC9EF19F1753D070930B6B9CD87304DD7E17B
            0EF1B6E368B4C88519971ECB1DEBC1D7881C7B347DDBEEAA7AB5DEB7F91CF677
            4DF96D55FE52C903D9D1E966BE3E33D7CA64465BC962DF47DAEF1C633CF51C46
            2CAFD4216D7DCC6D877A1E516D7AA83B5DE53FC424C968F0A9B90324CDAEE445
            C8CA5CB17F7F5E45B217CB0F12498AEC0937B81C6FF1FE3E8D2D529FCB057CFE
            9CC9878E0F3280C4115984E76DD481A43D04EF4ED96AA1BE50BD5D8ECC7657C9
            D7B6EA927C7DB87520C8B9259758723C8798B07C0DDA0EE577C425940EA3B759
            2F219B7480BBFC3CDA5C5F570C0FCB1CE9B72EBBBB622450DF96A32DFA7CF926
            F4E5FD88F583A1D995A0A2A3AD6FD1D4C88EB411ACE5F7E1B3A4042CC05207A5
            1CE012EBB1CB87D1A0985EC5C39354E9733DE32464A5F1433DA0A9AB82CE635B
            78E883F10BAC211ED80E4D3F810CC54A6912F27E9BDB32927A5996D8BAD2948C
            01CDBA4D4254DC036439B3E4846E43B52D6FB223DE3F5075CB39B48958FCBEBA
            57A8AD2C1354B2228FB9BCC82FED8B36EFB06E20F605D73BE4E71039DA1A65E5
            0D8036DCA3655B78175898323FBFB73062EB51D6368D8980FBC5515D8B704365
            F14F944594813688848706928088200C1E58CB223C5EC3F79146C10F6FC0FE2D
            B6C5C2EFD3D802F72CF95C6F0B193FE16D70206F05AE03C4003985B0C4BA89E5
            DCE66BEFA96DD407421E293749CA43AF21974747BB2BE9206CCDCF2CC25FB0D5
            965414B2DAE206B7C5A93236F0D30FF9BED201BBFC1694B6BECDED071D650CD5
            D6B38075125E5EBD1A68A473B5EF4A168A28E3DCBD275925E90A6B3CD03D8BF0
            720E0D7C9F65269A5A7DF8983B8A706D758DB817E800E808211FD71FACE8318A
            E83EB2E4938829CE3F60F2A00C087B9D0920F7C4353DD629262C7726219FFE50
            5E0F5A8989DE675976ADF27DBEEC94665312CEEC5C28F5FCE3F40A9A1ABF88DB
            0B7580D85DEEF470073BBC2D06C6D6E958D523EE598BEB98B8BAB5FE8B9FFAA2
            6A87D7DBD6804C72652EB9712F5729D5B7C1C387FF034589AA9F82DE98670000
            000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo19: TfrxMemoView
          Left = 151.181200000000000000
          Width = 865.512370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = '@Malgun Gothic Semilight'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombreOrganizacion"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 151.181200000000000000
          Top = 26.456710000000000000
          Width = 865.512370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTA DE RAYA')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 49.133890000000000000
        Top = 170.078850000000000000
        Width = 1018.205382000000000000
        object Memo17: TfrxMemoView
          Width = 1016.693570000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 559.370440000000000000
          Top = 22.677179999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."Neto"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 464.882190000000000000
          Top = 22.677179999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Neto a Pagar:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 782.362710000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."Deducciones"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 676.535870000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Deducciones:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 559.370440000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPersonal."Percepciones"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 453.543600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Percepciones:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 41.574830000000000000
        Width = 1018.205382000000000000
        DataSet = frxDBPercepciones
        DataSetName = 'frxDBPercepciones'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPercepciones."Clave"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 41.574830000000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPercepciones."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 158.740260000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBPercepciones
          DataSetName = 'frxDBPercepciones'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPercepciones."Importe"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        Condition = 'frxDBPercepciones."IdPersonal"'
      end
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        DataSet = frxDBDeducciones
        DataSetName = 'frxDBDeducciones'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDeducciones."Clave"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 41.574830000000000000
          Width = 117.165354330708700000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxDBDeducciones
          DataSetName = 'frxDBDeducciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDeducciones."Descripcion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxDBDeducciones
          DataSetName = 'frxDBDeducciones'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDeducciones."Importe"]')
          ParentFont = False
          VAlign = vaCenter
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
end
