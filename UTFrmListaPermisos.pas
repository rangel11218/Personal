unit UTFrmListaPermisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, cxDBData, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvGlowButton, frxClass, frxDBSet, UDosCapas, UInteliDialog,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmListaPermisos = class(TForm)
    dsPersonal: TDataSource;
    cdPermisoAusencia: TZReadOnlyQuery;
    dsPermisoAusencia: TDataSource;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    frxDBPermiso: TfrxDBDataset;
    frxReport1: TfrxReport;
    ColFechaSolicitud: TcxGridDBColumn;
    ColTermino: TcxGridDBColumn;
    ColInicio: TcxGridDBColumn;
    ColLeyendaTipoPermiso: TcxGridDBColumn;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaPermisos: TFrmListaPermisos;

implementation

{$R *.dfm}

procedure TFrmListaPermisos.AdvGlowButton2Click(Sender: TObject);
var
  Nombre: String;
begin
  Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\PermisoAusencia.fr3';
  frxReport1.LoadFromFile(Nombre);
  frxReport1.ShowReport(True);
end;

procedure TFrmListaPermisos.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdPermisoAusencia, 'rhu_permisoausencia', ccUpdate);
      CargarDatosFiltrados(cdPermisoAusencia, 'IdPersonal', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger]);
      cdPermisoAusencia.Open;
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

end.
