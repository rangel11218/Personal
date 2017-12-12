unit UTFrmDepartamento;

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
  TFrmDepartamento = class(TForm)
    cxGrid1: TcxGrid;
    tvDatos: TcxGridDBTableView;
    CodigoDepartamento: TcxGridDBColumn;
    TituloDepartamento: TcxGridDBColumn;
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
    eCodigoDepartamento: TDBEdit;
    eTituloDepartamento: TDBEdit;
    cdDatos: TZQuery;
    dsDatos: TDataSource;
    cdOrganizacion: TZReadOnlyQuery;
    dsOrganizacion: TDataSource;
    IdOrganizacion: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    TituloOrganizacion: TcxGridDBColumn;
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
  private
    FormaEdit: TForm;
    procedure EstadoBotones;
    procedure PropiedadesEdit;
  public
    { Public declarations }
  end;

var
  FrmDepartamento: TFrmDepartamento;

implementation

{$R *.dfm}

procedure TFrmDepartamento.btnAddClick(Sender: TObject);
begin
  FormaEdit := TForm.Create(Self);

  try
    PropiedadesEdit;
    FormaEdit.Caption := 'Agregar registro';

    cdDatos.Append;
    cdDatos.FieldByName('IdDepartamento').AsInteger := 0;
    cdDatos.FieldByName('Nivel').AsInteger := 0;
    cdDatos.FieldByName('Activo').AsString := 'Si';

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

procedure TFrmDepartamento.btnBorrarClick(Sender: TObject);
begin
  if InteliDialog.ShowModal('Eliminar registro', 'Ha solicitado eliminar el regsitro:' + #10 + #10 + cdDAtos.FieldByName('TituloDepartamento').AsString + #10 + #10 + '¿Está seguro de eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    cdDatos.Delete;
end;

procedure TFrmDepartamento.btnEditarClick(Sender: TObject);
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

procedure TFrmDepartamento.cdDatosAfterClose(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmDepartamento.cdDatosAfterDelete(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmDepartamento.cdDatosAfterOpen(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmDepartamento.cdDatosAfterPost(DataSet: TDataSet);
begin
  EstadoBotones;
end;

procedure TFrmDepartamento.FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Obj: TWinControl;
begin
  if ModalResult = mrOK then
  begin
    CanClose := False;

    try
      if IdOrganizacion.KeyValue = Null then
      begin
        Obj := IdOrganizacion;
        raise InteligentException.CreateByCode(18, ['Empresa']);
      end;

      if Trim(eCodigoDepartamento.Text) = '' then
      begin
        Obj := eCodigoDepartamento;
        raise InteligentException.CreateByCode(18, ['Código']);
      end;

      if Trim(eTituloDepartamento.Text) = '' then
      begin
        Obj := eTituloDepartamento;
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

procedure TFrmDepartamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    46: if btnBorrar.Enabled then
          btnBorrar.Click;
    116: cdDatos.Refresh;
  end;
end;

procedure TFrmDepartamento.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog);
      CrearConjunto(cdDatos, 'nuc_departamento', ccUpdate);

      cdOrganizacion.Open;
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

procedure TFrmDepartamento.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if btnEditar.Enabled then
    btnEditar.Click;
end;

procedure TFrmDepartamento.EstadoBotones;
begin
  btnAdd.Enabled := True;
  btnEditar.Enabled := cdDatos.RecordCount > 0;
  btnBorrar.Enabled := cdDatos.RecordCount > 0;

  tvDatos.DataController.Groups.FullExpand;
end;

procedure TFrmDepartamento.PropiedadesEdit;
begin
  FormaEdit.Height := 190;
  FormaEdit.Width := 340;
  FormaEdit.Position := poOwnerFormCenter;
  FormaEdit.OnCloseQuery := FormaEditCloseQuery;

  pnlEdit.Parent := FormaEdit;
  pnlEdit.Align := alClient;
  pnlEdit.Visible := True;
end;

end.
