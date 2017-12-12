Unit UTFrmCatalogoNominas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvToolBar, AdvGlowButton, ExtCtrls, DB, DBClient, StdCtrls,
  Mask, DBCtrls, ComCtrls, JvLabel, DateUtils, frxClass, frxDBSet, frxPreview,
  URegistro, Grids, Buttons, Tabs, StrUtils, ComObj, frxExportPDF, ShellApi,
  CheckLst, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, Global, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, UDosCapas, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, cxContainer, cxEdit, cxCheckListBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxGridLevel, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxBar, dxRibbon, cxButtons,
  cxScrollBox, cxGroupBox, ActiveX, ShlObj, cxImage, cxLabel, dxGDIPlusClasses,
  dxCore, cxDateUtils, cxCalendar, cxProgressBar, dxTaskbarProgress,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, dxRibbonCustomizationForm,
  cxDBEdit, dxRibbonForm, dxPrnDev, dxPrnDlg, dxDockControl, dxDockPanel,
  cxGridChartView, cxGridDBChartView, dxRibbonMiniToolbar, cxSplitter,
  AdvOfficeHint, cxDBExtLookupComboBox, cxSpinEdit, DBGrids, Types,
  IdSSLOpenSSL, IdSMTP, IdMessage, IdAttachmentFile, UInteliDialog,
  IdExplicitTLSClientServerBase, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  cxCalc, Frm_Connection, UCalcularNomina, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmCatalogoNominas = class(TDxRibbonForm)
    dsNomina: TDataSource;
    Panel_Progress: TPanel;
    lblTitulo: TJvLabel;
    lblLeyenda1: TJvLabel;
    lblLeyenda2: TJvLabel;
    Panel2: TPanel;
    pbNomina: TcxProgressBar;
    Panel5: TPanel;
    pbCompleto: TcxProgressBar;
    dsTipoNomina: TDataSource;
    dsNomina2: TDataSource;
    pnlProcesando: TPanel;
    lblTituloProc: TJvLabel;
    lblLeyendaProc: TJvLabel;
    Panel3: TPanel;
    ProgressBar1: TProgressBar;
    Panel4: TPanel;
    ProgressBar2: TProgressBar;
    pnlSeleccionDepto: TPanel;
    cxGridRepos1: TcxGridViewRepository;
    cxDBGridDeptos: TcxGridDBTableView;
    grdColumDepartamento: TcxGridDBColumn;
    cxDBGridOrganizaciones: TcxGridDBTableView;
    grdColumOrganizacion: TcxGridDBColumn;
    dlgSaveExcel: TSaveDialog;
    Panel11: TcxGroupBox;
    pnlParams: TPanel;
    lbl13: TLabel;
    lbl14: TLabel;
    pnl2: TPanel;
    btn3: TButton;
    btn2: TButton;
    cbbDeptos: TcxComboBox;
    CxCbbReferencia: TcxComboBox;
    CxChkBoxReferencia: TcxCheckBox;
    cxGBDialogCalcNomina: TcxGroupBox;
    CxLblLeyenda: TcxLabel;
    imgLogo1: TcxImage;
    CxLblSubtittulo: TcxLabel;
    cxGBBotones: TcxGroupBox;
    CxBtnCancel: TcxButton;
    CxBtnOk: TcxButton;
    CxChkBoxCalcExcel: TcxCheckBox;
    CxLCbbMachotes: TcxLookupComboBox;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    lblSelOpcion: TcxLabel;
    imgLogo2: TcxImage;
    CxLbl1: TcxLabel;
    DxPrintDialogRecibo: TdxPrintDialog;
    DxMiniTool1: TdxRibbonMiniToolbar;
    frxDBNomina: TfrxDBDataset;
    pnlProgressMail: TPanel;
    JvLabel3: TJvLabel;
    cdModuleOrganizacion: TZReadOnlyQuery;
    cdNomina: TZQuery;
    cdNomina2: TZReadOnlyQuery;
    cdTipoNomina: TZReadOnlyQuery;
    cdPersonalIncluido: TZQuery;
    dsPersonalIncluido: TDataSource;
    pnlEditar: TPanel;
    eTitulo: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    eDias: TDBText;
    Panel7: TPanel;
    btneCancelar: TAdvGlowButton;
    btneOk: TAdvGlowButton;
    eIdTipoNomina: TDBLookupComboBox;
    JvLabel7: TJvLabel;
    cdTodoPersonal: TZReadOnlyQuery;
    cdDetalleNomina: TZQuery;
    cdPercepciones: TZQuery;
    cdDeducciones: TZQuery;
    pcMain: TPageControl;
    Generales: TTabSheet;
    tsPersonal: TTabSheet;
    cxGrid1: TcxGrid;
    tvDatos: TcxGridDBTableView;
    NombreOrganizacion: TcxGridDBColumn;
    IdPersonal: TcxGridDBColumn;
    NombreCompleto: TcxGridDBColumn;
    DiasPeriodo: TcxGridDBColumn;
    DiasEfectivos: TcxGridDBColumn;
    DiasPagar: TcxGridDBColumn;
    NombreLocalidad: TcxGridDBColumn;
    TituloDepartamento: TcxGridDBColumn;
    TituloProyecto: TcxGridDBColumn;
    TituloCargo: TcxGridDBColumn;
    SalarioDiario: TcxGridDBColumn;
    SalarioIntegrado: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    GroupBox1: TGroupBox;
    JvLabel8: TJvLabel;
    Titulo: TDBText;
    FechaNomina: TDBText;
    JvLabel10: TJvLabel;
    FechaTerminoNomina: TDBText;
    JvLabel9: TJvLabel;
    JvLabel11: TJvLabel;
    FechaPagoNomina: TDBText;
    Dias: TDBText;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    Estado: TDBText;
    cdUMA: TZReadOnlyQuery;
    cdVacacionesPagadas: TZQuery;
    cdCarta: TZReadOnlyQuery;
    sdCarta: TSaveDialog;
    pnlEdit: TPanel;
    JvLabel14: TJvLabel;
    Panel1: TPanel;
    btnCancelEdit: TAdvGlowButton;
    btnOkEdit: TAdvGlowButton;
    JvLabel15: TJvLabel;
    JvLabel16: TJvLabel;
    cdReal: TClientDataSet;
    cdRealIdPersonal: TIntegerField;
    cdRealTitulo: TStringField;
    cdRealImporte: TFloatField;
    cdRealPercep: TStringField;
    FechaCarta: TcxDateEdit;
    FechaRecibido: TcxDateEdit;
    eFechaNomina: TcxDBDateEdit;
    eFechaPagoNomina: TcxDBDateEdit;
    eFechaTerminoNomina: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RSubReporteGetValue(const VarName: string; var Value: Variant);
    procedure onClickCheck(sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frContratarGetValue(const VarName: string; var Value: Variant);
    procedure repSindicatoGetValue(const VarName: string; var Value: Variant);
    procedure cdNominaAfterCancel(DataSet: TDataSet);
    procedure cdNominaAfterClose(DataSet: TDataSet);
    procedure cdNominaAfterDelete(DataSet: TDataSet);
    procedure cdNominaAfterEdit(DataSet: TDataSet);
    procedure cdNominaAfterOpen(DataSet: TDataSet);
    procedure cdNominaAfterInsert(DataSet: TDataSet);
    procedure cdNominaAfterPost(DataSet: TDataSet);
    procedure cdNominaAfterRefresh(DataSet: TDataSet);
    procedure cdNominaBeforeClose(DataSet: TDataSet);
    procedure cdNominaBeforeOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure eFechaNominaChange(Sender: TObject);
    procedure eFechaTerminoNominaChange(Sender: TObject);
    procedure FormaProcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdDetalleNominaAfterPost(DataSet: TDataSet);
  private
    ConceptoNombre, ConceptoColumna, posFormula,IniciaFormula: TStringList;
    FormaEdit: TForm;
    IndiceDeptoOrg: Integer;
    cdBuscarDatos: TZReadOnlyQuery;
    YaCreado: Boolean;
    YaLeidoPersonalIncluido: Boolean;
    ReadYet: Boolean;
    NetoPagar,
    NetoDeptoPagar,
    NetoDeptoPagar2,
    TotalPercepciones,
    TotalDeducciones,
    NetoDeptoPercepciones,
    NetoDeptoDeducciones: Real;
    cdGenerales: TClientDataSet;
    SMGVDF: Real;
    ConEfecto: Boolean;

    CargandoGuardias: Boolean;
    pCual: Integer;

    ProcederScroll: Boolean;
    ShowSummary: Boolean;
    //MailEncabezado: String;

    DiasComp: Word;
    TotalPerComp, TotalDedComp, NetoComp: Extended;

    Consecutivo: Word;

    LastIdDetalleNomina: LongInt;
    procedure ActualizarEstadoBotones;
    procedure CambiarDias;
    procedure CambiarValores(Word: Variant; pBuscar: String; pValor: String);
  public
    estadoNomina : string;
    procedure BotonAbrir;
    procedure BotonNuevo;
    procedure BotonGuardar;
    procedure BotonEliminar;
    procedure BotonCerrar;
    procedure BotonCalcularSeleccionados;
    procedure BotonCalcularTodos;
    procedure BotonRecibosNomina;
    procedure BotonListaRaya;
    procedure BotonCartaFiniquito;
    procedure BotonCartaVacaciones;
    procedure SeleccionarPersonal;
  end;

const
  bvNeto = '<&Neto&>';
  bvFechaRecibe = '<&FechaRecibe&>';
  bvTituloEmpresa = '<&TituloEmpresa&>';
  bvImporteLetra = '<&ImporteLetra&>';
  bvPeriodo = '<&Periodo&>';
  bvNoPeriodo = '<&NoPeriodo&>';
  bvDias = '<&Dias&>';
  bvVacaciones = '<&Vacaciones&>';
  bvPrimaVac = '<&PrimaVac&>';
  bvTotal = '<&Total&>';
  bvISPT = '<&ISPT&>';
  bvNombreCompleto = '<&NombreCompleto&>';

  bNombreCompleto = '[NombreCompleto]';
  bPuesto = '[Puesto]';
  bAlta = '[Alta]';
  bBaja = '[Baja]';
  bSalarioDiario = '[SalarioDiario]';
  bFechaEmision = '[FechaEmision]';
  bImporteNumero = '[ImporteNumero]';
  bAguinaldo = '[Aguinaldo]';
  bVacaciones = '[Vacaciones]';
  bPrimaVacacional = '[PrimaVacacional]';
  bGratificacion = '[Gratificacion]';
  bISPT = '[ISPT]';
  bNeto = '[Neto]';
  bNetoLetra = '[NetoLetra]';
  bFechaRecibido = '[FechaRecibido]';


var
  FrmCatalogoNominas: TFrmCatalogoNominas;
  TipoR: string;

  Llave: Integer;

  archivoFacturaXML, rutaImagenCBB,
  archivoNominaPDF: String;


implementation

uses
  Personal, UTFrmAbrirNomina, UTFrmSeleccionarPersonal, UTFrmRecibosNomina,
  UTFrmListaRaya;

{$R *.dfm}

function FechaLarga(Fecha: TDate; Cual: Byte): String;
const
  NomMes: Array[1..12] of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE');
var
  Res: String;
begin
  try
    case Cual of
      1: Res := LeftStr(Formatdatetime('dd/m/y', Fecha), 2) + ' DE ' + NomMes[MonthOf(Fecha)] + ' DEL AÑO ' + IntToStr(YearOf(Fecha));
      2: Res := LeftStr(Formatdatetime('dd/m/y', Fecha), 2) + ' DE ' + NomMes[MonthOf(Fecha)] + ' DEL ' + IntToStr(YearOf(Fecha));
      3: Res := LeftStr(Formatdatetime('dd/m/y', Fecha), 2) + ' ´DÍAS DEL MES ' + NomMes[MonthOf(Fecha)] + ' DEL AÑO ' + IntToStr(YearOf(Fecha));
    end;
  except
    Res := '';
  end;

  Result := Res;
end;

function Limpiar(Cadena: String): String;
const
  Imprimibles = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_';
var
  i: Integer;
  Resultado: String;
begin
  Resultado := '';
  for i := 1 to Length(Cadena) do
    if Pos(UpCase(Cadena[i]), Imprimibles) > 0 then
      Resultado := Resultado + Cadena[i]
    else
      if Pos(Cadena[i], '*\?¿¡!#$"%&()=') > 0 then
        Resultado := Resultado + '_';

  Result := Resultado;
end;

function Limpiar2(Cadena: String): String;
const
  Imprimibles = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-_ ';
var
  i: Integer;
  Resultado: String;
begin
  Resultado := '';
  for i := 1 to Length(Cadena) do
    if Pos(UpCase(Cadena[i]), Imprimibles) > 0 then
      Resultado := Resultado + Cadena[i]
    else
      if Pos(Cadena[i], '*\?¿¡!#$"%&()=') > 0 then
        Resultado := Resultado + '_';

  Result := Resultado;
end;

function StrIndex(Selector : string; CaseList: array of string): Integer;
var
  cnt: Integer;
begin
  Result := -1;

  for cnt:= 0 to Length(CaseList) -1 do
  begin
    if CompareText(Selector, CaseList[cnt]) = 0 then
    begin
      Result:=cnt;
      Break;
    end;
  end;
end;

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
  end;

  Result := Copy(Cadena, 1, Pos('|', Cadena) - 1);
end;

function CuentaPartes(Cadena: String): Integer;
var
  ii: Integer;
begin
  ii := 0;
  while Pos('|', Cadena) > 0 do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
  end;

  Result := ii;
end;

procedure TFrmCatalogoNominas.cdDetalleNominaAfterPost(DataSet: TDataSet);
begin
  LastIdDetalleNomina := DataSet.FieldByName('IdDetalleNomina').AsInteger;
end;

procedure TFrmCatalogoNominas.cdNominaAfterCancel(DataSet: TDataSet);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterClose(DataSet: TDataSet);
begin
  cdNomina2.Close;

  YaLeidoPersonalIncluido := False;
  ReadYet := False;

  Self.Caption := 'Catálogo de Nóminas';

  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterDelete(DataSet: TDataSet);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterEdit(DataSet: TDataSet);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterInsert(DataSet: TDataSet);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterOpen(DataSet: TDataSet);
begin
  Try
    if Not cdTipoNomina.Active then
      cdTipoNomina.Open;

    if ((cdNomina.Active) and (cdNomina.RecordCount > 0)) and (Not cdTipoNomina.Locate('IdTipoNomina', cdNomina.FieldByName('IdTipoNomina').AsInteger, [])) then
      raise Exception.Create('Error Message');

    // Abrir el espejo de Nómina
    if cdNomina2.SQL.Text = '' then
    begin
      if Not CrearConjunto(cdNomina2, 'nom_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas']);
    end;

    cdPersonalIncluido.Close;
    CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina', [DataSet.FieldByName('IdNomina').AsInteger]);
    cdPersonalIncluido.Open;
    tvDatos.DataController.Groups.FullExpand;

    cdDetalleNomina.Close;
    CargarDatosFiltrados(cdPercepciones, 'IdNomina,TipoConcepto', [DataSet.FieldByName('IdNomina').AsInteger, 0]);
    cdPercepciones.Open;

    cdDetalleNomina.Close;
    CargarDatosFiltrados(cdDeducciones, 'IdNomina,TipoConcepto', [DataSet.FieldByName('IdNomina').AsInteger, 1]);
    cdDeducciones.Open;

    if cdNomina2.Active then
      cdNomina2.Close;

    if Not CargarDatosFiltrados(cdNomina2, 'IdNomina', [DataSet.FieldByName('IdNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nómina', DataSet.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

    cdNomina2.Open;

    Self.Caption := 'Catálogo de Nóminas - ' + cdNomina.FieldByName('Titulo').AsString (*+ ' del ' + cdNomina.FieldByName('FechaNomina').AsString + ' al ' + cdNomina.FieldByName('FechaTerminoNomina').AsString*);

    ActualizarEstadoBotones;
  Except
    on e:InteligentException do
    begin
      if DataSet.Active then
        DataSet.Close;

      if (cdNomina2.SQL.Text <> '') and (cdNomina2.Active) then
        cdNomina2.Close;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:exception do
    begin
      if DataSet.Active then
        DataSet.Close;

      if (cdNomina2.SQL.Text <> '') and (cdNomina2.Active) then
        cdNomina2.Close;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message + ' ' + e.classname , mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.cdNominaAfterPost(DataSet: TDataSet);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterRefresh(DataSet: TDataSet);
begin
  cdNomina2.Refresh;
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaBeforeClose(DataSet: TDataSet);
begin
  Self.BringToFront;
  Self.Activate;
end;

procedure TFrmCatalogoNominas.cdNominaBeforeOpen(DataSet: TDataSet);
begin
  Self.BringToFront;
  if Self.WindowState = wsMinimized then
    Self.WindowState := wsNormal;
end;

procedure TFrmCatalogoNominas.eFechaNominaChange(Sender: TObject);
begin
  CambiarDias;
end;

procedure TFrmCatalogoNominas.eFechaTerminoNominaChange(Sender: TObject);
begin
  CambiarDias;
end;

procedure TFrmCatalogoNominas.FormActivate(Sender: TObject);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  for i := 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));

  if Assigned(FrmAbrirNomina) then
  begin
    FrmAbrirNomina.Destroy;
    FrmAbrirNomina := Nil;
  end;

  Try
    if Assigned(cdGenerales) then
    begin
      cdGenerales.Destroy;
      cdGenerales := Nil;
    end;
  Except
    ;
  End;

  if cdNomina.Active then
    cdNomina.Close;

  ActualizarEstadoBotones;

  if Assigned(cdISPT) then
  begin
    cdISPT.Destroy;
    cdISPT := Nil;
  end;

  if Assigned(cdSubsidio) then
  begin
    cdSubsidio.Destroy;
    cdSubsidio := Nil;
  end;

  if Assigned(cdIMSS) then
  begin
    cdIMSS.Destroy;
    cdIMSS := Nil;
  end;

  if Assigned(cdUMA) then
  begin
    cdUMA.Destroy;
    cdUMA := Nil;
  end;

  Action := caFree;
end;

procedure TFrmCatalogoNominas.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Obj: TWinControl;
  LocCursor: TCursor;
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;
        Obj := Nil;

        if eIdTipoNomina.KeyValue = Null then
        begin
          Obj := eIdTipoNomina;
          raise InteligentException.CreateByCode(18, ['Tipo de Nómina']);
        end;

        if Trim(eTitulo.Text) = '' then
        begin
          Obj := eTitulo;
          raise InteligentException.CreateByCode(18, ['Título']);
        end;

        CanClose := True;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCatalogoNominas.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  cdReal.CreateDataSet;
  cdReal.EmptyDataSet;

  pCual := -1;
  IndiceDeptoOrg := -1;
  CargandoGuardias := True;
  ConEfecto := True;
  if not Assigned(cdPersonalIncluido) then
    cdPersonalIncluido := TZQuery.Create(Nil);

  YaCreado := False;
  YaLeidoPersonalIncluido := False;
  ReadYet := False;
  SMGVDF := 0;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      CrearConjunto(cdPersonalIncluido, 'nom_nominapersonal', ccUpdate);
      CrearConjunto(cdUMA, 'rhu_salario', ccCatalog);
      CrearConjunto(cdDetalleNomina, 'nom_detallenomina', ccUpdate);
      CrearConjunto(cdPercepciones, 'nom_detallenomina', ccCatalog);
      CrearConjunto(cdDeducciones, 'nom_detallenomina', ccCatalog);
      CrearConjunto(cdVacacionesPagadas, 'nom_vacacionespagadas', ccUpdate);

      CargarDatosFiltrados(cdUMA, 'TipoSalario', ['UMA']);
      cdUMA.Open;

      cdTipoNomina.Open;

      ConceptoNombre := TStringList.Create;
      ConceptoColumna := TStringList.Create;
      posFormula := tStringList.Create;
      IniciaFormula := TStringList.Create;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.FormDeactivate(Sender: TObject);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.FormaProcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) and (InteliDialog.ShowModal('Cancelar Proceso', '¿Desea cancelar el proceso actual?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    raise InteligentException.CreateByCode(24, ['Proceso cancelado por el usuario']);
end;

procedure TFrmCatalogoNominas.FormShow(Sender: TObject);
var
  i: Integer;
begin
  pCual := -1;
  ShowSummary := True;

  for i := 0 to tvDatos.ColumnCount -1 do
    Try
      tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i)));
    Except
      ;
    End;

  if Not CrearConjunto(cdNomina, 'nom_nomina', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Nóminas]']);

  pcMain.TabIndex := 1;

  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.frContratarGetValue(const VarName: string;
  var Value: Variant);
