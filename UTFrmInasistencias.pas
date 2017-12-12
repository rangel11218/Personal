unit UTFrmInasistencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvLabel, ExtCtrls, AdvGlowButton, UDosCapas,
  UInteliDialog, Frm_Connection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, frxClass, frxDBSet, frxPreview, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, URegistro,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, DateUtils,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBCtrls,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils;

type
  TFrmInasistencias = class(TForm)
    Panel7: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    JvLabel3: TJvLabel;
    Panel6: TPanel;
    NombreOrganizacion: TComboBox;
    Panel8: TPanel;
    NombreLocalidad: TComboBox;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    TituloProyecto: TComboBox;
    JvLabel6: TJvLabel;
    TituloDepartamento: TComboBox;
    JvLabel7: TJvLabel;
    NombreBuscar: TEdit;
    btnProceder: TAdvGlowButton;
    Panel9: TPanel;
    cdInasistencias: TZQuery;
    JvLabel8: TJvLabel;
    TipoInasistencia: TComboBox;
    btnAgregar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsInasistencias: TDataSource;
    cdTipoInasistencia: TZQuery;
    cdOrganizacion: TZReadOnlyQuery;
    cdDepartamento: TZReadOnlyQuery;
    cdProyecto: TZReadOnlyQuery;
    cdLocalidad: TZReadOnlyQuery;
    frxDBInasistencia: TfrxDBDataset;
    btnEliminar: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    Panel10: TPanel;
    btnImprimir: TAdvGlowButton;
    Inicio: TcxGridDBColumn;
    Termino: TcxGridDBColumn;
    Referencia: TcxGridDBColumn;
    FechaDescuento: TcxGridDBColumn;
    Titulo: TcxGridDBColumn;
    pnlEdit: TPanel;
    Panel11: TPanel;
    btnCancelarEdit: TAdvGlowButton;
    btnAceptarEdit: TAdvGlowButton;
    Timer1: TTimer;
    dsBuscarPersonal: TDataSource;
    eNombreCompleto: TDBText;
    eNombreOrganizacion: TDBText;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    eTituloDepartamento: TDBText;
    JvLabel11: TJvLabel;
    eNombreLocalidad: TDBText;
    JvLabel12: TJvLabel;
    eTituloProyecto: TDBText;
    GroupBox1: TGroupBox;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    IdTipoInasistencia: TDBLookupComboBox;
    JvLabel15: TJvLabel;
    JvLabel16: TJvLabel;
    dsTipoInasistencia: TDataSource;
    JvLabel17: TJvLabel;
    eTituloCargo: TDBText;
    eReferencia: TDBEdit;
    JvLabel18: TJvLabel;
    cdBuscarInasistencia: TZReadOnlyQuery;
    NombreCompleto: TcxGridDBColumn;
    eInicio: TcxDBDateEdit;
    eTermino: TcxDBDateEdit;
    eFechaDescuento: TcxDBDateEdit;
    Desde: TcxDateEdit;
    Hasta: TcxDateEdit;
    procedure Panel6Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NombreOrganizacionChange(Sender: TObject);
    procedure cdDepartamentoAfterRefresh(DataSet: TDataSet);
    procedure btnProcederClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdInasistenciasAfterPost(DataSet: TDataSet);
    procedure btnEditarClick(Sender: TObject);
    procedure cdInasistenciasAfterOpen(DataSet: TDataSet);
    procedure cdInasistenciasAfterRefresh(DataSet: TDataSet);
    procedure cdInasistenciasAfterClose(DataSet: TDataSet);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    LastIdExcepcion: LongInt;
    NotIdExcepcion: LongInt;
    procedure CargarDatos;
  public
    IdPersonal,
    IdPersonalIMSS: Integer;
  end;

var
  FrmInasistencias: TFrmInasistencias;

implementation

uses UTFrmBuscarPersonal;

{$R *.dfm}

procedure TFrmInasistencias.cdDepartamentoAfterRefresh(DataSet: TDataSet);
begin
  //ShowMessage('Rangel');
end;

procedure TFrmInasistencias.cdInasistenciasAfterClose(DataSet: TDataSet);
begin
  btnEditar.Enabled := False;
end;

procedure TFrmInasistencias.cdInasistenciasAfterOpen(DataSet: TDataSet);
begin
  btnEditar.Enabled := DataSet.RecordCount > 0;
  tvDatos.DataController.Groups.FullExpand;
