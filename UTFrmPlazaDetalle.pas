unit UTFrmPlazaDetalle;

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
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, URegistro,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, ExtCtrls;

type
  TFrmPlazaDetalle = class(TForm)
    cdPlazasAsignadas: TZReadOnlyQuery;
    dsPlazasAsignadas: TDataSource;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ColTituloCargo: TcxGridDBColumn;
    ColNombreCompleto: TcxGridDBColumn;
    Panel1: TPanel;
    rgVerPlazas: TRadioGroup;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgVerPlazasClick(Sender: TObject);
  private
    procedure ActualizarDatos;
  public
    IdDepartamento: Integer;
  end;

var
  FrmPlazaDetalle: TFrmPlazaDetalle;

implementation

{$R *.dfm}

procedure TFrmPlazaDetalle.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  try
    SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
    SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
    SetRegistry('\Ventanas', '\' + Self.Name, 'rgVerPlazas', IntToStr(rgVerPlazas.ItemIndex));

    for i := 0 to tvDatos.ColumnCount -1 do
      SetRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));
  finally
    Action := caFree;
  end;
end;

procedure TFrmPlazaDetalle.FormShow(Sender: TObject);
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

      try
        rgVerPlazas.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'rgVerPlazas'));
      Except
        ;
      End;

      for i := 0 to tvDatos.ColumnCount -1 do
        Try
          tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i)));
        Except
          ;
        End;

      CrearConjunto(cdPlazasAsignadas, 'rhu_plazaasignacion', ccCatalog);
      CargarDatosFiltrados(cdPlazasAsignadas, 'IdDepartamento', [IdDepartamento]);
      cdPlazasAsignadas.Open;

      ActualizarDatos;
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

procedure TFrmPlazaDetalle.rgVerPlazasClick(Sender: TObject);
begin
  ActualizarDatos;
end;

procedure TFrmPlazaDetalle.ActualizarDatos;
begin
  cdPlazasAsignadas.Filtered := False;
  case rgVerPlazas.ItemIndex of
    0: cdPlazasAsignadas.Filter := '';
    1: cdPlazasAsignadas.Filter := 'pOrden = 1';
    2: cdPlazasAsignadas.Filter := 'pOrden = 0';
  end;

  if cdPlazasAsignadas.Filter <> '' then
    cdPlazasAsignadas.Filtered := True;
end;

end.