begin
{  if CompareText(VarName, 'TituloDepartamento') = 0 then
    Value := dsDepartamento.DataSet.FieldByName('TituloDepartamento').AsString;
}
  if CompareText(VarName, 'totded') = 0 then
    Value := TotalDeducciones;

  if CompareText(VarName, 'totper') = 0 then
    Value := TotalPercepciones;
{
  if CompareText(VarName, 'neto') = 0 then
    Value := Neto;
}
  if CompareText(VarName, 'totdedcomp') = 0 then
    Value := TotalDedComp;

  if CompareText(VarName, 'totpercomp') = 0 then
    Value := TotalPerComp;

  if CompareText(VarName, 'netocomp') = 0 then
    Value := NetoComp;
{
  if CompareText(VarName, 'diast') = 0 then
    Value := DiasT;
}
  if CompareText(VarName, 'diascomp') = 0 then
    Value := DiasComp;

{  if CompareText(varName, 'NombreOrganizacion') = 0 then
    Value := cmbOrganizacion.Text;}
end;

procedure TFrmCatalogoNominas.repSindicatoGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Conse' then
  begin
    Inc(Consecutivo);
    Value := Consecutivo;
  end;
end;

procedure TFrmCatalogoNominas.RSubReporteGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'SMGVDF') = 0 then
    Value := SMGVDF;
end;

