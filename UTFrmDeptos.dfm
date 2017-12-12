object FrmDeptos: TFrmDeptos
  Left = 0
  Top = 0
  Caption = 'Organigrama'
  ClientHeight = 545
  ClientWidth = 1062
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGBOrganizacion: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = 'Nivel organizacional'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 545
    Width = 441
    object CxTVOrganizaciones: TcxTreeView
      Left = 3
      Top = 15
      Width = 435
      Height = 244
      Align = alClient
      Style.BorderStyle = cbs3D
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.BorderColor = clNavy
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      MultiSelectStyle = []
      ReadOnly = True
      RightClickSelect = True
      SortType = stText
      OnChange = CxTVOrganizacionesChange
    end
    object cxGroupPersonalIncluido: TcxGroupBox
      Left = 3
      Top = 267
      Align = alBottom
      Caption = 'Plazas del departamento'
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Height = 271
      Width = 435
      object CxGrid2: TcxGrid
        Left = 3
        Top = 15
        Width = 429
        Height = 208
        Align = alClient
        TabOrder = 0
        object tvPlazasIncluidas: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tvPlazasIncluidasCellDblClick
          DataController.DataSource = dsPlazaDetalleSel
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
          object ColCodigoPlaza: TcxGridDBColumn
            Caption = 'C'#243'digo Solicitud'
            DataBinding.FieldName = 'CodigoPlaza'
            Visible = False
            GroupIndex = 0
          end
          object ColTituloCargo: TcxGridDBColumn
            Caption = 'Puesto'
            DataBinding.FieldName = 'TituloCargo'
            SortIndex = 0
            SortOrder = soAscending
          end
          object ColCantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
          end
        end
        object cxLevel1: TcxGridLevel
          GridView = tvPlazasIncluidas
        end
      end
      object Panel2: TPanel
        Left = 3
        Top = 223
        Width = 429
        Height = 41
        Align = alBottom
        Padding.Left = 6
        Padding.Top = 4
        Padding.Right = 6
        Padding.Bottom = 4
        TabOrder = 1
        object btnAgregar: TAdvGlowButton
          Left = 122
          Top = 5
          Width = 100
          Height = 31
          Align = alRight
          Caption = '&Agregar'
          ImageIndex = 0
          Images = connection.IconosBarra
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
        object btnEditar: TAdvGlowButton
          Left = 222
          Top = 5
          Width = 100
          Height = 31
          Align = alRight
          Caption = '&Editar'
          ImageIndex = 1
          Images = connection.IconosBarra
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
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
        object btnEliminar: TAdvGlowButton
          Left = 322
          Top = 5
          Width = 100
          Height = 31
          Align = alRight
          Caption = '&Eliminar'
          ImageIndex = 4
          Images = connection.IconosBarra
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btnEliminarClick
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
        object btnImprimir: TAdvGlowButton
          Left = 7
          Top = 5
          Width = 100
          Height = 31
          Align = alLeft
          Caption = '&Consultar'
          ImageIndex = 5
          Images = connection.IconosBarra
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btnImprimirClick
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
    end
    object cxspltr1: TcxSplitter
      Left = 3
      Top = 259
      Width = 435
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salBottom
    end
  end
  object cxGBDeptos: TcxGroupBox
    Left = 441
    Top = 0
    Align = alClient
    Caption = 'Departamentos / Jefaturas del nivel organizacional'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 545
    Width = 621
    object Organigrama: TdxOrgChart
      Left = 3
      Top = 15
      Width = 615
      Height = 523
      Cursor = crHandPoint
      Antialiasing = True
      DefaultImageAlign = iaTC
      DefaultNodeHeight = 96
      DefaultNodeWidth = 120
      EditMode = [emCenter, emUpper]
      Images = connection.imgOrganizaciones
      IndentX = 50
      IndentY = 50
      LineWidth = 3
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      SelectedNodeColor = clHotLight
      SelectedNodeTextColor = clNavy
      Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag, ocAnimate]
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      OnClick = OrganigramaClick
      OnDragOver = OrganigramaDragOver
      OnEndDrag = OrganigramaEndDrag
      OnMouseDown = OrganigramaMouseDown
      Items = {
        564552312E30550000010096000000800080000101FFFF0814004A0045004600
        410054005500520041002000440045002000530049005300540045004D004100
        53000000}
    end
  end
  object cxGBDatos: TcxGroupBox
    Left = 600
    Top = 81
    Caption = 'Informaci'#243'n del departamento'
    DockSite = True
    DragMode = dmAutomatic
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 2
    Visible = False
    Height = 318
    Width = 313
    object cxMemo1: TcxMemo
      Left = 9
      Top = 150
      Hint = 'Ingrese Comentarios para el departamento'
      Lines.Strings = (
        'cxMemo1')
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.BorderColor = clDefault
      StyleFocused.Color = 16701617
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 4
      Height = 123
      Width = 296
    end
    object CxLbl1: TcxLabel
      Left = 9
      Top = 29
      Caption = 'C'#243'digo:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl2: TcxLabel
      Left = 9
      Top = 52
      Caption = 'T'#237'tulo:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl3: TcxLabel
      Left = 9
      Top = 77
      Caption = 'Etiqueta:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl4: TcxLabel
      Left = 9
      Top = 102
      Caption = 'Descripci'#243'n:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxLbl5: TcxLabel
      Left = 11
      Top = 135
      Caption = 'Comentarios:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object CxTextEdtEtiqueta: TcxTextEdit
      Left = 72
      Top = 78
      Hint = 'Defina una etiqueta para el Departemento (M'#225'ximo 10 caracteres)'
      ParentShowHint = False
      Properties.MaxLength = 10
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.BorderColor = 16776176
      StyleFocused.Color = 16701617
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      TextHint = 'Etiqueta del Departamento'
      Width = 235
    end
    object CxTextEdtDescripcion: TcxTextEdit
      Left = 72
      Top = 101
      Hint = 'Ingrese la descripci'#243'n para el departamento.'
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.BorderColor = 16776176
      StyleFocused.Color = 16701617
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      TextHint = 'Descripci'#243'n del Departamento'
      Width = 235
    end
    object CxTextEdtTitulo: TcxTextEdit
      Left = 72
      Top = 55
      Hint = 'Escriba el T'#237'tulo para el departamento'
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.BorderColor = 16776176
      StyleFocused.Color = 16701617
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      TextHint = 'T'#237'tulo del Departamento'
      Width = 235
    end
    object CxTextEdtCodigo: TcxTextEdit
      Left = 72
      Top = 32
      Hint = 'Escriba el C'#243'digo del departamento'
      ParentShowHint = False
      ShowHint = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.BorderColor = 16776176
      StyleFocused.Color = 16701617
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      TextHint = 'C'#243'digo del departamento'
      Width = 100
    end
    object Panel1: TPanel
      Left = 2
      Top = 275
      Width = 309
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 10
      object CxBtnAceptar: TcxButton
        Left = 153
        Top = 4
        Width = 75
        Height = 33
        Hint = 'Guardar y generar departamento.'
        Align = alRight
        Caption = '&Aceptar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        ModalResult = 1
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000C0000001000000012000000110000
          000E000000080000000200000000000000000000000000000000000000000000
          000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
          3AD20F2F21840001011500000005000000010000000000000000000000000000
          0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
          80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
          0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
          96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
          3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
          99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
          66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
          A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
          8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
          A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
          A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
          4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
          B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
          8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
          BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
          E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
          B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
          76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
          7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
          7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
          46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
          C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
          0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
          DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
          0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
          C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
          000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
          56B00E3226560000000600000002000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CxBtnClose: TcxButton
        Left = 228
        Top = 4
        Width = 75
        Height = 33
        Hint = 'Cancelar Operaci'#243'n'
        Align = alRight
        Caption = '&Cancelar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        ModalResult = 2
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
    end
  end
  object cdOrganizacion: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 488
    Top = 448
  end
  object cdDeptosUpt: TZQuery
    Connection = connection.zConnection
    AfterPost = cdDeptosUptAfterPost
    Params = <>
    Left = 600
    Top = 448
  end
  object cdPlaza: TZQuery
    Connection = connection.zConnection
    AfterOpen = cdPlazaAfterOpen
    AfterPost = cdPlazaAfterPost
    Params = <>
    Left = 704
    Top = 416
  end
  object cdNivel: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 840
    Top = 464
  end
  object PopupMenu1: TPopupMenu
    Images = connection.IconosBarra
    OnPopup = PopupMenu1Popup
    Left = 384
    Top = 352
    object Insertardepartamento1: TMenuItem
      Caption = 'Insertar departamento'
      ImageIndex = 0
      OnClick = Insertardepartamento1Click
    end
    object EditarDepartamento: TMenuItem
      Caption = '&Editar departamento'
      ImageIndex = 1
      OnClick = EditarDepartamentoClick
    end
    object BorrarDepartamento: TMenuItem
      Caption = '&Borrar departamento'
      ImageIndex = 4
      OnClick = BorrarDepartamentoClick
    end
  end
  object dsPlazaDetalleSel: TDataSource
    DataSet = cdPlazaDetalleSel
    Left = 496
    Top = 368
  end
  object cdPlazaDetalle: TZQuery
    Connection = connection.zConnection
    AfterPost = cdPlazaDetalleAfterPost
    Params = <>
    Left = 944
    Top = 248
  end
  object cdSolicitante: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 224
    Top = 160
  end
  object cdCargo: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 296
    Top = 160
  end
  object dsPlaza: TDataSource
    DataSet = cdPlaza
    Left = 712
    Top = 504
  end
  object cdPlazaDetalleSel: TZReadOnlyQuery
    AfterOpen = cdPlazaDetalleSelAfterOpen
    AfterRefresh = cdPlazaDetalleSelAfterRefresh
    Params = <>
    Left = 944
    Top = 384
  end
  object frxOficioPlazas: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42965.582878321800000000
    ReportOptions.LastChange = 42965.741956192130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 120
    Top = 328
    Datasets = <
      item
        DataSet = frxDBPlaza
        DataSetName = 'frxDBPlaza'
      end
      item
        DataSet = frxDBPlazaDetalle
        DataSetName = 'frxDBPlazaDetalle'
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
        Height = 113.385900000000000000
        Top = 136.063080000000000000
        Width = 740.409927000000000000
        DataSet = frxDBPlaza
        DataSetName = 'frxDBPlaza'
        KeepHeader = True
        RowCount = 0
        object Memo15: TfrxMemoView
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 139.842610000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 491.338900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 566.929499999999900000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'CONTRATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 139.842610000000000000
          Top = 18.897650000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 37.795300000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'DESCRIPCI'#211'N:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 139.842610000000000000
          Top = 37.795300000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Top = 56.692949999999990000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA INICIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 188.976500000000000000
          Top = 56.692949999999990000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 321.260050000000000000
          Top = 56.692949999999990000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'FECHA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 491.338900000000000000
          Top = 56.692949999999990000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 75.590600000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'REFINERIA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 139.842610000000000000
          Top = 75.590600000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 321.260050000000000000
          Top = 75.590600000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'LUGAR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 445.984540000000000000
          Top = 75.590600000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 94.488249999999940000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haRight
          Memo.UTF8W = (
            'LIDER DE PROYECTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 238.110390000000000000
          Top = 94.488249999999940000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Width = 737.008350000000000000
          Height = 113.385900000000000000
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
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        DataSet = frxDBPlazaDetalle
        DataSetName = 'frxDBPlazaDetalle'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frxDBPlazaDetalle
          DataSetName = 'frxDBPlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPlazaDetalle."Cantidad"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 105.826840000000000000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataField = 'TituloCargo'
          DataSet = frxDBPlazaDetalle
          DataSetName = 'frxDBPlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBPlazaDetalle."TituloCargo"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 325.039580000000000000
          Width = 120.944881890000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBPlazaDetalle
          DataSetName = 'frxDBPlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 445.984540000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBPlazaDetalle
          DataSetName = 'frxDBPlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 566.929499999999900000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBPlazaDetalle
          DataSetName = 'frxDBPlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBPlazaDetalle
          DataSetName = 'frxDBPlazaDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 92.488250000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBPlaza."IdPlaza"'
        ReprintOnNewPage = True
        ResetPageNumbers = True
        StartNewPage = True
        object Memo7: TfrxMemoView
          Width = 737.008350000000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Width = 188.976377950000000000
          Height = 86.929131420000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 60.472480000000000000
          Top = 3.779530000000001000
          Width = 71.811070000000000000
          Height = 64.252010000000000000
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000000A2
            000000A00802000000005820470000000467414D410000B18F0BFC6105000000
            097048597300000EC100000EC101B8916BED000055D349444154785EED7D057C
            1557F67FBA2D4B81600971379CE88BE010436BFF76BBD2DDB6BBEDEEB674DB52
            A18E4620EE82BB43D1A209418BBB7B700F4EE445FEDF73CFBCC9BC792FE18542
            61BBBFEFE7309C7BAEDFEFD5997913B3CA6706550292E3F1A1A2028956555654
            EEDF7B70EBCFDB914545B9B6A2A25CF27E541816B5A2A28215536A6118069647
            8B680A9E219A8147AB03A3C6B868FC8A4A6DA976C54FABE6CF5E8060E5E5E5BF
            201F0986D919A5B9A65219DA613125704D616A871ECD222335243F7D487E2640
            8A601A0CA3B0C51092B77E00C9A4020DE7AA2A6DE5B8CCF13F0C1A4AC1C8228C
            3A4821EBDE024A85C14E40A903ECCB904C35188D4215A6A6F01C4C05D89F459A
            0195D3104603B05105CCD840D983D28FFF35B06FF86B825F61D787086B3C47F6
            5241F6620550DA01A5CE500660852D4AB0AF2154BE3585E4602AC0FEDB99B46B
            0192BD5B74EFD57E7FEAD9A55FF11DCCD8C8459A601F198645ADD3A42D03B1E4
            8835A14E091AC5B345F3934045258DDF1347CF78B70AD1F886159EBC4C2DF528
            6DF55F8CDF3ECDD4FFABAA7E5A9CFFC2F3CD3C9D830AF2B6C109EE25DFFF0DFC
            F66926522BAA3252C637F89DAD9B6D40C2A85C586095BCFF37F03F41F3FDBBC5
            EFFFED53FBE6ED1D2DFCDE78ED1F25C5BC3CFF0FE17F82E6837B0EB7770BF176
            EE6167EEDD2DF8A593C7CEFC1FCDBF29804E60E1EC45D6E66E212DFBB5B7EFE9
            D8B4CD94B1D3D92E05FA1FC06F9FE6F212EDF703BFB7AAEF12E4DE27C8ADBF65
            3DD7FFBCFF497999F6FF687E74884122355F5DDB5119D774C8B1E8F489BD9638
            41C18A9D341CF02A3C59D8DECBBFB555708043AF4EEEAF3834F6EEDEF1F5C293
            97E045E12832DD172BAFA01B279CA629A0789CA901D8EB314299E0A325FE9BA2
            B9826E56D361A91C229E4EC0397BC65CEBC6CE1D3D7BFB5987FBDB45F8B98437
            AFDF76E2B8B9F0D2225C4545594929E2945756693945D32067CA4E25D8EB3142
            4E100A839DA6E33745B3F81F7C95136BF0AAAC2A29D6FEF39D8F1C1AB7F4B5EB
            19E4D0C7D7BA6788476F8BFAAD06FC7350C9FD9272A219C1CACBB56544575D72
            973365A712ECF518212748551560A7E9F86D8D66F14C021C93107F5507F71E69
            E3EAD7CE3624D02932C8A177805D68A06BB8A765905FAB4EBBB6EC15111110C3
            584BA1EB92BB9C293B95A8533AA6404E100A839DA6E33745B3560BC288B68A72
            2D3F828AF921CEC5BC9DBF7D989F7558A05D64589B577DEDBB76F4E8DBF839DB
            94919908500E54148B099B7A09A7690AE44CD9A9047B3D4628137CB4C47F5B5B
            30CCBF15589E2BCACBCA3038AF9E2D0A68DBD9A3B15F8863DF0E963D7DAD43DF
            89FCB8AB575F6FABEE2D2DFDBBFB479E3E4C07686D45894433660193519DA901
            D8EB4980AAFA4889FFA668163B2F0CCF3236C60F4D736CDADADF3E3CC4A1BFB7
            5578ABA69DDEE9FDC9EB9DDF6FDDB46B67AF7E8D9FB39990390DBD81A2549496
            6BEB76C4E2C0BFF26886C260A7E9D0A3594A431F929F8064FAC590923380515F
            36D604390CAE68F2526CA66885AEBA5478A5BBA6B77BB30EC18EBD026C23354E
            7DBD9A86847678E3F3B7627D6CFA78DB86B6B20EC080BE709A4E5665A27B2009
            4AD1009C850A929F3E945E4A9D6168018C1A0DA10A5653140EA602EC751BCD9C
            564D9002E943F2D387E4A78F5ABC0C613C30CDC074A60252A3B39D1AB7F675EC
            16E810EE6BD3D3DFB157ABE69D7C1D42077F9011E1FD0FD786215D5BF7B76EE0
            32297B1A028B818CC95E2F41910C4172EB43F2D387ECC50AC07640720B48A61A
            8C46A10A5353780EA602EC759EB46B49EEA903A7283192AB2E9CBE1CD9F96597
            A6ED3BBAF5F6B3E9812D98B74D4F5FBBD096969DDE7DF9FB4FFE9CE665110ACA
            5B36F7EFD82EF4CAC59B54233E88FD3228E77059376C2E2AA26946866CAF254C
            ED78CC6BF3E3055A4AD970B540AA3F3501291909E36D1AB8FB387409740C07CD
            1A87701F9BD040E75EEE4D34DDDAFD31FEABB9212DFFE8D9B86317F7BE8EE6AD
            D313C7525C443496958905602803D72962ED10C593A0D44DC77F3DCDC4AA0EEC
            DCB7F34850FB30570BEF10B75E7E363D03EC43FDC0B15DA4C63EA2AD45671FFB
            88EF3EC8FDE71FA25B59F4D0D8467835D5B4710B39269E596134D3F591DA91A1
            2CED434B6E3A94457AB4E23D640B06A3686A7589256F1320453001358567BB0A
            4A2F56D959525C3668E0D0FA6636C15EBD7CED7A68ECC203EDC3036CC2836C7B
            05D945043B45B8350E7C3DF49384C1B3433C5FF76D1EDAD9B5AF5D93361F7D38
            A8AC542B2524EE932821CC6A487EFA90BD5801D80E486E01C95483D12854616A
            0ACFC15480FDE1A3D9749A25BF5F80BAA6A30CCFFAAA15F92E0E6DDAB874D6B8
            4562E7A5B10D0BB00DD358470459F50AB68D08B40FC57E5BE3F9D2C8EFA60FF8
            E3C8768DBA7574ECEB61A571B069B9A1600325A5C89D130424B73E243F7D28BD
            943AC3D00218351A4215ACA6281C4C05D8CDD85B09D98FC14E15243F7D487EFA
            90FC4C86144D0F30A29FD11E49DCC7C04E0B871F3AFF2075F1500AFEA5887BE3
            C2DDD722FE6AFB62AB4E1E7D7DB0F3B20BC3A119574CDA01B6E198B431876B1C
            23DC1AF8BFFF5A6C72D4F2CE1DDE6CD73424D831DCC5C2F7F597FF5E74ED1E12
            D16AE9563795044957548AEDB72CD5A0B28AD2CA0A839D8052AF05AA5846C161
            5490FCF421F919A07A341B0D574BCC27819AB313342B8408E06714D244832957
            9B1937D1AE51EB20978800DB50901A601FEE079A71B50D05D9E4B40D0D76EAED
            D54813EEFD5EC2F0A503DE4B68DDAC53886DB8BF5368F3FA5E43BE1D4905A035
            9AE63014A50AC733CA805421D5A0C612A59515194A0BEB003B198616C0A8B116
            707815243F033C5B5BB01A0A8A8696C814A0115CAEAD2A670A104954797DFE26
            47CB361D1CBA063862F8F6C4AA4CE3588C665204D3B86A1C22706DD9B8F327EF
            A4A4C5AD7CA9C740AF1703BBB9F7F6B40C68DB52B365C3662425D62851928A32
            0C6F520C40598AD2CA8A0C95F359C013A79997765380C0C61A0876BAE12C74F8
            4A2286320D66BEB579EBEAFD577BFDD9C1BC75903B866F68004FD418BE76A120
            150A932D067458A063A45723FF3E9A775263560D1934B7BD752FEFC621DD5BF6
            7768DAB67FD8EB170AAF20414C16DA0AAC11281667AD06C2004A4586D2A9F27A
            5A50AFCD9259C0D02283BD5490FC7E018C2582062F13FF63B1D40971A0ADA82C
            ABA82CA1C788E5553F7C39DCBEA957806B4F3F87EEFEB63D83EC7B69EC23C1AB
            AF5D4F5FDB9E4C30044319FB3262DDA19B4F8B6E9FBE9B939DF8F3BFFE94DCBE
            61673FABAE41AE7D9A98B9FF3030AEB498BA4E99B6A2AC0219D5D6024A85C14E
            40A52B2159F5ED2AE7E3859103955207D8690AA408FA90FC4C83B1F0184C588C
            2582E9F1223646FC3C99C632DDA61C933AC9C6DCCBDBB1BBC629CCDBA66B9043
            A4BF4DB8C62E92C6AE3D7661345713B5BAD91B12E41AE1D5C0BFBFFFBFE387AE
            488C5ADD4FF381C7EFFD3ABBBDD4CE3AD4CDBAFDC2590BB9ECA5E555E84A9CB7
            6E4691200250696585C14E40E5040C2D8051A30A1C4605C94F1F929F011EE7A4
            2D65A50FC9CF34180BCFED2B0D62A2999C5AECB8F866C6EECD073C6CFD3D2C43
            025DFAF8DB61E715E66F03C12E2CD2CF36DC4710CC34E3AA9BB743FD1CC230E8
            DB37EAF2E15F52D212367EFFF9AC8E2E2FB76ADCB193C72BAD6CFC02DA68F66C
            A55F4263B5C0A42176F5E86A26D10C289DEC0B486E0195F3D1C0C9AA20F919E0
            19DA82192D280C3476D1C850896348594545497925CDABD72E16FDE1A5BF3B34
            6E13E41EE16BDFD3CFB62756659C9D026C2302C416CC178C8A41AC125F070AE0
            DDA47337CF3763872ECD48DEF8E15F12DB5B86B6B7ECD9C9ADBF6DBD96E1C1AF
            5C395F842C9039CA24CE6DA2835117A329440699F461D4F874F1ACEFB42B2ACA
            B55ADA9F4170BCA9D0965656948069B47F69B176D0C743AD1AB4D4B845063885
            7ADB75C1689638D6D10C8E8DD21C608F293DD2DF36B4758390F7FF189B9C901F
            1FB3EAD52E1F7B9A770CB0EF1BE8D4DFA29ED7A8C1A955E27117B60110A69977
            8BE287F012A4822A60D4F874F1ACD30C37CEAE74A3828049B4B402871C5AA5AB
            C6654E6B51BF553B2CC34E2FF9588769300F63C62616C3FD7114D6E75525C1B6
            111D6CC2FD1C7A7568D655E31039ECFBE929891BE2072FECD1EE0DF7469DFCED
            7AFB39867AD8B69E31911E53D27A417336DD39E152A128B033D8A28451E3D3C5
            7F01CD62CF050FECBACACAB5A5DA529AAE37ADD9E6ED19E26919AC717EC9D7A6
            77801D56E21E383E09161F4E7390554F1FDB085FE77EDE2DBAB56BACF97FE11F
            8F1A99971ABF76D827137C1DFBB76EDE2DD025A28363A0975D9B82A56BA95474
            B692CAA61CCA001B95306A7CBA78E66856B711EDC0C88689BA5C5B42E7D9AAAA
            D347CF4574EEEF6EEDDDA9653FACBE98A2FDED704CA283938912624B3BB5B6F6
            61418EE13E161D7DADC3BEFA644A4ADC86B498751FFE39C5B369571FDB9EC1AE
            BD1CEB77E8E4D3EBECA9B3C8545B5A8EC240A1E54301A99C0A18353E5D3CD334
            0B07CD99D807E1F44C3BDEAAAAEB17EFBCDAEBEF760D5B756CD5BB834DD70071
            3344631FEE6BD3C3CF562CC6F6A124824E2CD534B8F5398657905D84BF550F6F
            871E01CE6141F6E1EDCDBB4604BC173D7469E2A80DC92356BE1936C8B54190AF
            6D78904B7FEB862DDF7BF7FDDB37EFA03C98ABA95834B7FCDFA4FD0BC00D0718
            38CBB5E5C5F8BFE4BEF68B8FA21B98B9F9BB46FA3AF4F4C308B6E9A1017936E1
            017611BE76E1BE76A1D872FBD64A3304134020CE57F65DDA3974C5D12BD8B24F
            EBC65DDE7C6D4442D2A6E498BCE41F16F60D78CFBD5188C6B1BF8F4BF716CDAD
            077F33B44C2C16E57C6017330C838BAA8451E3D3C523D2CC353405520413207E
            0D2352C6851665DEE94060C738A6BDEEF88C29F64DDAF83BF4D63845D24A8C3D
            17266D30678BCD33A66E359D35899F0DDDDCC64CE063D3DDCF262CD8B177ABC6
            C181CEFD467C3E237154DEC8917923BE5910E2F1A657A3A0CE2EBD35F6A1768D
            5AA5248D472150346C11E82E9CD83688DD1915996EC655D153B2A70BD1906AC0
            FE4C8D66308A2BCE4D342FB2896E68D30D476ACBE54B57B676F1F671E81A68D7
            07F3B38AB93A09DF2AC140E77B9F814E91010EE15E0D025FE9F86142EC8AA898
            BC84916BBFF847AEAF4D785BF38E5D9D5E6A6FDBBD8579AB59339788C6C490C6
            C19D6846DF2BD78A59BCAABCA2AA442AB20910E9E8B1A2723E5E3C4334A39E74
            66A25F4E908E0D2D142DBD904BB3E5964DBBFCDA74F4B4F6D53887D769E01A15
            BEF7A9235BF7E4CA3AAC6D8BB00FDE4A4E1A55101F53901AB37AC09F123DCD3B
            F9DA760F72EFE3D4D847D32E74CB86DD54CE4A2D8A87A2966354F31E9C36E365
            E8A9A22ACF1C9E2D9A7105D36840B6500B8A17724F1E391FEC13616FDE36D023
            02EB31CE4E4CCF2F17B08B2BC6B49F0DB6D67D3C9B760AF17C73D81773309A47
            46AD4A8ECE7BABEF0F2E8D037C6C423BB9F57769DCE1D55E7F3E7F4E7C8B880E
            F1C4B5987A403C955694F959C433B536D3DC079497978AC71595656564C12EF7
            ADD7FE6DF9421B8D5B7F5F7BEC937B04D8D5E1EC6454E4710CC1C816EB74B80F
            92750A777F31F88FA1DF24C4E44547E78D8A5E9712B5FA951E03BC9A74F66F11
            DAD5A5B77393D6EFBEF5D1ED3BD80F82D9B2F28A522D9D0208BA37C4D5E0DAA9
            60D4CEE14D8414C70420F033B736D3AD2E9C9DB01E8B7706B425DAE821F1B64D
            5AFB3B633DEEE36F1BA9718CF0B3E92E93F468025279DEA637F57563DAC7BE47
            805398C62AACBD45C4A7EF8D4E8C5F173D624D7CCCDAE81F7EECD2E62FED9A74
            09B109EDEC1661DDA8D5A71F0DD516632386D15C565E857545F7A8D41898959A
            A00CC3BA89E0282A487E067886681687D22AADB6B8A2A2A4A2927EEB064C1D3F
            DBA9454B6FE71E010E7DFCADFB686C7B63DFE4271E21FF7291C986D0632B8C66
            FB9EC176E1ED9A76E9D8F22FC3BE59101F5B101D5590386AE3E081D3831CFBB6
            310F0C760A6F67D7ADF9F39E53C7D07D5014B2ACB2B44CBC8926BFAF640A28AE
            3E2B2AE7E385DE6B0592CD0448111E15522AFAE9B00BE3036358DCDEAC5AB37C
            939B4DDBD6F641412E91FED6E14176BD03ACC3FCACB137FEA55B3059649A21A2
            F7F40CB0ED19EC10E9F162C89FC2BF4D8A5A392A765DF4F08D29D878BF97D1D6
            AA7B7BCB2E814EBD5B5976F4F1D46C2DA08795E5F464034B8C78BAA2A891AA76
            354134C32F6DCF87E289AFCD4621A5A283CEC8429B3038CF9CB8D4ABF3AB362F
            7A04BA47FA8AD60FB4EBA9C1E6CB0607E55E32378F51E821A65D4F1FDBEE81F6
            61012D7AF858867FFDC1E884D8FC11C3D68D8CCA4F4F58FBFE1F63BD9A75F3B6
            EC19E810E1DCB46D9F6EAF171E3F2F4A2E36DA623F21AA4210357B4843711886
            647A3278E676DA38934229BE5BF2C9FB83EC1A7B0679626B8D110C767B68ECBB
            07D861550E0FB0C3D4AD26E9974B208ED1D6A13EF63D350E3D3BDA847630EFDC
            ADCD1FA3BF9F372ABA207AF8EA91D16B1263F2FE10F1AD57E3CE81D8B5B946B6
            F8BDC73B6F7C78EFE67D2A390D68B142EB089375565430B48B48C603FF723C53
            5B3069B38DBD4CECD064701CEC058EE99D1E5FEB9EFEB63D031CBA07D8D3E62B
            C0F6898CE640BB8800BB081FFBD000FBD0209B1E41D6A12D1B777CB3D7A0D491
            7923A3F3870E599D10F773FCD06561DE7FF3320FD6B8F4696FDBDDAE51ABC4E1
            99FC58BA9C3662D2BCCDD5019E1C7375C2D3A1995AC508A4C7F56B566FB63477
            6BEFD839C051DCCBC4E1C706344488C7C93831C369E436F52F96D020875E0118
            D074AB24DCC7AA6B904344FB665D3AD8840DFA5776EAC835B151EB4744AD8FC3
            C81E34D3DFA51F8E581DDDFBB7B60969EFD671EDF29FA9F4D2E9F999A419E578
            BA900A42A0A17CE5F2F588B0FF67DBACB5C63D12632BD82E4263838539C2CFAE
            97AF43383DABC07E5871EA7D9C624BCBB3060768AB1E7E8E91BE8E911ADBF0B6
            4D3AF768F7E7513F2C4C1CB53E3A6A6D4C547EDAC8822FFF99DBC136A265D34E
            5D3CFABB35F3EE19D8F7F811F18148512306574972D4000EC3904C4F067AA359
            B23D7948F9E90376AD563B60C0E7CD9BBAF879857ADBF708B4ED1D68151E68D3
            23C036D2D7B6B7B71DBDF02536C34F84665F710DB4A5EFD1783BF56E6B1F1E64
            DF2BD02ACCCBBCF35BFD8626C4E68D8C5D1B3D227FE488BCD498FCF7FA7FD7B2
            4967EC073BB9473636B3FEE6CBE12538422BC0357A28E4BA3F51D46DD2460449
            FB65A828AFA8102FDC686921A65BD915E2ADFA3993973A346EDDCA2A38D0897E
            1B11E810E96703462198A53169CB73F59319CD24E1624C8783725FFB703FBBB0
            60FBB0F64D0235CE7DBFFD6452E2A87CDA8B8D28888B593F72C48A5E4103DCEB
            07073884F9BA7677B5F59D3F7D35AA20DE45D48A459AEA55598923B5BADD8C36
            A36C842243B6C88AACD7094F87663402D6B10AF192A69668A6D21FDD7FB2935F
            5F4F4B4D904BAF00DBB0407B7A755EF77A97DEAD8C27270659846BEC7A7674E8
            EE691ED4B7CB470951CB12620AE2A2D6450D5B1B17B761F0C0199D3CDE68D5B4
            A3C62DC2DD32A0835BB713C769EAAEA82C15DF1AA3C9E97F9BE6727A362F1EEC
            5469C5737A74FC811F7C6551CF2DD8B3971F4DCBD84ED33D487E3B00F2946886
            252CD021B48355F75616A19FBC9D911ABB76E4F03523A3D6C68D28481DB5F693
            B753DA5874EBD0BC53A07B84658356DF7F1D235E2C06305FD180D651A3D76E2A
            2743368AE012648BACA87415D84B05D89F0ECDA24498DFA49FBA016B9615B474
            F4F6B4D204BA46604EA6A16C4D3F527DDAA3190B36ED12829C7BB769D2B55BAB
            B7467EBD209156E8BCD8C1AB468D589D316AF5EB5D3F6DD92058E314D6CEA99B
            5D33AF0DABB6A23A15F43DD052AA9C8E0E516F092A2743368AE012648BACA874
            15D84B05D89F02CD48849F25D30B04E286D78DCBB75F0D7BD3F645F710AFDEDE
            365D691CDB46063BF6F2B5ED29F65C12014F85661FFBB00E587D6D7A86D8F772
            AF17FCC11BF1C9B1F9B151F97123D6C50ECB4B8E5933EAAB793DBCDE6CD524D8
            CF25DCB949BBD7FBFCEDCEADFB15F472F7036A2DFA0602AAA8D76E469B513652
            681D648BACC87A9DF03469A6E7CA34A8AB2666CFB0AEEFEAE7DCDDCF01A48A9F
            9CD32BF5D4E2BE358D66F89A287214A5A8C2E80447383DA76DB88F7D78071CE4
            6C7A76B48BF069DA5DE3F4EAF0AFE6C4C7E4C70C5F83797BD4D0BCF498822FFE
            9EE9D1B8134A1EEC1E61D3B065C230FA4C644565196DC2FE676906900E98E6A1
            7C70E7515F8F90563681816EBD7C6CBBE3B08453B2C60E7B6CF1AD011DB50634
            830FD3448EA21462D12024FD562352CF691BE10DA61D71820FD5B4E8D6C9A1B7
            F3EF357FED37243976755454DEC861F909C3D7C58D589310BDFCB5EE3475073B
            4678340DF06FD3BDF004DDEBA6E76CBAB77DA59A0BA89C0CD928824B902DB2A2
            D255602F1560D7A399831A42E9ABD455602F5380C0D8A1D0555B113B24B1C9EF
            EC3A79F5A1D7B2402708B0113F90111CCBBF438730D392D8E9B15E6DD489EC65
            548C06430AFCE0597642FC6C3194C33476107A8BB4438B9EDEB67D877F3E73E4
            28ECC5F2460D5F1733A2207E64FEB0CFA66AECFBF8D8740972EF65D3B0CD579F
            0CA5BB62D2CB8A545FA9E602756A2B400E0FA5AE71190F1FCDCA741F2D0FA3E0
            BDC9EE6DFB5D6C5A7570EA8C83323D7AA20DB6F423283434B6D9F24EBB2651BE
            0722CED392D0F363210ADF6AD179E905D3F15A1DCB0F2B885D0456107F18EDE9
            7D618D43EF968DBABC15F14D5C6C5ECCF055D1230A4644AD1D199D9F1ABDEADD
            FE43DCCD03025D7BB936D3F87A75DBB7E3102A5851F90053B7AADDA8E6062D69
            D4C890EDB584A91D264DDA1879E2782041A93F32E8F5CDB2AA615FC75AD5770D
            F188F4B5EEAE2182E91C4513A6D4CA24687A990359F8B51E9588BB2824FAC66A
            7655A20C0611694A59B305D3097D72CA961E45FBDAF7F0C5D6C121BC5D936EFE
            B67D867D3D276E64FEF0E835C38717C40EA53BA023BE99DBB5EDEB6DAC7B047B
            F56FF63BF7411F0F17A4F00B4F42D501D59715192AA712B29788A4A7ABC05E2A
            C06EEADAFC7869E6DF8E1E3F78DACBC1BBAD6DB0C699BEC5A71BCD62E1D43141
            4C1B199112312A3B0F4411DE308A4A9401387C288EC810859D9CF4B51A24E810
            E6E714DAC1AE3BCA13641BD1BA61C7BFF4FD2161E4AAA8D8BC688CE661D88EE5
            25C6E67FF456A24B938E81EE7D3C2C8302DB45ECDB7158343DED3789041D944E
            D11E7AFC19C26830D64DC4D3A11925C5A49D16976363EE19E81681B91143D95F
            FFD56B7AC95E34B4B84ABC2AD8ED41CF306A96007B49547616D9571520C01E7C
            2B2DF49C3BC0B687AF5D0F3FC7506F7ABD24BCA353EFF64D3A0738BD1CF5ED5C
            0CE898A835B1C30A6286E7C5C7AC8D1FBC2232E89F2EE6BE5DBCFA5B3CE715FD
            7D325A4B9F5682D22DDA438F3F43180DC6BA8930696D967985CECA2F04D2B97A
            F15AB7E008CF16013ED4B2E141E2A35D3416B15E92D0365B4CA174735B0C5041
            3F8D753185DA74A79F4092D0AFD759D76748292AF284139C89B78264C1765A97
            A624C8857E9A255E19F6B3A3E26970E2B2E9E963D5ADAD45CF8FFE949016933F
            7244FEB0A1AB870FCF8F1956903462D367FF48F7B2080C71EDE5D230E0D5C877
            2E5FBC4ACDACDF6CC2A26E49A346866CAF254CEDA8C316EC91F33000A5B37CE9
            723B0BD7F68E5DFD1DE93D2FFAE422B8B4A5BB4EF40B28106C1FA181D84562C9
            0C748C0C76EE1DE2D2A7A34BDF4EAEFD3ABBF5EDECDE8FA58B47FF2EEE907E90
            4EAE7D64E9E8D29B25C4B957B053A481F40A76EE052F0AC351DCFA7222922059
            885BFF8E6EBD83DC223BB9F7E9E8DCA79353DF10A7DE1AFB30446CD3BC7BAFF6
            EFA60D599E10B37658F49AA8A875B143D6C50FDF96346461AF80373C1BF8053A
            F6B5336F3F77EE62D16C7AEDA6723E14727891D2A350A04733A762144A5F0E6B
            4C8C003381144D51D68A07557FFFC3A7AE4D3A685C237164D238F5F2778EF475
            E9E1E3D9D5D7B333C4C7A38BB74BD7B60E5DDA58756EDFB4B357E320C7177D5A
            FCBE75B3FA5E4D5FF46ADAD0BD79431B8845236B8B465616E6106B4B735B5C59
            2CCD6D2CCC6D7015463B8865637B5984C5C6B23107908462354644393532366F
            68D5B4817DD3FAEECD5E746FF67B0FEB7AAD9C1A7A7B350B6A6BDDC5AD59603B
            87B0411FE626C6AC8C1DB67AE488F52387AD1F397C437ADCFAF7FF18E761D1AD
            539BD72CEB7B7CFED1D0D207E236B7A2756555D97AC2A907114482CA227434AC
            5A38980A085FE7D10CB0CB9818813CE1B3C2291C3B78B6B54B908379EB76361D
            5DCD7D1D5E6C6BDFA89D4D630FABE68E3696CE0ED66E8EB69E2EB6ADDDEDFCBC
            9DBBF468D5F7E58E7F79F7D58F3FFDE790AF3E1FF9EDB7F1DF0F8E1F199B909C
            989693933B61C2F86953A7CE983E73D6ACD90B162C58BC68F1D2A54B972D5BB6
            72E5AAD5AB57E7E7E5AFC95FB766CDFA82820DB2C0B976EDFA75EB605F93B73A
            6FF9F2E54B162F59B860E19C3973664C9F367DFAD4A953A74C183F21273B2725
            2525263AE1FB6FE2BEFD6AE4979F460D78E7AB3FF7FB67EF903F7469D7A79D73
            473B9B36BD43DF8B8F9E1B3B7441D490C543BE5B34F4FBC53143970CF9729AAF
            473F9B46AD9D2DDB74F40D3F72F028AA4CCF5E05F80E20B783A2E9D86964DF23
            0292974A173B3B43318EC73B69ABB26491D8E5109CC8CC69F37CDB077BB7D274
            6ADFE3ADFEFFFC7AC0F0115F278E4D9F3463F2CC45F316AFCB5FBF6DD3F65D9B
            F71EDE73F2DCD1CBD74FDDBC75E1DE839B5AEDFDCAF252FA71437985784CFDEB
            0045C6C9578BAC2BB5F7CA1FDC28B979E1F695D3D74E1F3EB777C7D15DDB8F1D
            3B7C6DF7CE739B379E2AC83BB26CE9BE45F3B6CF9BB6FE93F70677681BDCA14D
            80BB6B9B3933E7803DD49D6906E4A66085C14ED9B726A86299883AD00C287494
            C650540493286B25A2939C3C716AFF9E83170B2FDDBE72F7DEF562F12B0BF6FF
            EF037FB78AEF69D2AF61D10B1F5469EF55DDBA7AF7D2994B7B76ED3D76F4381A
            817C25506B88FF0CC5381057D2F475D3F1C834ABE9AC49C4ABEA32101DB5154D
            521BD028D561A0D1B70ACAB525A5A50F8AEF17DFBF7BF7CE9DA21BB76E5C2FBA
            76F5FA952B572F5EBC74F6ECF9C2D3674F9D2A849C3C79FAE4C953274E9C3C7E
            FC04E4C89163870F1F3D74E8C88103872050E0841172EC18029C44F8C2C2B367
            CE9C13D7B3E7CF5DB874F1CAD52BD76F5C2B422E376FDDBEF5E0CEBD92FB2525
            C8BF54AB2D978A66A41235D64B4B7F3145AE3EB580AA9574629C69A4202B0CA5
            AE04075301F6475E9BE50E58BB4890621A0033705969797171E98D9B37AFDDB8
            81F63D73F6ECF1E3470F1DDCBF77EF9EAD5BB6AE5DBB61595EC1E295793F2E5E
            36FFC7C573E72E983B7BFEEC99F3A64C993969D2F4F1E3278F1D3B7EF4987139
            39A3B3B2C66467E742B2B27232B3723232B3D333B23232B2D2D233D3D2325221
            A9E9246919B0A443842F496636A26451DCD1D9D9637272C68E1E3D7EDCB8C913
            274E9B3C79FAD469B3A6CD9C3B63CEFCD9F316CEFF118BF88A152BD6ACC9DFF0
            F3C66D5BB7EEDCB7FFE0E1A3C74E9C3C894E72E9F2C5EB378B6EDFBD538CFA3C
            30F293763403B7049816ADC2BD59126573C910F108469DA6C3249A395D5600B6
            2B2179D48CB232EDBD7B0F8A8A6E5EB8701133F6BE030737EFD859B076E3B265
            793FFEB878E6CCB913A64C1D3761CA983193B373C66566E5666464A6A6A6A524
            6724A764C627A5C725A58F4A4C4B484C4B4A4C4F4C80A42525A72726A52526A5
            2625A72423646A7A4AAAE05216B02B44E235234B16B6C8BE222E496A5A664A6A
            1652AE9694B404649D90119798816B7C7C46424226AE8909596929D8A06525A7
            22C11CF4B3EC9CDCB113C64F9C3C79EAB4E9B367CD59B268D9EA956B366DDAB2
            6BF73E4C1BA74F175EBE7CE5E6CDDB0F1E94F0EF0D8C426A4D0328BD6A09560B
            886679C5C055BCBE4469892D21A611D6A537A8E16460141AD904D14F042B4B8A
            B5776EDFBF74E9DAD1A32777EFDAB77EFD86E5CB57CC99336FEAD4E913264CCA
            058BE939689A94B49CE4E4ACA4A4CCE4A4CC4434686A463C484D1D939C9A9B94
            94810090CCACB11999B9193434476792E4422149CF4DCFC8466F80E4E48E4318
            3432866366D6E8AC6CB564668DC9CAD6136151051B939D531D203B07A9D11509
            6664607A180BC9CC1C03C9CA24250B7AD61894302D3D5B748E34F49EA464F439
            74BEF4E4C4F494E4CCE4E48CA4D4ACD40C149E66979CDC31E8033366CCC26960
            D5AABCCD9BB7EFDF77E8D4A9B3D7AE16DDBDF300539AD1B54C3043835EA75483
            58101656645D76421101C9288D6676B01F40CF82155308875601346B3146EF16
            5FB97CE3F8B1D37B76EFDFB07EF3CA15F9F3E62E9A34711AE84C4FCDC670C428
            494E4EC3B849C6A04BCB4C4FCB4EA71180F10AC2C66466509361BECDCC1E9391
            333E3D6B7C66E638F8A6A4662624D1904D4A4A4D4D49494DC195071C466A666A
            3A38A6B6135D01E980756A477003A781102506A20A438274402D928282A4704D
            838E0E8702A765A7A56204638E494F4949435D121293C1AB280FCD0DE092E6A1
            4C12EE0A143D333725233B353D0B6B0462F1AA91865907892443C9CACA1C3D76
            CCC4A953662DFC712946FFE6CD5BF7EF3F505858585454545C5CC25F9B939A5B
            0741483585A04C3132AB39635FC9A19CB485957D49812096B203C189450733CF
            850B970E1D3CBE65F3CE9F96AE9A3675766ECE7874DE51239346C6268E1A9918
            372A296E5472427C4A929863C171724A5A760E35220D111E315847B3464350CF
            2CD83140313A73C626A5644D9932230FC7DCB51BD66FD8BC75DBCE5D3B77EDDD
            B963FFEE3D07F71F3872E4C8712C83A7CF9C3E7BEEC2C54BEB376C4A4DCB023D
            3A7641390D680351B22B8B2A8C24189D3C9491329443878F5EBC74B9F0D499D3
            274F1F3F7AFCF0C123FBF71DD8B36BCFAE5DBB76ECDAB979CB9675EB361614AC
            5FB96A4D56F6D8F474EC0FD04D3107A08E48647466CEE874541C351569227D9A
            21D273D0FB69DDC132149F2A24052D86061C352A21212109DB85F1E32762FECB
            CB5BB37DFB4EEC13AF5CB976E7CE3DDAFD2920D1A680E4A1032C34A805F7D5BF
            BAE090AAC018D577EEDCC55676EFDEFD6BD6AC9D37EF476C79C05C4C745CD488
            5190D898789412346322CDCE1A3366F4F8F1E32663E73273C69C79F3162E5AB8
            74E5AAFCF93F2EC4C48B7A82694136E6C09C4C42766626780272C8929D9B9098
            B27CF9CA9252C5E98ACA84ABE452E2E8B19360857B8F68441AD9C644A65629AA
            30D40B31FFCB7A5A7AD6E429D3EEDCA59FC1E94151125285B3E8E6DD89136626
            27638E9113CFCDCCCCC9C8CA4EA30A566781B96174EEF8A54B56AE589EBF68E1
            4FB367CD9F3675D6A409D3C68DC572862E92CBE33E3E3E3136765454546C7474
            6C5C5C028C13264C5EB468C9CF3F6FC1D1E0DAB51BF7EFEB158CE984224824B0
            050A1B69348B90D5282D2DC729E5F0E1231B366C5AB060113240FF422F437E49
            4929E0069639B37F5CF0E3D2E5CB5617ACD9B8E5E71D7BF7EC3F74F008361AE7
            CF5FB87AF5DAAD5BB7EFDDBB5F5A56C6DB8DD385E73038980FAA2D1A2213BC62
            7F0B646766F30C8C0973744262E2ECB973EFDDA33F2D82C293A0C0F4777AB13B
            A0650275C112C6ABD8F90B9733B34747C7C4616ACD1D3D5E2C814647731D044C
            A39058F8878F889E3A6D4689F81618F265A13B33E555155ABA5BC26580113877
            E65256E6B89474EAC4B41E8160F460AA141509464E19D7B8B8A49933E6623146
            2CCCB50F1E9441C7B1EDF2A5AB67CF9C0785070F1EDAB56BCFC68D9B57AF5EB3
            64C94FF3E72FC0723E6EDC045000EE41013A414ECE982953A6AE58B17CFBF6ED
            A74E9DBA75EBA6D4DD1460A625070E54F8071316638C5A9C35B76CD9BA6CD90A
            A43E73E66C643077EEFCA54B97615EDAB367DF8913A7CE9D038BD76FDDBA73EF
            EE7D4CE0D870712A8650F69E2B576F600433CDA2CEA0797426965510433B2C08
            4DBC287D724ACA8489936FDCA02F1CA39CF8478A48045731D74802CBADDB77B6
            6FDBB369E3562C6F9806711CA279D28039C1BD515105A35D1ECA800DC4E4C9D3
            962D5B892A23173122B86BE96A044DF436D68143070FA7A66724A767C8497149
            78C3886D47BAC80E33765C7C32F62E0FEE9788C80F0106494949D9DDBBF78B8A
            6E61F0E0648F13FFD6ADDB57AFCEC7C81604CD9C3D7BCE82050B57AFCEDBB367
            EFC58B17719693976A000AEB6638F25FBF7EFDF4E953870E1DC6CC0C415A4811
            74DEBD7B0F07218E503BB8ED31E2C4CD102C21681C88705655DDBE5B3C65EA4C
            ECAAB8AAA0196BB3D8AC72A38CC9A07DECB86C5ADE3230F35F3C2FFEDA04FAA2
            48963FC0AB6B6B31C445F9CB75772A7E5AB22A3E2E591C97A556D6171E552A31
            423336D5B9B9633168366DDACC331EB2109C960941F351A584508DA918F4A391
            AA1D3BB6A4E2AC90992AD2E1795B08EDC5C6A6C3984B9BF6ACACD13804AE5891
            4FAD4255A3D2E3CA79090542357A2810B8A4A4F4F6ED3B972F5FC66EE5C001E2
            6EFFFE83478F1E3D7FFEFC9D3B77F8C50D0E09989595953D78F0E02E28BD77AF
            54CC51462188948A058802B1AA044C2CD540144CDE3F2E58846D335595E66D8C
            69D499F8E6F625A1FD36AD4CD88562A7C5398AFA536A9C2F672E7BC907D0C2D3
            E7B0E0A5A6E0B04DE9A327F13CC9F3873CC4E164BBD0C5FD10DDBE5A1CD6B13D
            1C9B9A923971E2549CEF452E4C0089E8BED4BD74B566DF72FC43C8FCFC82343A
            4CA01FABFA102A38369D273031B8D108585F45A94565EA0E8E6B0814F1C18362
            F008363174F9300C882A549AF17F525801E16B1CB5FB1A05A2808FE52B562525
            63F34AB51513383781826631D161CEC426008B93280801BD9013C1154515A585
            CE864A4C3648FCC6F59B5326CF0043481F6DCA4CB328D3570AF212CBE7682CEA
            08CFE501CD98FC57AD2C282E46A6D470C85DE428B50F54F99EA50C8C8D850B97
            E088456B9091A982EB485960D9C66970EFDEBD8845A57FACE0C2C8600B7B01D5
            E766A5B526981246054441EB6CFA790B76D144430668D01FC73AC12E14A7ED84
            B8149C52444674EF4C4E44582408BA09303E7850B270E162D08353191211D452
            E218A3D88743E1BEA5123182A9136034230085A1C3DE589C65B1C6E30C033AA5
            3C043877510AAA0E2B0C141287C0E4A40CBAF323D1AC97171780CB939D33E6E4
            C95388C51579EC50A6ACD4ABCFCDA6E011CA8728C0FE038740336ACB37348C36
            3DB663D999A341D8ECD9F3F7ECD9BF65CBF6653FAD387386BE658D869653E32D
            06C046AC08385C62C64E4FC3F18CEE936030F150D68D54E5D8920446B90C3A1A
            B0F9CF4D4DCE183D7ADCE9D36750514E5FCE5D904D06DE785EBC7879D7CE3D85
            85678F1F3F3561FC14D02C761BC84B9D9D9C51724AC6D871132F5FA69D0780B4
            94306A7C5CF895683E75AA10F3151A97456E023D813D3D373303321A33308EE3
            51234662DBCF998A1B73D4DC4C33EB7CB70E01366FDE9A90909294948AA93831
            2915E346D7B8466886850731745CD3D273B0A0A4A6652424246328EB461B8D60
            E50AC7C5D08A8F746AB5E53F2D5D1E1B138F0D232407F31315DB78BDC48A40D3
            0CF65FD3A6CFBA73FB0E27C557192AE7E385747B44723D0C8F5614C4BA72F5EA
            D87113D233704EA63A8B9B5FD50DC142CD415B33ACD0D872E7E08A691C6774EC
            F995F9CA2DCE3A6FC4B0E958B366DD8F0B16E0BCB070D112CC1C69693897631E
            1E47775245FA6094A99588A79BD56330792427A7AD5A955FB076DDA44993F7ED
            DB8FD490030886822B7A157729CE947BD5C58B9772478F4B49417D7000CB4A4D
            CDCCA13B9DBA94D5421318684E4A4A5BB478A9567178119590A0723E1AF48B4A
            3AA39A66A5B52670C83A81DB0B5BFFE9D36762C488BD4F6E467A8E61DFA7655B
            DC14C4509317CE94D48C0D1B368932D2E4C9909216E07A4170C0E0FB2AD86D6E
            DFBE6BE2F8A998C6F98639B32B0B3933476314A6A7664F9B3A6BFFBE03622B57
            5E545484FD9448B5BA9A3CA041365704C032B17EFDC684C4D4AC1C2A2A9606A4
            9941C742BD5C5804F1104C1E639393D371E4E544189C0543E5FC255026CECA13
            9FB401C42A2929993B6FDEF0E1510989C9600EC7D38C8C6CCC906808B19ACA5B
            21B04BFB707EEE8486C388193F7EE2A54BE2A3B7BAD45851A07A5B844E806B71
            71E9AC99737198CECEA4BBE8483C3E21057326B8C10289EC681DCDC8C5AE7EEB
            D66D1C91C1492901230866B239F1F3E72F8E19331E533DD24901D7B9D8018C85
            135D1355A062EBEE9B8A6E9A99989494989492929A8E13399FA638595664A89C
            0F852A059553855F696DC6A4BA7FFFBE35056BF7ECDD7FECF8894B97AEECDAB5
            9B9EED8B9BD210A659EC8D711C1A0727AE39A327A099E2E212B66EDD8E94E4D4
            004E5C073849C03239AAAA8A8A6E2D5CB0841F2B8D8A4B1A3D66C2C64D5BF7ED
            3FBC77DFA1A53FADA0075F8969F0CDC9198DC39B3EAF9C5435C4F441EC323085
            63BB101F9F240A291DB8C5F141DA04E02A939D9A96F5D3B2551B376E5CB274D9
            8C99B3274D9A7AF8F0112482643935CE82A1723E14AA14544E159E38CDDC46AC
            D39810A5016EDDBA3366CCB8B434BA3526B7111459D0822969D409962E597AFD
            FA0D119D081109EA8F387D200042620EA7CDF0AE3DF3E72FD8B469B3D8C051BE
            972F5F9E37EFC7E5CB571C387010ABBED85255CFC99C8221D80B57248234D3D3
            B3308E4130C6313A224A8BC2CBE5E715071C8F1D37E982781D5F5B518EF21415
            DD2C2EA62FE88B0F8657370BA396DC8D02E19551544E157EA5495B1E1050E0C6
            3FFC9F97B72625254D26586E29F1101093365A2A67EDDA8D65A5F4C20DC20BFE
            4017DA48DA00ABC0B940016B221F0262600E671DC00EE8C183628491DC9432A7
            26CAF630886254E27C386EFC147E1E0301AF3C1B7115C4543416CBC492A52B4A
            CBE8C6224AC37901480417217A8DA9723E1422B1EA282AA70A4F7ED246732BA6
            41C193B8755B5985E329E66D7A3D4334105F794783D91B8D85C9706DC1466D19
            68400A748C1137C5E0344EB35C3C567841A5DA0B081FBDE6E000288F009C6CD6
            03FB712C00C170BD79EBF6F419F3B0CC834E08F754AE020BCA8F517EE8F03104
            E6D22222835213F74D85573554CE8702E19551544E157E0D9AA5EF06C9150530
            438ABD31E64F2C934C30845FFDE1490F2796B48C9CE4E48C4D1BB7E86A41B98B
            BFCB6D7CD821007291A75FE24730C45786CE88C0A2C5A53459A9AD76BA8855F7
            EEDD5FB06049724A26A61CDD38C6924CB765506C508EEA6028CF99FBE3ED3BE2
            ABADA25FCAD1455AB0E8741D54CE8702E19551544E157E159A0529A864F5F0A2
            9A1219478F9EC02E0C2D85295A8C037E522B310D01CDA929193B778A3F2422C0
            AD46291A83082051C28A3C64C95B289CBFBAE9A572A941D6EACE81BDA476F9F2
            95D88289DDA23482C5C918DB089A7E781A87EFEE3DFB115B24C065960A80FF9F
            DDD18C4A4A9ABEFE68403DB9DAD8812F58B884CEA0749492E66D169E09C13736
            C6D00F1FA69FA8481D851A5C82480F95844856380529D5858451E56445150C10
            0BBF948EA09540198AB91ACAC68D5B121352711893E76A516669D2660B4E6E33
            66CEB9779FDE1D50351565272C2261A9180C955309D94B4422B0D3749844B3AA
            3994FAA3026948771BCE9E3D2FC62E1AAB9A63A5E00C8A551047EDF3E72F7094
            D292D23385E7EFDDA37644DD45E9B055C6645E5B639900D4ABFA9E1770FF7EF1
            BDBBC5224D726ED9B22D2D2D2B333D17C77155215964EE0F1CE41FB0532C4E5A
            05F2D0F7AA2924207B894804769A8E87D3AC4CF41132A809684D51E0AAEBD78B
            A6CF9883A5CE28CD68354C80601A3B9A4993A7E208845DD8FAF51B53923366CE
            9873EE1C7F9C1E4254738252063A181A0DC330F8BE267CB154C379F6ECB95933
            E7CF9FB7F0C60D7AFCBC6FDFFE6C1C93B024D30BBCEA72B2A0B4589571561659
            201D4ED808104084A986CAA984EC252211D8693AEA40F3A3656014F288B978F1
            CAAC99F3F83E83B8D5A06E3816B16C8F898B4F9A3B77FE92253FD16BF42959C9
            C9E9A3478FC308BB73F72E9292177E914335A8D00690FC0CC0BEB76EDDC6513B
            2B2B37213E2531210527EF6DDB76E4E4088EC5838A9A6886A03BCE9A3DFFCC59
            9A78901EAF0052EA3A904907A5857543A88201EC341D4F87664EE7C489539326
            4D4553A6A5D3164CD55E2C4C30460904EB7762524A52323D86CAC91E939B3D0E
            ED9E929C366DDA8CA3E2E7689C38432EAA2835745A6B216C602F15602F2E2ED9
            BD7BEFF4E933B1FF47E239D9E33082D3D2D2939292E975E30C7AE292919E6394
            6631F1507FC5DA3C7ACCF863C7A47760A4D415A012E8A0B4B06E085530809DA6
            E3E9ACCD28E8A953855959398909C9B9D26BB363B273AAF7322A11DB1C6A47EC
            663181A7A56765D2CB1874472227676C5454ECF215ABCAC46BCC72FA0C761913
            2340F83367CF6764E4242424D353517A5C36262D2D3B9B6E6C890585DE27CFC9
            A617908DAECD30D2FD73942A25050784F41D3B768939C6787675C22F6C739368
            061E3BCD4545B766CE9C9D843DB6E0AFA6191B5EB8F2D646E874E7018131FAC5
            130EB2A7A6651F394A430790D36728751538A41230DEBA7D67D294E9D828D0FB
            A622BB0CACC4D4C9285F7E20013B773B634276C44587888F4BCACF5FAB3B9113
            D06E8FDC74AAB8754DC7549A19465BE791400D8DFDD4B469333169A369F84085
            16446BCA8DC80D0A81C22242B285DA948F5BE3C64FBE7AED06A5A800F2405BE0
            BFBB77EF1D3B7662DFBE039043870E6FDFBE73FFFE830F1ED0FE9902E8770590
            B272D51A7E3B11E312FD0905E3F288E380D4EDD8C2A25F300A8388C9F406E7AA
            FBE24C25EA5B2388BDBA70F6D0048DE2A9D1AC1573ECB9B3E7C78E99989A46BF
            AAE2564363897BDAD24D44085A8DBDD8175718E506E5D69F377FE1868D9BCF9C
            3973EBD62D6CC59132030DB874E9F29494F4E4E454FE15D3A851F19999D967CE
            9C9342508DE83969D1CDA283870EAF5DB769EAB459D84661F910E4D1D327CE08
            578C6614003A170C59C3290A43570440A9D232721213D3162E5C82898113976A
            FC9820D2AC339E0ECDDC7FB915B011CBCEA10D2A1A8B7F9688012D9AAC7A1C13
            E53C6E4473730FE090E2F716748C41E7484BCF983C65DACA5579FBF61FBC72F5
            1A86ECB5EB4563C64EC09E88A3202EA22424A6EEDEB31F076D0C742CC6DBB6EF
            5CB274D9F80993B0E423A4E098F242CA88059A911108A6DC4549E00BA7D82248
            4F51B9485C5A703C7BD6FC6BD7A4375E1E578BC9F86FA2194052FC1403CA8183
            87B1B7E2F6C558E1F6C295DFD963230F5C3845BB4B635D38293C9C68F4F48CEC
            A4E4B4F804FAADE298B1E3172E5ABA78C932F8B2700AD9E2083E7BCEFCFC356B
            7145BE0989C90989E825193C821146269589447608C6D941D8CE85912DEC1B17
            973465CA8C2BE2AD26A096C918BE92A60347911C35C394308678BA3463DEC6A4
            46E79C1D3B7727A7A40BAAA479985A2D3E392121955FAB8360B3063BAFCA6082
            43A27DA1707878E13A7ACC045C3164F97511F83231308AE84464724A067C2198
            03D099901AFB32C19C322CB8C222A66EC90B82F41112EBB79C205FD17BC68D9B
            70569C9801746171075671375B010490341D3896E4A819A68431C4D39CB471E5
            D73441759956BB8E5EB0A2C7CF183D6868303477FEA2050B962627616545C3E3
            1823C6BAD8666382D51DC0784CF3D2583DB0F8CA533ABCB8EB5074C18D6C613A
            11068A7CC5ACA04B1C5D0451307950A6088900A053BC8A3B496C2928410814C8
            9123FCE4911E7911BBF4B38C9AEF843D12FE9B680664A631A6F9B750A5655AEC
            7279FC619C2DFD69E5DD7BF7B1BE6E58BF393D2D3B29310D039A4E2CD93CAA30
            3A8906C184C42B68630557E86C01314890BD70550A87947DE1D42542E9CBCF9D
            78BFCD039A17EFFC35EBAF5EBD862BC634CF40E8677BF61E448D4413512B5554
            8263ADF813A1B5012DC04D61221E91664463C021698F0A4E5105C94F1F4A2F65
            18EC78172E5A949C9CB261C3C6E262E967831819C78F9F9A36754662424A7A7A
            4EB6F8F195E08C2861B658110C11977C15B41185327FAC0B8588148200201B46
            52A81B095F302785C420A65F4A629467C7C7274D9C38E5C891A3988450B0D2D2
            B2CD9BB7A4A6A62525256FD9B2555D57C95D5D4D196C61282D2A2F061B45A86A
            5F761A42F236C0D3A1D928D0A971BD76EDDAD1A3474BA51783F86931F9DEBC79
            6BFDBA8D18D08909A919747394988330A32C4A5D0893A7B4C8C25E24CCB118BE
            4850EA07488A251BA33C9DEE8BA5A767E4E5ADE11FE502A260340A77EEDCF9F3
            CF3F9796D24B5EB5D4977D1992C9C0282B32648BACA8741351B7D7F17F1D288B
            2414DE9393B1B0F0ECA2853F6519FB2D8510D0AC62BA9A30A5A802E0CA53B7AC
            C0882CA0A78AEF8D2C5CB8F8D4A9C232F1E701798E15344B4595675D761A0507
            60185A00A551A9AB5093BD1620CAB34533ADD3A2F998556103C7D2424E8EAAAA
            B2D28A3D7B0EC8F4C87C0BA72CD52C1A15C4924536AAF88617365993A74C3F74
            E830DFB31445A29585751455EA7DB536A06180DAC31B4219BEAE711944B3A4EA
            0AF4C89052D187E46702E4F0AC00CA46D4314DCE13274E611F043E9818664810
            86918A9D336D9ED95E8B200CC792C99615F682825C5689DF49205FE42DF6CF54
            001486218A246DA39875B6284111F41B47E594F1503B2524A0D41F0A04AEDB4E
            FB71C16873C028170B600517F16688F4AA090C68CC828275F109297C14964530
            046E6883267306C10C4F8F98F4859E3589751D82C0B2B0932342C1BE7ACEDC1F
            EFDD7B807C5164C3527321B9E43C0F1942145CAA14832D80E416909DECC5902D
            B2C260A7E9783A34D702EE01B872DB091B6D7664CB9D3B7766CD9A8D7126B3CB
            84099E706521AA30DC112C29212D313E552D09A949D8B6EB1FB4985A566014C7
            A7F49C9C31A74F178AB6A5C2F0954B024061A7EC65080E293904D8C2505A545E
            0C368A500459179E2601814DA5996BF22B406E385901CD684FB6A1D0274E9C48
            484C4CA49DAF746B429F69229B3826CBE8A9D3662E5DB2226FF5DA82351B7085
            AC5BBB69D3C6AD3B76EC59B8E827CC07088983B5AC40900E52E6049353326263
            E3D6AE5DC78DC505E082FD4250F32BC80364277B31648BACC87A9DF0CCD16C08
            D1B065F22B82B76EDDC26975FEFC4563C74EC4A42A6E474BBF7E60D6C5EDC9DC
            A4E4F482B5EBEFDCBD8FED317FFA465B5681ED9BEE15E9AA93A7CEA46764232E
            7A46EE68BA758A5869F4FC838C7CDF63E2A4698B97FC74EAD4295D49084C365B
            1E199C94E410909DECC5902DB222EB75C2C36946BAA81820B97F6DD0680639DC
            B8BCFE09A5E2DAB5A2FDFB0FAC5CB97ACA94E99999D9F4A891BE9E979A91919D
            9E9E999D9DCB5F3A90A1DF805577EFDE9B3C792A7F84174726CC0F6969192929
            E988386BD69C75EB361C3F7EE2CE9DBBA8B710424D9BACDA21E5670C520801D9
            C95E0CD9222B864619861619CF3ACD225F16D94995A1EAEA802DD2C993A7366F
            DE3A6FEE8271E3266666E64447C74C9F3EF3AEF42A2047412DAA630967D5AA55
            79B1B1A340705656CE9429D3962CF969E7CE5D172E5C527E5149E42545E42FCE
            40A95363705CA3904208C84EF662C816593134CA30B4C878D669E6A2F320560E
            65B673A9A033B4DA8ACB97AFECD9B377C992A53B766C4778189501A00B201E39
            8F1D3B3167CE3C1EB8B76FDF51049480A0E2D78B5AA8707282C813D139A14786
            485E2F11D9C95E0CD9222B467540E554C1249A25ED61693D09203B70C2F790E1
            14BC42215D94453612987E004A6969297C8467750795758E8851ABFAF8258C72
            67A29802488FD3E13050B800BF049C94E410909DECC5902DB2528B0EB0D3107A
            344B610D20792B926645050EA382E4671AA4383500CD8BA6C6D530309CC48382
            45118018625DE9CB603BC04EF882605518015878AB4FE04E80D8E2AA8694A2C9
            90A209C84EF662C81659A94507D86988EA47174F0C686BB58801A95BF164E8DC
            5C32C9A183C2C889100C4219A9A7E4A10F411E8B4C2D7505B9840A410AD589C8
            09B25525354099941A226BC92E2B4AB05184AAF665A78940783D9A25F3A3424A
            451FDC942AE117E3F51638897A8E42605D86C2484D065527D510BE2641BF540C
            4E4A36CA82ECAA21C208403714E3A84E4A3220A8416091BC6454EA404D76D3F1
            2BD06C046A8E011DCD9253805300243781E64F41B31148A14D00C24A7108EC54
            19AB21C2AB2196035978A492D9982861D45807182DCC43F1F02DD81381A82937
            8D687601A14A0104849520B90975A659F253436917A591C4088C25825E59562D
            951079436E28462025631A94E1EB1A9761D216CC4448A9E843F2D38798BEE4A9
            4C82CE4B0FFA46299660DA544851D580DD88D40E29AA04144608FD952CAD2482
            6C0301F47281C810BED5D5644509368A50D5BE4A5D090EA602EC4F6734F388D4
            4935246FE3608EB971D9C9CA43A10AA974224765A6AA900005A8A1601C97BD38
            22EA224FE34AA91122AE04D9C95E0CD9222B0C769A8EA7346953A3A847F3C3C0
            5164705C152B46A1CA45CE9AE372934157D96B0436E4B439E7FD056D31946214
            72821C8033AA0394BC3E02C740DD687E843C701C153D1A2D4357AA249CE48113
            0C7D81042A1F4611424EDF68C5F0BF686018C8820B2B64D345670B202B9413A6
            4EF10929064A823CB9487C47A5A2525B51598A50E2A314084901C4FD2F824855
            4E4D062C74DF4D244BBA74783010541FE9235B91084273EECA1212642714A597
            D2C93AC04ED3F1C46916D4A2E1A8F9A097979741A879B5F4674150776A69015D
            78025B58870DC29F12E020F0818E78C28BC089E8C2136445B4AFA401942E452D
            E5A64744110969955654602745A5859495817578563F1993E21B003E2245EAA9
            CCAB4A78EA16290BD05F8C2CA1A0FA69CA4ECA4CE1A574B20EB0D34420FCAF42
            33714C6F2C33D9B42BA186411B8B7799892D6E7D52900514AA8AC88B3ABDB8F3
            C514A385B4C405BCC857BA2525A08C05C88AC81191E9EFCE083352136500AF95
            F4815D8410163085125208A1900505A6EC05382D19E8135A6D29D54E740B2152
            2D5440914530AE0585AFA8A46F5EA9D2949D22B76A2FA5937540A92BC1C15480
            FDC9D34C6D482FED41D1969662985012184AA515E5388CA0B2547FFA73039C38
            B58BF4844028F0A51E42B7A92154042429088330FD08C937BD1922DBEAA24AFF
            53F38A5FBA5044CA907A1EF991919E498B5E820E84DE2095578A6684660416D1
            E1C501C8021B0F5C955022D4A1104FA443F5125D553F4DD94981145E4A27EB80
            52578283A900FB935F9B4547172B9131C04E04488D45068E2598C3954331782E
            901C085951555656512ABE91CC4044B20BC80A547EF156062C489E22E010549D
            9E1A0886242547756A02B544AB1D88A7A893949A80EC5479299D4ABD4E78E234
            73D93092AE5CBC7EECC8C9BDBBF76FDAB0656DDEA6352BD71F3D7412CCA1E698
            D7D0E4E8E572043138A83DAE5CBEBA7ECDC60D6B37165D2DE2363A71E4F4DC99
            0BB66CDE412461B088D14C4AB934A0E5446405E3ECC6F55B5B37EF2C58B3F1C2
            854BC24B4A1FB855F4E0E4F1B35BB6EC2AC8DFB40605CBDBB0FCA7FCDDBBF663
            75A0014A09103835007AB9B6FCD0C113AB57AC2B40F8D51BF357E3FAF39A559B
            F329BA5AD6ADD9B075D3F6E3874E5DBF74AB82DFFDA5A9ADBA840CD92942E865
            A7724A5A5DF064691625AC02AF03FEFD892620A475AB0E1EAEAD9C1CDC9DEDBC
            6CAD9D027C42CE9EBE8800447305ED72A18B2DB144005218337AACB3A38B8BB3
            CBC4311360B97DE3EE6BFDFE60D1CCDADDCDF33F1F0DBC719D3EE5245E024214
            BD16911500FAB29F567978B47276761D3A64049C9CC5E95367E34765740A896C
            DD3AC0D5B98DBDAD979D4D2B3B1B2F2B4B970EED35870F896FC4E82602292D91
            1A3ACDFBFFF8D4D1DEC3C5B19DBD4D6B07EB760ED6EDEDAD3BD8D9B43314275B
            373707AF365EBE817EDD3E7C6FE0BAFC0DE52552A2528A02B253E5A5D401D929
            42A9C15E867838CD727C5600B61B82BD74614880C5F316FBB5F4F56AD2CEEEF7
            6DCCCC1A9999BDD0E48516368DDC1BD66BD127ECD5CB17C46F55D0E63496C5D9
            8BB63F629C029555C3067FDFE079F3E6F5DAC64465C270E9F4795FEB702F6B7F
            1F874E768D3CFEFCFABB674E8AEF0E607C68910662205B9C8EC4C68AC62C9224
            46674C9A5DEF852676F5DB7FF1F6600A5F55B571FDC62EFE11762F7468F2BC87
            9959BD06CF5936ABE76EDDB0A54DA396E6CF3BB839B43F74E02485A314095430
            5DED2E5FB8FA72E8DF9A3EDFAEAD5B57ABA65ECD5EB46FF1A293653D578BFA9E
            CD212FBA377FD1AD790397E60D9C20160DBC5E7CC102593C6F666B6BEEED60E7
            15F54D56C903629A9678053871A35005907543BB519844B3ACD49210C0AB2306
            8ABC213A7BF69CC6AF732BEBF6ADCC7DDEEE3B60EAA479EB376E39B0E3C4B1DD
            670FEE3A71A1F00A2DB760014B20112276357484259A39BFD811235A98DBDA37
            EA141D9D0BE7953317821D5EEE60D755E314D1D25A63D3D8B54FF84B9B7FDE4E
            41990F7134C2DC004D0C725ACFE1396BD2DC664DEC3C9B74F9E69D18382F5E38
            1F1CD8CDC3C2D7BDA1E6DD3F7EBA64DE4FDBD6EF3DB2E7C2E97D574EECBD7470
            7BE1C9C3E7B5A5888852502FC18A80390375431E705EB978E5AD9707BCF03BCF
            1E416FAC58B8B1F0E885137BCF1CDD597874CFF9237BCE1FDD7BF6C8DEB347F7
            9C39BA07963347765FDABE75DF9AFC0D3143B2FC3D7ABB59FA37AFE7316DF21C
            A403A0C8F25734A8FCC6207B2983C98A0C438B8CC73969A351F9CA7C23F0FAF5
            EB1D1D3B3834F17DADFBDB974E884511FF14E0C9536C9DD18A8846E3993E33CE
            012BAB460C8DB268686DF562605454160C97CF5E0C767CB99575B09F5BB8A64D
            849793AF6D0B27DF0EFEF3A62F1074200638C6B99CA29795E28C8E330FD13C7B
            CA9C26E656CE0D355FBE3D1CCE952BD7D8D878DB34F1F9FBEB1F5DBF4633BF21
            A84A55A55538FCD00A4DCBA9B694966B785D3A77E12FFD3E303373EE12F84AE1
            31FAD2A089481892EB66E1DDEC45BBC13F0C43C781855B0C0AAE00655A2B384A
            5D5187D10CD49E07971557A1D075C58A15F676EDEB99B90EFE2449B47645311A
            0B5E088BA146A7561A79942A8E1C544BFA8EBC18D582E78AAAE81131168DAC6D
            1A04C54467C370E1F4B9CECEAF3B35F10EF28D3CB4FBDCE06FA31D6C5CED2C9D
            DCADDB8CFA2EA5F8010D0BADB6A45C0BA64509C45C81FF674F9DD5A4B1857323
            FF41EF12CD8B17AFB6B10979CECC65D49044ECC4C123753228A5A595D896D35F
            20A716478FC1E1073463634EE5AEA82A177F77E6DAE5CB7FEEFB6F3333FB6E21
            AF9C3C720616149D843A28A6220A29EA48820E2CBEFC4E159A3B71A9B75B97C6
            2F34FBEEDBEFF9233B32B3B5708C6092F64469E6A45901D86E144C33EB500A0A
            D63A3AB46DDEB0CD9B91FF7E70B3FA75C95A80199F7A80A8345A26360A34B768
            D1C03F2A9A46F3C5C2F39D5DFEE0DCAC83AF6FC8F5ABB74B8BCB4645257B38B4
            7368D4D2FEC5D603FEF5256FCA2A2A4AB465A53447504B5249664D9ED1A48985
            6BE380417F1F06E7E24579B656C1CF9BB98F1A92808E018B80F8ABBD0CB9BA4C
            98EC14DB862B172EFFE9A50FCDCC9CBA06F63BBA9F9670C42CC52C068649A8D7
            52DE5888687B59229C147BFEE4151D5CBA367EA1F9B7DF7EC7C73C0A2B0826EF
            9A410DAA4F81ACA8EC4651E7B51960A721645F261B3879EAB497471B4FBB0EED
            ECBBBCFBC697CB16AFDFB163EF9E9D24FBF71DDCB367FF1EFCBFFFD0DE3D878E
            1C3A7DF5F2ED52FA8E1641975CE58811C39A37B2B27CD12F2A8668BE74F64227
            973F38356DDBC1DBFBE429B145AAAA9A3266762BDB20C7863E36CD5ABFF9FADB
            C7F92F898ACD3B0D6689E6E982667FA6F9A7C52B1DAC021A98790EFF3CEEC6F5
            3B776E965DBF72EFCAD5A25B37EF165D8714DFB85A7CEDCABD1BD7EEDF2E2ABD
            79F5C1CD6BF78BAEDEBB76F9D69D5B54C42BE7AFBED91FA3D9A167D02B8547F5
            DE06AF1DB13FE4B836D75836701CFCC3502D4D6B8CEA46360AD9570426C83ADB
            01955385C73F694B0E016C4E274F98E86CEDD8F805BBDF9BB95A356BE7E6DCDA
            D3A5B5A77B5B77F7366EEEAD5CDD5ABA7BB473776FDFB2A5AFAF4FD7375E7A7F
            7CD6CC33C7E99425A01D11351834633447C7D0A47DBEF07C4797D79D9BB5F3F6
            697FE6EC092A8E185EF98BB68406BC61D5A4A5934DAB9E5D227E5EBF554407D9
            684A6ACDD953673469DCDCD9DCE7CB7787C0B96CD13267EB0EAD5A740BF60CF3
            F7EDD1D1BF4F886F2F8D7F4F4D40B7C080D0C080F000BF087FDFB040FFC800FF
            D0200D2C3D357E3D7C7DBA740A093B7AE444D1F59BAFF6F9C77366AE5D7CFA2E
            9AF1D3DEEDBBB66FDDB165DBCE1D5B48B66FD9B16DEBCEEDDB76B3ECD8B677EB
            E67D4B97147C3530BA8D7337378B406B73AFB9731652F114503995507AD512AC
            16E8D18C248C42E9ABD455809DF7D81C4637A4ABD6AF2E183E28BA6FE7B7DC6C
            7C2D1AD9357CA1C5EF9F6BF69C59033392FA6666BF17D77AB836A9E7EA60D9AE
            B59BFFD21F57701A51312398E61162D2BE50783EC4E53597E6ED7D7DFCCEF29F
            8FD4FD15E713FBCFFDF9F5B71DACDC1DACBC7C5A77993F6385E0970A83EBDC29
            B39A35B1706BEC37E81F44F3D2058B41B3B7532F57F30EA2188DCDCC9A0AE545
            33B386E2E0270B8A47651362F6BBE71AAC5BBBA9E846519FF0BF59340CEAE0DA
            CDCDBA754B17CF962E6D5D1D5BBB3B7A7A3AB5C429D9D6CAD1D2C2C6A2B9B585
            85ADA5A5934573A7860D6D9F33B3317FCECDAA89D7B0AFB08DA01B25289AA866
            8D2DCFE0302AA8BC544E15EA3C69B35E13F87709501052B9E2543CA8B87EF676
            E1918B07F71EDFB1E5E0960D7B36ACDBB6AE604BC1DA4D7979EB962C5E3E7DDA
            9CA451D93D3ABEE26CE1E362E1ED68E3B563FB1EF03774F8300B736BAB060151
            62345F283CD7D1E535578B0E7E3E0167CF884F33D1F22B75A8EB57AE7CF9E920
            679BB676CD3A3859FA24C464DCBF2BBD863D67D2AC668D2D3C1A6BBE1693F6B2
            C52BECAC7CECCC357FEDF7AFD13953C666CF1C93356DF49869A373A78ECEC175
            DA98DCA990D13993C78E9D3A76ECB49CEC89B9B99373474F9C3163EEEDBBF7AE
            5FBFFE72DFF79AD70FEAE0D2CDCDB28D977DCBD6CE1D7CBD3AFA7B86F8B86BFC
            5A06F9B70DB2B576B4B0B4B1B0B0B1B270B6B0B0737468D9ABE75FE286646F5C
            BDADE40EAFCA2C0451C61AC161545079A99C2A3C669A3980B8C581D12C997451
            1F8E6B176EBFF3EAC72D6D821BBFE8306ECC74D03C62C4480B732BEB0601D1D2
            4EFB0CD31CE0ED77A1904673656549A5D843712EA5F71FA427E6BAD9F983E9A6
            E62E1FFCE3D3CB97E92FD2CD9F32BFB9B9956B43CDA07786C2B978F14A3BEB4E
            2F98790DFF3A16512966CD30F4BE78F9FC2B7DDF6FF8BB0E3D02DEF8E71F0776
            D3F4B06BE2EC6AD9A6BD5D271FE7CE7D3AFF6162D6ECBDDB8F9C3A71F6D0A123
            BBB7EF3FB0FF50E1E9F3B7AE154BBB3D8960166EA4DAC061545079A99C2A3C4E
            9AE5191B34EB02D3CE136662BDAAB85C8BC3128E2E5A9A691196CEA29538A2C0
            404E91C3C4B4B90E8D7C1A98D9A6A78C83256AC428D04CA3399AEE825D2C3CDB
            494CDAFEDEDEE70BE967C7F43C51DC192F4752E5F4C15560C6A41F3D1C02AC9A
            795A376DF987D7FE72AEF0E2B239AB9A35B4F568D8F19B77A31000072AAB1641
            2F9879447D37B2A28A8E00884DDD056520C13F540102AF72B848687EA21BABF0
            BE72E53CEFB44343DE3C75E0D2C5C24B635227F4EEFEAA7B0B9F160DDCDC6D7C
            7A7579FD8B81C3962E5873E32AFD8E4B02A58A86B88F03387429591DA4202643
            155EE554E1F18F66B1CDD60D658E2445251E842EEE25512861C6154DC7DDBCAA
            6A5CE25C4FCB8E8D9F77C94C9D00AFE8E891168DACAC1AFA8F88CA80EFA533E7
            BAB8FC3F9766ED7C7DBCCF9DE15F97F3030FEA4FE84AF2DDCDFC9F36740EEA6D
            DFBCBD93B567DF88D707BCF5B9BBBD8FD3F3815FBD4DF7B4172D5C61D5C2FBC5
            173C7EF82C5A573A71951CF80F02932825A54C1EF2FA70E5E2F9B7FA0D00CD5D
            825F39A5DB69DFBE7A67E9DC157FFFEB80562E7E58C4B1A8BBDA04BC14F6F751
            43320FECA6CFC209A0A0C51515A55C66218F0829391D544E151E27CD20981766
            A83814721D98C2CAB2AA4AEC393036A0945695432F15D4C2C27A49D5FD5B0F7E
            5EB7E5E5AE6F7B3B46B430F79A36916E0746470FB36C646DDB5013C5349F3E03
            9A5D9BB7F7F10E38735ADCCD0603E858225391238A408FB2E173FAE0F97FFCE9
            63BB16AE8E56AD5A5AF906B4EC616FA6F9EEBD51F0DAB16D9B8B733B77ABA0A0
            D6BDE6CF5E75BFE84155715525E602944408155827D2C0E60243C1E272EEF2DF
            FAD168EE16F2DAB123D4DBA4BB3150CAAA36AFDF113538F1F5DE7FB5ACEF04B2
            9D9BF9F8B5EDFDB7BF0ECC5FBDEECE4DFA2CAF1254F047822ABACAA9C2631ECD
            80CC34029F3F7F71E857711FBDFBE9971F7FF9C507DF0CFAD7375FFE0BCAF79F
            7DF8CDE71F7EF9F98041033F18F4F9875F0FFCE7D77F7BE59FDD8343DD1C3CDA
            D876766CAC71B2E8B067FB3EA43062F877160DADEC1B05C58A2D18D1ECFC9ABB
            A5AF77FB9042F1744B14089304E6ED324133445B59A1A5FBE4F444EBCED0EFA2
            9D6CDAFA3A770E691BE9F2BB4EDFBC3D12F692E23B3F7CF38393455BA706412E
            D6415D7C7BBCDDEFFD81EFFF80827DF601E4EB8128D587DF0CFCF0BBCF3EFC76
            E0075F7CF6E1D75F0CF8FEE3F7070DFB26A6E8EAAD9B976FFCB5CFBF7F67E6DC
            35F8E563474F5329AAB4588CC4A42FE1C2F10BF3262D1CF0D74FED9A6233EF60
            5EBFB5BDB54744CFDEE372A65EBC207DBB15106DF52850455739557838CD8F00
            661AB96EDCB8D1D9A1BD9959F346CF3BD637C3D1D9B6BE992DAE2F90D828C5CC
            CC4A9C67EAB5686ED32BFCE585F39696D349A932262AF6F9E7CCEBFDAE61625C
            0A12BC78E6522B67BF7ACF99FBFA6ACE9EA59BC9BAE7255AF13A0783B2A6B12D
            66DAB2D2B2CCB4D18E2D5A36ABE752CFACD9E703BE1361AAEEDDBC979B3EB693
            5F68FD179A9999BDF09C59C3DF9B59BF606627CA268B5DBDE76C9E376B52EF39
            8BFACF59FDCEAC71B3C6B6BB77ECBF79ADA87FF8AB6666CF8768BAF21FC8C262
            C14778A9BD75B877E77EC1EAF583BF8E69EDA679C1AC693DB3268D1A36F9E6CB
            EF8BEF4BDB0819A2E59E14F4689632D487E4A70FC9CF002098150E73EEFCB9A1
            DFC57DF4FEB79F7F346CE087833FFF68E817FF190619F8D1904F060C1EF8D1D0
            CFFE33ECB38F877DF1C9F02F07468F18923879E20CCC6C17CFD3DE985051B9ED
            E71D9F7EF0CD9703BFDABE851E4395DC2B1D9D31E15FEFFC273B3BE7F61DDADD
            70466865B12A4B10659420DC55F92B36BCFBC7FFFCE3AFFF39B85FFCB90431D6
            D1314E1E3D95BF626D6EE6C4EF07457DF69FC103FF3354259F7D3CF4B34F7EF8
            E25314F8BB01FFFA2A6A58FCE54B57CB4ACAA74F9AF5CE5BEFA626A5175D2F42
            2EA2E252DD81EAAC05B4A5DA7D3B0FE7A64FFEFCA3EFFFF3C1C045F316F3BD71
            2538CA13C263FE45248F63265BD2B1BC612EC3661B8AB8672C396529A3ABA289
            04D044D8AC6040639048CF32C8296D87B1BA4B8F77A4EC70959380AE0FE9FE49
            F9FDCAFBB7C4430591BAF27D23ACB8540C514295C088859E17E9328C4044E7AC
            503C2A39B2A78519D94849E9C07903D0E92840FF55556081475C8A2E79C91086
            3A408A660210F871D2CCEC2251E5BD30E1832B6F63948A2C5C6FAABAE4926C60
            423C90644F5CE889AFB44507B38A631B02E14A6D6D888A8A327A58CC3D090111
            573C6290D24147620E2470664A11A5E262087FDA6DD133093935D45B02E728C2
            55030B0AF5575485EB0D88F2FF4288844C02023F7E9A01A42BEBBC6A8AF7A2D1
            9399631A2318E6B498F1D0A6D12A78409362F88AE6903816ED881143EFE78941
            4DAD09D6B4F4CE9EA82F5558BE1A016DCD90238A247666148FB3A62318151105
            C271980637CAAC2BA12CC88C4A42CFC3E94526D85084722D4D2A082E58E70E27
            970710A94AA0C0C80B3161871FD7ABA6D29A0C91B64940E027B20543D2D4B7A5
            A91B4E32CAFD97156A2421A2F9C9C4C1985A28D4F0046A4BF4157A7F836EAE89
            5789C4C0E52CA07076DCD60C11510246338D276A6B8A2738463A827BF1D01B41
            841887488C32A592A22BC0515E5A5E5E4203145D10E7461155C9B10A541F5A7B
            30692047AA2C755C516C0EC050391F2F9EE04E9BAF6294104445E80AF6215094
            22BC288AACE02AECF80732308E61C48829A3DB683416A5C0BA90044A4507C944
            A0E8625241448A4B6D4DB125A3B8B20557A93CB208233A0AFFFC02A9712C2DA5
            04CA304FE90A202B2A88E2C04B5B217E1F4B248B80FA85543B1F2FEA46B35C14
            54890A6F42C974C1D4C24CB3974E477066022283C8150A85A1C0605DB298044E
            977212EC0A8593026486B82BC029E5220BA8C4AE4FF4069A2D441C24023F145A
            9A5764200531E548B9484EAC18D4B3119DFA071429B4C9E07C59917506B20024
            872EA4DA5259F9FF01EEF83394229EDE560000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 52.913420000000000000
          Width = 132.283464570000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 321.260050000000000000
          Top = 52.913420000000000000
          Width = 124.724424090000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'REVISI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 566.929499999999900000
          Top = 52.913420000000000000
          Width = 170.078727950000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA DE ACTUALIZACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 188.976500000000000000
          Width = 548.031849999999900000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SINER Servicios de Ingenieria Especializada S.A. de C.V.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 548.031849999999900000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            '"SOLICITUD DE PERSONAL POR PROYECTO"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 188.976500000000000000
          Top = 68.031540000000010000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'S/C')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 321.260050000000000000
          Top = 68.031540000000010000
          Width = 124.724424090000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 566.929499999999900000
          Top = 68.031540000000010000
          Width = 170.078727950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N/A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 68.031540000000010000
          Width = 188.976414570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECURSOS HUMANOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 445.984540000000000000
          Top = 52.913420000000000000
          Width = 120.944894090000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA(S)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 445.984540000000000000
          Top = 68.031540000000010000
          Width = 120.944894090000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 88.708720000000000000
          Width = 737.763779527559200000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clBlack
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBPlazaDetalle."IdPlaza"'
        object Memo35: TfrxMemoView
          Width = 49.133890000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PARTIDA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 49.133890000000000000
          Width = 56.692950000000010000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 105.826840000000000000
          Width = 219.212740000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CATEGOR'#205'A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 325.039580000000000000
          Width = 120.944881890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA DE ASIGNACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 445.984540000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TERMINO DE CONTRATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 566.929499999999900000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBPlaza: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBPlaza'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPlaza=IdPlaza'
      'IdDepartamento=IdDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'CodigoPlaza=CodigoPlaza'
      'Fecha=Fecha'
      'IdUsuario=IdUsuario'
      'sNombre=sNombre'
      'IdSolicitante=IdSolicitante'
      'NombreSolicitante=NombreSolicitante'
      'IdOrganizacionHist=IdOrganizacionHist'
      'NombreOrganizacionSol=NombreOrganizacionSol'
      'IdDepartamentoHist=IdDepartamentoHist'
      'TituloDepartamentoSol=TituloDepartamentoSol'
      'IdCargoHist=IdCargoHist'
      'TituloCargoSol=TituloCargoSol'
      'Observaciones=Observaciones'
      'Activo=Activo')
    DataSet = cdPlaza
    BCDToCurrency = False
    Left = 248
    Top = 280
  end
  object frxDBPlazaDetalle: TfrxDBDataset
    UserName = 'frxDBPlazaDetalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPlazaDetalle=IdPlazaDetalle'
      'IdPlaza=IdPlaza'
      'IdDepartamento=IdDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdOrganizacion=IdOrganizacion'
      'NombreOrganizacion=NombreOrganizacion'
      'CodigoPlaza=CodigoPlaza'
      'IdSolicitante=IdSolicitante'
      'NombreCompleto=NombreCompleto'
      'NombreOrganizacion=NombreOrganizacion'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'Cantidad=Cantidad'
      'Fecha=Fecha'
      'FechaRequerido=FechaRequerido'
      'MotivoCancelacion=MotivoCancelacion'
      'IdGrupo=IdGrupo'
      'Activo=Activo'
      'ExperienciaMinima=ExperienciaMinima'
      'UnidadExperiencia=UnidadExperiencia'
      'strUnidadExperiencia=strUnidadExperiencia')
    DataSet = cdPlazaDetalle
    BCDToCurrency = False
    Left = 328
    Top = 280
  end
  object cdBuscarPlaza: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 56
    Top = 168
  end
end
