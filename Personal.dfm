object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Width = 1225
  Height = 518
  AutoScroll = True
  Caption = 'Control de documentos de Personal'
  Color = clWindow
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mInteligent: TdxRibbon
    Left = 0
    Top = 0
    Width = 1209
    Height = 159
    ApplicationButton.Menu = dxBarApplicationMenu1
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object rtArchivo: TdxRibbonTab
      Active = True
      Caption = 'Archivo'
      Groups = <
        item
          ToolbarName = 'bmPersonal'
        end
        item
          ToolbarName = 'bmReportes'
        end
        item
          ToolbarName = 'bmExcel'
        end
        item
          ToolbarName = 'bmOpciones'
        end
        item
          ToolbarName = 'bmOpcionesVacaciones'
        end
        item
          ToolbarName = 'bmHistorialContratacion'
        end>
      Index = 0
    end
    object rtRH: TdxRibbonTab
      Caption = 'Recursos Humanos'
      Groups = <
        item
          ToolbarName = 'bmNivelOrganizacional'
        end
        item
          ToolbarName = 'bmActividades'
        end
        item
          ToolbarName = 'bmPendientes'
        end
        item
          ToolbarName = 'barVarios'
        end>
      Index = 1
    end
    object rtNomina: TdxRibbonTab
      Caption = 'N'#243'mina'
      Groups = <
        item
          ToolbarName = 'bmOpcionesNomina'
        end
        item
          ToolbarName = 'bmCalculos'
        end
        item
          ToolbarName = 'bmReportesNomina'
        end
        item
          ToolbarName = 'bmOpcionesPersonal'
        end>
      Index = 2
    end
    object rtPrestaciones: TdxRibbonTab
      Caption = 'Prestaciones'
      Groups = <
        item
          ToolbarName = 'bmAnual'
        end>
      Index = 3
    end
    object rtCatalogo: TdxRibbonTab
      Caption = 'Cat'#225'logo'
      Groups = <
        item
          ToolbarName = 'bmLocalizacion'
        end
        item
          ToolbarName = 'bmGenerales'
        end
        item
          ToolbarName = 'bmRetenciones'
        end
        item
          ToolbarName = 'bmTablasPrestaciones'
        end
        item
          ToolbarName = 'bmCuentasCorreo'
        end>
      Index = 4
    end
    object rtOrganizacion: TdxRibbonTab
      Caption = 'Organizaci'#243'n'
      Groups = <
        item
          ToolbarName = 'bmOpcionesNivelO'
        end
        item
          ToolbarName = 'bmPlazas'
        end>
      Index = 5
    end
  end
  object status: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 1209
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Usuario'
        Width = 50
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Server'
        Width = 50
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'DataBase'
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Empresa'
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Convenio'
        Width = 60
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end>
    Ribbon = mInteligent
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #196#172#200#207)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = connection.Imagenes16
    ImageOptions.LargeImages = connection.Imagenes32
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 768
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmPersonal: TdxBar
      Caption = 'Personal'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1023
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNuevaPersona'
        end
        item
          Visible = True
          ItemName = 'btnAbrirPersonal'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmReportes: TdxBar
      Caption = 'Reportes'
      CaptionButtons = <>
      DockedLeft = 128
      DockedTop = 0
      FloatLeft = 1023
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnConsultaMovimientos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnHistorialContratacion'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmExcel: TdxBar
      Caption = 'Excel'
      CaptionButtons = <>
      DockedLeft = 316
      DockedTop = 0
      FloatLeft = 1023
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnListadoAltas'
        end
        item
          Visible = True
          ItemName = 'btnListadoBajas'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmOpciones: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 433
      DockedTop = 0
      FloatLeft = 1023
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGenerarCredencial'
        end
        item
          Visible = True
          ItemName = 'btnCartaCOnfidencialidad'
        end
        item
          Visible = True
          ItemName = 'btnDescripcionPuesto'
        end
        item
          Visible = True
          ItemName = 'btnCartasRecomendacion'
        end
        item
          Visible = True
          ItemName = 'btnCartaDocumentos'
        end
        item
          Visible = True
          ItemName = 'btnNuevoPermisoAusencia'
        end
        item
          Visible = True
          ItemName = 'btnVerPermisos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmOpcionesVacaciones: TdxBar
      Caption = 'Opciones Vacaciones'
      CaptionButtons = <>
      DockedLeft = 844
      DockedTop = 0
      FloatLeft = 1023
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnImprimeCarta'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmHistorialContratacion: TdxBar
      Caption = 'Historial Contrataci'#243'n'
      CaptionButtons = <>
      DockedLeft = 965
      DockedTop = 0
      FloatLeft = 1023
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEliminarUltimoMovimiento'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmNivelOrganizacional: TdxBar
      Caption = 'Nivel Organizacional'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOrganigrama'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmActividades: TdxBar
      Caption = 'Catalogo Actividades'
      CaptionButtons = <>
      DockedLeft = 118
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSoftware'
        end
        item
          Visible = True
          ItemName = 'btnEscolaridad'
        end
        item
          Visible = True
          ItemName = 'btnCompetenciasNO'
        end
        item
          Visible = True
          ItemName = 'btnRecursos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmPendientes: TdxBar
      Caption = 'Actividades'
      CaptionButtons = <>
      DockedLeft = 304
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDescripAct'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAgregarActiv'
        end
        item
          Visible = True
          ItemName = 'btnEditarActiv'
        end
        item
          Visible = True
          ItemName = 'btnBorrarActiv'
        end
        item
          Visible = True
          ItemName = 'btnRefreshActiv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnGrabarActiv'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmOpcionesNomina: TdxBar
      Caption = 'Opciones de N'#243'mina'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNuevaNomina'
        end
        item
          Visible = True
          ItemName = 'btnAbrirNomina'
        end
        item
          Visible = True
          ItemName = 'btnGuardarNomina'
        end
        item
          Visible = True
          ItemName = 'btnCancelarNomina'
        end
        item
          Visible = True
          ItemName = 'btnEliminarNomina'
        end
        item
          Visible = True
          ItemName = 'btnCerrarNomina'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmCalculos: TdxBar
      Caption = 'C'#225'lculos'
      CaptionButtons = <>
      DockedLeft = 305
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAgregarPersonal'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCalcularTodos'
        end
        item
          Visible = True
          ItemName = 'btnCalcularSel'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmReportesNomina: TdxBar
      Caption = 'Reportes de N'#243'mina'
      CaptionButtons = <>
      DockedLeft = 533
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnListaRaya'
        end
        item
          Visible = True
          ItemName = 'btnRecibosNomina'
        end
        item
          Visible = True
          ItemName = 'btnCartaVacaciones'
        end
        item
          Visible = True
          ItemName = 'btnFiniquitoWord'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmOpcionesPersonal: TdxBar
      Caption = 'Opciones de Personal'
      CaptionButtons = <>
      DockedLeft = 811
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnInasistencias'
        end
        item
          Visible = True
          ItemName = 'btnRetardos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barVarios: TdxBar
      Caption = 'Varios'
      CaptionButtons = <>
      DockedLeft = 742
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCorreo'
        end
        item
          Visible = True
          ItemName = 'btnConsultaTiempos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmAnual: TdxBar
      Caption = 'Vacaciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnConsultaVacaciones'
        end
        item
          Visible = True
          ItemName = 'btnVacacionesPendientes'
        end
        item
          Visible = True
          ItemName = 'btnPagarVacaciones'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmLocalizacion: TdxBar
      Caption = 'Localizaci'#243'n'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPais'
        end
        item
          Visible = True
          ItemName = 'btnEstado'
        end
        item
          Visible = True
          ItemName = 'btnCiudad'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmGenerales: TdxBar
      Caption = 'Generales'
      CaptionButtons = <>
      DockedLeft = 178
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEmpresas'
        end
        item
          Visible = True
          ItemName = 'btnDepartamentos'
        end
        item
          Visible = True
          ItemName = 'btnUbicacion'
        end
        item
          Visible = True
          ItemName = 'btnProyectos'
        end
        item
          Visible = True
          ItemName = 'btnPuestosTrabajo'
        end
        item
          Visible = True
          ItemName = 'btnBancos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmRetenciones: TdxBar
      Caption = 'Tablas Retenciones'
      CaptionButtons = <>
      DockedLeft = 596
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnTablaIMSS'
        end
        item
          Visible = True
          ItemName = 'btnISPT'
        end
        item
          Visible = True
          ItemName = 'btnSubsidio'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmTablasPrestaciones: TdxBar
      Caption = 'Tablas Prestaciones'
      CaptionButtons = <>
      DockedLeft = 756
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnTablaVacaciones'
        end
        item
          Visible = True
          ItemName = 'btnAguinaldo'
        end
        item
          Visible = True
          ItemName = 'btnTipoInasistencia'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmCuentasCorreo: TdxBar
      Caption = 'Cuentas Correo'
      CaptionButtons = <>
      DockedLeft = 988
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = connection.IconosBarra
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCorreosRegistrados'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmOpcionesNivelO: TdxBar
      Caption = 'Opciones Nivel Organizacional'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAgregarDepartamento'
        end
        item
          Visible = True
          ItemName = 'btnEditarDepartamento'
        end
        item
          Visible = True
          ItemName = 'btnEliminarDepartamento'
        end
        item
          Visible = True
          ItemName = 'btnRefreshDepartamento'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmPlazas: TdxBar
      Caption = 'Opciones de Plazas'
      CaptionButtons = <>
      DockedLeft = 216
      DockedTop = 0
      FloatLeft = 1243
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnConsultarDetallePlazas'
        end
        item
          Visible = True
          ItemName = 'btnAsignarPlazaVacante'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnNuevaPersona: TdxBarLargeButton
      Caption = 'Nueva Persona'
      Category = 0
      Hint = 'Nueva Persona'
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btnNuevaPersonaClick
    end
    object btnAbrirPersonal: TdxBarLargeButton
      Caption = 'Abrir Personal'
      Category = 0
      Hint = 'Abrir Personal'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = btnAbrirPersonalClick
    end
    object btnConsultaMovimientos: TdxBarLargeButton
      Caption = 'Consulta Movimientos'
      Category = 0
      Hint = 'Consulta Movimientos'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnConsultaMovimientosClick
    end
    object btnHistorialContratacion: TdxBarLargeButton
      Caption = 'Historial Contrataci'#243'n'
      Category = 0
      Hint = 'Historial Contrataci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 11
      OnClick = btnHistorialContratacionClick
    end
    object btnListadoAltas: TdxBarLargeButton
      Caption = 'Listado Altas'
      Category = 0
      Hint = 'Listado Altas'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnListadoAltasClick
    end
    object btnListadoBajas: TdxBarLargeButton
      Caption = 'Listado Bajas'
      Category = 0
      Hint = 'Listado Bajas'
      Visible = ivAlways
      LargeImageIndex = 23
      OnClick = btnListadoBajasClick
    end
    object btnGenerarCredencial: TdxBarLargeButton
      Caption = 'Generar Credencial'
      Category = 0
      Hint = 'Generar Credencial'
      Visible = ivAlways
      LargeImageIndex = 14
      OnClick = btnGenerarCredencialClick
    end
    object btnCartaCOnfidencialidad: TdxBarLargeButton
      Caption = 'Carta de Confidenciabilidad'
      Category = 0
      Hint = 'Carta de Confidenciabilidad'
      Visible = ivAlways
      LargeImageIndex = 55
      OnClick = btnCartaCOnfidencialidadClick
    end
    object btnDescripcionPuesto: TdxBarLargeButton
      Caption = 'Descripci'#243'n de Puesto'
      Category = 0
      Hint = 'Descripci'#243'n de Puesto'
      Visible = ivAlways
      LargeImageIndex = 73
      OnClick = btnDescripcionPuestoClick
    end
    object btnCartasRecomendacion: TdxBarSubItem
      Caption = 'Cartas de Recomendaci'#243'n'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 12
      Images = connection.IconosBarra
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnRecomendacion1'
        end
        item
          Visible = True
          ItemName = 'btnRecomendacion2'
        end>
    end
    object btn: TdxBarLargeButton
      Caption = #208#194#189#168#176#180#197#165
      Category = 0
      Hint = #208#194#189#168#176#180#197#165
      Visible = ivAlways
    end
    object btnRecomendacion1: TdxBarButton
      Caption = 'Recomendaci'#243'n #1'
      Category = 0
      Hint = 'Recomendaci'#243'n #1'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btnRecomendacion1Click
    end
    object btnRecomendacion2: TdxBarButton
      Caption = 'Recomendaci'#243'n #2'
      Category = 0
      Hint = 'Recomendaci'#243'n #2'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btnRecomendacion2Click
    end
    object btnCartaDocumentos: TdxBarLargeButton
      Caption = 'Carta Documentos'
      Category = 0
      Hint = 'Carta Documentos'
      Visible = ivAlways
      LargeImageIndex = 66
      OnClick = btnCartaDocumentosClick
      SyncImageIndex = False
      ImageIndex = 66
    end
    object btnNuevoPermisoAusencia: TdxBarLargeButton
      Caption = 'Nuevo Permiso de Ausencia'
      Category = 0
      Hint = 'Nuevo Permiso de Ausencia'
      Visible = ivAlways
      OnClick = btnNuevoPermisoAusenciaClick
    end
    object btnVerPermisos: TdxBarLargeButton
      Caption = 'Ver Permisos'
      Category = 0
      Hint = 'Ver Permisos'
      Visible = ivAlways
      OnClick = btnVerPermisosClick
    end
    object btnImprimeCarta: TdxBarLargeButton
      Caption = 'Imprime Carta'
      Category = 0
      Hint = 'Imprime Carta'
      Visible = ivAlways
      LargeImageIndex = 56
      OnClick = btnImprimeCartaClick
    end
    object btnEliminarUltimoMovimiento: TdxBarLargeButton
      Caption = 'Eliminar '#218'ltimo Movimiento'
      Category = 0
      Hint = 'Eliminar '#218'ltimo Movimiento'
      Visible = ivAlways
    end
    object btnOrganigrama: TdxBarLargeButton
      Caption = '&Organigrama'
      Category = 0
      Hint = 'Organigrama'
      Visible = ivAlways
      LargeImageIndex = 9
      OnClick = btnOrganigramaClick
    end
    object btnSoftware: TdxBarButton
      Caption = '&Software'
      Category = 0
      Hint = 'Software'
      Visible = ivAlways
      ImageIndex = 63
      LargeImageIndex = 63
      OnClick = btnSoftwareClick
    end
    object btnEscolaridad: TdxBarButton
      Caption = '&Escolaridad'
      Category = 0
      Hint = 'Escolaridad'
      Visible = ivAlways
      ImageIndex = 64
      LargeImageIndex = 64
      OnClick = btnEscolaridadClick
    end
    object btnCompetenciasNO: TdxBarButton
      Caption = '&Competencias'
      Category = 0
      Hint = 'Competencias'
      Visible = ivAlways
      ImageIndex = 61
      LargeImageIndex = 61
      OnClick = btnCompetenciasNOClick
    end
    object btnRecursos: TdxBarButton
      Caption = '&Recursos'
      Category = 0
      Hint = 'Recursos'
      Visible = ivAlways
      ImageIndex = 62
      LargeImageIndex = 62
      OnClick = btnRecursosClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #208#194#189#168#215#211#207#238#196#191
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnDescripAct: TdxBarLargeButton
      Caption = 'Descripci'#243'n &Actividades'
      Category = 0
      Hint = 'Descripci'#243'n Actividades'
      Visible = ivAlways
      LargeImageIndex = 65
    end
    object btnAgregarActiv: TdxBarButton
      Caption = 'Agregar Descripci'#243'n'
      Category = 0
      Hint = 'Agregar Descripci'#243'n'
      Visible = ivAlways
      ImageIndex = 38
      LargeImageIndex = 38
    end
    object btnEditarActiv: TdxBarButton
      Caption = '&Editar descripci'#243'n'
      Category = 0
      Hint = 'Editar descripci'#243'n'
      Visible = ivAlways
      ImageIndex = 37
    end
    object btnBorrarActiv: TdxBarButton
      Caption = '&Borrar descripci'#243'n'
      Category = 0
      Hint = 'Borrar descripci'#243'n'
      Visible = ivAlways
      ImageIndex = 40
    end
    object btnRefreshActiv: TdxBarButton
      Caption = '&Leer descripciones'
      Category = 0
      Hint = 'Leer descripciones'
      Visible = ivAlways
      ImageIndex = 68
      LargeImageIndex = 68
    end
    object btnGrabarActiv: TdxBarLargeButton
      Caption = '&Grabar descripci'#243'n'
      Category = 0
      Hint = 'Grabar descripci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 67
      SyncImageIndex = False
      ImageIndex = 67
    end
    object btnCorreo: TdxBarLargeButton
      Caption = 'Enviar eMail'
      Category = 0
      Hint = 'Enviar eMail'
      Visible = ivAlways
      OnClick = btnCorreoClick
    end
    object btnConsultaTiempos: TdxBarLargeButton
      Caption = 'Consulta Tiempos'
      Category = 0
      Hint = 'Consulta Tiempos'
      Visible = ivAlways
      LargeImageIndex = 74
      OnClick = btnConsultaTiemposClick
    end
    object btnNuevaNomina: TdxBarLargeButton
      Caption = '&Nueva N'#243'mina'
      Category = 0
      Hint = 'Nueva N'#243'mina'
      Visible = ivAlways
      LargeImageIndex = 38
    end
    object btnAbrirNomina: TdxBarLargeButton
      Caption = '&Abrir N'#243'mina'
      Category = 0
      Hint = 'Abrir N'#243'mina'
      Visible = ivAlways
      LargeImageIndex = 37
    end
    object btnGuardarNomina: TdxBarLargeButton
      Caption = '&Guardar N'#243'mina'
      Category = 0
      Hint = 'Guardar N'#243'mina'
      Visible = ivAlways
      LargeImageIndex = 39
      SyncImageIndex = False
      ImageIndex = 39
    end
    object btnCancelarNomina: TdxBarButton
      Caption = '&Cancelar N'#243'mina'
      Category = 0
      Hint = 'Cancelar N'#243'mina'
      Visible = ivAlways
      ImageIndex = 68
      LargeImageIndex = 39
    end
    object btnEliminarNomina: TdxBarButton
      Caption = '&Eliminar N'#243'mina'
      Category = 0
      Hint = 'Eliminar N'#243'mina'
      Visible = ivAlways
      ImageIndex = 40
      LargeImageIndex = 40
      OnClick = btnEliminarNominaClick
    end
    object btnCerrarNomina: TdxBarButton
      Caption = '&Cerrar N'#243'mina'
      Category = 0
      Hint = 'Cerrar N'#243'mina'
      Visible = ivAlways
      ImageIndex = 41
      LargeImageIndex = 41
    end
    object btnAgregarPersonal: TdxBarLargeButton
      Caption = '&Agregar Personal'
      Category = 0
      Hint = 'Agregar Personal'
      Visible = ivAlways
      LargeImageIndex = 48
      OnClick = btnAgregarPersonalClick
    end
    object btnCalcularTodos: TdxBarLargeButton
      Caption = 'Calcular Todos'
      Category = 0
      Hint = 'Calcular Todos'
      Visible = ivAlways
      LargeImageIndex = 47
      OnClick = btnCalcularTodosClick
    end
    object btnCalcularSel: TdxBarLargeButton
      Caption = 'Calcular Seleccionados'
      Category = 0
      Hint = 'Calcular Seleccionados'
      Visible = ivAlways
      LargeImageIndex = 46
      OnClick = btnCalcularSelClick
    end
    object btnListaRaya: TdxBarLargeButton
      Caption = 'Lista de Raya'
      Category = 0
      Hint = 'Lista de Raya'
      Visible = ivAlways
      LargeImageIndex = 51
      OnClick = btnListaRayaClick
    end
    object btnRecibosNomina: TdxBarLargeButton
      Caption = 'Recibos N'#243'mina'
      Category = 0
      Hint = 'Recibos N'#243'mina'
      Visible = ivAlways
      LargeImageIndex = 52
      OnClick = btnRecibosNominaClick
    end
    object btnCartaVacaciones: TdxBarLargeButton
      Caption = 'Carta Vacaciones'
      Category = 0
      Hint = 'Carta Vacaciones'
      Visible = ivAlways
      LargeImageIndex = 72
      OnClick = btnCartaVacacionesClick
    end
    object btnFiniquitoWord: TdxBarLargeButton
      Caption = 'Finiquito en MS Word'
      Category = 0
      Hint = 'Finiquito en MS Word'
      Visible = ivAlways
      LargeImageIndex = 72
      OnClick = btnFiniquitoWordClick
    end
    object btnInasistencias: TdxBarLargeButton
      Caption = '&Inasistencias'
      Category = 0
      Hint = 'Inasistencias'
      Visible = ivAlways
      LargeImageIndex = 54
      OnClick = btnInasistenciasClick
    end
    object btnRetardos: TdxBarLargeButton
      Caption = '&Retardos'
      Category = 0
      Hint = 'Retardos'
      Visible = ivAlways
      LargeImageIndex = 53
    end
    object btnConsultaVacaciones: TdxBarLargeButton
      Caption = 'Consulta Vacaciones'
      Category = 0
      Hint = 'Consulta Vacaciones'
      Visible = ivAlways
      LargeImageIndex = 50
      OnClick = btnConsultaVacacionesClick
    end
    object btnVacacionesPendientes: TdxBarLargeButton
      Caption = 'Vacaciones Pendientes'
      Category = 0
      Hint = 'Vacaciones Pendientes'
      Visible = ivAlways
      LargeImageIndex = 11
      OnClick = btnVacacionesPendientesClick
    end
    object btnPagarVacaciones: TdxBarLargeButton
      Caption = '&Registrar Pago'
      Category = 0
      Hint = 'Registrar Pago'
      Visible = ivAlways
      LargeImageIndex = 71
      OnClick = btnPagarVacacionesClick
    end
    object btnPais: TdxBarLargeButton
      Caption = '&Pa'#237'ses'
      Category = 0
      Hint = 'Pa'#237'ses'
      Visible = ivAlways
      LargeImageIndex = 17
      OnClick = btnPaisClick
    end
    object btnEstado: TdxBarLargeButton
      Caption = '&Estados'
      Category = 0
      Hint = 'Estados'
      Visible = ivAlways
      LargeImageIndex = 16
      OnClick = btnEstadoClick
    end
    object btnCiudad: TdxBarLargeButton
      Caption = '&Ciudades'
      Category = 0
      Hint = 'Ciudades'
      Visible = ivAlways
      LargeImageIndex = 15
      OnClick = btnCiudadClick
    end
    object btnEmpresas: TdxBarLargeButton
      Caption = 'E&mpresas'
      Category = 0
      Hint = 'Empresas'
      Visible = ivAlways
      LargeImageIndex = 18
      OnClick = btnEmpresasClick
    end
    object btnDepartamentos: TdxBarLargeButton
      Caption = 'Departamentos'
      Category = 0
      Hint = 'Departamentos'
      Visible = ivAlways
      LargeImageIndex = 21
      OnClick = btnDepartamentosClick
    end
    object btnUbicacion: TdxBarLargeButton
      Caption = '&Localidad'
      Category = 0
      Hint = 'Localidad'
      Visible = ivAlways
      LargeImageIndex = 19
      OnClick = btnUbicacionClick
    end
    object btnProyectos: TdxBarLargeButton
      Caption = 'Proyectos'
      Category = 0
      Hint = 'Proyectos'
      Visible = ivAlways
      LargeImageIndex = 20
      OnClick = btnProyectosClick
    end
    object btnPuestosTrabajo: TdxBarLargeButton
      Caption = 'Puestos Trabajo'
      Category = 0
      Hint = 'Puestos Trabajo'
      Visible = ivAlways
      LargeImageIndex = 48
      OnClick = btnPuestosTrabajoClick
    end
    object btnBancos: TdxBarLargeButton
      Caption = 'Bancos'
      Category = 0
      Hint = 'Bancos'
      Visible = ivAlways
      LargeImageIndex = 24
      OnClick = btnBancosClick
    end
    object btnTablaIMSS: TdxBarLargeButton
      Caption = 'Tabla IMSS'
      Category = 0
      Hint = 'Tabla IMSS'
      Visible = ivAlways
      LargeImageIndex = 32
      OnClick = btnTablaIMSSClick
    end
    object btnISPT: TdxBarLargeButton
      Caption = 'Tabla ISPT'
      Category = 0
      Hint = 'Tabla ISPT'
      Visible = ivAlways
      LargeImageIndex = 33
      OnClick = btnISPTClick
    end
    object btnSubsidio: TdxBarLargeButton
      Caption = 'Tabla Subsidio'
      Category = 0
      Hint = 'Tabla Subsidio'
      Visible = ivAlways
      LargeImageIndex = 33
      OnClick = btnSubsidioClick
    end
    object btnTablaVacaciones: TdxBarLargeButton
      Caption = 'Tabla Vacaciones'
      Category = 0
      Hint = 'Tabla Vacaciones'
      Visible = ivAlways
      LargeImageIndex = 34
      OnClick = btnTablaVacacionesClick
    end
    object btnAguinaldo: TdxBarLargeButton
      Caption = 'Tabla Aguinaldo'
      Category = 0
      Hint = 'Tabla Aguinaldo'
      Visible = ivAlways
      LargeImageIndex = 35
      OnClick = btnAguinaldoClick
    end
    object btnTipoInasistencia: TdxBarLargeButton
      Caption = 'Tipos Inasistencia'
      Category = 0
      Hint = 'Tipos Inasistencia'
      Visible = ivAlways
      LargeImageIndex = 49
      OnClick = btnTipoInasistenciaClick
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Caption = #208#194#189#168#176#180#197#165
      Category = 0
      Hint = #208#194#189#168#176#180#197#165
      Visible = ivAlways
    end
    object btnCorreosRegistrados: TdxBarLargeButton
      Caption = 'Cuentas de Correo'
      Category = 0
      Hint = 'Cuentas de Correo'
      Visible = ivAlways
      LargeImageIndex = 75
      OnClick = btnCorreosRegistradosClick
    end
    object btnAgregarDepartamento: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeImageIndex = 57
      OnClick = btnAgregarDepartamentoClick
    end
    object btnEditarDepartamento: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      LargeImageIndex = 58
      OnClick = btnEditarDepartamentoClick
    end
    object btnEliminarDepartamento: TdxBarLargeButton
      Caption = '&Borrar'
      Category = 0
      Enabled = False
      Hint = 'Borrar'
      Visible = ivAlways
      LargeImageIndex = 59
      OnClick = btnEliminarDepartamentoClick
    end
    object btnRefreshDepartamento: TdxBarLargeButton
      Caption = '&Recargar'
      Category = 0
      Hint = 'Recargar'
      Visible = ivAlways
      LargeImageIndex = 60
      OnClick = btnRefreshDepartamentoClick
    end
    object btnConsultarDetallePlazas: TdxBarLargeButton
      Caption = 'Detalle de Plazas'
      Category = 0
      Enabled = False
      Hint = 'Detalle de Plazas'
      Visible = ivAlways
      LargeImageIndex = 70
      OnClick = btnConsultarDetallePlazasClick
    end
    object btnAsignarPlazaVacante: TdxBarLargeButton
      Caption = 'Asignar Plaza Vacante'
      Category = 0
      Enabled = False
      Hint = 'Asignar Plaza Vacante'
      Visible = ivAlways
      LargeImageIndex = 69
      OnClick = btnAsignarPlazaVacanteClick
    end
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 696
  end
  object Tiempo: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TiempoTimer
    Left = 377
    Top = 144
  end
  object cdBuscarPersonal: TZReadOnlyQuery
    Params = <>
    Left = 280
    Top = 216
  end
  object cdPersonal: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 280
    Top = 264
  end
  object dxTabbedMDIManager1: TdxTabbedMDIManager
    Active = True
    TabProperties.AllowTabDragDrop = True
    TabProperties.CloseButtonMode = cbmEveryTab
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.ShowButtonHints = True
    TabProperties.ShowFrame = True
    TabProperties.ShowTabHints = True
    TabProperties.Style = 11
    Left = 600
    Top = 248
  end
end
