unit UTFrmConsultaMovimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvLabel, StdCtrls, Mask, AdvGlowButton, UDosCapas,
  UInteliDialog, Frm_Connection, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, DateUtils, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, StrUtils, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ZAbstractRODataset, ZDataset, DBClient, frxClass, frxDBSet,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TString = class
    Cadena: String;
  end;

  TFrmConsultaMovimientos = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    IdDepartamento: TComboBox;
    btnProceder: TAdvGlowButton;
    tvDatos: TcxGridDBTableView;
    gridDatosLevel1: TcxGridLevel;
    gridDatos: TcxGrid;
    cdDatos: TZReadOnlyQuery;
    dsDatos: TDataSource;
    IdOrganizacion: TComboBox;
    JvLabel4: TJvLabel;
    cdOrganizacion: TZReadOnlyQuery;
    cdDepartamento: TZReadOnlyQuery;
    dsOrganizacion: TDataSource;
    memDatos: TClientDataSet;
    frxReport1: TfrxReport;
    frxdbMovimientos: TfrxDBDataset;
    NombreOrganizacion: TcxGridDBColumn;
    NombreLocalidad: TcxGridDBColumn;
    TituloDepartamento: TcxGridDBColumn;
    TituloProyecto: TcxGridDBColumn;
    TituloCargo: TcxGridDBColumn;
    TipoMovimiento: TcxGridDBColumn;
    FechaMovimiento: TcxGridDBColumn;
    Desde: TcxDateEdit;
    Hasta: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure btnProcederClick(Sender: TObject);
    procedure IdOrganizacionChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    ListaCampos: TStringList;
  public
    { Public declarations }
  end;

var
  FrmConsultaMovimientos: TFrmConsultaMovimientos;

implementation

{$R *.dfm}

const
  IniCol = 5;

procedure TFrmConsultaMovimientos.btnProcederClick(Sender: TObject);
var
  CadFecha: String;
  Idx: Integer;
  LocCursor: TCursor;
  Cadena: TString;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      cdDatos.Close;
      CargarDatosFiltrados(cdDatos, 'Desde,Hasta,Agrupa', [DateToStrSQL(Desde.Date), DateToStrSQL(Hasta.Date), 'Si']);
      //CargarDatosFiltrados(cdDatos, 'Desde,Hasta,IdOrganizacion,IdDepartamento,Agrupa', [DateToStrSQL(Desde.Date), DateToStrSQL(Hasta.Date), Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), Integer(IdDepartamento.Items.Objects[IdDepartamento.ItemIndex]), 'Si']);
      cdDatos.Open;

      ListaCampos := TStringList.Create;
      ListaCampos.Clear;

      // Generar las columnas
      cdDatos.First;
      while Not cdDatos.Eof do
      begin
        CadFecha := RightStr('0' + IntToStr(DayOfTheMonth(cdDatos.FieldByName('FechaMovimiento').AsDateTime)), 2) + '-' + RightStr('0' + IntToStr(MonthOfTheYear(cdDatos.FieldByName('FechaMovimiento').AsDateTime)), 2) + '-' + IntToStr(YearOf(cdDatos.FieldByName('FechaMovimiento').AsDateTime));

        Cadena := TString.Create;
        Cadena.Cadena := 'Col' + IntToStr(cdDatos.RecNo);
        ListaCampos.AddObject(CadFEcha, Cadena);

        cdDatos.Next;
      end;

      cdDatos.Close;
      CargarDatosFiltrados(cdDatos, 'Desde,Hasta', [DateToStrSQL(Desde.Date), DateToStrSQL(Hasta.Date)]);
      //CargarDatosFiltrados(cdDatos, 'Desde,Hasta,IdOrganizacion,IdDepartamento', [DateToStrSQL(Desde.Date), DateToStrSQL(Hasta.Date), Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), Integer(IdDepartamento.Items.Objects[IdDepartamento.ItemIndex])]);
      cdDatos.Open;

      memDatos.EmptyDataSet;

      cdDatos.First;
      while Not cdDatos.Eof do
      begin
        CadFecha := RightStr('0' + IntToStr(DayOfTheMonth(cdDatos.FieldByName('FechaMovimiento').AsDateTime)), 2) + '-' + RightStr('0' + IntToStr(MonthOfTheYear(cdDatos.FieldByName('FechaMovimiento').AsDateTime)), 2) + '-' + IntToStr(YearOf(cdDatos.FieldByName('FechaMovimiento').AsDateTime));
        Idx := ListaCampos.IndexOf(CadFecha);

        memDatos.Append;
        memDatos.FieldByName('IdPersonal').AsInteger := cdDatos.FieldByName('IdPersonal').AsInteger;
        memDatos.FieldByName('NombreCompleto').AsString := cdDatos.FieldByName('NombreCompleto').AsString;
        memDatos.FieldByName('NombreOrganizacion').AsString := cdDatos.FieldByName('NombreOrganizacion').AsString;
        memDatos.FieldByName('TituloDepartamento').AsString := cdDatos.FieldByName('TituloDepartamento').AsString;
        memDatos.FieldByName('TituloCargo').AsString := cdDatos.FieldByName('TituloCargo').AsString;
        memDatos.FieldByName('NombreLocalidad').AsString := cdDatos.FieldByName('NombreLocalidad').AsString;
        memDatos.FieldByName('TituloProyecto').AsString := cdDatos.FieldByName('TituloProyecto').AsString;
        memDatos.FieldByName('IMSS').AsString := cdDatos.FieldByName('NumeroSeguroSocial').AsString;
        memDatos.FieldByName('RFC').AsString := cdDatos.FieldByName('RFC').AsString;
        memDatos.FieldByName('CURP').AsString := cdDatos.FieldByName('CURP').AsString;
        if cdDatos.FieldByName('TipoMovimiento').AsString = 'Reingreso' then
          memDatos.FieldByName(TString(ListaCampos.Objects[Idx]).Cadena).AsString := 'ALTA'
        else
          memDatos.FieldByName(TString(ListaCampos.Objects[Idx]).Cadena).AsString := 'Baja';

        memDatos.Post;

        cdDatos.Next;
      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsultaMovimientos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 80) and (ssCtrl in Shift) then
  begin
    if memDatos.Active and (memDatos.RecordCount > 0) then
    begin
      frxReport1.LoadFromFile('Reportes\MovimientosPersonal.fr3');
      frxReport1.ShowReport(True);
    end;
  end;
