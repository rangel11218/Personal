unit UTFrmPrestaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, UInteliDialog, JvLabel, StdCtrls, Grids, DBGrids,
  ComCtrls, ToolWin, AdvGlowButton, Mask, ExtCtrls, StrUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, UDosCapas, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  frxClass, frxDBSet, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, DBCtrls, cxCalendar, URegistro, ZAbstractRODataset,
  ZDataset, ZAbstractDataset, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit;

type
  TTipoNomina = class
    Identificador: Integer;
    Titulo: String;
  end;

  TFrmPrestaciones = class(TForm)
    dsAguinaldo: TDataSource;
    dsTipoNomina: TDataSource;
    dsAguinaldos: TDataSource;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    btnBtn_agregar: TdxBarLargeButton;
    btnBtn_editar: TdxBarLargeButton;
    btnBtn_quitar: TdxBarLargeButton;
    btnBtn_refresh: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    Btn_NuevaTabla: TdxBarLargeButton;
    btnImprmir: TdxBarLargeButton;
    frxReporteAguinaldos: TfrxReport;
    FrxAguinaldos: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    frxTipoNomina: TfrxDBDataset;
    pnl_DatosLinea: TPanel;
    jvlbl4: TJvLabel;
    JvLabel3: TJvLabel;
    dsDepartamento: TDataSource;
    pnl_BotonesLinea: TPanel;
    btnBtn_CerrarLinea: TcxButton;
    btnBtn_AceptarLinea: TcxButton;
    btnBtn_AgregarLinea: TcxButton;
    EdtIdTipoNomina: TDBLookupComboBox;
    EdtIdDepartamento: TDBLookupComboBox;
    JvLabel4: TJvLabel;
    cbDefault: TCheckBox;
    dsVacaciones: TDataSource;
    cdTipoNomina: TZReadOnlyQuery;
    cdDepartamento: TZReadOnlyQuery;
    cdAguinaldos: TZQuery;
    cdVacaciones: TZQuery;
    cdBuscarAguinaldo: TZQuery;
    PageControl1: TPageControl;
    advfcpgPage_Aguinaldo: TTabSheet;
    PageVacaciones: TTabSheet;
    PagePrima: TTabSheet;
    GridPrestaciones: TcxGrid;
    tvAguinaldo: TcxGridDBTableView;
    TituloTipoNomina: TcxGridDBColumn;
    Aplicacion: TcxGridDBColumn;
    TituloDepartamento: TcxGridDBColumn;
    CodigoAguinaldo: TcxGridDBColumn;
    DiasAguinaldo: TcxGridDBColumn;
    DescripcionAguinaldo: TcxGridDBColumn;
    GridPrestacionesLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvVacaciones: TcxGridDBTableView;
    TituloTipoNominadv: TcxGridDBColumn;
    Aplicaciondv: TcxGridDBColumn;
    TituloDepartamentodv: TcxGridDBColumn;
    Anios: TcxGridDBColumn;
    Dias: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    tvPrimaVac: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    edtAplicacion: TcxDBDateEdit;
    edtCodigo: TDBEdit;
    dbEditDescripcion: TDBEdit;
    dbEditDias: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel5: TJvLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBtn_AgregarClick(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);
    procedure btnBtn_AgregarLineaClick(Sender: TObject);
    procedure btnBtn_AceptarLineaClick(Sender: TObject);
    procedure btnBtn_EditarClick(Sender: TObject);
    procedure btn_NuevaTablaClick(Sender: TObject);
    procedure btnBtn_QuitarClick(Sender: TObject);
    procedure btnImprmirClick(Sender: TObject);
    procedure tvAguinaldoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cbDefaultClick(Sender: TObject);
  private
    frmEmergente: TForm;
    procedure CrearVentana;
    procedure VerificarDuplicidad;
  public
    { Public declarations }
  end;

var
  FrmPrestaciones: TFrmPrestaciones;

implementation

{$R *.dfm}