procedure TFrmCatalogoNominas.ActualizarEstadoBotones;
begin
  case cdNomina.State of
    dsInsert: Caption := 'Nueva Nómina';
    dsEdit: Caption := 'Editando Nómina';
    dsBrowse: Caption := 'NÓMINA: ' + cdNomina.FieldByName('Titulo').AsString;
  end;

  cxGrid1.Visible := cdNomina.Active;

  FrmMain.bmCalculos.Visible := cdNomina.Active;
  FrmMain.btnFiniquitoWord.Enabled := cdNomina.Active and (cdNomina.RecordCount > 0) and (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2);
  FrmMain.bmReportes.Visible := cdNomina.Active;
  FrmMain.btnAbrirNomina.Enabled := Not (cdNomina.State in [dsInsert, dsEdit]);
  FrmMain.btnEliminarNomina.Enabled := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
  FrmMain.btnCerrarNomina.Enabled := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
  FrmMain.btnGuardarNomina.Enabled := cdNomina.Active and (((cdNomina.RecordCount = 1) and (cdNomina.State = dsEdit)) or (cdNomina.State = dsInsert));
end;

procedure TFrmCatalogoNominas.onClickCheck(sender: TObject);
var
  TabSheet: TcxTabSheet;
  Componente: TComponent;
begin
  // Localizar el padre
  if Sender.ClassNameIs('TcxCheckBox') then
  begin
    TabSheet := TcxTabSheet(TPanel(TcxCheckBox(Sender).Parent).Parent);
    Componente := TabSheet.FindComponent('Prv_' + TabSheet.Name);
    if Assigned(Componente) and Componente.ClassNameIs('TfrxPreview') then
      TFrxPreview(Componente).ThumbnailVisible := TcxCheckBox(Sender).Checked;
  end;
end;

procedure TFrmCatalogoNominas.BotonAbrir;
begin
  // Llamar la ventana de Abrir...
  if Not Assigned(FrmAbrirNomina) then
    Application.CreateForm(TFrmAbrirNomina, FrmAbrirNomina);

  FrmAbrirNomina.dsNominaFuera.DataSet := cdNomina;
  if FrmAbrirNomina.ShowModal <> mrOk then
    Close;
end;

