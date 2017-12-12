unit UTFrmDeptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDosCapas, cxGraphics, cxControls, cxLookAndFeels, Frm_Connection,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, Global,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, URegistro,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxLabel, Menus, cxTextEdit, cxMemo, StdCtrls,
  cxButtons, dxorgchr, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxListBox, cxTreeView, cxGroupBox, ZAbstractRODataset, ZDataset,
  ZAbstractDataset, UInteliDialog, ExtCtrls, AdvGlowButton, frxClass, frxDBSet,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TDataDeptos = class
    Identificador: Integer;
    Indice: Integer;
    Descripcion: String;
    OrgDescripcion: String;
    IdOrganización: Integer;
    IdDepto: Integer;
    IdPadre: Integer;
  end;

  TNodo = class
    IdOrganizacion: Integer;
    NombreOrganizacion: string;
    wbs: String;
    CodigoOrganizacion: string;
    Padre: Integer;
    Nivel: Integer;
  end;

  TFrmDeptos = class(TForm)
    cxGBOrganizacion: TcxGroupBox;
    CxTVOrganizaciones: TcxTreeView;
    cxGroupPersonalIncluido: TcxGroupBox;
    CxGrid2: TcxGrid;
    tvPlazasIncluidas: TcxGridDBTableView;
    cxLevel1: TcxGridLevel;
    cxspltr1: TcxSplitter;
    cxGBDeptos: TcxGroupBox;
    Organigrama: TdxOrgChart;
    cxGBDatos: TcxGroupBox;
    cxMemo1: TcxMemo;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxTextEdtEtiqueta: TcxTextEdit;
    CxTextEdtDescripcion: TcxTextEdit;
    CxTextEdtTitulo: TcxTextEdit;
    CxTextEdtCodigo: TcxTextEdit;
    cdOrganizacion: TZReadOnlyQuery;
    cdDeptosUpt: TZQuery;
    cdPlaza: TZQuery;
    cdNivel: TZReadOnlyQuery;
    Panel1: TPanel;
    CxBtnAceptar: TcxButton;
    CxBtnClose: TcxButton;
    PopupMenu1: TPopupMenu;
    EditarDepartamento: TMenuItem;
    BorrarDepartamento: TMenuItem;
    dsPlazaDetalleSel: TDataSource;
    Panel2: TPanel;
    btnAgregar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnEliminar: TAdvGlowButton;
    cdPlazaDetalle: TZQuery;
    ColTituloCargo: TcxGridDBColumn;
    ColCantidad: TcxGridDBColumn;
    Insertardepartamento1: TMenuItem;
    cdSolicitante: TZReadOnlyQuery;
    cdCargo: TZReadOnlyQuery;
    ColCodigoPlaza: TcxGridDBColumn;
    dsPlaza: TDataSource;
    cdPlazaDetalleSel: TZReadOnlyQuery;
    btnImprimir: TAdvGlowButton;
    frxOficioPlazas: TfrxReport;
    frxDBPlaza: TfrxDBDataset;
    frxDBPlazaDetalle: TfrxDBDataset;
    cdBuscarPlaza: TZReadOnlyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CxTVOrganizacionesChange(Sender: TObject; Node: TTreeNode);
    procedure OrganigramaClick(Sender: TObject);
    procedure cdDeptosUptAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure gFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OrganigramaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditarDepartamentoClick(Sender: TObject);
    procedure BorrarDepartamentoClick(Sender: TObject);
    procedure OrganigramaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure OrganigramaEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure Insertardepartamento1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure cdPlazaDetalleAfterPost(DataSet: TDataSet);
    procedure cdPlazaAfterPost(DataSet: TDataSet);
    procedure btnEditarClick(Sender: TObject);
    procedure cdPlazaAfterOpen(DataSet: TDataSet);
    procedure tvPlazasIncluidasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure cdPlazaDetalleSelAfterOpen(DataSet: TDataSet);
    procedure cdPlazaDetalleSelAfterRefresh(DataSet: TDataSet);
  private
    gForm: TForm;
    UltimoId: LongInt;
    LocOrganizacion: Integer;
    SourceIdPadre: LongInt;
    procedure CrearArbolOrganizaciones(IdNodo: Integer);
    procedure CrearDiagrama(IdNodo: Integer);
    procedure UpdateDepto(Modo: TDataSetState);
  public
    IdPlaza_LID: Integer;
    IdPlazaDetalle_LID: Integer;
    procedure Btn_Agregar;
    procedure Btn_Editar;
    procedure Btn_Quitar;
    procedure Btn_Refresh;
    procedure AsignarPlazaVacante;
    procedure DetallePlazas;
  end;

var
  FrmDeptos: TFrmDeptos;

implementation

{$R *.dfm}

Uses
  Personal, UTFrmPlaza, UTFrmAsignarPlazaVacante, UTFrmPlazaDetalle;

