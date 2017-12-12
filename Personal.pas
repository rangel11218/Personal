unit Personal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, Frm_Connection,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, Global,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxStatusBar, dxRibbonStatusBar, dxBarApplicationMenu,
  Data.DB, ZAbstractRODataset, ZDataset, UDosCapas, Vcl.ExtCtrls, URegistro,
  ZAbstractDataset, cxPC, dxSkinscxPCPainter, dxBarBuiltInMenu, dxTabbedMDI;

type
  ProcedureParameter = procedure(formulario: TForm);

  TFrmMain = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    mInteligent: TdxRibbon;
    rtArchivo: TdxRibbonTab;
    bmPersonal: TdxBar;
    btnNuevaPersona: TdxBarLargeButton;
    btnAbrirPersonal: TdxBarLargeButton;
    bmReportes: TdxBar;
    btnConsultaMovimientos: TdxBarLargeButton;
    btnHistorialContratacion: TdxBarLargeButton;
    bmExcel: TdxBar;
    bmOpciones: TdxBar;
    btnListadoAltas: TdxBarLargeButton;
    btnListadoBajas: TdxBarLargeButton;
    btnGenerarCredencial: TdxBarLargeButton;
    btnCartaCOnfidencialidad: TdxBarLargeButton;
    btnDescripcionPuesto: TdxBarLargeButton;
    btnCartasRecomendacion: TdxBarSubItem;
    btn: TdxBarLargeButton;
    btnRecomendacion1: TdxBarButton;
    btnRecomendacion2: TdxBarButton;
    btnCartaDocumentos: TdxBarLargeButton;
    btnNuevoPermisoAusencia: TdxBarLargeButton;
    btnVerPermisos: TdxBarLargeButton;
    bmOpcionesVacaciones: TdxBar;
    btnImprimeCarta: TdxBarLargeButton;
    bmHistorialContratacion: TdxBar;
    btnEliminarUltimoMovimiento: TdxBarLargeButton;
    rtRH: TdxRibbonTab;
    rtNomina: TdxRibbonTab;
    rtPrestaciones: TdxRibbonTab;
    rtCatalogo: TdxRibbonTab;
    rtOrganizacion: TdxRibbonTab;
    bmNivelOrganizacional: TdxBar;
    bmActividades: TdxBar;
    bmPendientes: TdxBar;
    bmOpcionesNomina: TdxBar;
    bmCalculos: TdxBar;
    bmReportesNomina: TdxBar;
    bmOpcionesPersonal: TdxBar;
    Tiempo: TTimer;
    status: TdxRibbonStatusBar;
    cdBuscarPersonal: TZReadOnlyQuery;
    cdPersonal: TZQuery;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    btnOrganigrama: TdxBarLargeButton;
    btnSoftware: TdxBarButton;
    btnEscolaridad: TdxBarButton;
    btnCompetenciasNO: TdxBarButton;
    btnRecursos: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btnDescripAct: TdxBarLargeButton;
    btnAgregarActiv: TdxBarButton;
    btnEditarActiv: TdxBarButton;
    btnBorrarActiv: TdxBarButton;
    btnRefreshActiv: TdxBarButton;
    btnGrabarActiv: TdxBarLargeButton;
    barVarios: TdxBar;
    btnCorreo: TdxBarLargeButton;
    btnConsultaTiempos: TdxBarLargeButton;
    btnNuevaNomina: TdxBarLargeButton;
    btnAbrirNomina: TdxBarLargeButton;
    btnGuardarNomina: TdxBarLargeButton;
    btnCancelarNomina: TdxBarButton;
    btnEliminarNomina: TdxBarButton;
    btnCerrarNomina: TdxBarButton;
    btnAgregarPersonal: TdxBarLargeButton;
    btnCalcularTodos: TdxBarLargeButton;
    btnCalcularSel: TdxBarLargeButton;
    btnListaRaya: TdxBarLargeButton;
    btnRecibosNomina: TdxBarLargeButton;
    btnCartaVacaciones: TdxBarLargeButton;
    btnFiniquitoWord: TdxBarLargeButton;
    btnInasistencias: TdxBarLargeButton;
    btnRetardos: TdxBarLargeButton;
    bmAnual: TdxBar;
    btnConsultaVacaciones: TdxBarLargeButton;
    btnVacacionesPendientes: TdxBarLargeButton;
    btnPagarVacaciones: TdxBarLargeButton;
    bmLocalizacion: TdxBar;
    bmGenerales: TdxBar;
    bmRetenciones: TdxBar;
    bmTablasPrestaciones: TdxBar;
    bmCuentasCorreo: TdxBar;
    btnPais: TdxBarLargeButton;
    btnEstado: TdxBarLargeButton;
    btnCiudad: TdxBarLargeButton;
    btnEmpresas: TdxBarLargeButton;
    btnDepartamentos: TdxBarLargeButton;
    btnUbicacion: TdxBarLargeButton;
    btnProyectos: TdxBarLargeButton;
    btnPuestosTrabajo: TdxBarLargeButton;
    btnBancos: TdxBarLargeButton;
    btnTablaIMSS: TdxBarLargeButton;
    btnISPT: TdxBarLargeButton;
    btnSubsidio: TdxBarLargeButton;
    btnTablaVacaciones: TdxBarLargeButton;
    btnAguinaldo: TdxBarLargeButton;
    btnTipoInasistencia: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    btnCorreosRegistrados: TdxBarLargeButton;
    bmOpcionesNivelO: TdxBar;
    bmPlazas: TdxBar;
    btnAgregarDepartamento: TdxBarLargeButton;
    btnEditarDepartamento: TdxBarLargeButton;
    btnEliminarDepartamento: TdxBarLargeButton;
    btnRefreshDepartamento: TdxBarLargeButton;
    btnConsultarDetallePlazas: TdxBarLargeButton;
    btnAsignarPlazaVacante: TdxBarLargeButton;
    procedure btnNuevaPersonaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TiempoTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAbrirPersonalClick(Sender: TObject);
    procedure btnListadoAltasClick(Sender: TObject);
    procedure btnConsultaMovimientosClick(Sender: TObject);
    procedure btnHistorialContratacionClick(Sender: TObject);
    procedure btnListadoBajasClick(Sender: TObject);
    procedure btnGenerarCredencialClick(Sender: TObject);
    procedure btnCartaCOnfidencialidadClick(Sender: TObject);
    procedure btnDescripcionPuestoClick(Sender: TObject);
    procedure btnRecomendacion1Click(Sender: TObject);
    procedure btnRecomendacion2Click(Sender: TObject);
    procedure btnCartaDocumentosClick(Sender: TObject);
    procedure btnNuevoPermisoAusenciaClick(Sender: TObject);
    procedure btnVerPermisosClick(Sender: TObject);
    procedure btnImprimeCartaClick(Sender: TObject);
    procedure btnOrganigramaClick(Sender: TObject);
    procedure btnSoftwareClick(Sender: TObject);
    procedure btnEscolaridadClick(Sender: TObject);
    procedure btnCompetenciasNOClick(Sender: TObject);
    procedure btnRecursosClick(Sender: TObject);
    procedure btnCorreoClick(Sender: TObject);
    procedure btnConsultaTiemposClick(Sender: TObject);
    procedure btnEliminarNominaClick(Sender: TObject);
    procedure btnAgregarPersonalClick(Sender: TObject);
    procedure btnCalcularTodosClick(Sender: TObject);
    procedure btnCalcularSelClick(Sender: TObject);
    procedure btnListaRayaClick(Sender: TObject);
    procedure btnRecibosNominaClick(Sender: TObject);
    procedure btnCartaVacacionesClick(Sender: TObject);
    procedure btnFiniquitoWordClick(Sender: TObject);
    procedure btnInasistenciasClick(Sender: TObject);
    procedure btnConsultaVacacionesClick(Sender: TObject);
    procedure btnVacacionesPendientesClick(Sender: TObject);
    procedure btnPagarVacacionesClick(Sender: TObject);
    procedure btnPaisClick(Sender: TObject);
    procedure btnEstadoClick(Sender: TObject);
    procedure btnCiudadClick(Sender: TObject);
    procedure btnEmpresasClick(Sender: TObject);
    procedure btnDepartamentosClick(Sender: TObject);
    procedure btnUbicacionClick(Sender: TObject);
    procedure btnProyectosClick(Sender: TObject);
    procedure btnPuestosTrabajoClick(Sender: TObject);
    procedure btnBancosClick(Sender: TObject);
    procedure btnTablaIMSSClick(Sender: TObject);
    procedure btnISPTClick(Sender: TObject);
    procedure btnSubsidioClick(Sender: TObject);
    procedure btnTablaVacacionesClick(Sender: TObject);
    procedure btnAguinaldoClick(Sender: TObject);
    procedure btnTipoInasistenciaClick(Sender: TObject);
    procedure btnCorreosRegistradosClick(Sender: TObject);
    procedure btnAgregarDepartamentoClick(Sender: TObject);
    procedure btnEditarDepartamentoClick(Sender: TObject);
    procedure btnEliminarDepartamentoClick(Sender: TObject);
    procedure btnRefreshDepartamentoClick(Sender: TObject);
    procedure btnConsultarDetallePlazasClick(Sender: TObject);
    procedure btnAsignarPlazaVacanteClick(Sender: TObject);
  private
    Ingresado: Boolean;
  public
    adentro: boolean;
    pIdPersonal: LongInt;
    TipoMovimiento: Word;
    function IniciarForm(clase: TComponentClass; formulario: TForm; Multiple: Boolean; Inicializar: ProcedureParameter = nil): Boolean;
  end;

