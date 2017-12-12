unit UTFrmConsultaVacaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, UDosCapas, UInteliDialog, URegistro, DBClient,
  ZAbstractRODataset, ZDataset, DateUtils, frm_connection, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, StdCtrls, DBCtrls, JvLabel, Mask, AdvGlowButton,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TFrmConsultaVacaciones = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    dsBuscarPersonal: TDataSource;
    memPeriodos: TClientDataSet;
    memPeriodosIdPersonal: TIntegerField;
    memPeriodosNombreCompleto: TStringField;
    memPeriodosPeriodo: TIntegerField;
    cdPeriodoContrato: TZReadOnlyQuery;
    cdTablaVacaciones: TZReadOnlyQuery;
    memPeriodosDiasTabla: TIntegerField;
    memPeriodosFactor: TFloatField;
    dsPeriodos: TDataSource;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Periodo: TcxGridDBColumn;
    DiasTabla: TcxGridDBColumn;
    Factor: TcxGridDBColumn;
    memPeriodosDesde: TDateField;
    memPeriodosHasta: TDateField;
    Desde: TcxGridDBColumn;
    Hasta: TcxGridDBColumn;
    memPeriodosFactorAnio: TFloatField;
    FactorAnio: TcxGridDBColumn;
    NombreCompleto: TDBText;
    memPeriodosPagadas: TFloatField;
    Pagadas: TcxGridDBColumn;
    Pendientes: TcxGridDBColumn;
    memPeriodosPendientes: TFloatField;
    cdPagadas: TZReadOnlyQuery;
    JvLabel1: TJvLabel;
    memPeriodosAcumVac: TFloatField;
    AcumVac: TcxGridDBColumn;
    memPeriodosComentario: TStringField;
    Comentario: TcxGridDBColumn;
    Prescritas: TComboBox;
    JvLabel2: TJvLabel;
    Panel2: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    FechaProceso: TcxDateEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FechaProcesoChange(Sender: TObject);
    procedure PrescritasChange(Sender: TObject);
  private
    OldDate: TDate;
    procedure RegenerarTabla;
    procedure IniciarFormulario;
  public
    IdPersonal: LongInt;
    IdPersonalIMSS: LongInt;
    DiasVacacionesPendientes: Real;
    FechaBaja: TDate;
  end;

var
  FrmConsultaVacaciones: TFrmConsultaVacaciones;

implementation

uses UTFrmBuscarPersonal;

{$R *.dfm}

procedure TFrmConsultaVacaciones.FechaProcesoChange(Sender: TObject);
begin
  if (Not Timer1.Enabled) and (Trunc(OldDate) <> Trunc(FechaProceso.Date)) then
  try
    RegenerarTabla;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;

  OldDate := FechaProceso.Date;
end;

procedure TFrmConsultaVacaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  if fsModal in Self.FormState then
    Action := caFree;
end;

procedure TFrmConsultaVacaciones.FormShow(Sender: TObject);
begin
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

  if fsModal in Self.FormState then
  begin
    OldDate := Now;
    FechaProceso.Date := NOW;
  end
  else
  begin
    OldDate := FechaBaja;
    FechaProceso.Date := FechaBaja;
  end;

  memPeriodos.CreateDataSet;

  if fsModal in Self.FormState then
    Timer1.Enabled := True
  else
    IniciarFormulario;
end;

procedure TFrmConsultaVacaciones.PrescritasChange(Sender: TObject);
begin
  RegenerarTabla;
end;

procedure TFrmConsultaVacaciones.IniciarFormulario;
var
  LocCursor: TCursor;
  Inicio: TDate;
  Periodo: Byte;
  VacPagadas,
  FactorVac: Real;
begin
  try
    if (fsModal in Self.FormState) and (IdPersonal = -1) then
    begin
      Application.CreateForm(TFrmBuscarPersonal, FrmBuscarPersonal);
      FrmBuscarPersonal.dsMenu.DataSet := dsBuscarPersonal.DataSet;
      if FrmBuscarPersonal.ShowModal = mrCancel then
        raise Exception.Create('***');

      IdPersonal := dsBuscarPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
      IdPersonalIMSS := dsBuscarPersonal.DataSet.FieldByName('IdPersonalIMSS').AsInteger;
    end
    else
    begin
      IdPersonal := IdPersonal;
      IdPersonalIMSS := IdPersonalIMSS;
    end;

    RegenerarTabla;

    if fsShowing in Self.FormState then
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  except
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