procedure TFrmDeptos.btnAgregarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    Application.CreateForm(TFrmPlaza, FrmPlaza);

    FrmPlaza.dsPlaza.DataSet := cdPlaza;
    FrmPlaza.dsPlazaDetalle.DataSet := cdPlazaDetalle;
    FrmPlaza.dsSolicitante.DataSet := cdSolicitante;
    FrmPlaza.dsCargo.DataSet := cdCargo;
    FrmPlaza.dsBuscarPlaza.DataSet := cdBuscarPlaza;
    FrmPlaza.TituloDepartamento := TDataDeptos(Organigrama.Selected.Data).Descripcion;

    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not cdSolicitante.Active then
      begin
        CargarDatosFiltrados(cdSolicitante, 'NotIdxEstado', [0]);
        cdSolicitante.Open;
      end;

      cdPlaza.Close;
      CargarDatosFiltrados(cdPlaza, 'IdPlaza', [-9]);
      cdPlaza.Open;

      cdPlaza.Append;
      cdPlaza.FieldByName('IdPlaza').AsInteger := 0;
      cdPlaza.FieldByName('IdDepartamento').AsInteger := TDataDeptos(Organigrama.Selected.Data).IdDepto;
      cdPlaza.FieldByName('Fecha').AsDateTime := Now;
      cdPlaza.FieldByName('IdUsuario').AsInteger := Global_IdUsuario;
      cdPlaza.FieldByName('Activo').AsString := 'Si';
    finally
      Screen.Cursor := LocCursor;
    end;

    CargarDatosFiltrados(cdPlazaDetalle, 'IdPlaza', [-9]);
    cdPlazaDetalle.Open;

    if FrmPlaza.ShowModal = mrOk then
    begin
      cdPlazaDetalleSel.Refresh;
      tvPlazasIncluidas.DataController.Groups.FullExpand;
    end;

    if cdPlaza.State in [dsEdit, dsInsert] then
      cdPlaza.Cancel;
  except
    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDeptos.btnEditarClick(Sender: TObject);
var
  LocCursor: TCursor;
  LocIdPlaza: Integer;
begin
  if cdPlazaDetalleSel.Active and (cdPlazaDetalleSel.RecordCount > 0) then
  begin
    Application.CreateForm(TFrmPlaza, FrmPlaza);

    // Cargar las partidas del oficion de plazas seleccionado
    cdPlazaDetalle.Close;
    try
      CargarDatosFiltrados(cdPlazaDetalle, 'IdPlaza', [cdPlazaDetalleSel.FieldByName('IdPlaza').AsInteger]);
      cdPlazaDetalle.Open;

      FrmPlaza.dsPlaza.DataSet := cdPlaza;
      FrmPlaza.dsPlazaDetalle.DataSet := cdPlazaDetalle;
      FrmPlaza.dsSolicitante.DataSet := cdSolicitante;
      FrmPlaza.dsCargo.DataSet := cdCargo;
      FrmPlaza.dsBuscarPlaza.DataSet := cdBuscarPlaza;
      FrmPlaza.TituloDepartamento := TDataDeptos(Organigrama.Selected.Data).Descripcion;

      try
        LocCursor := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;

          if Not cdSolicitante.Active then
          begin
            CargarDatosFiltrados(cdSolicitante, 'NotIdxEstado', [0]);
            cdSolicitante.Open;
          end;

          LocIdPlaza := cdPlazaDetalleSel.FieldByName('IdPlaza').AsInteger;

          cdPlaza.Close;
          CargarDatosFiltrados(cdPlaza, 'IdPlaza', [LocIdPlaza]);
          cdPlaza.Open;

          cdPlaza.Edit;
        finally
          Screen.Cursor := LocCursor;
        end;

        if FrmPlaza.ShowModal = mrOk then
        begin
          cdPlazaDetalleSel.Refresh;
          tvPlazasIncluidas.DataController.Groups.FullExpand;
        end;

        if cdPlaza.State in [dsEdit, dsInsert] then
          cdPlaza.Cancel;
      except
        on e:Exception do
          InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    finally
      cdPlazaDetalle.Close;
    end;
  end;
end;