procedure TFrmPrestaciones.btnBtn_AceptarLineaClick(Sender: TObject);
begin
  try
    btnBtn_AceptarLinea.SetFocus;
    if EdtIdTipoNomina.KeyValue = Null then
    begin
      EdtIdTipoNomina.SetFocus;
      raise InteligentException.Create('El tipo de n�mina no puede ir vac�o, indique uno por favor.');
    end;

    if EdtIdDepartamento.KeyValue = Null then
    begin
      EdtIdDepartamento.SetFocus;
      raise InteligentException.Create('El Departamento no puede ir vac�o, indique uno por favor.');
    end;

    if Trim(EdtCodigo.Text) = '' then
    begin
      EdtCodigo.SetFocus;
      raise InteligentException.Create('El c�digo no puede ir vac�o, indique uno por favor.');
    end;

    if dbEditDescripcion.Text = '' then
    begin
      dbEditDescripcion.SetFocus;
      raise InteligentException.Create('La descripci�n no puede ir vac�o, indique una por favor.');
    end;

    if dbEditDias.Text = '0' then
      cdAguinaldos.FieldByName('Dias').AsInteger :=0;

    if length(trim(cdAguinaldos.FieldByName('Dias').AsString)) = 0 then
    begin
      dbEditDias.SetFocus;
      raise InteligentException.Create('El numero de d�as no puede ir vac�o, indique uno porfavor.');
    end;

    VerificarDuplicidad;

    cdAguinaldos.Post;
    cdAguinaldos.Refresh;

    frmEmergente.close;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      frmEmergente.close;
    end;
  end;

end;

procedure TFrmPrestaciones.btnBtn_AgregarClick(Sender: TObject);
var
  Fecha: TDate;
begin
  if cdAguinaldos.RecordCount < 1 then
    raise InteligentException.CreateByCode(29,['No hay fechas creadas, Intente agregar un registro para una fecha nueva.']);

  CrearVentana;

  Fecha := cdAguinaldos.FieldByName('Aplicacion').AsDateTime;

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;
  pnl_DatosLinea.Align := alClient;
  dbEditDescripcion.Text := '';
  DbEditDias.Text := '';
  btnBtn_AgregarLinea.Visible  :=True;
  btnBtn_AgregarLinea.Caption := 'Agregar';

  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_BotonesLinea.Align := alBottom;

  cdAguinaldos.Append;
  cbDefault.Checked := False;
  cdAguinaldos.FieldByName('Aplicacion').AsDateTime := Fecha;
  cdAguinaldos.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
  cdAguinaldos.FieldByName('IdDepartamento').AsInteger := cdDepartamento.FieldByName('IdDepartamento').AsInteger;
  cdAguinaldos.FieldByName('IdDiasAguinaldo').AsInteger := 0;
  cdAguinaldos.FieldByName('Activo').AsString := 'Si';

  EdtAplicacion.Enabled := False;
  EdtIdTipoNomina.Enabled := True;
  EdtIdDepartamento.Enabled := True;

  frmEmergente.ShowModal;
  if cdAguinaldos.State = dsInsert then
    cdAguinaldos.Cancel;
end;

procedure TFrmPrestaciones.btnBtn_AgregarLineaClick(Sender: TObject);
begin
  try
    btnBtn_AgregarLinea.SetFocus;
    if EdtIdTipoNomina.KeyValue = Null then
    begin
      EdtIdTipoNomina.SetFocus;
      raise InteligentException.Create('El tipo de n�mina no puede ir vac�o, indique uno por favor.');
    end;

    if EdtIdDepartamento.KeyValue = Null then
    begin
      EdtIdDepartamento.SetFocus;
      raise InteligentException.Create('El Departamento no puede ir vac�o, indique uno por favor.');
    end;

    if Trim(EdtCodigo.Text) = '' then
    begin
      EdtCodigo.SetFocus;
      raise InteligentException.Create('El c�digo no puede ir vac�o, indique uno porfavor.');
    end;

    if Trim(dbEditDescripcion.Text) = '' then
    begin
      dbEditDescripcion.SetFocus;
      raise InteligentException.Create('La descripci�n no puede ir vac�a, indique una por favor.');
    end;

    if dbEditDias.Text = '0' then
      cdAguinaldos.FieldByName('Dias').AsInteger :=0;

    if length(trim(cdAguinaldos.FieldByName('Dias').AsString)) = 0 then
    begin
      dbEditDias.SetFocus;
      raise InteligentException.Create('El numero de d�as no puede ir vac�o, indique uno porfavor.');
    end;

    VerificarDuplicidad;

    cdAguinaldos.Post;
    cdAguinaldos.Refresh;

    frmEmergente.close;
    btnBtn_AceptarLinea.Enabled :=True;
    btnBtn_AgregarLinea.Caption := 'Agregar';
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      frmEmergente.close;
    end;
  end;

