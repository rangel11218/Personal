unit UTFrmCiudad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, DB, cxDBData, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, Mask, DBCtrls, JvLabel, AdvGlowButton, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Frm_Connection, UDosCapas, UInteliDialog,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmCiudad = class(TForm)
    cxGrid1: TcxGrid;
    tvDatos: TcxGridDBTableView;
    CodigoCiudad: TcxGridDBColumn;
    TituloEstado: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    btnAdd: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnBorrar: TAdvGlowButton;
    pnlEdit: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Panel3: TPanel;
    btnEditCancel: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    eCodigoCiudad: TDBEdit;
    eTituloCiudad: TDBEdit;
    cdDatos: TZQuery;
    dsDatos: TDataSource;
    cdPais: TZReadOnlyQuery;
    dsPais: TDataSource;
    JvLabel3: TJvLabel;
    TituloPais: TcxGridDBColumn;
    cbbIdEstado: TDBLookupComboBox;
    JvLabel4: TJvLabel;
    cdEstado: TZReadOnlyQuery;
    dsEstado: TDataSource;
    TituloCiudad: TcxGridDBColumn;
    cbbIdPais: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarClick(Sender: TObject);
    procedure cdDatosAfterClose(DataSet: TDataSet);
    procedure cdDatosAfterDelete(DataSet: TDataSet);
    procedure cdDatosAfterPost(DataSet: TDataSet);
    procedure cdDatosAfterOpen(DataSet: TDataSet);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnBorrarClick(Sender: TObject);
    procedure cbbIdPaisChange(Sender: TObject);
  private
    FormaEdit: TForm;
    procedure EstadoBotones;
    procedure PropiedadesEdit;
  public
    { Public declarations }
  end;

var
  FrmCiudad: TFrmCiudad;

implementation

{$R *.dfm}

procedure TFrmCiudad.btnAddClick(Sender: TObject);
begin
  FormaEdit := TForm.Create(Self);

  try
    PropiedadesEdit;
    FormaEdit.Caption := 'Agregar registro';

    cdDatos.Append;
    cdDatos.FieldByName('IdCiudad').AsInteger := 0;
    cdDatos.FieldByName('Activo').AsString := 'Si';
    cdDatos.FieldByName('Descripcion').AsString := '';

    if FormaEdit.ShowModal = mrOk then
      cdDatos.Refresh
    else
      cdDatos.Cancel;
  finally
    pnlEdit.Visible := False;
    pnlEdit.Align := alNone;
    pnlEdit.Parent := Self;
  end;
end;

procedure TFrmCiudad.btnBorrarClick(Sender: TObject);
begin
  if InteliDialog.ShowModal('Eliminar registro', 'Ha solicitado eliminar el registro:' + #10 + #10 + cdDAtos.FieldByName('TituloCiudad').AsString + #10 + #10 + '¿Está seguro de eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    cdDatos.Delete;
end;

procedure TFrmCiudad.btnEditarClick(Sender: TObject);
begin
  FormaEdit := TForm.Create(Self);

  try
    PropiedadesEdit;
    FormaEdit.Caption := 'Editar registro';

    cdDatos.Edit;

    if FormaEdit.ShowModal = mrOk then
      cdDatos.Refresh
    else
      cdDatos.Cancel;
  finally
    pnlEdit.Visible := False;
    pnlEdit.Align := alNone;
    pnlEdit.Parent := Self;
  end;
end;

procedure TFrmCiudad.cbbIdPaisChange(Sender: TObject);
begin
  cdPais.Locate('IdPais', Integer(cbbIdPais.Items.Objects[cbbIdPais.ItemIndex]), []);
end;

procedure TFrmCiudad.cdDatosAfterClose(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmCiudad.cdDatosAfterDelete(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmCiudad.cdDatosAfterOpen(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmCiudad.cdDatosAfterPost(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmCiudad.FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Obj: TWinControl;
begin
  if ModalResult = mrOK then
  begin
    CanClose := False;

    try
      if cbbIdPais.ItemIndex = -1 then
      begin
        Obj := cbbIdPais;
        raise InteligentException.CreateByCode(18, ['País']);
      end;

      if cbbIdEstado.KeyValue = Null then
      begin
        Obj := cbbIdEstado;
        raise InteligentException.CreateByCode(18, ['Estado']);
      end;

      if Trim(eCodigoCiudad.Text) = '' then
      begin
        Obj := eCodigoCiudad;
        raise InteligentException.CreateByCode(18, ['Código']);
      end;

      if Trim(eTituloCiudad.Text) = '' then
      begin
        Obj := eTituloCiudad;
        raise InteligentException.CreateByCode(18, ['Título']);
      end;

      cdDatos.Post;

      CanClose := True;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCiudad.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    46: if btnBorrar.Enabled then
          btnBorrar.Click;
    116: cdDatos.Refresh;
  end;
end;

procedure TFrmCiudad.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdPais, 'nuc_pais', ccCatalog);
      CrearConjunto(cdEstado, 'nuc_estado', ccCatalog);
      CrearConjunto(cdDatos, 'nuc_ciudad', ccUpdate);

      cdPais.Open;
      while Not cdPais.Eof do
      begin
        cbbIdPais.Items.AddObject(cdPais.FieldByName('TituloPais').AsString, TObject(cdPais.FieldByName('IdPais').AsInteger));
        cdPais.Next;
      end;
      cbbIdPais.ItemIndex := 0;
      cdEstado.MasterSource := dsPais;
      cbbIdPais.OnChange(cbbIdPais);
      cdEstado.Open;
      cdDatos.Open;
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

procedure TFrmCiudad.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if btnEditar.Enabled then
    btnEditar.Click;
end;

procedure TFrmCiudad.EstadoBotones;
begin
  btnAdd.Enabled := True;
  btnEditar.Enabled := cdDatos.RecordCount > 0;
  btnBorrar.Enabled := cdDatos.RecordCount > 0;

  tvDatos.DataController.Groups.FullExpand;
end;

procedure TFrmCiudad.PropiedadesEdit;
begin
  FormaEdit.Height := 220;
  FormaEdit.Width := 340;
  FormaEdit.Position := poOwnerFormCenter;
  FormaEdit.OnCloseQuery := FormaEditCloseQuery;

  pnlEdit.Parent := FormaEdit;
  pnlEdit.Align := alClient;
  pnlEdit.Visible := True;
end;

end.