procedure TFrmDeptos.btnEliminarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  if cdPlazaDetalleSel.RecordCount > 0 then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      cdPlaza.Close;
      CargarDatosFiltrados(cdPlaza, 'IdPlaza', [cdPlazaDetalleSel.FieldByName('IdPlaza').AsInteger]);
      cdPlaza.Open;
    finally
      Screen.Cursor := LocCursor;
    end;

    if cdPlaza.RecordCount = 1 then
    begin
      if InteliDialog.ShowModal('Borrar solicitud de plazas', 'Ha seleccionado eliminar la solicitud de plazas:' + #10 + #10 + cdPlazaDetalleSel.FieldByName('CodigoPlaza').AsString + #10 + #10 + '¿Está seguro de eliminarla en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cdPlaza.Delete;
        cdPlazaDetalleSel.Refresh;
        tvPlazasIncluidas.DataController.Groups.FullExpand;
      end;
    end;
  end;
end;

procedure TFrmDeptos.btnImprimirClick(Sender: TObject);
var
  Nombre: String;
begin
  // Filtrar los datos de la solicitud seleccionada
  try
    cdPlazaDetalle.Close;
    CargarDatosFiltrados(cdPlazaDetalle, 'IdPlaza', [cdPlazaDetalleSel.FieldByName('IdPlaza').AsInteger]);
    cdPlazaDetalle.Open;

    cdPlaza.Close;
    CargarDatosFiltrados(cdPlaza, 'IdPlaza', [cdPlazaDetalleSel.FieldByName('IdPlaza').AsInteger]);
    cdPlaza.Open;

    Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\SolicitudPlazas.fr3';
    frxOficioPlazas.LoadFromFile(Nombre);
    frxOficioPlazas.ShowReport(True);
  finally
    cdPlazaDetalle.Close;
  end;
end;

procedure TFrmDeptos.Btn_Agregar;
begin
  UpdateDepto(dsInsert);
end;

procedure TFrmDeptos.UpdateDepto(Modo: TDataSetState);
var
  locIdDepto: Integer;
  LocNodo: TdxOcNode;
begin
  try
    if Modo = dsEdit then
    begin
      locIdDepto := TDataDeptos(Organigrama.Selected.Data).idDepto;
      LocNodo := Organigrama.Selected;
    end
    else
      locIdDepto := -9;
    
    if not CargarDatosFiltrados(cdDeptosUpt, 'IdDepartamento', [locIdDepto]) then
      raise InteligentException.CreateByCode(16, ['Departamentos']);

    if cdDeptosUpt.Active then
      cdDeptosUpt.Refresh
    else
      cdDeptosUpt.Open;

    if Modo = dsEdit then
    begin  
      if CdDeptosUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [VarToStr(TDataDeptos(Organigrama.Selected.Data).Descripcion), 'Departamentos']);

      cdDeptosUpt.edit;
    end
    else
      cdDeptosUpt.Append;

    gForm := TForm.Create(Self);
    gForm.Name := 'frmAdd';
    gForm.Width := 335;
    gForm.Height := 365;
    gForm.Caption := 'Editar: ' + cdDeptosUpt.FieldByName('TituloDepartamento').AsString;
    gForm.BorderStyle := bsDialog;
    gForm.Position := poOwnerFormCenter;
    gForm.OnCloseQuery := gFormCloseQuery;

    try
      cxGBDatos.Parent := gForm;
      cxGBDatos.Visible := True;
      cxGBDatos.Align := alClient;

      if Modo = dsEdit then
      begin
        cxTextEdtCodigo.Text := cdDeptosUpt.FieldByName('codigodepartamento').AsString ;
        cxTextEdtTitulo.Text := cdDeptosUpt.FieldByName('TituloDepartamento').AsString;
        cxTextEdtEtiqueta.Text := CdDeptosUpt.FieldByName('Etiqueta').AsString;
        cxTextEdtDescripcion.Text := CdDeptosUpt.FieldByName('Descripcion').AsString;
        cxMemo1.Text := CdDeptosUpt.FieldByName('comentarios').AsString;
      end
      else
      begin
        CxTextEdtCodigo.Text := '';
        CxTextEdtTitulo.Text := '';
        CxTextEdtEtiqueta.Text := '';
        CxTextEdtDescripcion.Text := '';
        cxMemo1.Text := '';
      end;

      if gForm.ShowModal = mrOk then
        
    finally
      cxGBDatos.Align := alNone;
      cxGBDatos.Visible := False;
      cxGBDatos.Parent := Self;
      if Assigned(TForm(FindComponent('FrmAdd'))) then
        TForm(FindComponent('FrmAdd')).Destroy;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDeptos.Btn_Editar;
begin
  UpdateDepto(dsEdit);
end;

procedure TFrmDeptos.Btn_Quitar;
var
  locIdDepto: Integer;
  LocNodo: TdxOcNode;
