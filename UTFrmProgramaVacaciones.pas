unit UTFrmProgramaVacaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, UDosCapas, UInteliDialog, URegistro,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  Frm_Connection, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, DateUtils, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvGlowButton, ZAbstractDataset, JvLabel, frxClass, frxDBSet, Menus,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit;

type
  TFrmProgramaVacaciones = class(TForm)
    Panel1: TPanel;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdVacaciones: TZReadOnlyQuery;
    dsVacaciones: TDataSource;
    TituloDepartamento: TcxGridDBColumn;
    NombreOrganizacion: TcxGridDBColumn;
    NombreLocalidad: TcxGridDBColumn;
    NombreCompleto: TcxGridDBColumn;
    TituloProyecto: TcxGridDBColumn;
    TituloCargo: TcxGridDBColumn;
    InicioVacaciones: TcxGridDBColumn;
    btnProceder: TAdvGlowButton;
    DiasVacaciones: TcxGridDBColumn;
    Anios: TcxGridDBColumn;
    cdPagadas: TZQuery;
    Panel2: TPanel;
    btnPendientes: TAdvGlowButton;
    FechaMovimiento: TcxGridDBColumn;
    pnlPendientes: TPanel;
    tvPendientes: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsPendientes: TDataSource;
    Periodo: TcxGridDBColumn;
    Dias: TcxGridDBColumn;
    Factor: TcxGridDBColumn;
    Aplicacion: TcxGridDBColumn;
    DiasPag: TcxGridDBColumn;
    Programadas: TcxGridDBColumn;
    Panel3: TPanel;
    btnProgramar: TAdvGlowButton;
    pnlProgramar: TPanel;
    JvLabel1: TJvLabel;
    Panel5: TPanel;
    btnEditOk: TAdvGlowButton;
    btnEditCancel: TAdvGlowButton;
    dsPagadas: TDataSource;
    JvLabel2: TJvLabel;
    FechaProgramadas: TcxGridDBColumn;
    btnCerrar: TAdvGlowButton;
    JvLabel3: TJvLabel;
    DiasProgramados: TcxGridDBColumn;
    FechaAplicacion: TcxGridDBColumn;
    frxDBVacaciones: TfrxDBDataset;
    frxHistorialVacaciones: TfrxReport;
    btnImprimir: TAdvGlowButton;
    Panel4: TPanel;
    btnEditarCancel: TAdvGlowButton;
    btnPagar: TAdvGlowButton;
    pmOpcVac: TPopupMenu;
    ProgramarVacaciones1: TMenuItem;
    Realizarpagodevacacionesprogramadas1: TMenuItem;
    N1: TMenuItem;
    Generaroficiodesolicituddevacaciones1: TMenuItem;
    frxDBPendientes: TfrxDBDataset;
    JvLabel4: TJvLabel;
    ePagadas: TcxDBCalcEdit;
    FechaOficio: TcxDBDateEdit;
    eFechaAplicacion: TcxDBDateEdit;
    Desde: TcxDateEdit;
    Hasta: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnProcederClick(Sender: TObject);
    procedure btnPendientesClick(Sender: TObject);
    procedure btnProgramarClick(Sender: TObject);
    procedure FormaProgramadasCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tvPendientesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPagarClick(Sender: TObject);
    procedure Generaroficiodesolicituddevacaciones1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgramaVacaciones: TFrmProgramaVacaciones;

implementation

{$R *.dfm}

procedure TFrmProgramaVacaciones.btnImprimirClick(Sender: TObject);
var
  Nombre: String;
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\HistorialVacaciones.fr3';
      frxHistorialVacaciones.LoadFromFile(Nombre);
      frxHistorialVacaciones.ShowReport(True);
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmProgramaVacaciones.btnPagarClick(Sender: TObject);
begin
  // Pagar las vacaciones
end;

procedure TFrmProgramaVacaciones.btnPendientesClick(Sender: TObject);
var
  pInicio,
  pTermino: TDate;
  FormaPendientes: TForm;
