unit UTFrmEstadoPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, UDosCapas, UInteliDialog,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, URegistro, StdCtrls, Mask, JvLabel, ExtCtrls, frxClass, frxDBSet,
  AdvGlowButton, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmEstadoPendientes = class(TForm)
    cdPersonalPendientes: TZReadOnlyQuery;
    dsPersonalPendientes: TDataSource;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ColNombreCompleto: TcxGridDBColumn;
    ColTituloOrganizacion: TcxGridDBColumn;
    ColTituloDepartamento: TcxGridDBColumn;
    ColTituloCargo: TcxGridDBColumn;
    ColLapsoTitulo: TcxGridDBColumn;
    ColLapsoIdx: TcxGridDBColumn;
    Panel1: TPanel;
    JvLabel2: TJvLabel;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    btnPreview: TAdvGlowButton;
    Hasta: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvDatosCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure HastaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPreviewClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure HastaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstadoPendientes: TFrmEstadoPendientes;

implementation

{$R *.dfm}

procedure TFrmEstadoPendientes.btnPreviewClick(Sender: TObject);
begin
  FrxReport1.LoadFromFile('Reportes\PendientesContrato.fr3');
  FrxReport1.ShowReport(True);
end;

procedure TFrmEstadoPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  for i := 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmEstadoPendientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 80) then
    btnPreview.Click;
end;

procedure TFrmEstadoPendientes.FormShow(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

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

      Hasta.Date := Date;

      CrearConjunto(cdPersonalPendientes, 'nuc_personal_pendientes', ccSelect);
      //cdPersonalPendientes.Open;

      //tvDatos.DataController.Groups.FullExpand;
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

procedure TFrmEstadoPendientes.HastaClick(Sender: TObject);
begin
  if cdPersonalPendientes.SQL.Text <> '' then
  begin
    cdPersonalPendientes.Close;
    CargarDatosFiltrados(cdPersonalPendientes, 'Hasta', [DateToStrSQL(Hasta.Date)]);
    cdPersonalPendientes.Open;

    tvDatos.DataController.Groups.FullExpand;
    cxGrid1.SetFocus;
  end;
end;

procedure TFrmEstadoPendientes.HastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    HastaClick(Sender);
    cxGrid1.SetFocus;
  end;
end;

procedure TFrmEstadoPendientes.tvDatosCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[0] = 0 then
  begin
    ACanvas.Font.Color := clGray;
    ACanvas.Font.Style := [fsItalic];
  end
  else
  begin
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

end.