var
  FrmMain: TFrmMain;
  Detectar: string;
  Letra: char;
  udc_activa:integer;
  HoraI: TTime;

implementation

{$R *.dfm}

uses UInteliDialog, frm_acceso, UTFrmPersonal, UTFrmMostrarPersonal,
  UTFrmAbrirPersonal, Borrar, UTFrmConsultaMovimientos, UTFrmCatalogoNominas,
  UTFrmHistorialContratacion, UTFrmMovimientosExcel, UTFrmCartaConfidencial,
  UTFrmDeptos, UTFrmCompetencias, UTFrmEscolaridad, UTFrmSoftware,
  UTFrmRecursos, UTFrmEstadoPendientes, UTFrmCorreo, UTFrmInasistencias,
  UTFrmConsultaVacaciones, UTFrmProgramaVacaciones, UTFrmPagoVacaciones,
  UTFrmPais, UTFrmEstado, UTFrmCiudad, UTFrmEmpresa, UTFrmDepartamento,
  UTFrmLocalidad, UTFrmProyecto, UTFrmCargo, UTFrmBanco, UTFrmTablaISPT,
  UTFrmTablaIMSS, UTFrmSubsidioTablaISPT, UTFrmVacaciones, UTFrmPrestaciones,
  UTFrmCatalogoCorreos, UTFrmTipoInasistencia;

