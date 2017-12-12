object FrmInasistencias: TFrmInasistencias
  Left = 0
  Top = 0
  Caption = 'Inasistencias'
  ClientHeight = 414
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 142
    Align = alTop
    TabOrder = 0
    object JvLabel7: TJvLabel
      Left = 14
      Top = 120
      Width = 41
      Height = 13
      Caption = 'Nombre:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel8: TJvLabel
      Left = 31
      Top = 96
      Width = 24
      Height = 13
      Caption = 'Tipo:'
      Transparent = True
      HotTrack = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 803
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 484
        Top = 0
        Width = 319
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object JvLabel1: TJvLabel
          Left = 19
          Top = 10
          Width = 34
          Height = 13
          Caption = 'Desde:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel2: TJvLabel
          Left = 173
          Top = 10
          Width = 32
          Height = 13
          Caption = 'Hasta:'
          Transparent = True
          HotTrack = False
        end
        object Desde: TcxDateEdit
          Left = 59
          Top = 5
          TabOrder = 0
          Width = 94
        end
        object Hasta: TcxDateEdit
          Left = 211
          Top = 5
          TabOrder = 1
          Width = 94
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 484
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 484
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 56
            Height = 40
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object JvLabel3: TJvLabel
              Left = 9
              Top = 8
              Width = 45
              Height = 13
              Caption = 'Empresa:'
              Transparent = True
              HotTrack = False
            end
          end
          object Panel6: TPanel
            Left = 56
            Top = 0
            Width = 428
            Height = 40
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 5
            Padding.Top = 5
            TabOrder = 1
            OnResize = Panel6Resize
            object NombreOrganizacion: TComboBox
              Left = 5
              Top = 5
              Width = 423
              Height = 21
              Align = alClient
              Style = csDropDownList
              TabOrder = 0
              OnChange = NombreOrganizacionChange
            end
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 27
      Width = 803
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel4: TJvLabel
        Left = 6
        Top = 3
        Width = 48
        Height = 13
        Caption = 'Localidad:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel5: TJvLabel
        Left = 7
        Top = 25
        Width = 47
        Height = 13
        Caption = 'Proyecto:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel6: TJvLabel
        Left = 21
        Top = 47
        Width = 33
        Height = 13
        Caption = 'Depto:'
        Transparent = True
        HotTrack = False
      end
      object NombreLocalidad: TComboBox
        Left = 61
        Top = 1
        Width = 423
        Height = 21
        Style = csDropDownList
        TabOrder = 0
      end
      object TituloProyecto: TComboBox
        Left = 61
        Top = 23
        Width = 423
        Height = 21
        Style = csDropDownList
        TabOrder = 1
      end
      object TituloDepartamento: TComboBox
        Left = 61
        Top = 45
        Width = 423
        Height = 21
        Style = csDropDownList
        TabOrder = 2
      end
    end
    object NombreBuscar: TEdit
      Left = 62
      Top = 117
      Width = 423
      Height = 21
      TabOrder = 2
    end
    object btnProceder: TAdvGlowButton
      Left = 491
      Top = 95
      Width = 100
      Height = 43
      Caption = '&Proceder'
      ImageIndex = 6
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
    object TipoInasistencia: TComboBox
      Left = 62
      Top = 94
      Width = 423
      Height = 21
      Style = csDropDownList
      TabOrder = 4
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 373
    Width = 805
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object btnAgregar: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
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
      Left = 207
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Borrar'
      ImageIndex = 4
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
    object btnCerrar: TAdvGlowButton
      Left = 698
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Cancel = True
      Caption = '&Cerrar'
      ImageIndex = 3
      Images = connection.IconosBarra
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnCerrarClick
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
    object Panel10: TPanel
      Left = 664
      Top = 5
      Width = 34
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
    end
    object btnImprimir: TAdvGlowButton
      Left = 564
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = '&Imprimir'
      ImageIndex = 5
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 142
    Width = 805
    Height = 231
    Align = alClient
    TabOrder = 2
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = tvDatosCellDblClick
      DataController.DataSource = dsInasistencias
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
      object NombreCompleto: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombreCompleto'
        Visible = False
        GroupIndex = 0
      end
      object Titulo: TcxGridDBColumn
        Caption = 'Concepto'
        DataBinding.FieldName = 'Titulo'
      end
      object Inicio: TcxGridDBColumn
        DataBinding.FieldName = 'Inicio'
      end
      object Termino: TcxGridDBColumn
        DataBinding.FieldName = 'Termino'
      end
      object FechaDescuento: TcxGridDBColumn
        Caption = 'Fecha Descuento'
        DataBinding.FieldName = 'FechaDescuento'
      end
      object Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object pnlEdit: TPanel
    Left = 271
    Top = 30
    Width = 458
    Height = 337
    TabOrder = 3
    Visible = False
    object eNombreCompleto: TDBText
      Left = 16
      Top = 17
      Width = 152
      Height = 19
      AutoSize = True
      DataField = 'NombreCompleto'
      DataSource = dsBuscarPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eNombreOrganizacion: TDBText
      Left = 90
      Top = 47
      Width = 124
      Height = 13
      AutoSize = True
      DataField = 'NombreOrganizacion'
      DataSource = dsBuscarPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel9: TJvLabel
      Left = 37
      Top = 47
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel10: TJvLabel
      Left = 9
      Top = 66
      Width = 73
      Height = 13
      Caption = 'Departamento:'
      Transparent = True
      HotTrack = False
    end
    object eTituloDepartamento: TDBText
      Left = 90
      Top = 66
      Width = 122
      Height = 13
      AutoSize = True
      DataField = 'TituloDepartamento'
      DataSource = dsBuscarPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel11: TJvLabel
      Left = 34
      Top = 85
      Width = 48
      Height = 13
      Caption = 'Localidad:'
      Transparent = True
      HotTrack = False
    end
    object eNombreLocalidad: TDBText
      Left = 90
      Top = 85
      Width = 104
      Height = 13
      AutoSize = True
      DataField = 'NombreLocalidad'
      DataSource = dsBuscarPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel12: TJvLabel
      Left = 35
      Top = 104
      Width = 47
      Height = 13
      Caption = 'Proyecto:'
      Transparent = True
      HotTrack = False
    end
    object eTituloProyecto: TDBText
      Left = 90
      Top = 104
      Width = 90
      Height = 13
      AutoSize = True
      DataField = 'TituloProyecto'
      DataSource = dsBuscarPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel17: TJvLabel
      Left = 45
      Top = 123
      Width = 37
      Height = 13
      Caption = 'Puesto:'
      Transparent = True
      HotTrack = False
    end
    object eTituloCargo: TDBText
      Left = 90
      Top = 123
      Width = 72
      Height = 13
      AutoSize = True
      DataField = 'TituloCargo'
      DataSource = dsBuscarPersonal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel11: TPanel
      Left = 1
      Top = 295
      Width = 456
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object btnCancelarEdit: TAdvGlowButton
        Left = 349
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
      object btnAceptarEdit: TAdvGlowButton
        Left = 249
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
    object GroupBox1: TGroupBox
      Left = 1
      Top = 160
      Width = 456
      Height = 135
      Align = alBottom
      Caption = 'Inasistencia'
      TabOrder = 1
      object JvLabel13: TJvLabel
        Left = 15
        Top = 52
        Width = 34
        Height = 13
        Caption = 'Desde:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel14: TJvLabel
        Left = 203
        Top = 52
        Width = 32
        Height = 13
        Caption = 'Hasta:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel15: TJvLabel
        Left = 25
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Tipo:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel16: TJvLabel
        Left = 13
        Top = 80
        Width = 36
        Height = 13
        Caption = 'Aplicar:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel18: TJvLabel
        Left = 6
        Top = 108
        Width = 56
        Height = 13
        Caption = 'Referencia:'
        Transparent = True
        HotTrack = False
      end
      object IdTipoInasistencia: TDBLookupComboBox
        Left = 57
        Top = 23
        Width = 307
        Height = 21
        DataField = 'IdTipoInasistencia'
        DataSource = dsInasistencias
        KeyField = 'IdTipoInasistencia'
        ListField = 'Titulo'
        ListSource = dsTipoInasistencia
        TabOrder = 0
      end
      object eReferencia: TDBEdit
        Left = 69
        Top = 105
        Width = 374
        Height = 21
        DataField = 'Referencia'
        DataSource = dsInasistencias
        TabOrder = 1
      end
      object eInicio: TcxDBDateEdit
        Left = 55
        Top = 49
        DataBinding.DataField = 'Inicio'
        DataBinding.DataSource = dsInasistencias
        TabOrder = 2
        Width = 90
      end
      object eTermino: TcxDBDateEdit
        Left = 241
        Top = 50
        DataBinding.DataField = 'Termino'
        DataBinding.DataSource = dsInasistencias
        TabOrder = 3
        Width = 90
      end
      object eFechaDescuento: TcxDBDateEdit
        Left = 55
        Top = 77
        DataBinding.DataField = 'FechaDescuento'
        DataBinding.DataSource = dsInasistencias
        TabOrder = 4
        Width = 90
      end
    end
  end
  object cdInasistencias: TZQuery
    Connection = connection.zConnection
    AfterOpen = cdInasistenciasAfterOpen
    AfterClose = cdInasistenciasAfterClose
    AfterRefresh = cdInasistenciasAfterRefresh
    AfterPost = cdInasistenciasAfterPost
    Params = <>
    Left = 112
    Top = 256
  end
  object dsInasistencias: TDataSource
    DataSet = cdInasistencias
    Left = 208
    Top = 248
  end
  object cdTipoInasistencia: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 288
    Top = 328
  end
  object cdOrganizacion: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 432
    Top = 320
  end
  object cdDepartamento: TZReadOnlyQuery
    Connection = connection.zConnection
    AfterRefresh = cdDepartamentoAfterRefresh
    Params = <>
    Left = 552
    Top = 320
  end
  object cdProyecto: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 664
    Top = 144
  end
  object cdLocalidad: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 664
    Top = 200
  end
  object frxDBInasistencia: TfrxDBDataset
    UserName = 'frxDBInasistencia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdExcepcion=IdExcepcion'
      'IdPersonal=IdPersonal'
      'IdTipoInasistencia=IdTipoInasistencia'
      'Inicio=Inicio'
      'Termino=Termino'
      'Referencia=Referencia'
      'FechaDescuento=FechaDescuento'
      'Nombres=Nombres'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'NombreCompleto=NombreCompleto'
      'Titulo=Titulo'
      'Descripcion=Descripcion'
      'DisminuyeAguinaldo=DisminuyeAguinaldo'
      'DisminuyeVacaciones=DisminuyeVacaciones'
      'IdPersonalIMSS=IdPersonalIMSS'
      'IdDepartamento=IdDepartamento'
      'IdOrganizacion=IdOrganizacion'
      'IdLocalidad=IdLocalidad'
      'IdProyecto=IdProyecto'
      'IdCargo=IdCargo'
      'TituloCargo=TituloCargo')
    BCDToCurrency = False
    Left = 112
    Top = 184
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    Left = 32
    Top = 240
  end
  object dsBuscarPersonal: TDataSource
    Left = 192
    Top = 312
  end
  object dsTipoInasistencia: TDataSource
    DataSet = cdTipoInasistencia
    Left = 544
    Top = 128
  end
  object cdBuscarInasistencia: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 584
    Top = 56
  end
end
