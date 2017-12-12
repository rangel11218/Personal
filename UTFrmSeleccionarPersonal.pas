unit UTFrmSeleccionarPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, cxGrid,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, cxGridCustomView,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, cxClasses, DB,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, cxData,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, cxGridLevel,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, cxFilter,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,cxEdit,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, ExtCtrls,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, AdvGlowButton,
  Frm_Connection, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmSeleccionarPersonal = class(TForm)
    tvTodo: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    tvSeleccionados: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsPersonalIncluido: TDataSource;
    dsTodoPersonal: TDataSource;
    etNombreCompleto: TcxGridDBColumn;
    esNombreCompleto: TcxGridDBColumn;
    etNombreOrganizacion: TcxGridDBColumn;
    esNombreOrganizacion: TcxGridDBColumn;
    btnAgregar: TAdvGlowButton;
    btnTodos: TAdvGlowButton;
    btnQuitar: TAdvGlowButton;
    btnNinguno: TAdvGlowButton;
    Panel2: TPanel;
    etIdPersonal: TcxGridDBColumn;
    esIdPersonal: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
  private
    { Private declarations }
  public
    IdNomina: Integer;
  end;

var
  FrmSeleccionarPersonal: TFrmSeleccionarPersonal;

implementation

{$R *.dfm}

procedure TFrmSeleccionarPersonal.btnAgregarClick(Sender: TObject);
var
  i: Integer;
  RecIdx: Integer;
  IdPersonal: Integer;
  LocCursor: TCursor;
begin
  if dsTodoPersonal.DataSet.RecordCount > 0 then
  begin
    dsTodoPersonal.DataSet.DisableControls;
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      for i:= 0 to tvTodo.Controller.SelectedRecordCount -1 do
      begin
        RecIdx := tvTodo.Controller.SelectedRecords[i].RecordIndex;
        IdPersonal := tvTodo.DataController.Values[RecIdx, 1];
        dsTodoPersonal.DataSet.Locate('IdPersonal', IdPersonal, []);

        dsPersonalIncluido.DataSet.Append;
        dsPersonalIncluido.DataSet.FieldByName('IdNominaPersonal').AsInteger := 0;
        dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsInteger := dsTodoPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
        dsPersonalIncluido.DataSet.FieldByName('IdNomina').AsInteger := IdNomina;
        dsPersonalIncluido.DataSet.Post;
      end;
    finally
      dsTodoPersonal.DataSet.EnableControls;
      Screen.Cursor := LocCursor;
    end;

    dsTodoPersonal.DataSet.Refresh;
    dsPersonalIncluido.DataSet.Refresh;
  end;
end;

procedure TFrmSeleccionarPersonal.btnQuitarClick(Sender: TObject);
begin
  if dsPersonalIncluido.DataSet.RecordCount > 0 then
  begin
    dsPersonalIncluido.DataSet.Delete;
    dsTodoPersonal.DataSet.Refresh;
    tvTodo.DataController.Groups.FullExpand;
  end;
end;

procedure TFrmSeleccionarPersonal.FormShow(Sender: TObject);
begin
  tvTodo.DataController.Groups.FullExpand;
  tvSeleccionados.DataController.Groups.FullExpand;
end;

end.
