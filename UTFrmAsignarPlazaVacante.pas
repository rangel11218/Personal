unit UTFrmAsignarPlazaVacante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, UInteliDialog,
  UDosCapas, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient;

type
  TFrmAsignarPlazaVacante = class(TForm)
    dsPlazaDetalle: TDataSource;
    cdPlazaAsignacion: TZQuery;
    Timer1: TTimer;
    Panel1: TPanel;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsPlazaAsignacion: TDataSource;
    ColTituloCargo: TcxGridDBColumn;
    cdPlazaAsignacionPendientes: TZReadOnlyQuery;
    cdProceso: TClientDataSet;
    dsProceso: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAsignarPlazaVacante: TFrmAsignarPlazaVacante;

implementation

{$R *.dfm}

procedure TFrmAsignarPlazaVacante.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmAsignarPlazaVacante.Timer1Timer(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
begin
  Timer1.Enabled := False;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdPlazaAsignacionPendientes, 'rhu_plazaasignacionpendientes', ccSelect);
      CargarDatosFiltrados(cdPlazaAsignacionPendientes, 'IdDepartamento', [dsPlazaDetalle.DataSet.FieldByName('IdDepartamento').AsInteger]);
      cdPlazaAsignacionPendientes.Open;

      cdProceso.FieldDefs.Clear;
      for i := 0 to cdPlazaAsignacionPendientes.FieldDefs.Count -1 do
        cdProceso.FieldDefs.Add(cdPlazaAsignacionPendientes.FieldDefs.Items[i].Name, cdPlazaAsignacionPendientes.FieldDefs.Items[i].DataType,  cdPlazaAsignacionPendientes.FieldDefs.Items[i].Size, cdPlazaAsignacionPendientes.FieldDefs.Items[i].Required);

      cdProceso.FieldDefs.Add('IdPersonal', ftInteger,  0, False);
      cdProceso.FieldDefs.Add('NombrePersonal', ftString,  200, False);

      cdProceso.CreateDataSet;
      cdProceso.EmptyDataSet;
      cdProceso.Open;

      cdPlazaAsignacionPendientes.First;
      while not cdPlazaAsignacionPendientes.Eof do
      begin
        cdProceso.Append;
        for i := 0 to cdPlazaAsignacionPendientes.FieldDefs.Count -1 do
          cdProceso.FieldByName(cdPlazaAsignacionPendientes.FieldDefs.Items[i].Name).AsVariant := cdPlazaAsignacionPendientes.FieldByName(cdPlazaAsignacionPendientes.FieldDefs.Items[i].Name).AsVariant;

        cdProceso.Post;

        cdPlazaAsignacionPendientes.Next;
      end;
    finally
      Screen.Cursor := LocCursor;
    end;
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