begin
  pInicio := cdVacaciones.FieldByName('FechaMovimiento').AsDateTime;
  pTermino := Hasta.Date; //IncYear(cdVacaciones.FieldByName('InicioVacaciones').AsDateTime, -1);
  Connection.zCommand.SQL.Text := 'CALL Res_DiasVacaciones(' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ',' + QuotedStr(DateToStrSQL(pInicio)) + ',' + QuotedStr(DateToStrSQL(pTermino)) + ')';
  Connection.zCommand.ExecSQL;

  dsPendientes.DataSet := Connection.QryBusca;
  Connection.QryBusca.Close;
  Connection.QryBusca.SQL.Text := 'SELECT ' +
                                  '  dv.*, ' +
                                  '  ADDDATE(dv.Aplicacion, INTERVAL 1 YEAR) AS FechaFin, ' +
                                  '  @FecHasta:=ADDDATE((SELECT ' +
                                  '                        vp.FechaAplicacion ' +
                                  '                      FROM ' +
                                  '                        nom_vacacionespagadas vp ' +
                                  '                      WHERE ' +
                                  '                        vp.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ' AND ' +
                                  '                        vp.Periodo = dv.Periodo AND ' +
                                  '                        vp.Pagadas < vp.Programadas), INTERVAL (dv.Dias -1) DAY) AS VacHasta, ' +
                                  '  RIGHT(@FecHasta, 2) AS DIASFecHasta, ' +
                                  '  MID(@FecHasta, 6, 2) AS MESFecHasta,' +
                                  '  LEFT(@FecHasta, 4) AS ANIOFecHasta, ' +
                                  '  (SELECT' +
                                  '     car.TituloCargo' +
                                  '   FROM' +
                                  '     nuc_personalimss pims' +
                                  '   INNER JOIN' +
                                  '     nuc_cargo car' +
                                  '       ON (car.IdCargo = pims.IdCargo)' +
                                  '   WHERE' +
                                  '     pims.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ') AS TituloCargo,' +
                                  '  (SELECT' +
                                  '     loc.NombreLocalidad' +
                                  '   FROM' +
                                  '     nuc_personalimss pims' +
                                  '   INNER JOIN' +
                                  '     nuc_localidad loc' +
                                  '       ON (loc.IdLocalidad = pims.IdLocalidad)' +
                                  '   WHERE' +
                                  '     pims.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ') AS NombreLocalidad,' +
                                  '  (SELECT' +
                                  '     per.APaterno' +
                                  '   FROM' +
                                  '     nuc_personalimss pims' +
                                  '   INNER JOIN' +
                                  '     nuc_personal per' +
                                  '       ON (per.IdPersonal = pims.IdPersonal)' +
                                  '   WHERE' +
                                  '     pims.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ') AS APaterno,' +
                                  '  (SELECT' +
                                  '     per.AMaterno' +
                                  '   FROM' +
                                  '     nuc_personalimss pims' +
                                  '   INNER JOIN' +
                                  '     nuc_personal per' +
                                  '       ON (per.IdPersonal = pims.IdPersonal)' +
                                  '   WHERE' +
                                  '     pims.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ') AS AMaterno,' +
                                  '  (SELECT' +
                                  '     per.Nombres' +
                                  '   FROM' +
                                  '     nuc_personalimss pims' +
                                  '   INNER JOIN' +
                                  '     nuc_personal per' +
                                  '       ON (per.IdPersonal = pims.IdPersonal)' +
                                  '   WHERE' +
                                  '     pims.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ') AS Nombres,' +
                                  '  (SELECT ' +
                                  '     vp.Programadas - vp.Pagadas' +
                                  '   FROM ' +
                                  '     nom_vacacionespagadas vp ' +
                                  '   WHERE ' +
                                  '     vp.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ' AND ' +
                                  '     vp.Periodo = dv.Periodo AND ' +
                                  '     vp.Pagadas < vp.Programadas) AS Programadas, ' +
                                  '  @FecProg:=(SELECT ' +
                                  '               vp.FechaAplicacion ' +
                                  '             FROM ' +
                                  '               nom_vacacionespagadas vp ' +
                                  '             WHERE ' +
                                  '               vp.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ' AND ' +
                                  '               vp.Periodo = dv.Periodo AND ' +
                                  '               vp.Pagadas < vp.Programadas) AS FechaProgramadas, ' +
                                  '  RIGHT(@FecProg, 2) AS DIASFecProg, ' +
                                  '  MID(@FecProg, 6, 2) AS MESFecProg,' +
                                  '  LEFT(@FecProg, 4) AS ANIOFecProg,' +
                                  '  (SELECT' +
                                  '     pims.FechaMovimiento' +
                                  '   FROM' +
                                  '     nuc_personalimss pims' +
                                  '   WHERE' +
                                  '     pims.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ') AS FechaReingreso,' +
                                  '  @FecOfi:=(SELECT ' +
                                  '              IF(YEAR(vp.FechaOficio) < 1900, NOW(), vp.FechaOficio) ' +
                                  '            FROM ' +
                                  '              nom_vacacionespagadas vp ' +
                                  '            WHERE ' +
                                  '              vp.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ' AND ' +
                                  '              vp.Periodo = dv.Periodo AND ' +
                                  '              vp.Pagadas < vp.Programadas) AS FechaOficio, ' +
                                  '  RIGHT(@FecOfi, 2) AS DIASFecOfi, ' +
                                  '  MID(@FecOfi, 6, 2) AS MESFecOfi,' +
                                  '  LEFT(@FecOfi, 4) AS ANIOFecOfi ' +
                                  'FROM diasvacaciones dv ORDER BY Aplicacion DESC';
  Connection.QryBusca.Open;

  FormaPendientes := TForm.Create(Self);
  Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
  Connection.CommandTrx.ExecSQL;
  try
    FormaPendientes.Width := 500;
    FormaPendientes.Height := 320;
    FormaPendientes.Caption := 'Vacaciones Pendientes';
    FormaPendientes.Position := poOwnerFormCenter;

    pnlPendientes.Parent := FormaPendientes;
    pnlPendientes.Align := alClient;
    pnlPendientes.Visible := True;

    if FormaPendientes.ShowModal = mrOk then
    begin
      cdVacaciones.Refresh;
      Connection.CommandTrx.SQL.Text := 'COMMIT';
      Connection.CommandTrx.ExecSQL;
    end
    else
    begin
      Connection.CommandTrx.SQL.Text := 'ROLLBACK';
      Connection.CommandTrx.ExecSQL;
    end;
  finally
    pnlPendientes.Visible := False;
    pnlPendientes.Align := alNone;
    pnlPendientes.Parent := Self;

    Connection.QryBusca.Close;
    dsPendientes.DataSet := Nil;
    //Connection.zCommand.SQL.Text := 'DROP TEMPORARY TABLE IF EXISTS diasvacaciones';
  end;