procedure TFrmCatalogoNominas.BotonNuevo;
begin
  ConEfecto := False;

  // Llamar la ventana de Abrir...
  Try
    if cdNomina.Active then
    begin
      if cdNomina.State = dsEdit then
      begin
        case InteliDialog.ShowModal('Hay una Nómina abierta', 'Actualmente se encuentra editando una Nómina.' + #10 + #10 + '¿Desea grabar esta Nómina en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: FrmMain.btnGuardarNomina.Click;
          mrNo: cdNomina.Close;
          mrCancel: raise InteligentWarning.Create('*');
        end;
      end;

      cdNomina.Close;
    end;

    if Not CargarDatosFiltrados(cdNomina, 'IdNomina', [-9]) then
      raise InteligentException.CreateByCode(21, ['Nóminas']);

    cdTipoNomina.First;

    cdNomina.Open;
    cdNomina.Append;
    cdNomina.FieldByName('IdNomina').AsInteger := 0;
    cdNomina.FieldByName('FechaNomina').AsDateTime := Now();
    cdNomina.FieldByName('FechaTerminoNomina').AsDateTime := Now() +1;
    cdNomina.FieldByName('FechaPagoNomina').AsDateTime := Now() +2;
    cdNomina.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
    cdNomina.FieldByName('Dias').AsInteger := cdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
    cdNomina.FieldByName('Estado').AsString := 'ABIERTA';
    cdNomina.FieldByName('Domingos').AsInteger := 0;
    ActualizarEstadoBotones;

    FormaEdit := TForm.Create(Self);
    try
      FormaEdit.Caption := 'Captura nueva Nómina';
      FormaEdit.Width := pnlEditar.Width + 20;
      FormaEdit.Height := pnlEditar.Height + 60;
      FormaEdit.Position := poOwnerFormCenter;
      FormaEdit.OnCloseQuery := FormaEditCloseQuery;

      pnlEditar.Parent := FormaEdit;
      pnlEditar.Align := alClient;
      pnlEditar.Visible := True;

      if FormaEdit.ShowModal = mrOk then
        cdNomina.Post
      else
      begin
        cdNomina.Cancel;
        Close;
      end;
    finally
      pnlEditar.Visible := False;
      pnlEditar.Align := alNone;
      pnlEditar.Parent := Self;
      FormaEdit.Free;
    end;
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.BotonGuardar;
var
  Estado: TDataSetState;
  Cursor: TCursor;
  Ultimo: Integer;
begin
  if cdNomina.State in [dsEdit, dsInsert] then
  begin
    Try
      Cursor := Screen.Cursor;
      {Try
        Screen.Cursor := crSQLWait;

        if Length(Trim(edt_Titulo.Text)) > 0 then
          cdNomina.FieldByName('Titulo').AsString := edt_Titulo.Text;

        if cbbPeriodos.EditValue <> null then
          cdNomina.FieldByName('IdPeriodosGuardia').AsInteger := cbbPeriodos.EditValue;

        if cdNomina.FieldByName('Titulo').AsString = '' then
        begin
          Edt_Titulo.SetFocus;
          raise InteligentException.CreateByCode(18, ['Título']);
        end;

        if (pnl_Periodo.Visible) and (cdNomina.FieldByName('IdPeriodosGuardia').IsNull) then
        begin
          cbbPeriodos.SetFocus;
          raise InteligentException.CreateByCode(18, ['Periodo de Guardia']);
        end;
      Finally
        Screen.Cursor := Cursor;
      End;
      Estado := cdNomina.State;

      if Not pnl_Periodo.Visible then
        cdNomina.FieldByName('IdPeriodosGuardia').Clear;

      Try
        cdNomina.FieldByName('FechaNomina').AsDateTime := edt_FechaNomina.Date;
        cdNomina.FieldByName('FechaTerminoNomina').AsDateTime := edt_FechaTerminoNomina.Date;
        cdNomina.FieldByName('FechaPagoNomina').AsDateTime := EdtFechaPago.Date;
        cdNomina.Post;
        cdNomina.ApplyUpdates(-1);

        Ultimo := UltimoId;
      Finally
        if Estado = dsEdit then
          CancelarBloqueo(cdNomina, cdNomina.FieldByName('IdNomina').AsInteger);

        cdNomina.Close;
      End;

      if Not CargarDatosFiltrados(cdNomina, 'IdNomina', [Ultimo]) then
        raise InteligentException.CreateByCode(6, ['Nóminas', Ultimo, 'Id. Nómina']);

      if CuantosRegistros(cdNomina) = 0 then
        raise InteligentException.CreateByCode(27, ['Nóminas', Ultimo]);

      cdNomina.Open;
      //registrarEvento('NOMINAS','NUEVA NOMINA','CREACIÓN DE UN NUEVO APARTADO DE NOMINA', 0.0, 0);
      destruirObjetos;}
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoNominas.BotonEliminar;
var
  Cursor: TCursor;
  Cuantos, i: Integer;
  Padre, Hijo: TTreeNode;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      // Verificar si la nómina tiene datos de nomina
      if Not Assigned(cdBuscarDatos) then
        cdBuscarDatos := TZReadOnlyQuery.Create(self);
        (*dsTmpNomina := TDataSource.Create(self); *)

      if cdBuscarDatos.SQL.Text = '' then
        if Not CrearConjunto(cdBuscarDatos, 'nom_nominapersonal', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Personal de Nómina']);

      if Not CargarDatosFiltrados(cdBuscarDatos, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Personal de Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

      try
        cdBuscarDatos.Open;
        Cuantos := cdBuscarDatos.RecordCount;
      finally
        cdBuscarDatos.Close;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;

    // Si no tiene datos de nómina se deberá permitir borrar el registro
    if ((Cuantos > 0) and (InteliDialog.ShowModal('La nómina ya tiene datos procesados',
      'La nómina que ha solicitado eliminar ya se encuentra procesada para un total de '
      + IntToStr(Cuantos) + ' Empleados.' + #10 + #10 + 'Título: ' +
      cdNomina.FieldByName('Titulo').AsString + #10 + 'Desde: ' +
      cdNomina.FieldByName('FechaNomina').AsString + #10 + 'Hasta: ' +
      cdNomina.FieldByName('FechaTerminoNomina').AsString + #10 + 'Días: ' +
      cdNomina.FieldByName('Dias').AsString + #10 + #10 +
      'Si elimina esta nómina se perderan todos los datos previamente calculados.'
      + #10 + #10 + '¿Está seguro que desea eliminar este registro de Nómina?',
      mtConfirmation, [MbYes, mbNo], 0) = mrYes)) or
      ((Cuantos = 0) and (InteliDialog.ShowModal('Eliminar registro de Nómina',
      'Usted a solicitado eliminar la nómina:' + #10 + #10 + 'Título: ' +
      cdNomina.FieldByName('Titulo').AsString + #10 + 'Desde: ' +
      cdNomina.FieldByName('FechaNomina').AsString + #10 + 'Hasta: ' +
      cdNomina.FieldByName('FechaTerminoNomina').AsString + #10 + 'Días: ' +
      cdNomina.FieldByName('Dias').AsString + #10 + #10 +
      '¿Está seguro de eliminar ahora este registro de Nómina?', mtConfirmation,
      [MbYes, mbNo], 0) = mrYes)) then
    begin
      if ((Cuantos > 0) and (InteliDialog.ShowModal('CONFIRMACIÓN DE ELIMINACIÓN DE DATOS DE NÓMINA', '¿CONFIRMA LA ELIMINACIÓN DE TODOS LOS DATOS DE LA NÓMINA?', mtConfirmation, [MbYes, mbNo], 0) = mrYes)) or (Cuantos = 0) then
      begin
        if cdNomina.State in [dsInsert, dsEdit] then
          cdNomina.Cancel;

        Cursor := Screen.Cursor;

        Try
          Screen.Cursor := crAppStart;

          // Eliminar registro de Nómina
          Try
            cdNomina.Delete;
          Except
            cdNomina.CancelUpdates;
            raise;
          End;

          // Eliminar registros dependientes de Nómina si es que existieran
          cdBuscarDatos.Open;
          while cdBuscarDatos.RecordCount > 0 do
            cdBuscarDatos.Delete;

          if Assigned(FrmAbrirNomina) then
          begin
            // Eliminar el nodo del treeview para que ya no aparezca
            i := 0;
            while (i < FrmAbrirNomina.tvNominas.Items.Count) and
              ((Not Assigned(FrmAbrirNomina.tvNominas.Items.Item[i].Data)) or
              ((Assigned(FrmAbrirNomina.tvNominas.Items.Item[i].Data)) and
              (TInfoNomina(FrmAbrirNomina.tvNominas.Items.Item[i].Data).IdNomina
              <> cdNomina.FieldByName('IdNomina').AsInteger))) do
              Inc(i);

            if (i < FrmAbrirNomina.tvNominas.Items.Count) and
              ((Assigned(FrmAbrirNomina.tvNominas.Items.Item[i].Data)) and
              (TInfoNomina(FrmAbrirNomina.tvNominas.Items.Item[i].Data)
              .IdNomina = cdNomina.FieldByName('IdNomina').AsInteger)) then
            begin
              Padre := FrmAbrirNomina.tvNominas.Items.Item[i].Parent;
              FrmAbrirNomina.tvNominas.Items.Item[i].Delete;

              // Verificar si el padre se ha quedado sin hijos
              Hijo := Padre.GetFirstChild;
              if Not Assigned(Hijo) then
                Padre.Delete;
            end;
          end;
        Finally
          Screen.Cursor := Cursor;
        End;
      end;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e: Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.BotonCerrar;
begin
  if cdNomina.State in [dsInsert, dsEdit] then
    cdNomina.CancelUpdates;

  Close;
end;

procedure TFrmCatalogoNominas.CambiarDias;
begin
  if cdNomina.State In [dsEdit, dsInsert] then
    cdNomina.FieldByName('Dias').AsInteger := 1 + Trunc(eFechaTerminoNomina.Date - eFechaNomina.Date);
end;

procedure TFrmCatalogoNominas.SeleccionarPersonal;
begin
  // Verificar el dataset del personal disponible
  if cdTodoPersonal.SQL.Text = '' then
  begin
    if cdNomina.FieldByName('IdTipoNomina').AsInteger = 6 then
      CrearConjunto(cdTodoPersonal, 'nuc_personalvacaciones_noennomina', ccSelect)
    else
      CrearConjunto(cdTodoPersonal, 'nuc_personal_noennomina', ccSelect);
  end;

  CargarDatosFiltrados(cdTodoPersonal, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]);
  if cdTodoPersonal.Active then
    cdTodoPersonal.Refresh
  else
    cdTodoPersonal.Open;

  Application.CreateForm(TFrmSeleccionarPersonal, FrmSeleccionarPersonal);
  try
    FrmSeleccionarPersonal.IdNomina := cdNomina.FieldByName('IdNomina').AsInteger;
    FrmSeleccionarPersonal.dsPersonalIncluido.DataSet := cdPersonalIncluido;
    FrmSeleccionarPersonal.dsTodoPersonal.DataSet := cdTodoPersonal;
    FrmSeleccionarPersonal.ShowModal;
  finally

  end;
end;

procedure TFrmCatalogoNominas.BotonCalcularSeleccionados;
const
  nPasos = 7;

var
  i, ii, PasoDias, Vueltas, Vueltas2: Integer;
  IMSS: TIMSS;
  CuotaPatronal,
  CuotaEmpleado,
  DiasPagar,
  Sueldo,
  ISPT,
  Subsidio,
  Sindicato,
  Infonavit,
  UMA,
  ISPTNormales,
  ISPTReales,
  FactorInfonavit,
  SeguroVidaInfonavit,
  Semanal,
  Domingos,
  Aguinaldo,
  AguinaldoExen,
  AguinaldoGrav,
  Vacaciones,
  PrimaVacacional,
  PrimaExen,
  PrimaGrav,
  TasaImpuesto,
  PrimaVacDiaria,
  PrimaVacMensual,
  ImpuestoRetener,
  IngresosReales,
  IngresosNormales,
  IngresosMasPrima,
  DiferenciaEntreImpuestos,
  SalarioReal,
  AguinaldoReal,
  VacacionesReal,
  PrimaVacacionalReal,
  PrimaRealExen,
  PrimaRealGrav,
  AguinaldoRealExen,
  AguinaldoRealGrav,
  ISPTReal, Bono, Neto,
  BonoGrav, FactorAnio,
  DiferenciaEntreImpuestosReal: Real;
  DiasBim, Bim: Integer;
  InicioBim, FinBim: TDate;
  FormaProc: TForm;
  v: Variant;
  Marca: TBookMark;
  PrimeraVez,
  Termina: Boolean;

function UltimoDia(Anio, Mes: Word): Word;
begin
  case mes of
    2:  if IsLeapYear(Anio) then Result:=29 else Result:=28;
    1,3,5,7,8,10,12: Result:=31;
    4,6,9,11:        Result:=30;
  end;
end;

begin
  try
    try
      FormaProc := TForm.Create(Self);
      Connection.qryBuscaTrx.Close;
      Connection.qryBuscaTrx.SQL.Text := 'START TRANSACTION';
      Connection.qryBuscaTrx.ExecSQL;
      try
        FormaProc.Height := 153;
        FormaProc.Width := 692;
        FormaProc.Caption := 'Procesando Nómina: ' + cdNomina.FieldByName('Titulo').AsString;
        FormaProc.Position := poOwnerFormCenter;
        FormaProc.KeyPreview := True;

        pnlProcesando.Parent := FormaProc;
        pnlProcesando.Align := alClient;
        pnlProcesando.Visible := True;

        ProgressBar1.Position := 0;
        ProgressBar2.Position := 0;

        ProgressBar1.Max := nPasos;
        ProgressBar2.Max := tvDatos.Controller.SelectedRowCount * nPasos;

        FormaProc.Show;

        try
          ProgressBar1.Position := 0;

          cdReal.EmptyDataSet;

          tvDatos.DataController.BeginLocate;
          tvDatos.DataController.DataSet.DisableControls;
          Marca := tvDatos.DataController.DataSet.BookMark;

          for ii := 0 to PRED(tvDatos.Controller.SelectedRowCount) do
          begin
            v := tvDatos.DataController.Values[tvDatos.Controller.SelectedRecords[ii].RecordIndex, 1];
            tvDatos.DataController.DataSet.Locate('IdPersonal', v, []);

            lblTituloProc.Caption := cdPersonalIncluido.FieldByName('NombreCompleto').AsString;

            PrimeraVez :=  cdNomina.FieldByName('IdTipoNomina').AsInteger = 2;
            Termina := True;
            Bono := 0;
            Vueltas := 0;
            Vueltas2 := 0;

            repeat
              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
                lblLeyendaProc.Caption := 'Sueldo';

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 2 then
                lblLeyendaProc.Caption := 'Vacaciones/Prima Vacacional';

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 6 then
                lblLeyendaProc.Caption := 'Vacaciones/Prima Vacacional';

              ProgressBar1.Position := 1;
              ProgressBar2.Position := ProgressBar2.Position + 1;
              Application.ProcessMessages;

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
              begin
                Semanal := StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString) * StrToFloat(cdPersonalIncluido.FieldByName('DiasEfectivos').AsString);
                Domingos := StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString) * StrToFloat(cdPersonalIncluido.FieldByName('DomingosEfectivos').AsString);
                Sueldo := StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString) * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString);
              end;

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 2 then
              begin
                Semanal := 0;
                Domingos := 0;
                Sueldo := 0;
                if Trunc(cdPersonalIncluido.FieldByName('FechaPagoAguinaldo').AsDateTime) < Trunc(cdPersonalIncluido.FieldByName('Alta').AsDateTime) then
                  FactorAnio := ((1 + Trunc(cdPersonalIncluido.FieldByName('Baja').AsDateTime) - Trunc(cdPersonalIncluido.FieldByName('Alta').AsDateTime)) / 365)
                else
                  FactorAnio := ((1 + Trunc(cdPersonalIncluido.FieldByName('Baja').AsDateTime) - Trunc(cdPersonalIncluido.FieldByName('FechaPagoAguinaldo').AsDateTime)) / 365);

                Aguinaldo := FactorAnio * 15;
                if Aguinaldo > 15 then
                  Aguinaldo := 15;
                Aguinaldo := Round((Aguinaldo * StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString)) * 100) / 100;
                Vacaciones := Round((StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString) * StrToFloat(cdPersonalIncluido.FieldByName('DiasVacacionesPendientes').AsString)) * 100) / 100;
                PrimaVacacional := Round(Vacaciones * StrToFloat(cdPersonalIncluido.FieldByName('PrimaVacacional').AsString)) / 100;

                if PrimeraVez then
                begin
                  Bono := StrToFloat(cdPersonalIncluido.FieldByName('Indemnizacion').AsString);

                  SalarioReal := Round((StrToFloat(cdPersonalIncluido.FieldByName('SalarioSemanalBaja').AsString) / 7) * 100) / 100;
                  PasoDias := 1 + ((Trunc(cdPersonalIncluido.FieldByName('Baja').AsDateTime) - Trunc(cdPersonalIncluido.FieldByName('FechaPagoAguinaldo').AsDateTime)));
                  if PasoDias = 366 then
                    PasoDias := 365;
                  AguinaldoReal := (PasoDias / 365) * 15;
                  if AguinaldoReal > 15 then
                    AguinaldoReal := 15;
                  AguinaldoReal := Round(AguinaldoReal * SalarioReal * 100) / 100;
                  VacacionesReal := Round((SalarioReal * StrToFloat(cdPersonalIncluido.FieldByName('DiasVacacionesPendientes').AsString)) * 100) / 100;
                  PrimaVacacionalReal := Round(VacacionesReal * StrToFloat(cdPersonalIncluido.FieldByName('PrimaVacacional').AsString)) / 100;
                end;
              end;

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 6 then
              begin
                SalarioReal := Round(StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString) * 100) / 100;
                VacacionesReal := Round((SalarioReal * StrToFloat(cdPersonalIncluido.FieldByName('VacacionesProgramadas').AsString)) * 100) / 100;
                PrimaVacacionalReal := Round(VacacionesReal * StrToFloat(cdPersonalIncluido.FieldByName('PrimaVacacional').AsString)) / 100;

                Vacaciones := StrToFloat(cdPersonalIncluido.FieldByName('SalarioIntegrado').AsString) * StrToFloat(cdPersonalIncluido.FieldByName('VacacionesProgramadas').AsString);
                PrimaVacacional := Round(Vacaciones * StrToFloat(cdPersonalIncluido.FieldByName('PrimaVacacional').AsString)) / 100;
              end;

              lblLeyendaProc.Caption := 'I.S.P.T.';
              ProgressBar1.Position := ProgressBar1.Position + 1;
              ProgressBar2.Position := ProgressBar2.Position + 1;
              Application.ProcessMessages;

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
              begin
                IngresosNormales := (Sueldo / StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString)) * 30.4;
                CalcularISPT(cdNomina.FieldByName('FechaNomina').AsDateTime, cdNomina.FieldByName('FechaTerminoNomina').AsDateTime, IngresosNormales, ISPT, Subsidio);
                ISPT := Round(((ISPT / 30.4) * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString)) * 100) / 100;
                Subsidio := Round(((Subsidio / 30.4) * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString)) * 100) / 100;
              end;

              if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) or (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) then
              begin
                // Calcular el impuesto sobre los ingresos normales
                IngresosNormales := Round(((StrToFloat(cdPersonalIncluido.FieldByName('SalarioIntegrado').AsString)) * 30.4) * 100) / 100;
                CalcularISPT(cdNomina.FieldByName('FechaNomina').AsDateTime, cdNomina.FieldByName('FechaTerminoNomina').AsDateTime, IngresosNormales, ISPTNormales, Subsidio);

                if PrimeraVez and (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) then
                begin
                  // Calcular el impuesto sobre los ingresos reales
                  IngresosReales := SalarioReal * 30.4;
                  CalcularISPT(cdNomina.FieldByName('FechaNomina').AsDateTime, cdNomina.FieldByName('FechaTerminoNomina').AsDateTime, IngresosReales, ISPTReales, Subsidio);
                end;

                // Prima Vacacional Exenta
                PrimaExen := StrToFloat(cdPersonalIncluido.FieldByName('DiasExcentoPrimaVacacional').AsString) * StrToFloat(cdUMA.FieldByName('Salario').AsString);
                if PrimaExen < PrimaVacacional then
                  PrimaGrav := PrimaVacacional - PrimaExen
                else
                  PrimaGrav := 0;

                // Aguinaldo Exento
                AguinaldoExen := 30 * StrToFloat(cdUMA.FieldByName('Salario').AsString);
                if AguinaldoExen < Aguinaldo then
                  AguinaldoGrav := Aguinaldo - AguinaldoExen
                else
                  AguinaldoGrav := 0;

                if AguinaldoExen < Bono then
                  BonoGrav := Bono - AguinaldoExen
                else
                  BonoGrav := 0;

                if cdNomina.FieldByName('IdTipoNomina').AsInteger = 6 then
                begin
                  //if cdPersonalIncluido.FieldByName('CobraVacaciones').AsString = 'Si' then
                    IngresosMasPrima := Vacaciones + PrimaGrav + IngresosNormales
                  {else
                    IngresosMasPrima := PrimaGrav + IngresosNormales;}
                end
                else
                  IngresosMasPrima := PrimaGrav + AguinaldoGrav + Vacaciones + IngresosNormales + BonoGrav;

                CalcularISPT(cdNomina.FieldByName('FechaNomina').AsDateTime, cdNomina.FieldByName('FechaTerminoNomina').AsDateTime, IngresosMasPrima, ISPT, Subsidio);

                DiferenciaEntreImpuestos := ISPT - ISPTNormales;
                if cdNomina.FieldByName('IdTipoNomina').AsInteger = 6 then
                  ISPT := DiferenciaEntreImpuestos;

                //ISPT := DiferenciaEntreImpuestos;

                // Calcular en base al salario real
                if PrimeraVez and (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) then
                begin
                  // Prima Vacacional Exenta
                  PrimaRealExen := StrToFloat(cdPersonalIncluido.FieldByName('DiasExcentoPrimaVacacional').AsString) * StrToFloat(cdUMA.FieldByName('Salario').AsString);
                  if PrimaRealExen < PrimaVacacionalReal then
                    PrimaRealGrav := PrimaVacacionalReal - PrimaRealExen
                  else
                    PrimaRealGrav := 0;

                  // Aguinaldo Exento
                  AguinaldoRealExen := 30 * StrToFloat(cdUMA.FieldByName('Salario').AsString);
                  if AguinaldoRealExen < AguinaldoReal then
                    AguinaldoRealGrav := AguinaldoReal - AguinaldoRealExen
                  else
                    AguinaldoRealGrav := 0;

                  IngresosMasPrima := PrimaRealGrav + AguinaldoRealGrav + VacacionesReal + IngresosReales;

                  CalcularISPT(cdNomina.FieldByName('FechaNomina').AsDateTime, cdNomina.FieldByName('FechaTerminoNomina').AsDateTime, IngresosMasPrima, ISPTReal, Subsidio);

                  DiferenciaEntreImpuestosReal := ISPTReal - ISPTReales;
                  //ISPTReal := DiferenciaEntreImpuestosReal;

                  Neto := AguinaldoReal + VacacionesReal + PrimaVacacionalReal - DiferenciaEntreImpuestosReal;
                end;
              end;

              CuotaPatronal := 0;
              CuotaEmpleado := 0;
              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
              begin
                lblLeyendaProc.Caption := 'Cuota IMSS';
                ProgressBar1.Position := ProgressBar1.Position + 1;
                ProgressBar2.Position := ProgressBar2.Position + 1;
                Application.ProcessMessages;
                CalcularIMSS(cdNomina.FieldByName('FechaNomina').AsDateTime, cdNomina.FieldByName('FechaTerminoNomina').AsDateTime, StrToFloat(cdPersonalIncluido.FieldByName('SalarioIntegrado').AsString), IMSS);
                for i := 0 to 7 do
                begin
                  CuotaPatronal := CuotaPatronal + IMSS.Datos[i].Patron;
                  CuotaEmpleado := CuotaEmpleado + IMSS.Datos[i].Empleado;
                end;
                DiasPagar := StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString);
                CuotaPatronal := Round(CuotaPatronal * DiasPagar * 100) / 100;
                CuotaEmpleado := Round(CuotaEmpleado * DiasPagar * 100) / 100;
              end;

              if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) and (cdPersonalIncluido.FieldByName('Sindicato').AsString = 'Si') then
              begin
                lblLeyendaProc.Caption := 'Sindicato';
                ProgressBar1.Position := ProgressBar1.Position + 1;
                ProgressBar2.Position := ProgressBar2.Position + 1;
                Application.ProcessMessages;
                Sindicato := Round(Sueldo * 3) / 100;
              end
              else
                Sindicato := 0.00;

              Infonavit := 0.00;
              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
              begin
                lblLeyendaProc.Caption := 'Infonavit';
                ProgressBar1.Position := ProgressBar1.Position + 1;
                ProgressBar2.Position := ProgressBar2.Position + 1;
                Application.ProcessMessages;
                if (Sueldo > 0) and (cdPersonalIncluido.FieldByName('Infonavit').AsString = 'Si') then
                begin
                  UMA := StrToFloat(cdUMA.FieldByName('Salario').AsString);
                  SeguroVidaInfonavit := 15;
                  Bim := Trunc((MonthOfTheYear(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime) / 2) + 0.5);
                  InicioBim := EncodeDate(YearOf(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime), ((Bim -1) * 2) +1, 1);
                  FinBim := EncodeDate(YearOf(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime), ((Bim -1) * 2) +2, UltimoDia(YearOf(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime), ((Bim -1) * 2) +2));
                  DiasBim := 1 + Trunc(FinBim - InicioBim);
                  FactorInfonavit := StrToFloat(cdPersonalIncluido.FieldByName('FactorInfonavit').AsString);

                  if cdPersonalIncluido.FieldByName('tAplicacionInfonavit').AsString = 'Fijo' then
                    Infonavit := (((FactorInfonavit * 2) + SeguroVidaInfonavit) / DiasBim) * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString);
                    //  (((({EMPLEADO.FactorInfonavit}*{2})+{EMPLEADO.SeguroVidaINFONAVIT})/{EMPLEADO.Anito})*{NOMINA.DiasEfectivos})

                  if cdPersonalIncluido.FieldByName('tAplicacionInfonavit').AsString = 'Salario' then
                    Infonavit := ((((StrToFloat(cdPersonalIncluido.FieldByName('SalarioDiario').AsString) * FactorInfonavit) * 2) / DiasBim) * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString)) + (SeguroVidaInfonavit / DiasBim * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString));
                    //  (({NOMINA.SUELDO}*({EMPLEADO.FactorInfonavit}/{100}))+(({EMPLEADO.SeguroVidaINFONAVIT}/{EMPLEADO.Anito})*{NOMINA.DiasEfectivos}))

                  if cdPersonalIncluido.FieldByName('tAplicacionInfonavit').AsString = 'SalMinZona' then
                    Infonavit := ((((UMA * FactorInfonavit) * 2) / DiasBim) * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString)) + (SeguroVidaInfonavit / DiasBim * StrToFloat(cdPersonalIncluido.FieldByName('DiasPagar').AsString));
                    //  ((((({EMPLEADO.SalMinDF}*{EMPLEADO.FactorINFONAVIT})*{2})+{EMPLEADO.SeguroVidaINFONAVIT})/{EMPLEADO.Anito})*{NOMINA.DiasEfectivos})

                  Infonavit := Round(Infonavit * 100) / 100;
                end;
              end;

              // Determinar el fin del ciclo cuando se trate de finiquitos
              PrimeraVez := False;
              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 2 then
              begin
                ISPT := DiferenciaEntreImpuestos;
                Inc(Vueltas);
                Termina := Round(((Aguinaldo + Vacaciones + PrimaVacacional + Bono - ISPT) * 10)) = Round(Neto * 10);
                if Not Termina and (Vueltas > 10) then
                begin
                  Inc(Vueltas2);
                  Termina := Round((Aguinaldo + Vacaciones + PrimaVacacional + Bono - ISPT)) = Round(Neto);
                end;

                if Not Termina and (Vueltas2 > 10) then
                  Termina := Round((Aguinaldo + Vacaciones + PrimaVacacional + Bono - ISPT) / 10) = Round(Neto / 10);

                if Not Termina then
                  Bono := Bono + (Neto - (Aguinaldo + Vacaciones + PrimaVacacional + Bono - ISPT));
              end;
            until Termina;

            // Borrar el registro si es que existe
            lblLeyendaProc.Caption := 'Eliminando registro previo';
            ProgressBar1.Position := ProgressBar1.Position + 1;
            ProgressBar2.Position := ProgressBar2.Position + 1;
            Application.ProcessMessages;

            if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) or (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) then
            begin
              cdVacacionesPagadas.Close;
              CargarDatosFiltrados(cdVacacionesPagadas, 'IdPersonalIMSS', [cdPersonalIncluido.FieldByName('IdAlta').AsInteger]);
              cdVacacionesPagadas.Open;
              if cdVacacionesPagadas.RecordCount > 1 then
              begin
                cdVacacionesPagadas.Edit;
                cdVacacionesPagadas.FieldByName('IdNominaPersonal').Clear;
                cdVacacionesPagadas.Post;
              end;
              cdVacacionesPagadas.Close;
            end;

            Connection.qryBuscaTrx.Close;
            Connection.qryBuscaTrx.SQL.Text := 'DELETE FROM nom_detallenomina WHERE IdNomina = ' + cdNomina.FieldByName('IdNomina').AsString + ' AND IdPersonal = ' + cdPersonalIncluido.FieldByName('IdPersonal').AsString;
            Connection.qryBuscaTrx.ExecSQL;

            lblLeyendaProc.Caption := 'Agregando registro';
            ProgressBar1.Position := ProgressBar1.Position + 1;
            ProgressBar2.Position := ProgressBar2.Position + 1;
            Application.ProcessMessages;
            cdDetalleNomina.Close;
            CargarDatosFiltrados(cdDetalleNomina, 'IdNomina', [-9]);
            cdDetalleNomina.Open;

            cdDetalleNomina.Append;
            cdDetalleNomina.FieldByName('IdDetalleNomina').AsInteger := 0;
            cdDetalleNomina.FieldByName('IdNomina').AsInteger := cdNomina.FieldByName('IdNomina').AsInteger;
            cdDetalleNomina.FieldByName('IdPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;

            if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
            begin
              cdDetalleNomina.FieldByName('Clave1').AsString := '1';
              cdDetalleNomina.FieldByName('Descripcion1').AsString := 'Sueldo Semanal';
              cdDetalleNomina.FieldByName('Importe1').AsString := FloatToStr(Semanal);
              cdDetalleNomina.FieldByName('Cantidad1').AsString := cdPersonalIncluido.FieldByName('DiasTrabajados').AsString;
              cdDetalleNomina.FieldByName('Exento1').AsString := '0';

              cdDetalleNomina.FieldByName('Clave2').AsString := '2';
              cdDetalleNomina.FieldByName('Descripcion2').AsString := 'Septimo Día';
              cdDetalleNomina.FieldByName('Importe2').AsString := FloatToStr(Domingos);
              cdDetalleNomina.FieldByName('Cantidad2').AsString := cdPersonalIncluido.FieldByName('Domingos').AsString;
              cdDetalleNomina.FieldByName('Exento2').AsString := '0';
            end
            else
            begin
              cdDetalleNomina.FieldByName('Clave1').AsString := '';
              cdDetalleNomina.FieldByName('Descripcion1').AsString := '';

              cdDetalleNomina.FieldByName('Clave2').AsString := '';
              cdDetalleNomina.FieldByName('Descripcion2').AsString := '';
            end;

            if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) then
            begin
              cdDetalleNomina.FieldByName('Clave3').AsString := '3';
              cdDetalleNomina.FieldByName('Descripcion3').AsString := 'Gratificación';
              cdDetalleNomina.FieldByName('Importe3').AsString := FloatToStr(Bono);
              cdDetalleNomina.FieldByName('Cantidad3').AsString := '';
              cdDetalleNomina.FieldByName('Exento3').AsString := '';
            end
            else
            begin
              cdDetalleNomina.FieldByName('Clave3').AsString := '';
              cdDetalleNomina.FieldByName('Descripcion3').AsString := '';
              cdDetalleNomina.FieldByName('Importe3').AsString := '';
              cdDetalleNomina.FieldByName('Cantidad3').AsString := '';
              cdDetalleNomina.FieldByName('Exento3').AsString := '';
            end;

            if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) or (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) then
            begin
              cdDetalleNomina.FieldByName('Clave4').AsString := '5';
              cdDetalleNomina.FieldByName('Descripcion4').AsString := 'Vacaciones';
              {if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) and (cdPersonalIncluido.FieldByName('CobraVacaciones').AsString = 'No') then
                cdDetalleNomina.FieldByName('Importe4').AsString := '0'
              else}
                cdDetalleNomina.FieldByName('Importe4').AsString := FloatToStr(Vacaciones);
              cdDetalleNomina.FieldByName('Cantidad4').AsString := cdPersonalIncluido.FieldByName('VacacionesProgramadas').AsString;
              cdDetalleNomina.FieldByName('Exento4').AsString := '0';

              cdDetalleNomina.FieldByName('Clave5').AsString := '6';
              cdDetalleNomina.FieldByName('Descripcion5').AsString := 'Prima Vacacional';
              cdDetalleNomina.FieldByName('Importe5').AsString := FloatToStr(PrimaVacacional);
              cdDetalleNomina.FieldByName('Cantidad5').AsString := cdPersonalIncluido.FieldByName('PrimaVacacional').AsString;
              cdDetalleNomina.FieldByName('Exento5').AsString := FloatToStr(PrimaExen);

              if cdNomina.FieldByName('IdTipoNomina').AsInteger = 2 then
              begin
                cdDetalleNomina.FieldByName('Clave6').AsString := '7';
                cdDetalleNomina.FieldByName('Descripcion6').AsString := 'Aguinaldo';
                cdDetalleNomina.FieldByName('Importe6').AsString := FloatToStr(Aguinaldo);
                cdDetalleNomina.FieldByName('Cantidad6').AsString := '';
                cdDetalleNomina.FieldByName('Exento6').AsString := '0';
              end
              else
              begin
                cdDetalleNomina.FieldByName('Clave6').AsString := '';
                cdDetalleNomina.FieldByName('Descripcion6').AsString := '';
                cdDetalleNomina.FieldByName('Importe6').AsString := '';
                cdDetalleNomina.FieldByName('Cantidad6').AsString := '';
                cdDetalleNomina.FieldByName('Exento6').AsString := '';
              end;
            end;

            if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
            begin
              cdDetalleNomina.FieldByName('Clave21').AsString := '31';
              cdDetalleNomina.FieldByName('Descripcion21').AsString := 'CUOTA IMSS';
              cdDetalleNomina.FieldByName('Importe21').AsString := FloatToStr(CuotaEmpleado);
              cdDetalleNomina.FieldByName('Cantidad21').AsString := '0';
              cdDetalleNomina.FieldByName('Exento21').AsString := '0';
            end;

            cdDetalleNomina.FieldByName('Clave22').AsString := '32';
            cdDetalleNomina.FieldByName('Descripcion22').AsString := 'I.S.P.T.';
            cdDetalleNomina.FieldByName('Importe22').AsString := FloatToStr(ISPT);
            cdDetalleNomina.FieldByName('Cantidad22').AsString := '0';
            cdDetalleNomina.FieldByName('Exento22').AsString := '0';

            if cdNomina.FieldByName('IdTipoNomina').AsInteger = 1 then
            begin
              cdDetalleNomina.FieldByName('Clave23').AsString := '33';
              cdDetalleNomina.FieldByName('Descripcion23').AsString := 'SUBSIDIO';
              cdDetalleNomina.FieldByName('Importe23').AsString := FloatToStr(Subsidio);
              cdDetalleNomina.FieldByName('Cantidad23').AsString := '0';
              cdDetalleNomina.FieldByName('Exento23').AsString := '0';

              if Sindicato > 0 then
              begin
                cdDetalleNomina.FieldByName('Clave24').AsString := '34';
                cdDetalleNomina.FieldByName('Descripcion24').AsString := 'SINDICATO';
                cdDetalleNomina.FieldByName('Importe24').AsString := FloatToStr(Sindicato);
                cdDetalleNomina.FieldByName('Cantidad24').AsString := '0';
                cdDetalleNomina.FieldByName('Exento24').AsString := '0';

                if Infonavit > 0 then
                begin
                  cdDetalleNomina.FieldByName('Clave25').AsString := '35';
                  cdDetalleNomina.FieldByName('Descripcion25').AsString := 'DESCUENTO INFONAVIT';
                  cdDetalleNomina.FieldByName('Importe25').AsString := FloatToStr(Infonavit);
                  cdDetalleNomina.FieldByName('Cantidad25').AsString := '0';
                  cdDetalleNomina.FieldByName('Exento25').AsString := '0';
                end;
              end
              else
                if Infonavit > 0 then
                begin
                  cdDetalleNomina.FieldByName('Clave24').AsString := '35';
                  cdDetalleNomina.FieldByName('Descripcion24').AsString := 'DESCUENTO INFONAVIT';
                  cdDetalleNomina.FieldByName('Importe24').AsString := FloatToStr(Infonavit);
                  cdDetalleNomina.FieldByName('Cantidad24').AsString := '0';
                  cdDetalleNomina.FieldByName('Exento24').AsString := '0';
                end;
            end;

            cdDetalleNomina.Post;

            if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 2) or (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) then
            begin
              cdVacacionesPagadas.Close;
              CargarDatosFiltrados(cdVacacionesPagadas, 'IdPersonalIMSS', [cdPersonalIncluido.FieldByName('IdAlta').AsInteger]);
              cdVacacionesPagadas.Open;
              if cdVacacionesPagadas.RecordCount > 1 then
              begin
                cdVacacionesPagadas.Edit;
                cdVacacionesPagadas.FieldByName('IdNominaPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdNominaPersonal').AsInteger;
                cdVacacionesPagadas.Post;
              end;
              cdVacacionesPagadas.Close;
            end;

            if (cdNomina.FieldByName('IdTipoNomina').AsInteger = 6) and (Not cdReal.Locate('IdPersonal', cdPersonalIncluido.FieldByName('IdPersonal').AsInteger, [])) then
            begin
              // Crear los registros del pago normal
              cdReal.Append;
              cdReal.FieldByName('IdPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;
              cdReal.FieldByName('Titulo').AsString := 'SALARIO SEMANAL';
              cdReal.FieldByName('Importe').AsString := cdPersonalIncluido.FieldByName('SalarioSemanal').AsString;
              cdReal.FieldByName('Percep').AsString := 'Si';
              cdReal.Post;

              cdReal.Append;
              cdReal.FieldByName('IdPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;
              cdReal.FieldByName('Titulo').AsString := 'SALARIO DIARIO';
              cdReal.FieldByName('Importe').AsFloat := SalarioReal;
              cdReal.FieldByName('Percep').AsString := 'Si';
              cdReal.Post;

              cdReal.Append;
              cdReal.FieldByName('IdPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;
              cdReal.FieldByName('Titulo').AsString := 'VACACIONES';
              if cdPersonalIncluido.FieldByName('CobraVacaciones').AsString = 'Si' then
                cdReal.FieldByName('Importe').AsFloat := VacacionesReal
              else
                cdReal.FieldByName('Importe').AsFloat := 0.00;
              cdReal.FieldByName('Percep').AsString := 'Si';
              cdReal.Post;

              cdReal.Append;
              cdReal.FieldByName('IdPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;
              cdReal.FieldByName('Titulo').AsString := 'PRIMA VACACIONAL';
              cdReal.FieldByName('Importe').AsFloat := PrimaVacacionalReal;
              cdReal.FieldByName('Percep').AsString := 'Si';
              cdReal.Post;

              cdReal.Append;
              cdReal.FieldByName('IdPersonal').AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;
              cdReal.FieldByName('Titulo').AsString := 'TOTAL';
              if cdPersonalIncluido.FieldByName('CobraVacaciones').AsString = 'Si' then
                cdReal.FieldByName('Importe').AsFloat := PrimaVacacionalReal + VacacionesReal
              else
                cdReal.FieldByName('Importe').AsFloat := PrimaVacacionalReal;
              cdReal.FieldByName('Percep').AsString := 'Si';
              cdReal.Post;
            end;
          end;
        finally
          if tvDatos.DataController.DataSet.BookMarkValid(Marca) then
            tvDatos.DataController.DataSet.GotoBookMark(Marca);

          tvDatos.DataController.EndLocate;
          tvDatos.DataController.DataSet.EnableControls;
        end;

        lblLeyendaProc.Caption := 'Concretando Transacción';
        Application.ProcessMessages;
        Connection.qryBuscaTrx.SQL.Text := 'COMMIT';
        Connection.qryBuscaTrx.ExecSQL;

        // Cerrar las ventanas que pudieran contener información anterior
        i := 0;
        while i < TForm(Application.MainForm).MDIChildCount do
        begin
          if TForm(Application.MainForm).MDIChildren[i].ClassNameIs('TFrmRecibosNomina') or TForm(Application.MainForm).MDIChildren[i].ClassNameIs('TFrmListaRaya') then
            SendMessage(TForm(Application.MainForm).MDIChildren[i].Handle, WM_CLOSE, 0, 0);

          Inc(i);
        end;

        // ¿Actualizar todo el pedo?
        cdPersonalIncluido.Close;
        cdPersonalIncluido.Open;

        cdDetalleNomina.Close;
        cdDetalleNomina.Open;

        cdPercepciones.Close;
        cdPercepciones.Open;

        cdDeducciones.Close;
        cdDeducciones.Open;

        tvDatos.DataController.Groups.FullExpand;
      finally
        pnlProcesando.Visible := False;
        pnlProcesando.Align := alNone;
        pnlProcesando.Parent := Self;

        FormaProc.Close;
        FormaProc.Destroy;

        lblLeyendaProc.Caption := '';
        lblTitulo.Caption := '';
      end;
    except
      lblLeyendaProc.Caption := 'Cancelando Transacción';
      ProgressBar1.Position := 0;
      ProgressBar2.Position := 0;
      Application.ProcessMessages;

      Connection.qryBuscaTrx.SQL.Text := 'ROLLBACK';
      Connection.qryBuscaTrx.ExecSQL;

      if cdDetalleNomina.State = dsInsert then
        cdDetalleNomina.Cancel;

      Connection.ConnTrx.Rollback;
      raise
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.BotonCalcularTodos;
begin
  // Seleccionar todos y luego mandar calcular
  tvDatos.DataController.SelectAll;
  BotonCalcularSeleccionados;
end;

procedure TFrmCatalogoNominas.BotonRecibosNomina;
begin
  cdPercepciones.Close;
  cdDeducciones.Close;

  CargarDatosFiltrados(cdPercepciones, 'IdNomina,TipoConcepto', [cdNomina.FieldByName('IdNomina').AsInteger, 0]);
  CargarDatosFiltrados(cdDeducciones, 'IdNomina,TipoConcepto', [cdNomina.FieldByName('IdNomina').AsInteger, 1]);

  cdPercepciones.Open;
  cdDeducciones.Open;

  Application.CreateForm(TFrmRecibosNomina, FrmRecibosNomina);
  FrmRecibosNomina.Caption := 'RECIBO-' + cdNomina.FieldByName('Titulo').AsString;
  FrmRecibosNomina.dsPersonal.DataSet := cdPersonalIncluido;
  FrmRecibosNomina.dsPercepciones.DataSet := cdPercepciones;
  FrmRecibosNomina.dsDeducciones.DataSet := cdDeducciones;
  FrmRecibosNomina.dsUMA.DataSet := cdUMA;
  FrmRecibosNomina.dsReal.DataSet := cdReal;
  if cdNomina.FieldByName('IdTipoNomina').AsInteger = 6 then
    FrmRecibosNomina.NombreReporte := 'RecibosVacaciones.fr3'
  else
    FrmRecibosNomina.NombreReporte := 'RecibosNomina.fr3';
  FrmRecibosNomina.Show;
end;

procedure TFrmCatalogoNominas.BotonListaRaya;
begin
  cdPercepciones.Close;
  cdDeducciones.Close;

  CargarDatosFiltrados(cdPercepciones, 'IdNomina,TipoConcepto', [cdNomina.FieldByName('IdNomina').AsInteger, 0]);
  CargarDatosFiltrados(cdDeducciones, 'IdNomina,TipoConcepto', [cdNomina.FieldByName('IdNomina').AsInteger, 1]);

  cdPercepciones.Open;
  cdDeducciones.Open;

  Application.CreateForm(TFrmListaRaya, FrmListaRaya);
  FrmListaRaya.Caption := 'RAYA-' + cdNomina.FieldByName('Titulo').AsString;
  FrmListaRaya.dsPersonal.DataSet := cdPersonalIncluido;
  FrmListaRaya.dsPercepciones.DataSet := cdPercepciones;
  FrmListaRaya.dsDeducciones.DataSet := cdDeducciones;
  FrmListaRaya.Show;
end;

procedure TFrmCatalogoNominas.BotonCartaFiniquito;
var
  Word: Variant;
  Documento: Variant;
  RutaTemp,
  RutaSave: TFileName;
  LocCursor: TCursor;
  Vuelta: Integer;
  Info: TShellExecuteInfo;
  FormaEdit: TForm;
  Anio: String;
  Neto: Real;
begin
  CrearConjunto(cdCarta, 'rhu_cartamembretada', ccSelect);

  //sdCarta := TSaveDialog.Create(Self);

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CargarDatosFiltrados(cdCarta, 'IdOrganizacion', [dsPersonalIncluido.DataSet.FieldByName('IdOrganizacion').AsInteger]);
      cdCarta.Open;

      if cdCarta.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No ha sido posible localizar el registro de la empresa que contiene el machote de la carta de confidencialidad, informe de esto al administrador del sistema.']);

      if cdCarta.FieldByName('CartaFiniquito').IsNull then
        raise InteligentException.CreateByCode(24, ['No existe el machote de la carta de finiquito, el campo parece estar vacío; informe de lo anterior al administrador del sistema']);

      // Bajar el registro a disco
      Vuelta := 0;
      repeat
        RutaTemp := ReplaceStr(DateToStr(Date), '/', '') + Copy(ReplaceStr(TimeToStr(Time), ':', ''), 1, 6);
        RutaTemp := GetWindowsTemp + 'CTA-FINQ-' + dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsString + RutaTemp + '.doc';
        if FileExists(RutaTemp) then
        begin
          Sleep(1000);
          Inc(Vuelta);
        end;
      until (Not FileExists(RutaTemp)) or (Vuelta > 10);

      if Vuelta > 10 then
        raise InteligentException.CreateByCode(24, ['El machote de la carta de confiderncialidad no puede ser bajado a disco, informe de esto al administrador del sistema.' + #10 + #10 + 'Nombre fallido: ' + RutaTemp]);

      // Seleccionar el nombre del archivo en donde se va a registrar la carta
      RutaSave := ReplaceStr(dsPersonalIncluido.DataSet.FieldByName('NombreCompleto').AsString, ',', '') + ' - CARTA DE FINIQUITO.doc';

      sdCarta.FileName := RutaSave;
      if Not sdCarta.Execute then
        raise InteligentException.Create('***');
      RutaSave := sdCarta.FileName;

      // Abrir los datos de nómina
      cdPercepciones.Close;
      cdDeducciones.Close;

      CargarDatosFiltrados(cdPercepciones, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, cdPersonalIncluido.FieldByName('IdPersonal').AsInteger]);
      //CargarDatosFiltrados(cdDeducciones, 'IdNomina,TipoConcepto', [cdNomina.FieldByName('IdNomina').AsInteger, 1]);

      cdPercepciones.Open;
      cdDeducciones.Open;

      FormaEdit := TForm.Create(Self);
      try
        FormaEdit.Height := 222;
        FormaEdit.Width := 355;
        FormaEdit.Caption := 'Modificar fecha de carta';
        FormaEdit.Position := poMainFormCenter;
        FormaEdit.OnCloseQuery := FormaEditCloseQuery;

        pnlEdit.Parent := FormaEdit;
        pnlEdit.Align := alClient;
        pnlEdit.Visible := True;

        Anio := Copy(dsPersonalIncluido.DataSet.FieldByName('FechaCartaFiniquito').AsString, 7, 4);
        if dsPersonalIncluido.DataSet.FieldByName('FechaCartaFiniquito').IsNull Or (Anio = '0000') then
          FechaCarta.Date := Now()
        else
          FechaCarta.Date := dsPersonalIncluido.DataSet.FieldByName('FechaCartaFiniquito').AsDateTime;

        if FormaEdit.ShowModal = mrOk then
          dsPersonalIncluido.DataSet.Refresh;
      finally
        pnlEdit.Visible := False;
        pnlEdit.Align := alNone;
        pnlEdit.Parent := Self;

        FormaEdit.Destroy;
      end;

      TBlobField(cdCarta.FieldByName('CartaFiniquito')).SaveToFile(RutaTemp);

      Word := CreateOleObject('Word.Application');
      Word.Documents.Open(RutaTemp);
      Word.Visible := False;
      Word.DisplayAlerts := False;
      Documento := Word.Documents.Item(1);


  {bSalarioDiario = '[SalarioDiario]';
  bFechaEmision = '[FechaEmision]';
  bImporteNumero = '[ImporteNumero]';
  bFechaRecibido = '[FechaRecibido]';}

      CambiarValores(Word, bNombreCompleto, StringReplace(dsPersonalIncluido.DataSet.FieldByName('Nombres').AsString + ' ' + dsPersonalIncluido.DataSet.FieldByName('APaterno').AsString + ' ' + dsPersonalIncluido.DataSet.FieldByName('AMaterno').AsString, '  ', ' ', [rfReplaceAll]));
      CambiarValores(Word, bPuesto, dsPersonalIncluido.DataSet.FieldByName('TituloCargo').AsString);
      CambiarValores(Word, bAlta, FechaLarga(dsPersonalIncluido.DataSet.FieldByName('Alta').AsDateTime,1));
      CambiarValores(Word, bBaja, FechaLarga(dsPersonalIncluido.DataSet.FieldByName('Baja').AsDateTime, 1));
      CambiarValores(Word, bFechaEmision, FechaLarga(dsPersonalIncluido.DataSet.FieldByName('FechaCartaFiniquito').AsDateTime, 2));
      CambiarValores(Word, bSalarioDiario, FloatToStrF(cdPersonalIncluido.FieldByName('SalarioDiario').AsFloat, ffNumber, 16, 2));
      CambiarValores(Word, bFechaRecibido, FechaLarga(FechaRecibido.Date, 3));

      Neto := 0;
      if cdPercepciones.Locate('Clave', 3, []) then
      begin
        Neto := Neto + cdPercepciones.FieldByName('Importe').AsFloat;
        CambiarValores(Word, bGratificacion, FloatToStrF(cdPercepciones.FieldByName('Importe').AsFloat, ffNumber, 16, 2));
      end;

      if cdPercepciones.Locate('Clave', 5, []) then
      begin
        Neto := Neto + cdPercepciones.FieldByName('Importe').AsFloat;
        CambiarValores(Word, bVacaciones, FloatToStrF(cdPercepciones.FieldByName('Importe').AsFloat, ffNumber, 16, 2));
      end;

      if cdPercepciones.Locate('Clave', 6, []) then
      begin
        Neto := Neto + cdPercepciones.FieldByName('Importe').AsFloat;
        CambiarValores(Word, bPrimaVacacional, FloatToStrF(cdPercepciones.FieldByName('Importe').AsFloat, ffNumber, 16, 2));
      end;

      if cdPercepciones.Locate('Clave', 7, []) then
      begin
        Neto := Neto + cdPercepciones.FieldByName('Importe').AsFloat;
        CambiarValores(Word, bAguinaldo, FloatToStrF(cdPercepciones.FieldByName('Importe').AsFloat, ffNumber, 16, 2));
      end;

      if cdPercepciones.Locate('Clave', 32, []) then
      begin
        Neto := Neto - cdPercepciones.FieldByName('Importe').AsFloat;
        CambiarValores(Word, bISPT, FloatToStrF(cdPercepciones.FieldByName('Importe').AsFloat, ffNumber, 16, 2));
      end;

      CambiarValores(Word, bNeto, FloatToStrF(Neto, ffNumber, 16, 2));
      CambiarValores(Word, bNetoLetra, xNumerosALetras(Neto));

      //Documento.SaveAs2(RutaSave);
      Documento.SaveAs2(RutaSave, 12, False, '', True, '', False, False, False, False, False, , , , , , 15);

      Word.Quit;

      case InteliDialog.ShowModal('La carta de finiquito ha sido generada', '¿Qué desea hacer con la carta de finiquito en este momento?' + #10 + #10 + 'Pulse <Si> para abrir la carta, <No> para abrir la ubicación de la carta y <Cancelar> para cerrar esta ventana', mtConfirmation, [mbYes, mbNo, mbCancel], 0)  of
        mrYes: begin
                 FillChar(Info, SizeOf(Info), #0);
                 Info.cbSize := SizeOf(Info);
                 Info.fMask := SEE_MASK_DEFAULT;
                 Info.lpFile := PWideChar(RutaSave);
                 Info.nShow := SW_NORMAL;

                 Win32Check(ShellExecuteEx(@Info));
               end;
        mrNo: ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar('/select, "' + RutaSave + '"'), nil, SW_NORMAL);
        mrCancel: ;

      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      if e.Message <> '***' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.CambiarValores(Word: Variant; pBuscar: String;
  pValor: String);
begin
  Word.Selection.Move(6, -1);  // Ir al inicio de la hoja
  Word.Selection.Find.Execute(pBuscar);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

  while Word.Selection.Find.Found do
  begin
    Word.Selection.Text := pValor;
    Word.Selection.Move(6, -1);
    Word.Selection.Find.Execute(pBuscar);
  end;
end;

procedure TFrmCatalogoNominas.BotonCartaVacaciones;
var
  vfWord: Variant;
  Documento: Variant;
  RutaTemp,
  RutaSave: TFileName;
  LocCursor: TCursor;
  Vuelta: Integer;
  Info: TShellExecuteInfo;
  FormaEdit: TForm;
  Anio, FechaRecibe,
  NombreCompuesto: String;
  ValNeto,
  ValTotal,
  ValVacaciones,
  ValPrima, ValISPT: Real;
  vAnio, vMes, vDia: Word;
  cdCarta: TZReadOnlyQuery;
  sdCarta: TSaveDialog;

const
  NomMes: Array[1..12] Of String = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');
  NombrePeriodo: Array[1..15] Of String = ('primer', 'segundo', 'tercer', 'cuarto', 'quinto', 'sexto', 'septimo', 'octavo', 'noveno', 'decimo', 'onceavo', 'doceavo', 'treceavo', 'catorceavo', 'quinceavo');

function GetWindowsTemp: TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  SetString(Result, WinDir, GetTempPath(MAX_PATH, WinDir));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

begin
  try
    cdCarta := TZReadOnlyQuery.Create(Self);
    CrearConjunto(cdCarta, 'rhu_cartamembretada', ccSelect);

    sdCarta := TSaveDialog.Create(Self);

    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        CargarDatosFiltrados(cdCarta, 'IdOrganizacion', [dsPersonalIncluido.DataSet.FieldByName('IdOrganizacion').AsInteger]);
        cdCarta.Open;

        if cdCarta.RecordCount = 0 then
          raise InteligentException.CreateByCode(24, ['No ha sido posible localizar el registro de la empresa que contiene el machote de la carta de confidencialidad, informe de esto al administrador del sistema.']);

        if cdCarta.FieldByName('CartaVacaciones').IsNull then
          raise InteligentException.CreateByCode(24, ['No existe el machote de la carta de confidencialidad, el campo parece estar vacío; informe de lo anterior al administrador del sistema']);

        // Bajar el registro a disco
        Vuelta := 0;
        repeat
          RutaTemp := ReplaceStr(DateToStr(Date), '/', '') + Copy(ReplaceStr(TimeToStr(Time), ':', ''), 1, 6);
          RutaTemp := GetWindowsTemp + 'CTA-CONF-' + dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsString + RutaTemp + '.doc';
          if FileExists(RutaTemp) then
          begin
            Sleep(1000);
            Inc(Vuelta);
          end;
        until (Not FileExists(RutaTemp)) or (Vuelta > 10);

        if Vuelta > 10 then
          raise InteligentException.CreateByCode(24, ['El machote de la carta de confiderncialidad no puede ser bajado a disco, informe de esto al administrador del sistema.' + #10 + #10 + 'Nombre fallido: ' + RutaTemp]);

        // Seleccionar el nombre del archivo en donde se va a registrar la carta
        RutaSave := ReplaceStr(dsPersonalIncluido.DataSet.FieldByName('NombreCompleto').AsString, ',', '') + ' - CARTA DE VACACIONES.doc';

        sdCarta.FileName := RutaSave;
        if Not sdCarta.Execute then
          raise InteligentException.Create('***');
        RutaSave := sdCarta.FileName;

        FormaEdit := TForm.Create(Self);
        try
          FormaEdit.Height := 200;
          FormaEdit.Width := 355;
          FormaEdit.Caption := 'Modificar fecha de carta';
          FormaEdit.Position := poOwnerFormCenter;
          FormaEdit.OnCloseQuery := FormaEditCloseQuery;

          pnlEdit.Parent := FormaEdit;
          pnlEdit.Align := alClient;
          pnlEdit.Visible := True;

          Anio := Copy(cdNomina.FieldByName('FechaTerminoNomina').AsString, 1, 4);
          if dsPersonalIncluido.DataSet.FieldByName('FechaTerminoNomina').IsNull Or (Anio = '0000') then
            FechaCarta.Date := Now()
          else
            FechaCarta.Date := dsPersonalIncluido.DataSet.FieldByName('FechaTerminoNomina').AsDateTime;

          if FormaEdit.ShowModal = mrOk then
            dsPersonalIncluido.DataSet.Refresh;
        finally
          pnlEdit.Visible := False;
          pnlEdit.Align := alNone;
          pnlEdit.Parent := Self;

          FormaEdit.Destroy;
        end;

        TBlobField(cdCarta.FieldByName('CartaVacaciones')).SaveToFile(RutaTemp);

        vfWord := CreateOleObject('Word.Application');
        vfWord.Documents.Open(RutaTemp);
        vfWord.Visible := False;
        vfWord.DisplayAlerts := False;
        Documento := vfWord.Documents.Item(1);

        ValTotal := 0;
        ValVacaciones := 0;
        ValPrima := 0;
        cdPercepciones.First;
        while not cdPercepciones.Eof do
        begin
          ValTotal := ValTotal + cdPercepciones.FieldByName('Importe').AsFloat;

          if cdPercepciones.FieldByName('Clave').AsString = '5' then
            ValVacaciones := cdPercepciones.FieldByName('Importe').AsFloat;

          if cdPercepciones.FieldByName('Clave').AsString = '6' then
            ValPrima := cdPercepciones.FieldByName('Importe').AsFloat;

          cdPercepciones.Next;
        end;

        ValNeto := ValTotal;

        ValISPT := 0;
        cdDeducciones.First;
        while not cdDeducciones.Eof do
        begin
          ValNeto := ValNeto - cdDeducciones.FieldByName('Importe').AsFloat;

          if cdDeducciones.FieldByName('Clave').AsString = '32' then
            ValISPT := cdDeducciones.FieldByName('Importe').AsFloat;

          cdDeducciones.Next;
        end;

        // Cambiar el neto
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvNeto);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := FloatToStrF(ValNeto, ffCurrency, 8, 2);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvNeto);
        end;

        // Cambiar el total
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvTotal);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := FloatToStrF(ValTotal, ffCurrency, 8, 2);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvTotal);
        end;

        // Cambiar fecha
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvFechaRecibe);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        DecodeDate(FechaRecibido.Date, vAnio, vMes, vDia);
        FechaRecibe := 'a ' + RightStr('0' + IntToStr(vDia), 2) + ' del mes de ' + NomMes[vMes] + ' del año ' + IntToStr(vAnio);

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := FechaRecibe;
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvFechaRecibe);
        end;

        // Cambiar titulo de la empresa
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvTituloEmpresa);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvTituloEmpresa);
        end;

        // Cambiar neto con letra
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvImporteLetra);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := xNumerosALetras(ValNeto);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvImporteLetra);
        end;

        // Cambiar el periodo
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvPeriodo);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := IntToStr(YearOf(cdPersonalIncluido.FieldByName('Alta').AsDateTime) + cdPersonalIncluido.FieldByName('PeriodoVac').AsInteger -1) + '-' + IntToStr(YearOf(cdPersonalIncluido.FieldByName('Alta').AsDateTime) + cdPersonalIncluido.FieldByName('PeriodoVac').AsInteger);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvPeriodo);
        end;

        // Cambiar el periodo
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvNoPeriodo);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := NombrePeriodo[cdPersonalIncluido.FieldByName('PeriodoVac').AsInteger];
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvNoPeriodo);
        end;

        // Cambiar dias de vacaciones
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvDias);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := cdPersonalIncluido.FieldByName('VacacionesProgramadas').AsString;
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvDias);
        end;

        // Cambiar dias de vacaciones
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvVacaciones);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := FloatToStrF(ValVacaciones, ffCurrency, 8, 2);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvVacaciones);
        end;

        // Cambiar dias de vacaciones
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvPrimaVac);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := FloatToStrF(ValPrima, ffCurrency, 8, 2);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvPrimaVac);
        end;

        // Cambiar dias de vacaciones
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvISPT);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := FloatToStrF(ValISPT, ffCurrency, 8, 2);
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvISPT);
        end;

        // Cambiar dias de vacaciones
        vfWord.Selection.Move(6, -1);  // Ir al inicio de la hoja
        vfWord.Selection.Find.Execute(bvNombreCompleto);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

        NombreCompuesto := cdPersonalIncluido.FieldByName('NombreCompleto').AsString;
        NombreCompuesto := RightStr(NombreCompuesto, Length(NombreCompuesto) - Pos(', ', NombreCOmpuesto) - 1) + ' ' + LeftStr(NombreCompuesto, Pos(', ', NombreCOmpuesto) -1);

        while vfWord.Selection.Find.Found do
        begin
          vfWord.Selection.Text := NombreCompuesto;
          vfWord.Selection.Move(6, -1);
          vfWord.Selection.Find.Execute(bvNombreCompleto);
        end;

