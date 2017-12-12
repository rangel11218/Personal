object FrmPersonal: TFrmPersonal
  Left = 0
  Top = 0
  Caption = 'Datos de Personal'
  ClientHeight = 648
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grafico: TImage
    Left = 78
    Top = 5
    Width = 162
    Height = 70
    Stretch = True
    Visible = False
  end
  object pnlImagen: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 607
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 345
      Height = 205
      Align = alClient
      BevelOuter = bvLowered
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 0
      object ImagenPersonal: TImage
        Left = 59
        Top = 8
        Width = 105
        Height = 105
      end
      object Panel2: TPanel
        Left = 3
        Top = 133
        Width = 339
        Height = 69
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object CodigoBarras: TDBImage
          Left = 0
          Top = 0
          Width = 339
          Height = 69
          Align = alClient
          DataField = 'Descripcion'
          DataSource = dsPersonal
          TabOrder = 0
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 205
      Width = 345
      Height = 41
      Align = alBottom
      BevelOuter = bvLowered
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 1
      object btnTomarFoto: TAdvGlowButton
        Left = 7
        Top = 5
        Width = 100
        Height = 31
        Align = alLeft
        Caption = '&Tomar Foto'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000000D0806000000A0BBEE
          24000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B0000029249444154384F6D92DD
          4BD36114C7A7289A2FD34D37DDE6F6732F2A52247511817F4060B7D145046117
          42E02CC99708A28CBA8934AC8BD4F91A6669CA08C99695A6E64DB5B0B2CC2441
          F79BCB9CEFA953CA4F8F2F10955F383C0F0FE77CCEF7F01C05FFE89788EF7979
          AC7CFCC08AFB0D01B79B1FAF5FE12F2E667D2BE52FFD07F01717E1898CC6131B
          8347ADC6A35289BB8AF1B070E66B1CDB597FA4084C4DB1D4DD4360E03D0BEDED
          A2408D6CB3316D3633A3D7339364C06FB1E03549C89299E517DDD02BC2D5C1DA
          EA1A8AC913D97894A1783451A2531CBE94146676A7536ADA43D9B153941D3989
          436366E5C07E7C197BF9141349A652222B2816CA6FA0F0E7E4339D17CCCC6925
          DF7436862513F6A26B14F4BCA5A8D7CD51573FA5FD83E46717B0A84B64C822A1
          4E3E405A5C1A54DC16007B1E72A211AF64613149CFB9ECB31CEFE8439E9B85B5
          154CCD9D28EFBBB8F27280928387F82A25F2538CB4A4D5B2E870A098CA39C36C
          7E1073856A869406721B3B708E8EC3EA32990FBB486E7691DADA89AACEC9F5EA
          564634B162CC5431F236C02FBE4CD69898345879AE97C86DEBE6E6E03019CE67
          18EF3D26B5E509690F3AD139BBC8AF68E34B828A098B158F3661DB81DD8EAC33
          3061B6E2D3C473B9C94578BD138B28DC28DE086BEB53926B9DDC2AAF6744ABC2
          67B16D39A8AADA72E01500AFA0CE198D5CCDCCA27E7094E83BED24B574A217DD
          E31BDAA9717FA6C290CE70B2611320C76B59D8004CE7E622EB054038F05A6D2C
          E912389F799892D62E2EF4B9B9D8EDE652E323CA6CFB08189318B04AF844EEA6
          83CA4A31424121E3C1218218CF5894D8C08828E642431856287084AA68085132
          21EED3E161C811D1BC8BDCC58446C398789BBFDBB4B5CA1B3BBE505BB7E3AEEF
          A47947F5E6B90EFC066EC13266671C885D0000000049454E44AE426082}
        TabOrder = 0
        TabStop = True
        OnClick = btnTomarFotoClick
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
      object btnSeleccionarArchivo: TAdvGlowButton
        Left = 107
        Top = 5
        Width = 100
        Height = 31
        Align = alLeft
        Caption = '&Seleccionar...'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC400000EC401952B0E1B000002F649444154384F65934B
          6C1B551486B3E351D445610312A888AA2C10B45DC082052CAA2E901059212490
          82A822905A36952A021B28A0D0366A933EA462208A440484DA42495B29CA2269
          D2BA8D1B88136C62D78F38B6AB711C8FE3F1F8719DF18C3D1FD763435AF86771
          CE99F9EFA773EF9CDBC57FD46C363B191886E1445B3EFFC8B665D5295BF90380
          A663B511D50AF94408AFF73ADAA6DA22FC8B70A26D496F5B0F76D041D7CB19D2
          33E7286E28CC2D6698B9B18AAE2E502A6630EB205AD68EFD7F5B88AE66F14C85
          19F6C4F97C709EDD872678EBA35BF2CB6F98B53E74ED30D5E0FB6C04AE3AFEAE
          BA51E7B2C7CF1743B3F4F65DE1E3AF97F96430C2E864D431B43436A7108F2CC8
          4C2534FD2E2BFD3BC82CB989C453AD0E6C06CE4ED1F3A997A3A7638C8E27995C
          CA5233B7285A16875D6B3CD15BC27DE526D3A77A98EC7D58828EE3FEF93CB1F8
          5A1B3035BDC207FD3EC2499D139E34FB8FFDC57BAE20177D599E3BA1F3D86716
          176FD95C7AED514E773FCEC0812ED2D9F5ED33288812BE15957BBAC69E632A4F
          7E69B26FC8E4857325F65E68F0ACCCDFF1D4183EFA36170E3E427AE865843C4C
          AB61B53B304493603ACB91CB1A0FF555D97BDEE07997CDBE4BF0D2F74D0E7CD7
          E08788C0E7F99133FBBB707FD8CDA6696DCF41734BF0CBED0C4F7F65B0B3DFE2
          A93316DD633AAFFE54E615097AC32D70451BDC5E55189780C8AF03144AB20529
          0720CA3966A2659E19D4D8F54D9D17BF15BC3E56E1CDD10AA7664B8CCC6BCC47
          36D99403E0EDDE41EAF709AA467B941CC05649E08F2B1CB956E0F86C999337F2
          B8E68A2CC7ABE40B3AB62910150DADBC4578E4244AE22E96751FC0AC5B84E377
          99F0C608865328EB1A3591A72272B2BB0A25DDA0A8EA64732A4AA14652D990FB
          BF0FD0683409FCB9442C1623118F904E26D1F20514659D853FEE10082C93DBC8
          9151E488AF25C9E5F272557BEC1D40AB8846A3D218607171099F6F01DF1D9F53
          27120982C1207EBF9F5028E444B375213AEA00DA5737954AA1AA79EA75B3F376
          5B969C4A2184E36BFDBEB6E06F6C36760550BDF21A0000000049454E44AE4260
          82}
        TabOrder = 1
        TabStop = True
        OnClick = btnSeleccionarArchivoClick
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
      object btnLimpiar: TAdvGlowButton
        Left = 238
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Limpiar'
        ImageIndex = 31
        Images = connection.Imagenes16
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        TabStop = True
        OnClick = btnLimpiarClick
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
    object pnlDomicilioContacto: TPanel
      Left = 0
      Top = 336
      Width = 345
      Height = 271
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object gbDomicilio: TGroupBox
        Left = 0
        Top = 0
        Width = 345
        Height = 139
        Align = alTop
        Caption = 'Domicilio'
        TabOrder = 0
        object JvLabel8: TLabel
          Left = 13
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Calle:'
          Transparent = True
        end
        object JvLabel9: TLabel
          Left = 260
          Top = 24
          Width = 17
          Height = 13
          Caption = 'No.'
          Transparent = True
        end
        object JvLabel10: TLabel
          Left = 17
          Top = 46
          Width = 23
          Height = 13
          Caption = 'Col.:'
          Transparent = True
        end
        object JvLabel11: TLabel
          Left = 256
          Top = 46
          Width = 21
          Height = 13
          Caption = 'C.P.'
          Transparent = True
        end
        object JvLabel12: TLabel
          Left = 3
          Top = 90
          Width = 37
          Height = 13
          Caption = 'Estado:'
          Transparent = True
        end
        object JvLabel13: TLabel
          Left = 3
          Top = 112
          Width = 37
          Height = 13
          Caption = 'Ciudad:'
          Transparent = True
        end
        object JvLabel14: TLabel
          Left = 17
          Top = 68
          Width = 23
          Height = 13
          Caption = 'Pais:'
          Transparent = True
        end
        object Calle: TDBEdit
          Left = 44
          Top = 21
          Width = 200
          Height = 21
          DataField = 'Calle'
          DataSource = dsPersonal
          TabOrder = 0
        end
        object Numero: TDBEdit
          Left = 284
          Top = 21
          Width = 54
          Height = 21
          DataField = 'Numero'
          DataSource = dsPersonal
          TabOrder = 1
        end
        object Colonia: TDBEdit
          Left = 44
          Top = 43
          Width = 200
          Height = 21
          DataField = 'Colonia'
          DataSource = dsPersonal
          TabOrder = 2
        end
        object CP: TDBEdit
          Left = 284
          Top = 43
          Width = 54
          Height = 21
          DataField = 'CP'
          DataSource = dsPersonal
          TabOrder = 3
        end
        object cbPais: TComboBox
          Left = 44
          Top = 65
          Width = 200
          Height = 21
          Style = csDropDownList
          TabOrder = 4
          OnChange = cbPaisChange
        end
        object cbEstado: TComboBox
          Left = 44
          Top = 87
          Width = 200
          Height = 21
          Style = csDropDownList
          TabOrder = 5
          OnChange = cbEstadoChange
        end
        object IdCiudad: TDBLookupComboBox
          Left = 44
          Top = 109
          Width = 200
          Height = 21
          DataField = 'IdCiudad'
          DataSource = dsPersonal
          KeyField = 'IdCiudad'
          ListField = 'TituloCiudad'
          ListSource = dsCiudad
          TabOrder = 6
        end
      end
      object gbContacto: TGroupBox
        Left = 0
        Top = 202
        Width = 345
        Height = 69
        Align = alClient
        Caption = 'Contacto'
        TabOrder = 2
        object JvLabel18: TLabel
          Left = 24
          Top = 18
          Width = 41
          Height = 13
          Caption = 'Nombre:'
          Transparent = True
        end
        object JvLabel19: TLabel
          Left = 19
          Top = 42
          Width = 46
          Height = 13
          Caption = 'Tel'#233'fono:'
          Transparent = True
        end
        object Contacto: TDBEdit
          Left = 68
          Top = 15
          Width = 271
          Height = 21
          DataField = 'Contacto'
          DataSource = dsPersonal
          TabOrder = 0
        end
        object TelefonoContacto: TDBEdit
          Left = 68
          Top = 39
          Width = 271
          Height = 21
          DataField = 'TelefonoContacto'
          DataSource = dsPersonal
          TabOrder = 1
        end
      end
      object gbComentarios: TGroupBox
        Left = 0
        Top = 139
        Width = 345
        Height = 63
        Align = alTop
        Caption = 'Comentarios'
        Padding.Left = 3
        Padding.Right = 3
        Padding.Bottom = 2
        TabOrder = 1
        object Descripcion: TDBMemo
          Left = 5
          Top = 15
          Width = 335
          Height = 44
          Align = alClient
          Color = clWhite
          DataField = 'Descripcion'
          DataSource = dsPersonal
          TabOrder = 0
        end
      end
    end
    object gbCargo: TGroupBox
      Left = 0
      Top = 246
      Width = 345
      Height = 90
      Align = alBottom
      TabOrder = 2
      object JvLabel32: TJvLabel
        Left = 16
        Top = 62
        Width = 37
        Height = 13
        Caption = 'Puesto:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel33: TJvLabel
        Left = 20
        Top = 39
        Width = 33
        Height = 13
        Caption = 'Depto:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel35: TJvLabel
        Left = 8
        Top = 12
        Width = 45
        Height = 13
        Caption = 'Empresa:'
        Transparent = True
        HotTrack = False
      end
      object IdCargo: TDBLookupComboBox
        Left = 59
        Top = 59
        Width = 280
        Height = 21
        DataField = 'IdCargo'
        DataSource = dsPersonal
        KeyField = 'IdCargo'
        ListField = 'TituloCargo'
        ListSource = dsCargo
        TabOrder = 2
        OnKeyDown = IdGlobalKeyDown
      end
      object IdDepartamento: TDBLookupComboBox
        Left = 59
        Top = 34
        Width = 280
        Height = 21
        DataField = 'IdDepartamento'
        DataSource = dsPersonal
        KeyField = 'IdDepartamento'
        ListField = 'TituloDepartamento'
        ListSource = dsDepartamento
        TabOrder = 1
        OnKeyDown = IdGlobalKeyDown
      end
      object IdOrganizacion: TComboBox
        Left = 59
        Top = 9
        Width = 280
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = IdOrganizacionChange
        OnKeyDown = IdOrganizacionKeyDown
      end
    end
  end
  object pnlDatos: TPanel
    Left = 345
    Top = 0
    Width = 370
    Height = 607
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object gbInfonavit: TGroupBox
      Left = 0
      Top = 508
      Width = 370
      Height = 99
      Align = alBottom
      Caption = 'Infonavit'
      TabOrder = 2
      object JvLabel15: TLabel
        Left = 131
        Top = 25
        Width = 51
        Height = 13
        Caption = 'Aplicaci'#243'n:'
        Transparent = True
      end
      object JvLabel16: TLabel
        Left = 14
        Top = 48
        Width = 88
        Height = 13
        Caption = 'N'#250'mero Infonavit:'
        Transparent = True
      end
      object JvLabel17: TLabel
        Left = 67
        Top = 71
        Width = 35
        Height = 13
        Caption = 'Factor:'
        Transparent = True
      end
      object Infonavit: TDBCheckBox
        Left = 15
        Top = 24
        Width = 106
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Cr'#233'dito Infonavit'
        DataField = 'Infonavit'
        DataSource = dsPersonal
        TabOrder = 0
        ValueChecked = 'Si'
        ValueUnchecked = 'No'
        OnClick = InfonavitClick
      end
      object tAplicacionInfonavit: TDBComboBox
        Left = 184
        Top = 22
        Width = 145
        Height = 21
        DataField = 'tAplicacionInfonavit'
        DataSource = dsPersonal
        Items.Strings = (
          'Fijo'
          'Salario'
          'SalMinZona')
        TabOrder = 1
      end
      object NumeroInfonavit: TDBEdit
        Left = 108
        Top = 44
        Width = 219
        Height = 21
        DataField = 'NumeroInfonavit'
        DataSource = dsPersonal
        TabOrder = 2
      end
      object FactorInfonavit: TcxDBCalcEdit
        Left = 108
        Top = 68
        TabOrder = 3
        Width = 121
      end
    end
    object gbBanco: TGroupBox
      Left = 0
      Top = 411
      Width = 370
      Height = 97
      Align = alBottom
      Caption = 'Datos Bancarios'
      TabOrder = 1
      object JvLabel24: TLabel
        Left = 10
        Top = 45
        Width = 44
        Height = 13
        Caption = 'Sucursal:'
        Transparent = True
      end
      object JvLabel25: TLabel
        Left = 21
        Top = 19
        Width = 33
        Height = 13
        Caption = 'Banco:'
        Transparent = True
      end
      object JvLabel26: TLabel
        Left = 15
        Top = 68
        Width = 39
        Height = 13
        Caption = 'Cuenta:'
        Transparent = True
      end
      object Sucursal: TDBEdit
        Left = 62
        Top = 42
        Width = 275
        Height = 21
        DataField = 'Sucursal'
        DataSource = dsPersonal
        TabOrder = 1
      end
      object IdBancoCFDI: TDBLookupComboBox
        Left = 62
        Top = 19
        Width = 275
        Height = 21
        DataField = 'IdBancoCFDI'
        DataSource = dsPersonal
        KeyField = 'IdBancoCFDI'
        ListField = 'NombreCorto'
        ListSource = dsBanco
        TabOrder = 0
      end
      object Cuenta: TDBEdit
        Left = 62
        Top = 65
        Width = 275
        Height = 21
        DataField = 'Cuenta'
        DataSource = dsPersonal
        TabOrder = 2
      end
    end
    object sbGenerales: TScrollBox
      Left = 0
      Top = 0
      Width = 370
      Height = 411
      Align = alClient
      TabOrder = 0
      object JvLabel1: TLabel
        Left = 18
        Top = 63
        Width = 86
        Height = 13
        Caption = 'C'#243'digo Empleado:'
        Transparent = True
      end
      object JvLabel2: TLabel
        Left = 63
        Top = 86
        Width = 41
        Height = 13
        Caption = 'Nombre:'
        Transparent = True
      end
      object JvLabel3: TLabel
        Left = 22
        Top = 109
        Width = 82
        Height = 13
        Caption = 'Apellido Paterno:'
        Transparent = True
      end
      object JvLabel4: TLabel
        Left = 20
        Top = 132
        Width = 84
        Height = 13
        Caption = 'Apellido Materno:'
        Transparent = True
      end
      object JvLabel5: TLabel
        Left = 36
        Top = 155
        Width = 68
        Height = 13
        Caption = 'N'#250'mero IMSS:'
        Transparent = True
      end
      object JvLabel6: TLabel
        Left = 73
        Top = 178
        Width = 31
        Height = 13
        Caption = 'CURP:'
        Transparent = True
      end
      object JvLabel7: TLabel
        Left = 21
        Top = 201
        Width = 83
        Height = 13
        Caption = 'Reg. Fed. Caus.:'
        Transparent = True
      end
      object JvLabel20: TLabel
        Left = 58
        Top = 224
        Width = 46
        Height = 13
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object JvLabel21: TLabel
        Left = 18
        Top = 247
        Width = 86
        Height = 13
        Caption = 'Grupo Sanguineo:'
        Transparent = True
      end
      object JvLabel22: TLabel
        Left = 67
        Top = 270
        Width = 37
        Height = 13
        Caption = 'Correo:'
        Transparent = True
      end
      object JvLabel23: TLabel
        Left = 45
        Top = 293
        Width = 59
        Height = 13
        Caption = 'Estado Civil:'
        Transparent = True
      end
      object JvLabel27: TLabel
        Left = 72
        Top = 316
        Width = 32
        Height = 13
        Caption = 'Padre:'
        Transparent = True
      end
      object JvLabel28: TLabel
        Left = 222
        Top = 293
        Width = 28
        Height = 13
        Caption = 'Sexo:'
        Transparent = True
      end
      object JvLabel29: TLabel
        Left = 70
        Top = 339
        Width = 34
        Height = 13
        Caption = 'Madre:'
        Transparent = True
      end
      object JvLabel30: TLabel
        Left = 18
        Top = 362
        Width = 86
        Height = 13
        Caption = 'Lugar Nacimiento:'
        Transparent = True
      end
      object JvLabel31: TLabel
        Left = 16
        Top = 385
        Width = 88
        Height = 13
        Caption = 'Fecha Nacimiento:'
        Transparent = True
      end
      object Label1: TLabel
        Left = 12
        Top = 14
        Width = 92
        Height = 11
        Caption = 'Gpo. Contrataci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object JvLabel37: TJvLabel
        Left = 25
        Top = 41
        Width = 77
        Height = 11
        Caption = 'Fecha Registro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        HotTrack = False
      end
      object CodigoPersonal: TDBEdit
        Left = 112
        Top = 60
        Width = 225
        Height = 21
        DataField = 'CodigoPersonal'
        DataSource = dsPersonal
        TabOrder = 1
        OnKeyPress = CodigoPersonalKeyPress
      end
      object Nombres: TDBEdit
        Left = 112
        Top = 83
        Width = 225
        Height = 21
        DataField = 'Nombres'
        DataSource = dsPersonal
        TabOrder = 2
      end
      object APaterno: TDBEdit
        Left = 112
        Top = 106
        Width = 225
        Height = 21
        DataField = 'APaterno'
        DataSource = dsPersonal
        TabOrder = 3
      end
      object AMaterno: TDBEdit
        Left = 112
        Top = 129
        Width = 225
        Height = 21
        DataField = 'AMaterno'
        DataSource = dsPersonal
        TabOrder = 4
      end
      object NumeroSeguroSocial: TDBEdit
        Left = 112
        Top = 152
        Width = 225
        Height = 21
        DataField = 'NumeroSeguroSocial'
        DataSource = dsPersonal
        TabOrder = 5
      end
      object Curp: TDBEdit
        Left = 112
        Top = 175
        Width = 225
        Height = 21
        DataField = 'Curp'
        DataSource = dsPersonal
        TabOrder = 6
      end
      object Rfc: TDBEdit
        Left = 112
        Top = 198
        Width = 225
        Height = 21
        DataField = 'Rfc'
        DataSource = dsPersonal
        TabOrder = 7
      end
      object Telefono: TDBEdit
        Left = 112
        Top = 221
        Width = 225
        Height = 21
        DataField = 'Telefono'
        DataSource = dsPersonal
        TabOrder = 8
      end
      object GrupoSanguineo: TDBEdit
        Left = 112
        Top = 244
        Width = 225
        Height = 21
        DataField = 'GrupoSanguineo'
        DataSource = dsPersonal
        TabOrder = 9
      end
      object Correo: TDBEdit
        Left = 112
        Top = 267
        Width = 225
        Height = 21
        DataField = 'Correo'
        DataSource = dsPersonal
        TabOrder = 10
      end
      object EstadoCivil: TDBComboBox
        Left = 112
        Top = 290
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'EstadoCivil'
        DataSource = dsPersonal
        Items.Strings = (
          'Casado'
          'Soltero'
          'Viduo'
          'Divorciado'
          'Concuvinato'
          'SEPARADO'
          'Madre Soltera'
          'Union Libre')
        TabOrder = 11
      end
      object NombrePadre: TDBEdit
        Left = 112
        Top = 313
        Width = 225
        Height = 21
        DataField = 'NombrePadre'
        DataSource = dsPersonal
        TabOrder = 13
      end
      object Sexo: TDBComboBox
        Left = 256
        Top = 290
        Width = 81
        Height = 21
        Style = csDropDownList
        DataField = 'Sexo'
        DataSource = dsPersonal
        Items.Strings = (
          'Masculino'
          'Femenino')
        TabOrder = 12
      end
      object NombreMadre: TDBEdit
        Left = 112
        Top = 336
        Width = 225
        Height = 21
        DataField = 'NombreMadre'
        DataSource = dsPersonal
        TabOrder = 14
      end
      object EstadoNacimiento: TDBEdit
        Left = 112
        Top = 359
        Width = 225
        Height = 21
        DataField = 'EstadoNacimiento'
        DataSource = dsPersonal
        TabOrder = 16
      end
      object Panel1: TPanel
        Left = 0
        Top = 398
        Width = 349
        Height = 10
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 15
      end
      object GrupoContratacion: TComboBox
        Left = 112
        Top = 6
        Width = 225
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FechaRegistro: TcxDBDateEdit
        Left = 112
        Top = 36
        DataBinding.DataField = 'FechaRegistro'
        DataBinding.DataSource = dsPersonal
        TabOrder = 17
        Width = 121
      end
    end
  end
  object pnlBotonesInf: TPanel
    Left = 0
    Top = 607
    Width = 715
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object JvLabel34: TJvLabel
      Left = 336
      Top = 16
      Width = 48
      Height = 13
      Caption = 'JvLabel34'
      HotTrack = False
    end
    object btnCancelar: TAdvGlowButton
      Left = 608
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
      TabOrder = 3
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
    object btnAgregar: TAdvGlowButton
      Left = 393
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = 'A&gregar'
      ImageIndex = 0
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      TabStop = True
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
    object btnAceptar: TAdvGlowButton
      Left = 508
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
      TabOrder = 2
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
    object Panel6: TPanel
      Left = 493
      Top = 5
      Width = 15
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object btnDocumentos: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Documentos'
      ImageIndex = 7
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 88
    Top = 104
  end
  object opdImagenPersonal: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.gif;*.tif;*.tiff;*.gif;*.cur;*.pcx;*.ani;*.g' +
      'if;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.emf;*.wmf)|*.jpg;*.jp' +
      'eg;*.gif;*.tif;*.tiff;*.gif;*.cur;*.pcx;*.ani;*.gif;*.jpg;*.jpeg' +
      ';*.bmp;*.tif;*.tiff;*.ico;*.emf;*.wmf|*.png|JPEG graphics from D' +
      'evExpress (*.jpg)|*.jpg|JPEG graphics from DevExpress (*.jpeg)|*' +
      '.jpeg|GIF graphics from DevExpress (*.gif)|*.gif|TIFF graphics f' +
      'rom DevExpress (*.tif)|*.tif|TIFF graphics from DevExpress (*.ti' +
      'ff)|*.tiff|Imagen GIF de CompuServe (*.gif)|*.gif|Cursor files (' +
      '*.cur)|*.cur|PCX Image (*.pcx)|*.pcx|ANI Image (*.ani)|*.ani|GIF' +
      ' Image (*.gif)|*.gif|Portable Network Graphics (*.png)|*.png|JPE' +
      'G Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitma' +
      'ps (*.bmp)|*.bmp|TIFF Images (*.tif)|*.tif|TIFF Images (*.tiff)|' +
      '*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Meta' +
      'files (*.wmf)|*.wmf'
    Left = 216
    Top = 88
  end
  object cdPersonal: TZQuery
    Connection = connection.zConnection
    AfterPost = cdPersonalAfterPost
    Params = <>
    Left = 184
    Top = 152
  end
  object cdPais: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = cdPaisAfterScroll
    Params = <>
    Left = 64
    Top = 152
  end
  object cdEstado: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    MasterFields = 'IdPais'
    LinkedFields = 'IdPais'
    Left = 288
    Top = 152
  end
  object cdCiudad: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    MasterFields = 'IdEstado'
    MasterSource = dsEstado
    LinkedFields = 'IdEstado'
    Left = 488
    Top = 64
  end
  object dsEstado: TDataSource
    DataSet = cdEstado
    Left = 216
    Top = 88
  end
  object dsPais: TDataSource
    DataSet = cdPais
    Left = 144
    Top = 96
  end
  object dsCiudad: TDataSource
    DataSet = cdCiudad
    Left = 24
    Top = 32
  end
  object cdBanco: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 264
    Top = 336
  end
  object dsBanco: TDataSource
    DataSet = cdBanco
    Left = 320
    Top = 336
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 80
    OnTimer = Timer1Timer
    Left = 624
    Top = 176
  end
  object cdCodigo: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 328
    Top = 104
  end
  object cdGrupo: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 80
    Top = 224
  end
  object cdCargo: TZReadOnlyQuery
    Params = <>
    Left = 88
    Top = 320
  end
  object dsCargo: TDataSource
    DataSet = cdCargo
    Left = 136
    Top = 320
  end
  object cdOrganizacion: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterScroll = cdOrganizacionAfterScroll
    Params = <>
    Left = 240
    Top = 448
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 320
    Top = 448
  end
  object cdDepartamento: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 240
    Top = 496
  end
  object dsDepartamento: TDataSource
    DataSet = cdDepartamento
    Left = 320
    Top = 496
  end
end