end;

procedure TFrmProgramaVacaciones.btnProcederClick(Sender: TObject);
begin
  cdVacaciones.Close;
  CargarDatosFiltrados(cdVacaciones, 'Inicio,Aplicacion', [DateToStrSQL(Desde.Date), DateToStrSQL(Hasta.Date)]);
  cdVacaciones.Open;
  tvDatos.DataController.Groups.FullExpand;
end;

procedure TFrmProgramaVacaciones.btnProgramarClick(Sender: TObject);
var
  FormaEdit: TForm;
begin
  FormaEdit := TForm.Create(Self);
  try
    FormaEdit.Height := 200;
    FormaEdit.Width := 300;
    FormaEdit.Caption := 'Programar vacaciones';
    FormaEdit.Position := poOwnerFormCenter;
    FormaEdit.OnCloseQuery := FormaProgramadasCloseQuery;

    pnlProgramar.Parent := FormaEdit;
    pnlProgramar.Align := alClient;
    pnlProgramar.Visible := True;

    // Verificar si se debe crear un registro o editar el existente
    Connection.CommandTrx.Close;
    Connection.CommandTrx.SQL.Text := 'SELECT vp.IdVacacionesPagadas FROM nom_vacacionespagadas vp WHERE vp.IdPersonalIMSS = ' + cdVacaciones.FieldByName('IdPersonalIMSS').AsString + ' AND vp.Periodo = ' + dsPendientes.DataSet.FieldByName('Periodo').AsString;
    Connection.CommandTrx.Open;

    cdPagadas.Close;
    if Connection.CommandTrx.RecordCount > 0 then
    begin
      cdPagadas.ParamByName('IdVacacionesPagadas').AsInteger := Connection.CommandTrx.FieldByName('IdVacacionesPagadas').AsInteger;
      cdPagadas.Open;
      cdPagadas.Edit;
    end
    else
    begin
      cdPagadas.ParamByName('IdVacacionesPagadas').AsInteger := -9;
      cdPagadas.Open;
      cdPagadas.Append;
      cdPagadas.FieldByName('IdVacacionesPagadas').AsInteger := 0;
      cdPagadas.FieldByName('IdPersonalIMSS').AsInteger := cdVacaciones.FieldByName('IdPersonalIMSS').AsInteger;
      cdPagadas.FieldByName('Periodo').AsInteger := dsPendientes.DataSet.FieldByName('Periodo').AsInteger;
      cdPagadas.FieldByName('Derecho').AsFloat := dsPendientes.DataSet.FieldByName('Factor').AsFloat;
      cdPagadas.FieldByName('FechaAplicacion').AsDateTime := NOW;
      cdPagadas.FieldByName('FechaOficio').AsDateTime := Today;
      cdPagadas.FieldByName('Pagadas').AsFloat := 0;

    end;

    if FormaEdit.ShowModal = mrOk then
      dsPendientes.DataSet.Refresh;
  finally
    pnlProgramar.Visible := False;
    pnlProgramar.Align := alNone;
    pnlProgramar.Parent := Self;

    FormaEdit.Destroy;
  end;