//
        //Documento.SaveAs2(RutaSave);
        Documento.SaveAs2(RutaSave, 12, False, '', True, '', False, False, False, False, False, , , , , , 15);

        vfWord.Quit;

        case InteliDialog.ShowModal('La carta de vacaciones ha sido generada', '¿Qué desea hacer con la carta de vacaciones en este momento?' + #10 + #10 + 'Pulse <Si> para abrir el archivo, <No> para abrir la ubicación del archivo y <Cancelar> para cerrar esta ventana', mtConfirmation, [mbYes, mbNo, mbCancel], 0)  of
          mrYes: begin
                   FillChar(Info, SizeOf(Info), #0);
                   Info.cbSize := SizeOf(Info);
                   Info.fMask := SEE_MASK_DEFAULT;
                   Info.lpFile := PWideChar(RutaSave);
                   Info.nShow := SW_NORMAL;

                   Win32Check(ShellExecuteEx(@Info));
  {                 vfWord.Visible := True;
                   vfWord.DisplayAlerts := True;}
                 end;
          mrNo: ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar('/select, "' + RutaSave + '"'), nil, SW_NORMAL);
          mrCancel: ;

        end;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if e.Message <> '***' then
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      on e:Exception do
      begin
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  finally
    sdCarta.Free;
    cdCarta.Free;
  end;
end;

end.