end;

procedure TFrmPrestaciones.btnBtn_CerrarLineaClick(Sender: TObject);
begin
  if Assigned(FrmEmergente) then
    frmEmergente.Close;
end;

procedure TFrmPrestaciones.btnBtn_EditarClick(Sender: TObject);
begin
  if cdAguinaldos.RecordCount = 0 then
    raise InteligentException.CreateByCode(29,['No hay registros para editar, Intente agregar un registro para una fecha nueva.']);

  CrearVentana;

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;
  pnl_DatosLinea.Align := alClient;
  btnBtn_AgregarLinea.Visible :=False;
  btnBtn_AgregarLinea.Caption := 'Guardar Cambios.';
  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_BotonesLinea.Align := alBottom;

  cbDefault.Checked := cdAguinaldos.FieldByName('IdDepartamento').IsNull;

  cdAguinaldos.Edit;

  EdtAplicacion.Enabled := False;
  EdtIdTipoNomina.Enabled := False;
  EdtIdDepartamento.Enabled := True;

  frmEmergente.ShowModal;
  if cdAguinaldos.State = dsEdit then
    cdAguinaldos.Cancel;
end;

procedure TFrmPrestaciones.btnBtn_QuitarClick(Sender: TObject);
begin
  try
    if cdAguinaldos.RecordCount < 1 then
      raise InteligentException.CreateByCode(29,['No hay registros para editar, Intente agregar un registro para una fecha nueva.']);

    if InteliDialog.ShowModal('Seguridad','�Est� seguro que desea eliminar el registro?', mtConfirmation, [ mbYes, mbNo ], 0) = mrNo then
      raise InteligentException.Create('Proceso cancelado por el usuario.');

    cdAguinaldos.Delete;
    cdAguinaldos.Refresh;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmPrestaciones.btnImprmirClick(Sender: TObject);
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      {Reporte := 'Aguinaldos.fr3';
      CompReporte := FrxReporteAguinaldos;
      CompDataSetReporte := FrxAguinaldos;

      //LocalImprimeReporte(cdAguinaldo, dbgrd3, 'Dias de Aguinaldo');}
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmPrestaciones.btn_NuevaTablaClick(Sender: TObject);
begin
  CrearVentana;

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;
  pnl_DatosLinea.Align := alClient;
  dbEditDescripcion.Text := '';
  DbEditDias.Text := '';
  btnBtn_AgregarLinea.Visible :=true;
  btnBtn_AgregarLinea.Caption := 'Agregar.';

  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_BotonesLinea.Align := alBottom;

  cdAguinaldos.Append;
  cbDefault.Checked := False;
  cdAguinaldos.FieldByName('Aplicacion').AsDateTime := Now;
  cdAguinaldos.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
  cdAguinaldos.FieldByName('IdDepartamento').AsInteger := cdDepartamento.FieldByName('IdDepartamento').AsInteger;
  cdAguinaldos.FieldByName('IdDiasAguinaldo').AsInteger := 0;
  cdAguinaldos.FieldByName('Activo').AsString := 'Si';

  EdtAplicacion.Enabled := True;
  EdtIdTipoNomina.Enabled := True;
  EdtIdDepartamento.Enabled := True;

  frmEmergente.ShowModal;
  if cdAguinaldos.State = dsInsert then
    cdAguinaldos.Cancel;
end;

procedure TFrmPrestaciones.cbDefaultClick(Sender: TObject);
begin
  EdtIdDepartamento.Enabled := Not cbDefault.Checked;

  if cbDefault.Checked then
    cdAguinaldos.FieldByName('IdDepartamento').Clear
  else
    EdtIdDepartamento.KeyValue := cdDepartamento.FieldByName('IdDepartamento').AsInteger;
end;

procedure TFrmPrestaciones.CrearVentana;
begin
  frmEmergente := Tform.Create(self);
  frmEmergente.Width := pnl_DatosLinea.Width+20;
  frmEmergente.Height := 250;
  frmEmergente.Position := poOwnerFormCenter;
end;

procedure TFrmPrestaciones.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  try
    for i := 0 to tvAguinaldo.ColumnCount -1 do
      SetRegistry('\Ventanas\' + Self.Name, '\tvAguinaldo', 'Col' + IntToStr(i), IntToStr(tvAguinaldo.Columns[i].Width));

    for i := 0 to tvVacaciones.ColumnCount -1 do
      SetRegistry('\Ventanas\' + Self.Name, '\tvVacaciones', 'Col' + IntToStr(i), IntToStr(tvVacaciones.Columns[i].Width));

  finally
    Action := caFree;
  end;
end;

procedure TFrmPrestaciones.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  i: Integer;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog)  then
        raise InteligentException.CreateByCode(5, ['Tipos de N�mina']);

      if Not CargarDatosFiltrados(cdTipoNomina, 'Filtro', ['Si']) then
        raise InteligentException.CreateByCode(6, ['Tipos de N�mina', 'Filtro', 'Si']);

      if Not CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog)  then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

      if Not CrearConjunto(cdAguinaldos, 'rhu_diasaguinaldo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Dias de Aguinaldo']);

      if Not CrearConjunto(cdVacaciones, 'rhu_diasvacaciones', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Dias de Vacaciones']);

      // Obtener los anchos de las columnas
      for i := 0 to tvAguinaldo.ColumnCount -1 do
        Try
          tvAguinaldo.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvAguinaldo', 'Col' + IntToStr(i)));
        Except
          ;
        End;

      for i := 0 to tvVacaciones.ColumnCount -1 do
        Try
          tvVacaciones.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvVacaciones', 'Col' + IntToStr(i)));
        Except
          ;
        End;

      cdTipoNomina.Open;
      cdDepartamento.Open;
      cdAguinaldos.Open;
      cdVacaciones.Open;

      tvAguinaldo.DataController.Groups.ChangeExpanding(0, True, False);
      tvAguinaldo.DataController.Groups.ChangeExpanding(1, True, False);

      tvVacaciones.DataController.Groups.ChangeExpanding(0, True, False);
      tvVacaciones.DataController.Groups.ChangeExpanding(1, True, False);
      tvVacaciones.DataController.Groups.ChangeExpanding(2, True, False);
    Finally
      Screen.Cursor := cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmPrestaciones.tvAguinaldoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnBtn_EditarClick(nil);
end;

procedure TFrmPrestaciones.VerificarDuplicidad;
begin
  if cdAguinaldos.State = dsEdit then
  begin
    if cdBuscarAguinaldo.SQL.Text = '' then
      if Not CrearConjunto(cdBuscarAguinaldo, 'rhu_diasaguinaldo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Dias de Aguinaldo']);

    cdBuscarAguinaldo.Close;
    if Not CargarDatosFiltrados(cdBuscarAguinaldo, 'IdTipoNomina,IdDepartamento,Aplicacion', [cdAguinaldos.FieldByName('IdTipoNomina').AsInteger, cdAguinaldos.FieldByName('IdDepartamento').AsInteger, DateToStrSQL(cdAguinaldos.FieldByName('Aplicacion').AsDateTime)]) then
      raise InteligentException.CreateByCode(16, ['Dias de Aguinaldo']);

    cdBuscarAguinaldo.Open;
    if cdBuscarAguinaldo.RecordCount > 0 then
      raise InteligentException.CreateByCode(24, ['Ya existe un registro que de aguinaldo para el departamento ' + cdDepartamento.FieldByName('TituloDepartamento').AsString]);
  end;
end;

end.