procedure TFrmConsultaVacaciones.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  IniciarFormulario;
end;

procedure TFrmConsultaVacaciones.RegenerarTabla;
var
  LocCursor: TCursor;
  Inicio, FechaPrescribe, FechaHasta: TDate;
  Periodo, IncPer: Byte;
  VacPagadas,
  FactorVac,
  AcumVac,
  FactorAnio: Real;
  IdxP, DiasAnioP: Integer;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if Prescritas.ItemIndex > -1 then
      IncPer := Prescritas.Items.Count - Prescritas.ItemIndex
    else
      IncPer := 0;

    // Localizar el registro de personal
    CrearConjunto(cdPeriodoContrato, 'nuc_personal_activo', ccCatalog);
    CrearConjunto(cdTablaVacaciones, 'rhu_diasvacaciones', ccCatalog);
    CrearConjunto(cdPagadas, 'nom_vacacionespagadas', ccUpdate);

    CargarDatosFiltrados(cdPeriodoContrato, 'IdPersonal', [IdPersonal]);
    CargarDatosFiltrados(cdPagadas, 'IdPersonalIMSS', [IdPersonalIMSS]);

    cdPeriodoContrato.Open;
    cdTablaVacaciones.Open;

    if cdPeriodoContrato.RecordCount > 0 then
    begin
      // Analizar cuantos periodos de vacaciones se le deben
      Inicio := cdPeriodoContrato.FieldByName('FechaMovimiento').AsDateTime;
      Periodo := 1;
      memPeriodos.EmptyDataSet;
      AcumVac := 0.00;
      IdxP := Prescritas.ItemIndex;
      Prescritas.Items.Clear;
      Prescritas.Items.Add('< Ninguna >');
      DiasVacacionesPendientes := 0;
      while YearOf(Inicio) < YearOf(FechaProceso.Date) do
      begin
        if cdTablaVacaciones.Locate('Anios', Periodo, []) then
        begin
          if cdPagadas.Locate('Periodo', Periodo, []) then
            VacPagadas := cdPagadas.FieldByName('Pagadas').AsFloat
          else
            VacPagadas := 0;

          //FactorVac := cdTablaVacaciones.FieldByName('Dias').AsInteger;

          FechaPrescribe := IncMonth(IncYear(Inicio), 6);   // Seis meses en los que patrón puede otorgar las vacaciones contadas a partir del día siguiente
          FechaPrescribe := IncYear(FechaPrescribe, 1);    // Una año en el cual el empleado puede exigir el pago de las vacaciones
          FechaHasta := Trunc(IncYear(Inicio) -1);
          if FechaHasta > Trunc(FechaProceso.Date) then
            FechaHasta := Trunc(FechaProceso.Date);

          DiasAnioP := Trunc(FechaHasta) - Trunc(Inicio);
          if DiasAnioP >= 365 then
            DiasAnioP := 366
          else
            DiasAnioP := 365;
          FactorAnio := ((1 + Trunc(FechaHasta) - Trunc(Inicio)) / DiasAnioP);
          FactorVac := Round((cdTablaVacaciones.FieldByName('Dias').AsInteger * FactorAnio) * 10000) / 10000;

          memPeriodos.Insert;
          memPeriodos.FieldByName('IdPersonalIMSS').AsInteger := cdPeriodoContrato.FieldByName('IdPersonalIMSS').AsInteger;
          memPeriodos.FieldByName('NombreCompleto').AsString := cdPeriodoContrato.FieldByName('NombreCompleto').AsString;
          memPeriodos.FieldByName('Desde').AsDateTime := Inicio;
          memPeriodos.FieldByName('Hasta').AsDateTime := FechaHasta;
          memPeriodos.FieldByName('FactorAnio').AsFloat := FactorAnio;
          memPeriodos.FieldByName('Periodo').Asinteger := Periodo;
          memPeriodos.FieldByName('Pagadas').AsString := FloatToStr(VacPagadas);
          if Trunc(FechaProceso.Date) > FechaPrescribe then
          begin
            Prescritas.Items.Insert(1, 'Periodo ' + IntToStr(Periodo));

            if (IdxP > -1) and (IncPer <= Periodo) then
            begin
              AcumVac := AcumVac + (FactorVac - VacPagadas);
              memPeriodos.FieldByName('Pendientes').AsString := FloatToStr(FactorVac - VacPagadas);
              memPeriodos.FieldByName('Comentario').AsString := 'Prescribieron el día: ' + DateToStr(FechaPrescribe);
            end
            else
            begin
              memPeriodos.FieldByName('Pendientes').AsString := '0';
              memPeriodos.FieldByName('Comentario').AsString := '*** Prescribieron el día: ' + DateToStr(FechaPrescribe);
            end;
          end
          else
          begin
            AcumVac := AcumVac + (FactorVac - VacPagadas);
            memPeriodos.FieldByName('Pendientes').AsString := FloatToStr(FactorVac - VacPagadas);
            if IncMonth(IncYear(Inicio) -1, 6) < Trunc(FechaProceso.Date) then
              memPeriodos.FieldByName('Comentario').AsString := '** Se debieron disfrutar antes del día: ' + DateToStr(IncMonth(IncYear(Inicio) -1, 6)) + ', prescriben el día: ' + DateToStr(IncYear(IncMonth(IncYear(Inicio) -1, 6)))
            else
              memPeriodos.FieldByName('Comentario').AsString := 'Se deben disfrutar antes del día: ' + DateToStr(IncMonth(IncYear(Inicio) -1, 6));
          end;
          memPeriodos.FieldByName('AcumVac').AsString := FloatToStr(AcumVac);
          memPeriodos.FieldByName('Pendientes').AsString := FloatToStr(FactorVac - VacPagadas);
          memPeriodos.FieldByName('DiasTabla').AsInteger := cdTablaVacaciones.FieldByName('Dias').AsInteger;
          memPeriodos.FieldByName('Factor').AsString := FloatToStr((cdTablaVacaciones.FieldByName('Dias').AsInteger * FactorAnio));
          memPeriodos.Post;

          // Acumular para solicitud de valores
          DiasVacacionesPendientes := DiasVacacionesPendientes + (FactorVac - VacPagadas);
        end;

        Inicio := IncYear(Inicio, 1);
        Inc(Periodo);
      end;

      if IdxP = -1 then
        Prescritas.ItemIndex := 0
      else
        Prescritas.ItemIndex := IdxP;

      //Inicio := IncYear(Inicio, -1);
      if Inicio < FechaHasta then
      begin
        // Agregar el último periodo parcial
        if cdTablaVacaciones.Locate('Anios', Periodo, []) then
        begin
          if cdPagadas.Locate('Periodo', Periodo, []) then
            VacPagadas := cdPagadas.FieldByName('Pagadas').AsFloat
          else
            VacPagadas := 0;

          FactorAnio := Round((((1 + Trunc(FechaProceso.Date) - Trunc(Inicio)) / 365)) * 10000) / 10000;
          FactorVac := Round((cdTablaVacaciones.FieldByName('Dias').AsInteger * FactorAnio));

          AcumVac := AcumVac + (FactorVac - VacPagadas);

          memPeriodos.Insert;
          memPeriodos.FieldByName('IdPersonalIMSS').AsInteger := cdPeriodoContrato.FieldByName('IdPersonalIMSS').AsInteger;
          memPeriodos.FieldByName('NombreCompleto').AsString := cdPeriodoContrato.FieldByName('NombreCompleto').AsString;
          memPeriodos.FieldByName('Desde').AsDateTime := Inicio;
          memPeriodos.FieldByName('Hasta').AsDateTime := FechaProceso.Date;
          memPeriodos.FieldByName('FactorAnio').AsFloat := FactorAnio;
          memPeriodos.FieldByName('Periodo').Asinteger := Periodo;
          memPeriodos.FieldByName('Pagadas').AsString := FloatToStr(VacPagadas);
          memPeriodos.FieldByName('AcumVac').AsString := FloatToStr(AcumVac);
          memPeriodos.FieldByName('Pendientes').AsString := FloatToStr(FactorVac - VacPagadas);
          memPeriodos.FieldByName('DiasTabla').AsInteger := cdTablaVacaciones.FieldByName('Dias').AsInteger;
          memPeriodos.FieldByName('Factor').AsString := FloatToStr(FactorVac);
          memPeriodos.Post;

          // Acumular para solicitud de valores
          DiasVacacionesPendientes := DiasVacacionesPendientes + (FactorVac - VacPagadas);
        end;
      end;
    end;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

end.