end;

procedure TFrmProgramaVacaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\Desde', 'Date', DateToStr(Desde.Date));
  SetRegistry('\Ventanas', '\Hasta', 'Date', DateToStr(Hasta.Date));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));

  for i := 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmProgramaVacaciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  LocCursor: TCursor;
begin
  if Key = 116 then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      cdVacaciones.Refresh;
    finally
      Screen.Cursor := LocCursor;
    end;
  end;
end;

procedure TFrmProgramaVacaciones.FormaProgramadasCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Obj: TWinControl;
begin
  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      // Validar antes de grabar
      Obj := ePagadas;
      if ePagadas.Value <= 0 then
        raise InteligentException.CreateByCode(18, ['Programar']);

      if (ePagadas.Value > dsPendientes.DataSet.FieldByName('Factor').AsFloat) and (InteliDialog.ShowModal('Vacaciones programadas', 'Las vacaciones programadas superan a la cantidad de días correspondientes para este periodo (' + dsPendientes.DataSet.FieldByName('Factor').AsString + ' días).' + #10 + #10 + '¿Desea registrar la cantidad de días de vacaciones de todas maneras?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
        raise InteligentException.Create('***');

      cdPagadas.Post;
      CanClose := True;
    except
      on e:InteligentException do
      begin
        if Obj.CanFocus then
          Obj.SetFocus;

        if e.Message <> '***' then
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end
  else
    cdPagadas.Cancel;
end;

procedure TFrmProgramaVacaciones.FormShow(Sender: TObject);
var
  i: Integer;
begin
  Try
    Desde.Date := StrToDate(VarRegistry('\Ventanas', '\Desde', 'Date'));
  Except
    Desde.Date := Now;
  End;

  Try
    Hasta.Date := StrToDate(VarRegistry('\Ventanas', '\Hasta', 'Date'));
  Except
    Hasta.Date := Now;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  Try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  for i := 0 to tvDatos.ColumnCount -1 do
    Try
      tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i)));
    Except
      ;
    End;

  CrearConjunto(cdVacaciones, 'nuc_personalvacaciones', ccSelect);
  CrearConjunto(cdPagadas, 'nom_vacacionespagadas', ccUpdate);
end;

procedure TFrmProgramaVacaciones.Generaroficiodesolicituddevacaciones1Click(
  Sender: TObject);
var
  Nombre: String;
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\FormularioVacaciones.fr3';
      frxHistorialVacaciones.LoadFromFile(Nombre);
      frxHistorialVacaciones.ShowReport(True);
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmProgramaVacaciones.tvDatosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnPendientes.Click;
end;

procedure TFrmProgramaVacaciones.tvPendientesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if dsPendientes.DataSet.RecordCount > 0 then
    btnProgramar.Click;
end;

end.