end;

procedure TFrmConsultaMovimientos.FormShow(Sender: TObject);
begin
  CrearConjunto(cdDatos, 'nuc_personalimss_movimientos', ccSelect);
  CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog);
  CrearConjunto(cdDepartamento, 'nuc_departamento', ccUpdate);

  Desde.Date := Now;
  Hasta.Date := Now;

  memDatos.CreateDataSet;
  memDatos.Open;

  cdOrganizacion.Open;
  cdDepartamento.Open;
  while Not cdOrganizacion.Eof do
  begin
    IdOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

    cdOrganizacion.Next;
  end;
end;

procedure TFrmConsultaMovimientos.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  i: Integer;
begin
  if LeftStr(VarName, 3) = 'Col' then
  begin
    i := 0;
    while (i < ListaCampos.Count) and (VarName <> TString(ListaCampos.Objects[i]).Cadena) do
    begin
      if VarName <> TString(ListaCampos.Objects[i]).Cadena then
        Inc(i);
    end;

    if (i < ListaCampos.Count) and (VarName = TString(ListaCampos.Objects[i]).Cadena) then
      Value := LeftStr(ListaCampos[i], 5)
    else
      Value := '';
  end;
end;

procedure TFrmConsultaMovimientos.IdOrganizacionChange(Sender: TObject);
begin
  cdOrganizacion.Locate('IdOrganizacion', Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), []);
  IdDepartamento.Items.Clear;
  cdDepartamento.First;
  while Not cdDepartamento.Eof do
  begin
    IdDepartamento.Items.AddObject(cdDepartamento.FieldByName('TituloDepartamento').AsString, TObject(cdDepartamento.FieldByName('IdDepartamento').AsInteger));

    cdDepartamento.Next;
  end;
  IdDepartamento.ItemIndex := -1;
end;

end.
