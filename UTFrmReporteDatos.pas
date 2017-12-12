unit UTFrmReporteDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxPreview, ExtCtrls, DateUtils, StrUtils, DB,
  ZAbstractRODataset, ZDataset, UDosCapas, UInteliDialog, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, Frm_Connection,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AdvGlowButton, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmReporteDatos = class(TForm)
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    frxDBPersonal: TfrxDBDataset;
    Timer1: TTimer;
    cdHistorial: TZReadOnlyQuery;
    pnlVarios: TPanel;
    Panel1: TPanel;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsHistorial: TDataSource;
    frxDBHistorial: TfrxDBDataset;
    btnOkVarios: TAdvGlowButton;
    btnCancelarVarios: TAdvGlowButton;
    FechaReingreso: TcxGridDBColumn;
    FechaBaja: TcxGridDBColumn;
    TituloCargo: TcxGridDBColumn;
    NombreOrganizacion: TcxGridDBColumn;
    frxDBQR: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    NombreRepo: String;
  end;

var
  FrmReporteDatos: TFrmReporteDatos;

implementation

{$R *.dfm}

const
  NomMes: Array[1..12] Of String = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Novimiente', 'Diciembre');

procedure TFrmReporteDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmReporteDatos.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmReporteDatos.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Fecha' then
    Value := RightStr('0' + IntToStr(DayOfTheMonth(Now)), 2) + ' de ' + NomMes[MonthOfTheYear(Now)] + ' de ' + IntToStr(YearOf(Now));

  if VarName = 'Dia' then
    Value := RightStr('0' + IntToStr(DayOfTheMonth(Now)), 2);

  if VarName = 'Mes' then
    Value := UpperCase(NomMes[MonthOfTheYear(Now)]);

  if VarName = 'Anio' then
    Value := IntToStr(YearOf(Now));
end;

procedure TFrmReporteDatos.Timer1Timer(Sender: TObject);
var
  FormaVarios: TForm;
begin
  Timer1.Enabled := False;

  try
    // Abrir el dataset historial
    CrearConjunto(cdHistorial, 'nuc_personal_historialcontratacion', ccSelect);
    CargarDatosFiltrados(cdHistorial, 'IdPersonal', [frxDBPersonal.DataSource.DataSet.FieldByName('IdPersonal').AsInteger]);
    cdHistorial.Open;

    if cdHistorial.RecordCount = 0 then
      raise InteligentException.CreateByCode(24, ['No existen periodos de contratación que puedan utilizarse para generar una carta de recomendación.']);

    if cdHistorial.RecordCount > 1 then
    begin
      // Mostrar los periodos para que se seleccione el que se va a reportar
      FormaVarios := TForm.Create(Self);
      try
        FormaVarios.Caption := 'Seleccione un periodo de contratación';
        FormaVarios.Width := 300;
        FormaVarios.Height := 300;
        FormaVarios.Position := poOwnerFormCenter;

        pnlVarios.Parent := FormaVarios;
        pnlVarios.Align := alClient;
        pnlVarios.Visible := True;

        FormaVarios.ShowModal;
      finally
        pnlVarios.Visible := False;
        pnlVarios.Align := alNone;
        pnlVarios.Parent := Self;

        FormaVarios.Destroy;
      end;
    end;

    FrxReport1.LoadFromFile(NombreRepo);
    FrxReport1.ShowReport(True);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