const
  tmAlta = 0;
  tmBaja = 1;

procedure TFrmMain.btnAbrirPersonalClick(Sender: TObject);
begin
  Application.CreateForm(TFrmAbrirPersonal, FrmAbrirPersonal);
  FrmAbrirPersonal.dsBuscarPersonal.DataSet := cdBuscarPersonal;
  FrmAbrirPersonal.Show;
end;

procedure TFrmMain.btnAgregarDepartamentoClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmDeptos') then
    begin
      TFrmDeptos(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmDeptos(Self.MDIChildren[i]).Btn_Agregar;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnAgregarPersonalClick(Sender: TObject);
begin
  if Assigned(Self.ActiveMDIChild) and TFrmCatalogoNominas(Self.ActiveMDIChild).ClassNameIs('TFrmCatalogoNominas') then
    TFrmCatalogoNominas(Self.ActiveMDIChild).SeleccionarPersonal
  else
  begin
    IniciarForm(TFrmCatalogoNominas, FrmCatalogoNominas, True);
    TFrmCatalogoNominas(Self.ActiveMDIChild).SeleccionarPersonal;
  end;
end;

procedure TFrmMain.btnAguinaldoClick(Sender: TObject);
begin
  IniciarForm(TFrmPrestaciones, FrmPrestaciones, False);
end;

procedure TFrmMain.btnAsignarPlazaVacanteClick(Sender: TObject);
begin
  if Assigned(Self.ActiveMDIChild) and TFrmDeptos(Self.ActiveMDIChild).ClassNameIs('TFrmDeptos') then
    TFrmDeptos(Self.ActiveMDIChild).AsignarPlazaVacante
  else
  begin
    IniciarForm(TFrmDeptos, FrmDeptos, True);
    TFrmDeptos(Self.ActiveMDIChild).AsignarPlazaVacante;
  end;
end;

procedure TFrmMain.btnCalcularSelClick(Sender: TObject);
var
  Forma: TFrmCatalogoNominas;
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCatalogoNominas') then
    begin
      TFrmCatalogoNominas(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCatalogoNominas(Self.MDIChildren[i]).BotonCalcularSeleccionados;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnCalcularTodosClick(Sender: TObject);
var
  Forma: TFrmCatalogoNominas;
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCatalogoNominas') then
    begin
      TFrmCatalogoNominas(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCatalogoNominas(Self.MDIChildren[i]).BotonCalcularTodos;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnCartaCOnfidencialidadClick(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).CartaConfidencial
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnCartaDocumentosClick(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).CartaCompromiso
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnCartaVacacionesClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCatalogoNominas') then
    begin
      TFrmCatalogoNominas(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCatalogoNominas(Self.MDIChildren[i]).BotonCartaVacaciones;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnCompetenciasNOClick(Sender: TObject);
begin
  IniciarForm(TFrmCompetencias, FrmCompetencias, False);
end;

procedure TFrmMain.btnConsultaMovimientosClick(Sender: TObject);
begin
  IniciarForm(TFrmConsultaMovimientos, FrmConsultaMovimientos, False);
end;

procedure TFrmMain.btnConsultarDetallePlazasClick(Sender: TObject);
begin
  if Assigned(Self.ActiveMDIChild) and TFrmDeptos(Self.ActiveMDIChild).ClassNameIs('TFrmDeptos') then
    TFrmDeptos(Self.ActiveMDIChild).DetallePlazas
  else
  begin
    IniciarForm(TFrmDeptos, FrmDeptos, True);
    TFrmDeptos(Self.ActiveMDIChild).DetallePlazas;
  end;
end;

procedure TFrmMain.btnConsultaTiemposClick(Sender: TObject);
begin
  IniciarForm(TFrmEstadoPendientes, FrmEstadoPendientes, False);
end;

procedure TFrmMain.btnConsultaVacacionesClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaVacaciones, FrmConsultaVacaciones);
  FrmConsultaVacaciones.IdPersonal := -1;
  FrmConsultaVacaciones.dsBuscarPersonal.DataSet := cdBuscarPersonal;
  FrmConsultaVacaciones.ShowModal;
end;

procedure TFrmMain.btnDescripcionPuestoClick(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).DescripcionPuesto
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnEditarDepartamentoClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmDeptos') then
    begin
      TFrmDeptos(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmDeptos(Self.MDIChildren[i]).Btn_Editar;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnEliminarDepartamentoClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmDeptos') then
    begin
      TFrmDeptos(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmDeptos(Self.MDIChildren[i]).Btn_Quitar;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnEliminarNominaClick(Sender: TObject);
begin
  if TFrmCatalogoNominas(Self.ActiveMDIChild).ClassNameIs('TFrmCatalogoNominas') then
    TFrmCatalogoNominas(Self.ActiveMDIChild).BotonEliminar;
end;

procedure TFrmMain.btnEscolaridadClick(Sender: TObject);
begin
  IniciarForm(TFrmEscolaridad, FrmEscolaridad, False);
end;

procedure TFrmMain.btnFiniquitoWordClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCatalogoNominas') then
    begin
      TFrmCatalogoNominas(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCatalogoNominas(Self.MDIChildren[i]).BotonCartaFiniquito;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnGenerarCredencialClick(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).GenerarCredencial
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnHistorialContratacionClick(Sender: TObject);
begin
  IniciarForm(TFrmHistorialContratacion, FrmHistorialContratacion, True);
end;

procedure TFrmMain.btnImprimeCartaClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCartaConfidencial') then
    begin
      TFrmCartaConfidencial(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCartaConfidencial(Self.MDIChildren[i]).BotonImprimirCarta;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnInasistenciasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmInasistencias, FrmInasistencias);
  FrmInasistencias.IdPersonal := -1;
  FrmInasistencias.dsBuscarPersonal.DataSet := cdBuscarPersonal;
  FrmInasistencias.Show;
end;

procedure TFrmMain.btnISPTClick(Sender: TObject);
begin
  IniciarForm(TFrmTablaISPT, FrmTablaISPT, False);
end;

procedure TFrmMain.btnListadoAltasClick(Sender: TObject);
begin
  TipoMovimiento := tmAlta;
  IniciarForm(TFrmMovimientosExcel, FrmMovimientosExcel, False);
end;

procedure TFrmMain.btnListadoBajasClick(Sender: TObject);
begin
  TipoMovimiento := tmBaja;
  IniciarForm(TFrmMovimientosExcel, FrmMovimientosExcel, False);
end;

procedure TFrmMain.btnListaRayaClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCatalogoNominas') then
    begin
      TFrmCatalogoNominas(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCatalogoNominas(Self.MDIChildren[i]).BotonListaRaya;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnNuevaPersonaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPersonal, FrmPersonal);
  FrmPersonal.Modo := dsInsert;
  if FrmPersonal.ShowModal = mrOk then
  begin
    Application.CreateForm(TFrmMostrarPersonal, FrmMostrarPersonal);
    FrmMostrarPersonal.IdPersonal := pIdPersonal;
    FrmMostrarPersonal.dsBuscarPersonal.DataSet := cdBuscarPersonal;
    FrmMostrarPersonal.Show;
  end;
end;

procedure TFrmMain.btnNuevoPermisoAusenciaClick(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).PermisoAusencia
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnRecibosNominaClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmCatalogoNominas') then
    begin
      TFrmCatalogoNominas(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmCatalogoNominas(Self.MDIChildren[i]).BotonRecibosNomina;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnRecomendacion1Click(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).GenerarCartaRecomendacion(0)
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnRecomendacion2Click(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).GenerarCartaRecomendacion(1)
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnRecursosClick(Sender: TObject);
begin
  IniciarForm(TFrmRecursos, FrmRecursos, False);
end;

procedure TFrmMain.btnRefreshDepartamentoClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;
  while (i < Self.MDIChildCount) do
  begin
    if Self.MDIChildren[i].ClassNameIs('TFrmDeptos') then
    begin
      TFrmDeptos(Self.MDIChildren[i]).BringToFront;
      Self.MDIChildren[i].Show;
      TFrmDeptos(Self.MDIChildren[i]).Btn_Refresh;
      i := Self.MDIChildCount;
    end;

    inc(i);
  end;
end;

procedure TFrmMain.btnSoftwareClick(Sender: TObject);
begin
  IniciarForm(TFrmSoftware, FrmSoftware, False);
end;

procedure TFrmMain.btnSubsidioClick(Sender: TObject);
begin
  IniciarForm(TFrmSubsidioTablaISPT, FrmSubsidioTablaISPT, False);
end;

procedure TFrmMain.btnTablaIMSSClick(Sender: TObject);
begin
  IniciarForm(TFrmTablaIMSS, FrmTablaIMSS, False);
end;

procedure TFrmMain.btnTablaVacacionesClick(Sender: TObject);
begin
  IniciarForm(TFrmVacaciones, FrmVacaciones, True);
end;

procedure TFrmMain.btnTipoInasistenciaClick(Sender: TObject);
begin
  IniciarForm(TFrmTipoInasistencia, FrmTipoInasistencia, False);
end;

procedure TFrmMain.btnVacacionesPendientesClick(Sender: TObject);
begin
  IniciarForm(TFrmProgramaVacaciones, FrmProgramaVacaciones, True);
end;

procedure TFrmMain.btnVerPermisosClick(Sender: TObject);
begin
  // Buscar el formulario activo
  if Self.ActiveMDIChild.ClassNameIs('TFrmMostrarPersonal') then
    TFrmMostrarPersonal(Self.ActiveMDIChild).ListaPermisos
  else
    bmOpciones.Visible := False;
end;

procedure TFrmMain.btnPaisClick(Sender: TObject);
begin
  IniciarForm(TFrmPais, FrmPais, False);
end;

procedure TFrmMain.btnEstadoClick(Sender: TObject);
begin
  IniciarForm(TFrmEstado, FrmEstado, False);
end;

procedure TFrmMain.btnCiudadClick(Sender: TObject);
begin
  IniciarForm(TFrmCiudad, FrmCiudad, False);
end;

procedure TFrmMain.btnEmpresasClick(Sender: TObject);
begin
  IniciarForm(TFrmEmpresa, FrmEmpresa, False);
end;

procedure TFrmMain.btnDepartamentosClick(Sender: TObject);
begin
  IniciarForm(TFrmDepartamento, FrmDepartamento, False);
end;

procedure TFrmMain.btnUbicacionClick(Sender: TObject);
begin
  IniciarForm(TFrmLocalidad, FrmLocalidad, False);
end;

procedure TFrmMain.btnProyectosClick(Sender: TObject);
begin
  IniciarForm(TFrmProyecto, FrmProyecto, False);
end;

procedure TFrmMain.btnPuestosTrabajoClick(Sender: TObject);
begin
  IniciarForm(TFrmCargo, FrmCargo, False);
end;

procedure TFrmMain.btnBancosClick(Sender: TObject);
begin
  IniciarForm(TFrmBanco, FrmBanco, False);
end;

procedure TFrmMain.btnCorreoClick(Sender: TObject);
begin
  IniciarForm(TFrmCorreo, FrmCorreo, False);
end;

procedure TFrmMain.btnCorreosRegistradosClick(Sender: TObject);
begin
  IniciarForm(TFrmCatalogoCorreos, FrmCatalogoCorreos, False);
end;

procedure TFrmMain.btnOrganigramaClick(Sender: TObject);
begin
  IniciarForm(TFrmDeptos, FrmDeptos, False);
end;

procedure TFrmMain.btnPagarVacacionesClick(Sender: TObject);
begin
  IniciarForm(TFrmPagoVacaciones, FrmPagoVacaciones, False);
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetRegistry('\Ambiente', '\' + Self.Name, 'ActiveTabIndex', IntToStr(mInteligent.ActiveTab.Index));
end;

procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Ingresado then
    CanClose := InteliDialog.ShowModal('Salir del sistema', '¿Está seguro que desea salir completamente de la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

procedure TFrmMain.FormResize(Sender: TObject);
begin
  if Self.Height<600 then Self.Height:=600;
  if Self.Width<800 then Self.Width:=800;
end;

procedure TFrmMain.FormShow(Sender: TObject);
var
  InfoSize, H, RsltLen: Cardinal;
  VersionBlock: Pointer;
  Rslt: PVSFixedFileInfo;
  cdErrores: TZReadOnlyQuery;
  Error: TErrores;
  TabIndex: Word;
  Organ: TZReadOnlyQuery;
  //JPEGImagen: TJPEGImage; Rangelito
  BS: TStream;
  Bitmap: TBitmap;
begin
  try
    Ingresado := False;
    bmOpciones.Visible := False;
    bmCalculos.Visible := False;
    bmReportes.Visible := False;
    bmOpcionesVacaciones.Visible := False;
    rtOrganizacion.Visible := False;

    //*************************************
    adentro := False;
    InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
    VersionBlock := AllocMem(InfoSize);
    try
      GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
      VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
      rtArchivo.Active:=True;
    finally
      FreeMem(VersionBlock);
    end;
  //  //// TEMRINA LECTURA DE LA IMAGEN..
    if frmAcceso.ShowModal <> mrOk then
    begin
      tiempo.enabled := True;
      raise Exception.Create('***');
    end;

    //*******************************************************************************
    // Leer tabla de errores
    cdErrores := TZReadOnlyQuery.Create(Self);
    try
      // Traer a la memoria los códigos de error del sistema
      cdErrores.Connection := Connection.ConnTrx;
      ListaErrores := TStringList.Create;
      ListaErrores.Clear;

      if Not CrearConjunto(cdErrores, 'nuc_errores', ccSelect) then
        raise Exception.Create('No ha sido posible localizar el catálogo de errores del sistema.');

      cdErrores.Open;
      cdErrores.First;
      while Not cdErrores.Eof do
      begin
        Try
          Error := TErrores.Create;
          Error.Codigo  := cdErrores.FieldByName('iCodigo').AsInteger;
          Error.Usuario := cdErrores.FieldByName('sDescUsuario').AsString;
          Error.Tecnico := cdErrores.FieldByName('sDescTecnico').AsString;

          ListaErrores.AddObject(IntToStr(Error.Codigo), Error);
        Except
          raise Exception.Create('No se ha podido cargar completa la tabla de errores del sistema.');
        End;

        cdErrores.Next;
      end;
    finally
      if cdErrores.Active then
        cdErrores.Close;

      cdErrores.Destroy;
    end;
    // Fin de: Leer tabla de errores
    //*******************************************************************************

    Licencia := 'Si';

    status.Panels.Items[1].Text  :=   global_nombre;

    status.Panels.Items[3].Text  :=   global_server;
   // status.Panels.Items[5].Text  :=   global_db;

    status.Panels.Items[7].Text  := global_contrato;
    status.Panels.Items[9].Text  := global_convenio;

    HoraI:=Time;
    Ingresado := True;

    try
      TabIndex := StrToInt(VarRegistry('\Ambiente', '\' + Self.Name, 'ActiveTabIndex'));
      if TabIndex = 5 then
        mInteligent.ActiveTab := mInteligent.Tabs[1]
      else
        mInteligent.ActiveTab := mInteligent.Tabs[TabIndex];
    Except
      mInteligent.ActiveTab := mInteligent.Tabs[0];
    End;

    CrearConjunto(Connection.roqConfiguracion, 'nuc_configuracion', ccSelect);
    CrearConjunto(Connection.roqReportes, 'nuc_reporte', ccSelect);
    CrearConjunto(Connection.Reporte, 'nuc_reporte_actualizar', ccCatalog);
    CrearConjunto(Connection.ContratosxUsuario, 'cto_contratosxusuario', ccCatalog);

    CargarDatosFiltrados(Connection.ContratosxUsuario, 'IdUsuario', [Global_IdUsuario]);

    Connection.roqConfiguracion.Open;
    Connection.roqReportes.Open;
    Connection.ContratosxUsuario.Open;

    Organ := TZReadOnlyQuery.Create(Self);
    try
      CrearConjunto(Organ, 'nuc_organizacion_imagen', ccCatalog);
      Organ.Open;
      Organ.First;
      Connection.RelacionImgIdOrganizacion := TStringList.Create;
      while Not Organ.Eof do
      begin
        BS := Organ.CreateBlobStream(TBlobField(Organ.FieldbyName('Imagen')), bmReadWrite);

        if BS.Size > 0 then
        begin
          // Rangelito
          {try
            JPEGImagen := TJPEGImage.Create;
            Bitmap := TBitmap.Create;
            try
              JPEGImagen .LoadFromStream(BS);
              Bitmap.Height := JPEGImagen.Height;
              Bitmap.Width := JPEGImagen.Width;
              Bitmap.Assign(JPEGImagen);
              Connection.imgOrganizaciones.Add(Bitmap, nil);
            finally
              Bitmap.Free;
              JPEGImagen.Free;
            end;

            Connection.RelacionImgIdOrganizacion.AddObject(Organ.FieldByName('IdOrganizacion').AsString, TObject(Connection.imgOrganizaciones.Count -1));
          except
            Connection.RelacionImgIdOrganizacion.AddObject(Organ.FieldByName('IdOrganizacion').AsString, TObject(0));
          end;}
        end
        else
          Connection.RelacionImgIdOrganizacion.AddObject(Organ.FieldByName('IdOrganizacion').AsString, TObject(0));

        Organ.Next;
      end;
    finally
      Organ.Close;
      Organ.Destroy;
    end;
  except
    on e:InteligentConnection do
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

function TFrmMain.IniciarForm(clase: TComponentClass; formulario: TForm; Multiple: Boolean; Inicializar: ProcedureParameter = nil): boolean;
var
  Cta, x: Integer;
  Found: Boolean;
  Forma: TForm;
  Cadena,
  SubCad: String;
begin
  Try
    Try
      // Analizar si se requiere validar la ejecución previa del formulario
      if Not Multiple then
      begin
        Try
          // Verificar si la ventana ya existe
          Cta := 0;
          Found := False;
          while (Cta < Self.MDIChildCount) and Not Found do
          begin
            Found := AnsiCompareText(Self.MDIChildren[Cta].ClassName, Clase.ClassName) = 0;
            if Not Found then
              Inc(Cta);
          end;

          if Not Found then
          begin
            // Si la ventana no existe tratar de invocarla
            Try
              Application.CreateForm(Clase, Formulario);

              if Assigned(Inicializar) then
                Inicializar(formulario);

              case Formulario.FormStyle of
                fsNormal: Formulario.ShowModal;
                fsMDIChild: Formulario.Show;
                fsMDIForm: Formulario.Show;
                fsStayOnTop: Formulario.ShowModal;
              end;

              //formulario.show;    // Mostrar la ventana en la posición indicada
              // Registrar la utilización de la ventana
              Try


              Except
                ; // No hacer nada, solo es para no emitir un error que detenga le funcionamiento
              End;
              Result := True;
            Except
              Formulario.Free;
              Result := false;
            End;
          End
          Else
          Begin
            Forma := Self.MDIChildren[Cta];
            if Forma.WindowState = wsMinimized then
              Forma.WindowState := wsNormal  // Restablecer la ventana
            else
              Forma.BringToFront;
            Result := False;
          End;
        Finally

        End;
      end
      else
      begin
        // Tratar de ejecutar directamente el formulario
        Try
          Application.CreateForm(Clase, Formulario);

          if Assigned(Inicializar) then
            Inicializar(formulario);
          Cadena := Formulario.Name;
          x := Length(Cadena);
          SubCad := '';
          while CharInSet(Cadena[x], ['0'..'9']) and (x > 0) and (Cadena[x] <> '_') do
          begin
            SubCad := Cadena[x] + SubCad;
            Dec(x);
          end;

          Try
            if SubCad <> '' then
            Formulario.Caption := Formulario.Caption + ' [' + SubCad + ']';
          Except
            ;
          End;

          formulario.show;
          Result := True;
        Except
          on e:exception do
          begin
            showmessage(e.Message);
          Result := false;
          end;
        End;
      end;
    Finally

    end;
  Except
    on e:InteligentException do
      if e.Message = '*' then
        ;
  end;
end;

procedure TFrmMain.TiempoTimer(Sender: TObject);
begin
  application.Terminate;
end;

end.