end;

procedure TFrmInasistencias.cdInasistenciasAfterPost(DataSet: TDataSet);
begin
  LastIdExcepcion := DataSet.FieldByName('IdExcepcion').AsInteger;
end;

procedure TFrmInasistencias.cdInasistenciasAfterRefresh(DataSet: TDataSet);
begin
  btnEditar.Enabled := DataSet.RecordCount > 0;
  tvDatos.DataController.Groups.FullExpand;
end;

procedure TFrmInasistencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Desde', DateToStr(Desde.Date));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Hasta', DateToStr(Hasta.Date));

  for i := 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmInasistencias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  LocCursor: TCursor;
begin
  if Key = 116 then
    try
      LocCursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      tvDatos.DataController.DataSource.DataSet.Refresh;
    finally
      Screen.Cursor := LocCursor;
    end;
end;

procedure TFrmInasistencias.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
const
  LeyEstado: Array[dsEdit..dsInsert] OF String = ('editar', 'dar de alta');
var
  sInicio,
  sTermino: String;
begin
  CanClose := True;
  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      // Verificar si el registro que se quiere grabar no se traslape con otro evento para esta misma persona
      try
        sInicio := IntToStr(DayOfTheMonth(eInicio.Date)) + ',' + IntToStr(MonthOfTheYear(eInicio.Date)) + ',' + IntToStr(YearOf(eInicio.Date));
        sTermino := IntToStr(DayOfTheMonth(eTermino.Date)) + ',' + IntToStr(MonthOfTheYear(eTermino.Date)) + ',' + IntToStr(YearOf(eTermino.Date));

        if cdInasistencias.State = dsInsert then
          NotIdExcepcion := -1;

        cdBuscarInasistencia.Close;
        CargarDatosFiltrados(cdBuscarInasistencia, 'IdPersonal,NotIdExcepcion,sInicio,sTermino', [IdPersonal, NotIdExcepcion, sInicio, sTermino]);
        cdBuscarInasistencia.Open;

        if cdBuscarInasistencia.RecordCount > 0 then
          raise InteligentException.CreateByCode(24, ['Existen ' + IntToStr(cdBuscarInasistencia.RecordCount) + ' registros de Inasistencia las cuales se cruzan con el registro de Inasistencia que está tratando de ' + LeyEstado[cdInasistencias.State] + '.' + #10 + #10 + 'Verifique esto e intente de nuevo.']);
      finally
        cdBuscarInasistencia.Close;
      end;

      CanClose := True;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmInasistencias.FormShow(Sender: TObject);
var
  i: Integer;
begin
  try
    Try
      Desde.Date := StrToDate(VarRegistry('\Ventanas', '\' + Self.Name, 'Desde'));
    Except
      Desde.Date := Now -30;
    End;

    Try
      Hasta.Date := StrToDate(VarRegistry('\Ventanas', '\' + Self.Name, 'Hasta'));
    Except
      Hasta.Date := Now;
    End;

    for i := 0 to tvDatos.ColumnCount -1 do
      Try
        tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i)));
      Except
        ;
      End;

    CrearConjunto(cdTipoInasistencia, 'nom_tipoinasistencia', ccUpdate);
    CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog);
    CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog);
    CrearConjunto(cdProyecto, 'nuc_proyecto', ccCatalog);
    CrearConjunto(cdLocalidad, 'nuc_localidad', ccCatalog);
    CrearConjunto(cdInasistencias, 'nom_inasistencia', ccUpdate);
    CrearConjunto(cdBuscarInasistencia, 'nom_inasistencia_traslape', ccSelect);

    cdOrganizacion.Open;
    cdDepartamento.Open;
    cdTipoInasistencia.Open;
    cdProyecto.Open;
    cdLocalidad.Open;

    CargarDatos;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmInasistencias.NombreOrganizacionChange(Sender: TObject);
begin
  //
end;

procedure TFrmInasistencias.Panel6Resize(Sender: TObject);
begin
  NombreLocalidad.Width := NombreOrganizacion.Width;
  TituloProyecto.Width := NombreOrganizacion.Width;
  TituloDepartamento.Width := NombreOrganizacion.Width;
end;

procedure TFrmInasistencias.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditar.Click;
end;

procedure TFrmInasistencias.btnAgregarClick(Sender: TObject);
var
  LocCursor: TCursor;
  Inicio: TDate;
  Periodo: Byte;
  VacPagadas,
  FactorVac: Real;
  FormaEdit: TForm;
  Termina: Boolean;
  i,
  IdOrganizacion,
  IdDepartamento,
  IdProyecto,
  IdLocalidad: Integer;
begin
  try
    // Verificar si el dataset se ha abierto
    if Not cdInasistencias.Active then
    begin
      CargarDatosFiltrados(cdInasistencias, 'IdExcepcion', [-9]);
      cdInasistencias.Open;
    end;

    FormaEdit := TForm.Create(Self);
    FormaEdit.Caption := 'Agregar nueva Inasistencia';
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;
    FormaEdit.Width := pnlEdit.Width + 20;
    FormaEdit.Height := pnlEdit.Height + 60;

    pnlEdit.Parent := FormaEdit;
    pnlEdit.Align := alClient;
    pnlEdit.Visible := True;





    repeat
      Application.CreateForm(TFrmBuscarPersonal, FrmBuscarPersonal);
      FrmBuscarPersonal.dsMenu.DataSet := dsBuscarPersonal.DataSet;
      if FrmBuscarPersonal.ShowModal = mrCancel then
        raise Exception.Create('***');

      Termina := True;

      // Verificar si el personal seleccionado está dado de baja
      if ((Not dsBuscarPersonal.DataSet.FieldByName('FechaBaja').IsNull) or (dsBuscarPersonal.DataSet.FieldByName('FechaReingreso').IsNull)) and (InteliDialog.ShowModal('Personal dado de baja o no contratado', 'La persona seleccionada está dado de baja o bien nunca ha sido contratado.' + #10 + #10 + '¿Desea registrar de todos modos una inasistencia para esta persona?', mtConfirmation, [mbYes, mbNo], 9) = mrNo) then
        Termina := False;
    until Termina;

    IdPersonal := dsBuscarPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
    IdPersonalIMSS := dsBuscarPersonal.DataSet.FieldByName('IdPersonalIMSS').AsInteger;

    cdInasistencias.Append;
    cdInasistencias.FieldByName('IdExcepcion').AsInteger := 0;
    cdInasistencias.FieldByName('IdPersonal').AsInteger := IdPersonal;
    cdInasistencias.FieldByName('Inicio').AsDateTime := Now;
    cdInasistencias.FieldByName('Termino').AsDateTime := Now;
    cdInasistencias.FieldByName('FechaDescuento').AsDateTime := Now;
    //RegenerarTabla;







    if FormaEdit.ShowModal = mrOk then
    begin
      cdInasistencias.Post;
      CargarDatosFiltrados(cdInasistencias, 'IdExcepcion', [LastIdExcepcion]);
      cdInasistencias.Refresh;

      // Obtener todos los parametros de este empleado
      IdOrganizacion := -1;
      IdDepartamento := -1;
      IdLocalidad := -1;
      IdProyecto := -1;

      if Not cdInasistencias.FieldByName('IdOrganizacion').IsNull then
      begin
        IdOrganizacion := cdInasistencias.FieldByName('IdOrganizacion').AsInteger;
        i := 0;
        while (i < NombreOrganizacion.Items.Count) and (Integer(NombreOrganizacion.Items.Objects[i]) <> IdOrganizacion) do
          Inc(i);
        if i < NombreOrganizacion.Items.Count then
          NombreOrganizacion.ItemIndex := i;
      end;

      if Not cdInasistencias.FieldByName('IdDepartamento').IsNull then
      begin
        IdDepartamento := cdInasistencias.FieldByName('IdDepartamento').AsInteger;
        i := 0;
        while (i < TituloDepartamento.Items.Count) and (Integer(TituloDepartamento.Items.Objects[i]) <> IdDepartamento) do
          Inc(i);
        if i < TituloDepartamento.Items.Count then
          TituloDepartamento.ItemIndex := i;
      end;

      if Not cdInasistencias.FieldByName('IdLocalidad').IsNull then
      begin
        IdLocalidad := cdInasistencias.FieldByName('IdLocalidad').AsInteger;
        i := 0;
        while (i < NombreLocalidad.Items.Count) and (Integer(NombreLocalidad.Items.Objects[i]) <> IdLocalidad) do
          Inc(i);
        if i < NombreLocalidad.Items.Count then
          NombreLocalidad.ItemIndex := i;
      end;

      if Not cdInasistencias.FieldByName('IdProyecto').IsNull then
      begin
        IdProyecto := cdInasistencias.FieldByName('IdProyecto').AsInteger;
        i := 0;
        while (i < TituloProyecto.Items.Count) and (Integer(TituloProyecto.Items.Objects[i]) <> IdProyecto) do
          Inc(i);
        if i < TituloProyecto.Items.Count then
          TituloProyecto.ItemIndex := i;
      end;

      CargarDatosFiltrados(cdInasistencias, 'IdOrganizacion,IdLocalidad,IdProyecto,IdDepartamento,IdTipoInasistencia', [IdOrganizacion, IdLocalidad, IdProyecto, IdDepartamento, -1]);
      cdInasistencias.Refresh;
    end
    else
      cdInasistencias.Cancel;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmInasistencias.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmInasistencias.btnEditarClick(Sender: TObject);
var
  LocCursor: TCursor;
  Inicio: TDate;
  Periodo: Byte;
  VacPagadas,
  FactorVac: Real;
  FormaEdit: TForm;
  Termina: Boolean;
  i,
  IdOrganizacion,
  IdDepartamento,
  IdProyecto,
  IdLocalidad: Integer;
begin
  try
    if Not (cdInasistencias.Active and (cdInasistencias.RecordCount > 0)) then
      raise InteligentException.CreateByCode(24, ['No existen en pantalla registros que editar.']);

    // Verificar si el dataset se ha abierto
    if Not cdInasistencias.Active then
    begin
      CargarDatosFiltrados(cdInasistencias, 'IdExcepcion', [-9]);
      cdInasistencias.Open;
    end;

    FormaEdit := TForm.Create(Self);
    FormaEdit.Caption := 'Editando ' + cdInasistencias.FieldByName('Titulo').AsString + ' Del: ' + cdInasistencias.FieldByName('Inicio').AsString + ' - ' + cdInasistencias.FieldByName('Termino').AsString;
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;
    FormaEdit.Width := pnlEdit.Width + 20;
    FormaEdit.Height := pnlEdit.Height + 60;

    pnlEdit.Parent := FormaEdit;
    pnlEdit.Align := alClient;
    pnlEdit.Visible := True;

    IdPersonal := cdInasistencias.FieldByName('IdPersonal').AsInteger;
    IdPersonalIMSS := cdInasistencias.FieldByName('IdPersonalIMSS').AsInteger;

    NotIdExcepcion := cdInasistencias.FieldByName('IdExcepcion').AsInteger;

    cdInasistencias.Edit;

    if FormaEdit.ShowModal = mrOk then
    begin
      cdInasistencias.Post;
      CargarDatosFiltrados(cdInasistencias, 'IdExcepcion', [LastIdExcepcion]);
      cdInasistencias.Refresh;

      // Obtener todos los parametros de este empleado
      IdOrganizacion := -1;
      IdDepartamento := -1;
      IdLocalidad := -1;
      IdProyecto := -1;

      if Not cdInasistencias.FieldByName('IdOrganizacion').IsNull then
      begin
        IdOrganizacion := cdInasistencias.FieldByName('IdOrganizacion').AsInteger;
        i := 0;
        while (i < NombreOrganizacion.Items.Count) and (Integer(NombreOrganizacion.Items.Objects[i]) <> IdOrganizacion) do
          Inc(i);
        if i < NombreOrganizacion.Items.Count then
          NombreOrganizacion.ItemIndex := i;
      end;

      if Not cdInasistencias.FieldByName('IdDepartamento').IsNull then
      begin
        IdDepartamento := cdInasistencias.FieldByName('IdDepartamento').AsInteger;
        i := 0;
        while (i < TituloDepartamento.Items.Count) and (Integer(TituloDepartamento.Items.Objects[i]) <> IdDepartamento) do
          Inc(i);
        if i < TituloDepartamento.Items.Count then
          TituloDepartamento.ItemIndex := i;
      end;

      if Not cdInasistencias.FieldByName('IdLocalidad').IsNull then
      begin
        IdLocalidad := cdInasistencias.FieldByName('IdLocalidad').AsInteger;
        i := 0;
        while (i < NombreLocalidad.Items.Count) and (Integer(NombreLocalidad.Items.Objects[i]) <> IdLocalidad) do
          Inc(i);
        if i < NombreLocalidad.Items.Count then
          NombreLocalidad.ItemIndex := i;
      end;

      if Not cdInasistencias.FieldByName('IdProyecto').IsNull then
      begin
        IdProyecto := cdInasistencias.FieldByName('IdProyecto').AsInteger;
        i := 0;
        while (i < TituloProyecto.Items.Count) and (Integer(TituloProyecto.Items.Objects[i]) <> IdProyecto) do
          Inc(i);
        if i < TituloProyecto.Items.Count then
          TituloProyecto.ItemIndex := i;
      end;

      CargarDatosFiltrados(cdInasistencias, 'IdOrganizacion,IdLocalidad,IdProyecto,IdDepartamento,IdTipoInasistencia', [IdOrganizacion, IdLocalidad, IdProyecto, IdDepartamento, -1]);
      cdInasistencias.Refresh;
    end
    else
      cdInasistencias.Cancel;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmInasistencias.btnProcederClick(Sender: TObject);
var
  IdOrganizacion,
  IdDepartamento,
  IdLocalidad,
  IdProyecto: Integer;
begin
  IdOrganizacion := Integer(NombreOrganizacion.Items.Objects[NombreOrganizacion.ItemIndex]);
  IdDepartamento := Integer(TituloDepartamento.Items.Objects[TituloDepartamento.ItemIndex]);
  IdLocalidad := Integer(NombreLocalidad.Items.Objects[NombreLocalidad.ItemIndex]);
  IdProyecto := Integer(TituloProyecto.Items.Objects[TituloProyecto.ItemIndex]);

  cdInasistencias.Close;
  CargarDatosFiltrados(cdInasistencias, 'IdOrganizacion,IdDepartamento,IdLocalidad,IdProyecto', [IdOrganizacion, IdDepartamento, IdLocalidad, IdProyecto]);
  cdInasistencias.Open;
end;

procedure TFrmInasistencias.CargarDatos;
begin
  cdTipoInasistencia.First;
  TipoInasistencia.Items.Clear;
  TipoInasistencia.Items.AddObject('< TODOS LOS TIPOS >', TObject(-1));
  while Not cdTipoInasistencia.Eof do
  begin
    TipoInasistencia.Items.AddObject(cdTipoInasistencia.FieldByName('Titulo').AsString, TObject(cdTipoInasistencia.FieldByName('IdTipoInasistencia').AsInteger));

    cdTipoInasistencia.Next;
  end;
  TipoInasistencia.ItemIndex := 0;

  cdOrganizacion.First;
  NombreOrganizacion.Items.Clear;
  NombreOrganizacion.Items.AddObject('< TODAS LAS ORGANIZACIONES >', TObject(-1));
  while Not cdOrganizacion.Eof do
  begin
    NombreOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

    cdOrganizacion.Next;
  end;
  NombreOrganizacion.ItemIndex := 0;

  cdDepartamento.First;
  TituloDepartamento.Items.Clear;
  TituloDepartamento.Items.AddObject('< TODOS LOS DEPARTAMENTOS >', TObject(-1));
  while Not cdDepartamento.Eof do
  begin
    TituloDepartamento.Items.AddObject(cdDepartamento.FieldByName('TituloDepartamento').AsString, TObject(cdDepartamento.FieldByName('IdDepartamento').AsInteger));

    cdDepartamento.Next;
  end;
  TituloDepartamento.ItemIndex := 0;

  cdProyecto.First;
  TituloProyecto.Items.Clear;
  TituloProyecto.Items.AddObject('< TODOS LOS PROYECTOS >', TObject(-1));
  while Not cdProyecto.Eof do
  begin
    TituloProyecto.Items.AddObject(cdProyecto.FieldByName('TituloProyecto').AsString, TObject(cdProyecto.FieldByName('IdProyecto').AsInteger));

    cdProyecto.Next;
  end;
  TituloProyecto.ItemIndex := 0;

  cdLocalidad.First;
  NombreLocalidad.Items.Clear;
  NombreLocalidad.Items.AddObject('< TODAS LAS LOCALIDADES >', TObject(-1));
  while Not cdLocalidad.Eof do
  begin
    NombreLocalidad.Items.AddObject(cdLocalidad.FieldByName('NombreLocalidad').AsString, TObject(cdLocalidad.FieldByName('IdLocalidad').AsInteger));

    cdLocalidad.Next;
  end;
  NombreLocalidad.ItemIndex := 0;
end;

end.