begin
  try
    locIdDepto := TDataDeptos(Organigrama.Selected.Data).idDepto;
    LocNodo := Organigrama.Selected;
    try
      if not CargarDatosFiltrados(CdDeptosUpt, 'IdDepartamento', [locIdDepto]) then
        raise InteligentException.CreateByCode(16, ['Departamentos']);

      if CdDeptosUpt.Active then
        CdDeptosUpt.Refresh
      else
        CdDeptosUpt.Open;

      if CdDeptosUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [VarToStr(TDataDeptos(Organigrama.Selected.Data).Descripcion), 'Departamentos']);

      if InteliDialog.ShowModal('Confirmación', '¿Estás seguro que deseas eliminar este departamento [' + VarToStr(TDataDeptos(Organigrama.Selected.Data).Descripcion) + ']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        CdDeptosUpt.Edit;
        CdDeptosUpt.FieldByName('Activo').AsString := 'No';
        CdDeptosUpt.Post;

        //Borrar el Nodo en el Diagrama
        Organigrama.Delete(LocNodo);
      end;
    finally
      locIdDepto := 0;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDeptos.Btn_Refresh;
begin
  cxTVOrganizacionesChange(nil,CxTVOrganizaciones.Selected);
end;

procedure TFrmDeptos.cdDeptosUptAfterPost(DataSet: TDataSet);
begin
  UltimoId := DataSet.FieldByName('IdDepartamento').AsInteger;
end;

procedure TFrmDeptos.cdPlazaAfterOpen(DataSet: TDataSet);
begin
  tvPlazasIncluidas.DataController.Groups.FullExpand;
end;

procedure TFrmDeptos.cdPlazaAfterPost(DataSet: TDataSet);
begin
  IdPlaza_LID := DataSet.FieldByName('IdPlaza').AsInteger;

  if Assigned(FrmPlaza) then
    try
      FrmPlaza.IdPlaza_LID := IdPlaza_LID;
    except
      ;
    end;
end;

procedure TFrmDeptos.cdPlazaDetalleAfterPost(DataSet: TDataSet);
begin
  IdPlazaDetalle_LID := DataSet.FieldByName('IdPlazaDetalle').AsInteger;
end;

procedure TFrmDeptos.cdPlazaDetalleSelAfterOpen(DataSet: TDataSet);
begin
{  FrmMain.btnAsignarPlazaVacante.Enabled := DataSet.RecordCount > 0;
  FrmMain.btnConsultarDetallePlazas.Enabled := DataSet.RecordCount > 0;} //Rangelito
end;

procedure TFrmDeptos.cdPlazaDetalleSelAfterRefresh(DataSet: TDataSet);
begin
{  FrmMain.btnAsignarPlazaVacante.Enabled := DataSet.RecordCount > 0;
  FrmMain.btnConsultarDetallePlazas.Enabled := DataSet.RecordCount > 0;}
end;

procedure TFrmDeptos.CrearArbolOrganizaciones(IdNodo: Integer);
var
  i, norec, idOrg: Integer;
  oNodo : TNodo;
  SuperPadre: TTreeNode;
  Inicial: TTreeNode;
  Padre: TTreeNode;
  Found: Boolean;
  NodoSeleccionar: TTreeNode;
begin
  try
    CxTVOrganizaciones.Items.BeginUpdate;
    CxTVOrganizaciones.Items.Clear;
    NodoSeleccionar := Nil;
    i := -5;

    oNodo := TNodo.Create;
    oNodo.Padre := -5;
    oNodo.IdOrganizacion := -5;
    oNodo.Nivel := -5;
    oNodo.Wbs := '';
    oNodo.CodigoOrganizacion := '';
    oNodo.NombreOrganizacion := '';

    Inicial := CxTVOrganizaciones.Items.AddChildObject(Nil, 'ORGANIZACION:', Pointer(oNodo));
    cdOrganizacion.First;
    while Not cdOrganizacion.Eof do
    begin
      oNodo := TNodo.Create;
      oNodo.Padre := -5;

      // Localizar el padre
      Padre := Inicial;
      if cdOrganizacion.FieldByName('Padre').AsInteger > 0 then
      begin
        i := 0;
        Found := False;
        while (i < CxTvOrganizaciones.Items.Count) and Not Found do
        begin
          Found := TNodo(CxTvOrganizaciones.Items.Item[i].Data).IdOrganizacion = cdOrganizacion.FieldByName('Padre').AsInteger;
          if Not Found then Inc(i);
        end;
        if Found then
        begin
          Padre := CxTVOrganizaciones.Items.Item[i];
          ONodo.Padre := TNodo(Padre.Data).Nivel;
        end;
      end;

      oNodo.Nivel := cdOrganizacion.FieldByName('IdNivel').AsInteger;
      oNodo.IdOrganizacion := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      oNodo.Wbs := cdOrganizacion.FieldByName('Wbs').AsString;
      oNodo.CodigoOrganizacion := cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;
      oNodo.NombreOrganizacion := cdOrganizacion.FieldByName('NombreOrganizacion').AsString;

      if cdOrganizacion.FieldByName('IdOrganizacion').AsInteger = IdNodo then
        NodoSeleccionar := CxTVOrganizaciones.Items.AddChildObject(Padre, '(' + cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ')  ' + cdOrganizacion.FieldByName('TituloOrganizacion').AsString, Pointer(oNodo))
      else
        CxTVOrganizaciones.Items.AddChildObject(Padre, '(' + cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ')  ' + cdOrganizacion.FieldByName('TituloOrganizacion').AsString, Pointer(oNodo));
      cdOrganizacion.Next;
    end;
    if CxTVOrganizaciones.Items.Count > 0 then
    if Assigned(NodoSeleccionar) then
      CxTVOrganizaciones.Selected := NodoSeleccionar
    else
      CxTVOrganizaciones.Selected := CxTVOrganizaciones.Items.Item[0];

    for i := 0 to CxTVOrganizaciones.Items.Count -1 do
      CxTVOrganizaciones.Items.Item[i].Expand(True);

  finally
    CxTVOrganizaciones.Items.EndUpdate;
  end;
end;

procedure TFrmDeptos.CrearDiagrama(IdNodo: Integer);
var
  cdOrg: TZReadOnlyQuery;
  NodoPadre: TdxOcNode;
  NodoHijos: TDataDeptos;
  Nodos: TDataDeptos;
  NodoActual: TdxOcNode;
  cursor: TCursor;
  IdxImagen: Integer;

procedure BuscarHijos(IdOrganizacion: Integer; var NodoPivote: TdxOCNode);
var
  cdHijos: TZReadOnlyQuery;
  NodoAct: TdxOcNode;
begin
  //Aqui va el codigo que busca hijos y los creará
  try
    try
      cdHijos := TZReadOnlyQuery.Create(self);
      CrearConjunto(cdHijos, 'nuc_departamento', ccCatalog);
      CrearConjunto(cdCargo, 'nuc_cargo_buscar', ccSelect);
      CargarDatosFiltrados(cdHijos, 'IdPadre', [idOrganizacion]);

      if cdHijos.Active then
        cdHijos.Refresh
      else
        cdHijos.Open;

      cdHijos.First;
      while not cdHijos.Eof do
      begin
        Nodos := TDataDeptos.Create;
        Nodos.Indice := -5;
        Nodos.idPadre := cdHijos.FieldByName('idPadre').AsInteger;
        Nodos.idDepto := cdHijos.FieldByName('IdDepartamento').AsInteger;
        Nodos.OrgDescripcion := cdHijos.FieldByName('TituloDepartamento').AsString + #10 + 'Plazas: ' + IntToStr(cdHijos.FieldByName('nPersonas').AsInteger) + #10 + 'Personal: ' + '' + #10 + 'Vacantes: ' + '';
        Nodos.Descripcion := cdHijos.FieldByName('TituloDepartamento').AsString;
        Nodos.idOrganización := cdHijos.FieldByName('IdOrganizacion').AsInteger;
        NodoAct := Organigrama.AddChild(NodoPivote, Pointer(Nodos));
        NodoAct.Color := $00FED8B1;
        NodoAct.Shape := shRoundRect;
        NodoAct.Text := Nodos.OrgDescripcion;
        buscarHijos(cdHijos.FieldByName('idDepartamento').AsInteger, NodoAct);
        cdHijos.Next;
      end;
    finally
      cdHijos.Destroy;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

begin
  try
    Organigrama.Clear;
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      NodoPadre := TdxOcNode.Create(Organigrama);
      cdOrg := TZReadOnlyQuery.Create(self);

      if not CrearConjunto(cdOrg, 'nuc_departamento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

     if not CargarDatosFiltrados(cdOrg, 'idOrganizacion,SoloPadres', [idNodo, 'Si']) then
        raise InteligentException.CreateByCode(6, ['IdDeptos', 'Departamentos', VarToStr(idNodo)]);

      if cdOrg.Active then
        cdOrg.Refresh
      else
        cdOrg.Open;

      // Localizar la imagen de esta organizacion
      if Connection.RelacionImgIdOrganizacion.IndexOf(IntToStr(TNodo(cxTVOrganizaciones.Selected.Data).IdOrganizacion)) >= 0 then
        IdxImagen := Integer(Connection.RelacionImgIdOrganizacion.Objects[Connection.RelacionImgIdOrganizacion.IndexOf(IntToStr(TNodo(cxTVOrganizaciones.Selected.Data).IdOrganizacion))])
      else
        IdxImagen := -1;
        
      NodoHijos := TDataDeptos.Create;
      NodoHijos.IdDepto := -5;
      NodoHijos.IdPadre := -5;
      NodoHijos.IdOrganización := TNodo(cxTVOrganizaciones.Selected.Data).IdOrganizacion;
      NodoHijos.Descripcion := TNodo(cxTVOrganizaciones.Selected.Data).NombreOrganizacion;
      NodoHijos.OrgDescripcion := TNodo(cxTVOrganizaciones.Selected.Data).NombreOrganizacion;
      NodoPadre := Organigrama.AddChild(nil, Pointer(NodoHijos));
      NodoPadre.ImageIndex := IdxImagen;
      NodoPadre.ImageAlign := iaTC; //iaNone, iaLT, iaLC, iaLB, iaRT, iaRC, iaRB, iaTL, iaTC, iaTR, iaBL, iaBC, iaBR
      NodoPadre.Height := 120;
      NodoPadre.Color := clWhite; //$00FED8B1;
      NodoPadre.Shape := shRoundRect;
      NodoPadre.Text := NodoHijos.OrgDescripcion;

      cdOrg.First;
      while Not cdOrg.Eof do
      begin
        Nodos := TDataDeptos.Create;
        Nodos.IdPadre := cdOrg.FieldByName('IdPadre').AsInteger;
        Nodos.IdDepto := cdOrg.FieldByName('IdDepartamento').AsInteger;
        Nodos.Descripcion := cdOrg.FieldByName('TituloDepartamento').AsString;
        Nodos.OrgDescripcion := cdOrg.FieldByName('TituloDepartamento').AsString + #10 + 'Plazas: ' + IntToStr(cdOrg.FieldByName('nPersonas').AsInteger) + #10 + 'Personal: ' + '' + #10 + 'Vacantes: ' + '';
        Nodos.IdOrganización := cdOrg.FieldByName('IdOrganizacion').AsInteger;
        NodoActual := Organigrama.AddChild(NodoPadre, Pointer(Nodos));
        NodoActual.Color := $00FED8B1;
        NodoActual.Shape := shRoundRect;
        NodoActual.Text := Nodos.OrgDescripcion;
        buscarHijos(cdOrg.FieldByName('IdDepartamento').AsInteger, NodoActual);
        cdOrg.Next;
      end;
    finally
      cdOrg.Destroy;
      NodoPadre := Nil;
      NodoActual := Nil;
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDeptos.CxTVOrganizacionesChange(Sender: TObject; Node: TTreeNode);
var
  i: Integer;
begin
{  FrmMain.btnAsignarPlazaVacante.Enabled := (cdPlazaDetalleSel.State <> dsInactive) and (cdPlazaDetalleSel.RecordCount > 0);
  FrmMain.btnConsultarDetallePlazas.Enabled := (cdPlazaDetalleSel.State <> dsInactive) and (cdPlazaDetalleSel.RecordCount > 0);
}
  Organigrama.Clear;
  cxGBDeptos.Caption := 'Departamentos';
{  FrmMain.btnAgregarDepartamento.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  FrmMain.btnEditarDepartamento.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  FrmMain.btnEliminarDepartamento.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  FrmMain.btnRefreshDepartamento.Enabled := CxTVOrganizaciones.Selected.Level >= 1;}
  if CxTVOrganizaciones.Selected.Level >= 1 then
  begin
    cxGBDeptos.Caption := 'Nivel organizacional: [' + TNodo(CxTVOrganizaciones.Selected.Data).NombreOrganizacion + ']';
    LocOrganizacion := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;

    CrearDiagrama(LocOrganizacion);
    try
      for i := 0 to Organigrama.Count - 1 do
        Organigrama.Items[i].Expand(true);
    except
      ;
    end;

    cxGroupPersonalIncluido.Enabled := True;
  end
  else
  begin
    cdPlazaDetalleSel.Close;
    cdPlaza.Close;

    cxGroupPersonalIncluido.Enabled := False;
  end;

end;

procedure TFrmDeptos.BorrarDepartamentoClick(Sender: TObject);
begin
  Btn_Quitar
end;

procedure TFrmDeptos.OrganigramaClick(Sender: TObject);
var
  Cursor: TCursor;
  NodoSeleccionado: TdxOcNode;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      NodoSeleccionado := Organigrama.Selected;
      cxGroupPersonalIncluido.Caption := 'Departamento/Jefatura: ' + TDataDeptos(NodoSeleccionado.Data).Descripcion;

      {FrmMain.btnEditarDepartamento.Enabled := TDataDeptos(NodoSeleccionado.Data).IdDepto <> -5;
      FrmMain.btnEliminarDepartamento.Enabled := TDataDeptos(NodoSeleccionado.Data).IdDepto <> -5;}

      If TDataDeptos(Organigrama.Selected.Data).idDepto <> -5 then
      Begin
        CargarDatosFiltrados(cdPlazaDetalleSel, 'IdDepartamento', [TDataDeptos(NodoSeleccionado.Data).IdDepto]);
        if cdPlazaDetalleSel.Active then
          cdPlazaDetalleSel.Refresh
        else
          cdPlazaDetalleSel.Open;

        tvPlazasIncluidas.DataController.Groups.FullExpand;
      End;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDeptos.OrganigramaDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Assigned(Organigrama.Selected.Parent) and Assigned(Organigrama.Selected.Parent.Data) then
    SourceIdPadre := TDataDeptos(Organigrama.Selected.Parent.Data).IdDepto
  else
    SourceIdPadre := -1;
end;

procedure TFrmDeptos.OrganigramaEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  LocCursor: TCursor;
begin
  if Assigned(Target) and (SourceIdPadre > 0) and (SourceIdPadre <> TDataDeptos(Organigrama.Selected.Parent.Data).IdDepto) then
  begin
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;
        
      // Editar el registro para actualizar el padre
      CargarDatosFiltrados(cdDeptosUpt, 'IdDepartamento', [TDataDeptos(Organigrama.Selected.Data).IdDepto]);
      if cdDeptosUpt.Active then
        cdDeptosUpt.Refresh
      else
        cdDeptosUpt.Open;
    
      if cdDeptosUpt.RecordCount = 1 then
      begin
        cdDeptosUpt.Edit;
        try
          cdDeptosUpt.FieldByName('IdPadre').AsInteger := TDataDeptos(Organigrama.Selected.Parent.Data).IdDepto;
          cdDeptosUpt.Post;
          cdDeptosUpt.Refresh;
        finally
          cdDeptosUpt.Close;
        end;
      end;
    finally
      SourceIdPadre := -1;
      Screen.Cursor := LocCursor;
    end;
  except
    on e:Exception do
    begin
      cdDeptosUpt.Cancel;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
//      ShowMessage(IntToStr(SourceIdPadre) + ' - ' + IntToStr(TDataDeptos(dxOrgChart1.Selected.Parent.Data).IdDepto));
  end;
end;

procedure TFrmDeptos.OrganigramaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Punto: TPoint;
  NodoSeleccionado: TdxOcNode;
begin
  if Button = mbRight then
  begin
    NodoSeleccionado := Organigrama.GetNodeAt(X, Y);

    if Assigned(NodoSeleccionado) then
    begin
      Organigrama.Selected := NodoSeleccionado;
      OrganigramaClick(Organigrama);

      GetCursorPos(Punto);

      PopupMenu1.Popup(Punto.X, Punto.Y);
    end;
  end;
end;

procedure TFrmDeptos.FormActivate(Sender: TObject);
begin
  FrmMain.rtOrganizacion.Visible := True;
  FrmMain.mInteligent.ActiveTab := FrmMain.rtOrganizacion;
end;

procedure TFrmDeptos.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  FrmMain.mInteligent.ActiveTab := FrmMain.rtRH;
  FrmMain.rtOrganizacion.Visible := False;

  SetRegistry('\Ventanas\' + Self.Name, '\' + cxGroupPersonalIncluido.Name, 'Height', IntToStr(cxGroupPersonalIncluido.Height));

  for i := 0 to tvPlazasIncluidas.ColumnCount -1 do
    SetRegistry('\Ventanas\' + Self.Name, '\tvPlazasIncluidas', 'Col' + IntToStr(i), IntToStr(tvPlazasIncluidas.Columns[i].Width));

  Action := caFree;
end;

procedure TFrmDeptos.gFormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  dDeptos: TDataDeptos;
  nodoSeleccionado: TdxOcNode;
  NodoABorrar: TdxOcNode;
  NodoEnfoca: TWinControl;
begin
  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      //Validar no vacios
      if Length(Trim(CxTextEdtCodigo.text)) = 0 then
      begin
        NodoEnfoca := CxTextEdtCodigo;
        raise InteligentException.CreateByCode(18, ['Código Departamento']);
      end;

      if Length(Trim(CxTextEdtTitulo.text)) = 0 then
      begin
        NodoEnfoca := CxTextEdtTitulo;
        raise InteligentException.CreateByCode(18, ['Título Departamento']);
      end;

      if Length(Trim(CxTextEdtEtiqueta.text)) = 0 then
      begin
        NodoEnfoca := CxTextEdtEtiqueta;
        raise InteligentException.CreateByCode(18, ['Etiqueta Departamento']);
      end;

      if Length(Trim(CxTextEdtDescripcion.text)) = 0 then
      begin
        NodoEnfoca := CxTextEdtDescripcion;
        raise InteligentException.CreateByCode(18, ['Descripcion Departamento']);
      end;

      try
        NodoABorrar := nil;
        nodoSeleccionado := Organigrama.Selected;
        if CdDeptosUpt.State = dsInsert then
        begin
          CdDeptosUpt.FieldByName('idDepartamento').AsInteger := 0;
          CdDeptosUpt.FieldByName('idOrganizacion').AsInteger := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
          CdDeptosUpt.FieldByName('idPadre').AsInteger := TDataDeptos(nodoSeleccionado.Data).idDepto;
          CdDeptosUpt.FieldByName('IdArbol').AsInteger := TDataDeptos(nodoSeleccionado.Data).idDepto; //tevisar
          CdDeptosUpt.FieldByName('Nivel').AsInteger := nodoSeleccionado.Level -1;
          CdDeptosUpt.FieldByName('Herencia').AsString := '*';
          CdDeptosUpt.FieldByName('Activo').AsString := 'Si';
        end;

        cdDeptosUpt.FieldByName('codigodepartamento').AsString := CxTextEdtCodigo.Text;
        cdDeptosUpt.FieldByName('TituloDepartamento').AsString := CxTextEdtTitulo.Text;
        cdDeptosUpt.FieldByName('Etiqueta').AsString := CxTextEdtEtiqueta.Text;
        cdDeptosUpt.FieldByName('Descripcion').AsString := CxTextEdtDescripcion.Text;
        cdDeptosUpt.FieldByName('comentarios').AsString := cxMemo1.Text;

        //Asignar valores a mi objeto Odepto
        dDeptos := TDataDeptos.Create;
        dDeptos.idOrganización := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
        dDeptos.Descripcion := CxTextEdtTitulo.Text;
        dDeptos.OrgDescripcion := CxTextEdtTitulo.Text;
        dDeptos.idPadre := TDataDeptos(nodoSeleccionado.Data).idDepto;

        //si se edita borrar el nodo y actualizar su data
        if CdDeptosUpt.State = dsEdit then
          NodoABorrar := nodoSeleccionado;

        cdDeptosUpt.Post;
        dDeptos.IdDepto := UltimoId;

        cdDeptosUpt.Refresh;

        if NodoABorrar = nil then
        begin
          NodoSeleccionado := Organigrama.Selected;
          NodoSeleccionado := Organigrama.AddChild(nodoSeleccionado, Pointer(dDeptos));
          NodoSeleccionado.Color := $00FED8B1;
          NodoSeleccionado.Shape := shRoundRect;
          NodoSeleccionado.Text := dDeptos.Descripcion + #10 + 'Plazas: ' + cdDeptosUpt.FieldByName('nPersonas').AsString + #10 + 'Personal: ' + '' + #10 + 'Vacantes: ' + '';;

          Organigrama.Selected := NodoSeleccionado;
        end
        else
        begin
          NodoSeleccionado.Data := Pointer(dDeptos);
          NodoSeleccionado.Text := dDeptos.Descripcion + #10 + 'Plazas: ' + cdDeptosUpt.FieldByName('nPersonas').AsString + #10 + 'Personal: ' + '' + #10 + 'Vacantes: ' + '';
        end;

        if Assigned(TForm(FindComponent('FrmAdd'))) then
          TForm(FindComponent('FrmAdd')).Close
      finally
        if NodoABorrar <> nil then
          NodoABorrar := nil;

        if CdDeptosUpt.State in [dsInsert, dsEdit] then
          CdDeptosUpt.Cancel;
      end;

      CanClose := True;
    Except
      on e:InteligentException do
      begin
        if NodoEnfoca.CanFocus then
          NodoEnfoca.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        CanClose := True;
        cdDeptosUpt.Cancel;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
  begin
    // Si es cancelación o aborto se cancela la inserción/edición
    CanClose := True;
    cdDeptosUpt.Cancel;
  end;
end;

procedure TFrmDeptos.Insertardepartamento1Click(Sender: TObject);
begin
  Btn_Agregar;
end;

procedure TFrmDeptos.FormDeactivate(Sender: TObject);
begin
  FrmMain.rtOrganizacion.Visible := False;
end;

procedure TFrmDeptos.FormShow(Sender: TObject);
var
  i: Integer;
  LocCursor: TCursor;
begin
  SourceIdPadre := -1;

  try
    cxGroupPersonalIncluido.Height := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\' + cxGroupPersonalIncluido.Name, 'Height'));
  except
    ;
  end;

  for i := 0 to tvPlazasIncluidas.ColumnCount -1 do
    Try
      tvPlazasIncluidas.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvPlazasIncluidas', 'Col' + IntToStr(i)));
    Except
      ;
    End;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog);
      CrearConjunto(cdDeptosUpt, 'nuc_departamento', ccUpdate);
      CrearConjunto(cdPlaza, 'rhu_plaza', ccUpdate);
      CrearConjunto(cdBuscarPlaza, 'rhu_plaza', ccUpdate);
      CrearConjunto(cdPlazaDetalle, 'rhu_plazadetalle', ccUpdate);
      CrearConjunto(cdPlazaDetalleSel, 'rhu_plazadetalle', ccSelect);
      CrearConjunto(cdNivel, 'nuc_nivelorganizacion', ccCatalog);
      CrearConjunto(cdSolicitante, 'nuc_personal', ccCatalog);

      cdOrganizacion.Open;
      cdNivel.Open;

      CrearArbolOrganizaciones(-1);
      cxMemo1.Text := '';
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmDeptos.PopupMenu1Popup(Sender: TObject);
begin
  {EditarDepartamento.Enabled := FrmMain.btnEditarDepartamento.Enabled;
  BorrarDepartamento.Enabled := FrmMain.btnEliminarDepartamento.Enabled;}
end;

procedure TFrmDeptos.tvPlazasIncluidasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if tvPlazasIncluidas.DataController.DataSource.DataSet.RecordCount > 0 then
    btnEditar.Click;
end;

procedure TFrmDeptos.EditarDepartamentoClick(Sender: TObject);
begin
  Btn_Editar;
end;

procedure TFrmDeptos.AsignarPlazaVacante;
begin
  Application.CreateForm(TFrmAsignarPlazaVacante, FrmAsignarPlazaVacante);
  FrmAsignarPlazaVacante.Caption := FrmAsignarPlazaVacante.Caption + ' ' + cdPlazaDetalleSel.FieldByName('CodigoPlaza').AsString;
  FrmAsignarPlazaVacante.dsPlazaDetalle.DataSet := cdPlazaDetalleSel;
  FrmAsignarPlazaVacante.ShowModal;
end;

procedure TFrmDeptos.DetallePlazas;
begin
  Application.CreateForm(TFrmPlazaDetalle, FrmPlazaDetalle);
  FrmPlazaDetalle.IdDepartamento := TDataDeptos(Organigrama.Selected.Data).IdDepto;
  FrmPlazaDetalle.ShowModal;
end;

end.
