unit UTFrmVacaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, DB,
  DBClient, ComCtrls, ToolWin, JvLabel, UInteliDialog, JvComponentBase,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  UDosCapas, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxControls,
  cxContainer, cxEdit, cxSpinEdit, cxDBEdit, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Tabs;

type
  TTipoNomina = class
    identificador: Integer;
    titulo: string;
  end;

  TFrmVacaciones = class(TForm)
    dsAguinaldos: TDataSource;
    cdAguinaldos: TClientDataSet;
    dsAguinaldo_Sel: TDataSource;
    cdAguinaldo_Sel: TClientDataSet;
    cdPrimaVacacional: TClientDataSet;
    dsPrimaVacacional: TDataSource;
    dsAguinaldo: TDataSource;
    cdAguinaldo: TClientDataSet;
    dsVacaciones: TDataSource;
    dsEdicion: TDataSource;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    btnBtn_agregar: TdxBarLargeButton;
    btnBtn_editar: TdxBarLargeButton;
    btnBtn_quitar: TdxBarLargeButton;
    btnBtn_refresh: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    btn_nuevatabla: TdxBarLargeButton;
    btnImprmir: TdxBarLargeButton;
    frxReporteVacaciones: TfrxReport;
    frxVacaciones: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    frxTipoNomina: TfrxDBDataset;
    cdVacacionesPeriodos: TZReadOnlyQuery;
    cdVacacionesUpt: TZQuery;
    cdVacaciones: TZReadOnlyQuery;
    cdTipoNomina: TZReadOnlyQuery;
    dbgrd3: TDBGrid;
    pnl_DatosLinea: TPanel;
    pnl_BotonesLinea: TPanel;
    btnBtn_AgregarLinea: TcxButton;
    Btn_AceptarLinea: TcxButton;
    btnBtn_CerrarLinea: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdtFechaAplicacion: TcxDBDateEdit;
    JvLabel2: TJvLabel;
    EdtGrupoTabla: TDBEdit;
    edtA�os: TcxDBSpinEdit;
    edtDias: TcxDBSpinEdit;
    Panel1: TPanel;
    Label6: TLabel;
    Panel2: TPanel;
    cbTipoNomina1: TComboBox;
    JvBalloonHint1: TBalloonHint;
    TabDiasVacaciones: TTabSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTipoNomina1Change(Sender: TObject);
    procedure dbgrd3DblClick(Sender: TObject);
    procedure btnBtn_EditarClick(Sender: TObject);
    procedure btnBtn_AgregarLineaClick(Sender: TObject);
    procedure btnBtn_AgregarClick(Sender: TObject);
    procedure btn_NuevaTablaClick(Sender: TObject);
    procedure btnBtn_QuitarClick(Sender: TObject);
    procedure btnBtn_RefreshClick(Sender: TObject);
    procedure Btn_AceptarLineaClick(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TabDiasVacacionesChanged(Sender: TObject; NewTab: Integer);
    procedure btnImprmirClick(Sender: TObject);
    procedure cdVacaciones2AfterOpen(DataSet: TDataSet);
    procedure cdVacaciones2AfterRefresh(DataSet: TDataSet);
  private
    FrmEmergente: TForm;
    procedure CargarDatos;
    procedure CargarDatos_DatosPanel;
    procedure CrearVentana;
    procedure FiltrarFecha;
    procedure editarReg;
    procedure addNuevo;
  public
    { Public declarations }
  end;

var
  FrmVacaciones: TFrmVacaciones;

implementation

{$R *.dfm}

uses UTFrmPrestaciones;



 //asdaf


procedure TFrmVacaciones.addNuevo;
begin
end;

procedure TFrmVacaciones.TabDiasVacacionesChanged(Sender: TObject;
  NewTab: Integer);
begin
  FiltrarFecha;
end;

procedure TFrmVacaciones.Btn_AceptarLineaClick(Sender: TObject);
var
  Cursor: TCursor;
  FActual: TDate;
  Pt: TPoint;
begin
  try
    Cursor := Screen.Cursor;
    Try
      if length(trim(EdtGrupoTabla.Text)) = 0 then
      begin
        EdtGrupoTabla.SetFocus;
        raise InteligentException.Create('Es necesario que especifique un grupo de tabla antes de guardar.');
      end;
      if length(trim(EdtA�os.Text)) = 0 then
      begin
        EdtA�os.SetFocus;
        raise InteligentException.Create('Es necesario que especifique un numero de a�os antes de guardar.');
      end;
      if length(trim(EdtDias.Text)) = 0 then
      begin
        EdtDias.SetFocus;
        raise InteligentException.Create('Es necesario que especifique un numero de dias antes de guardar.');
      end;

      Screen.Cursor := crAppStart;

      if EdtFechaAplicacion.Enabled then
      begin
        // Verificar si la fecha no se repite con una ya existente
        if Not CargarDatosFiltrados(cdVacacionesPeriodos, 'IdTipoNomina,Aplicacion', [TTiponomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador, DateToStrSQL(EdtFechaAplicacion.Date)]) then
          raise InteligentException.CreateByCode(6, ['Periodos de Vacaciones', IntToStr(TTiponomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).Identificador) + '/' + DateToStrSQL(EdtFechaAplicacion.Date), 'Id. Tipo N�mina/Aplicaci�n']);

        cdVacacionesPeriodos.Close;
        try
          cdVacacionesPeriodos.Open;
          if cdVacacionesPeriodos.RecordCount > 0 then
            raise InteligentException.CreateByCode(29, [':' + #10 + 'Ya existen registros de correspondientes al periodo de ' + DateToStrSQL(EdtFechaAplicacion.Date) + ', si desea agregar registros a este periodo de fechas utilice la opci�n correspondiente.']);
        finally
          cdVacacionesPeriodos.Close;
        end;
      End;

      FActual := CdVacacionesupt.FieldByName('aplicacion').AsDateTime;
      cdVacacionesupt.FieldByName('IdTipoNomina').AsInteger := TTiponomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador;
      cdVacacionesupt.Post;
      cdVacaciones.Refresh;

      if TWinControl(Sender).Tag = 1 then
      begin
        JvBalloonHint1.Description := 'El registro ha sido grabado...';
        JvBalloonHint1.ShowHint;
        //ShowHint(TWinControl(Sender), 'El registro ha sido grabado...');

        cdVacacionesUpt.Append;
        cdVacacionesUpt.fieldbyname('IdDiasVacaciones').asinteger := 0;
        cdVacacionesUpt.fieldbyname('Activo').AsString := 'Si';
        cdVacacionesUpt.FieldByName('Aplicacion').AsDateTime := FActual;
        cdVacacionesUpt.FieldByName('Dias').AsInteger := 1;
        cdVacacionesUpt.FieldByName('Anios').AsInteger := 1;
        cdVacacionesUpt.FieldByName('GrupoTabla').AsString := '';

        EdtGrupoTabla.SetFocus;
      end
      else
      begin
        ModalResult := mrOk;
        FrmEmergente.Close;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmVacaciones.btnBtn_AgregarClick(Sender: TObject);
Var i: integer;
begin
  try
    if cdVacaciones.RecordCount = 0 then
      raise InteligentException.CreateByCode(29,['No hay fechas creadas, Intente agregar un registro para una fecha nueva.']);

    cdVacaciones.Open;

    CdvacacionesUpt.Close;
    if Not CargarDatosFiltrados(CdvacacionesUpt, 'IdDiasVacaciones', [-9]) then
      raise InteligentConnection.CreateByCode(16, ['Vacaciones']);

    CdvacacionesUpt.Open;

    if CdvacacionesUpt.RecordCount > 1 then
      raise InteligentException.CreateByCode(12, [cdTipoNomina.fieldByName('IdTipoNomina').AsInteger,'Vacaciones','Se encontr� un registro con el mismo identificador.' ]);

    CdvacacionesUpt.append;
    cdVacacionesUpt.FieldByName('IdDiasVacaciones').asinteger := 0;
    cdVacacionesUpt.FieldByName('GrupoTabla').AsString := '';
    cdVacacionesUpt.FieldByName('Anios').AsInteger := 1;
    cdVacacionesUpt.FieldByName('Dias').AsInteger := 1;
    cdVacacionesUpt.FieldByName('Activo').AsString := 'Si';
    {if (TabDiasvacaciones.Tabs.Count > 0) and (Length(trim(TabDiasvacaciones.Tabs[TabDiasvacaciones.TabIndex].Caption))>0)  then
      CdvacacionesUpt.fieldbyname('Aplicacion').asdatetime := StrToDate(TabDiasvacaciones.Tabs[TabDiasvacaciones.TabIndex].Caption);}
    edtfechaaplicacion.enabled:= false;

    CrearVentana;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:'+ #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmVacaciones.btnBtn_AgregarLineaClick(Sender: TObject);
var
  FActual:TDate;
begin
  try
    FActual := cdVacacionesUpt.FieldByName('Aplicacion').AsDateTime;
    CdVacacionesupt.FieldByName('idtiponomina').AsInteger := TTipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).Identificador;
    CdVacacionesupt.post;
    cdvacaciones.Refresh;
    CdVacacionesUpt.Append;
    cdVacacionesUpt.FieldByName('IdDiasVacaciones').asinteger := 0;
    cdVacacionesUpt.FieldByName('Dias').AsInteger := 1;
    cdVacacionesUpt.FieldByName('Anios').AsInteger := 1;
    cdVacacionesUpt.FieldByName('GrupoTabla').AsString := '';
    CdvacacionesUpt.FieldByName('Activo').AsString := 'Si';
    CdVacacionesupt.FieldByName('Aplicacion').AsDateTime := FActual;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmVacaciones.btnBtn_CerrarLineaClick(Sender: TObject);
begin
  if CdVacacionesUpt.State in [dsEdit,dsInsert] then
    CdVacacionesUpt.Cancel;
end;

procedure TFrmVacaciones.btnBtn_EditarClick(Sender: TObject);
Var
  i: integer;
begin
  try
    if cdVacaciones.RecordCount = 0 then
      raise InteligentException.CreateByCode(29,['No hay Fechas, Pruebe Insertando un nuevo Registro']);

    CdvacacionesUpt.Close;
    if Not CargarDatosFiltrados(CdvacacionesUpt, 'IdDiasVacaciones', [cdvacaciones.FieldByName('IdDiasVacaciones').asinteger]) then
      raise InteligentException.CreateByCode(6, ['Vacaciones', cdTipoNomina.fieldByName('IdTipoNomina').AsInteger, 'Id. Tipo N�mina en update']);

    CdvacacionesUpt.Open;

    if CdvacacionesUpt.RecordCount < 1 then
      raise InteligentException.CreateByCode(13, ['Vacaciones', cdTipoNomina.fieldByName('IdDiasVacaciones').AsInteger]);

    if CdvacacionesUpt.RecordCount > 1 then
      raise InteligentException.CreateByCode(12, [cdTipoNomina.fieldByName('IdTipoNomina').AsInteger,'Vacaciones','Tiene Varios registros con el mismo identificador.' ]);

    edtfechaaplicacion.enabled:= false;
    CdvacacionesUpt.Edit;

    CrearVentana;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al Administrador del sistema:'+ #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmVacaciones.btnBtn_QuitarClick(Sender: TObject);
begin
  try
     cdVacaciones.Open;

    if Cdvacaciones.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Vacaciones']);

    {if InteliDialog.ShowModal('Eliminaci�n de registros', 'Se proceder� a borrar el registro [' + Cdvacaciones.FieldByName('Anios').asstring + ' : '+ Cdvacaciones.FieldByName('Dias').asstring +']' + #10 + #10 + '�Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      BorrarRegistro('rhu_diasvacaciones', [Cdvacaciones.FieldByName('IdDiasVacaciones').AsInteger]);}
    CargarDatos;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('No Hay Datos Para Modificar', '� La Lista Esta Vacia: '+ #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmVacaciones.btnBtn_RefreshClick(Sender: TObject);
var
  Cursor: TCursor;
  idx:Integer;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crSQLWait;
    idx := TabDiasVacaciones.TabIndex;
    cdVacaciones.Refresh;
    CargarDatos;
    try
    if (idx >= 0)then
    begin
      TabDiasVacaciones.TabIndex := idx;
      TabDiasVacacionesChanged(TabDiasVacaciones,idx);
    end;
    except
      on e:Exception do
        ;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmVacaciones.btnImprmirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      {Reporte := 'Vacaciones.fr3';
      CompReporte := FrxReporteVacaciones;
      CompDataSetReporte := FrxVacaciones;

      LocalImprimeReporte(cdvacaciones, dbgrd3, 'Dias Vacaciones');}
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

procedure TFrmVacaciones.btn_NuevaTablaClick(Sender: TObject);
Var i: integer;
begin
  try
    CdvacacionesUpt.Close;
    if Not CargarDatosFiltrados(CdvacacionesUpt, 'IdDiasVacaciones', [-9]) then
      raise InteligentException.CreateByCode(6, ['Vacaciones', cdTipoNomina.fieldByName('IdTipoNomina').AsInteger, 'Id. Tipo N�mina en update']);

    CdvacacionesUpt.Open;

    if CdvacacionesUpt.RecordCount > 1 then
      raise InteligentException.CreateByCode(12, [cdTipoNomina.fieldByName('IdTipoNomina').AsInteger,'Vacaciones','Se encontr� un registro con el mismo identificador.' ]);

    CdvacacionesUpt.append;
    CdvacacionesUpt.fieldbyname('IdDiasVacaciones').asinteger := 0;
    CdVacacionesUpt.FieldByName('Anios').AsInteger := 1;
    CdVacacionesUpt.FieldByName('Dias').AsInteger := 1;
    CdvacacionesUpt.fieldbyname('activo').AsString := 'Si';

    CdvacacionesUpt.fieldbyname('aplicacion').asdatetime := now;

    edtfechaaplicacion.enabled:= True;

    CrearVentana;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;


procedure TFrmVacaciones.Button1Click(Sender: TObject);
begin
Application.CreateForm(TFrmPrestaciones, FrmPrestaciones);
FrmPrestaciones.ShowModal;
end;

procedure TFrmVacaciones.CargarDatos;
var
  Cursor: TCursor;
  TiNomina:TtipoNomina;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crSQLWait;

    if cdTipoNomina.Active then
      cdTipoNomina.Refresh
    else
      cdTipoNomina.Open;

    cbTipoNomina1.Items.Clear;
    cdTipoNomina.First;

    while Not cdTipoNomina.Eof do
    begin
      TiNomina := TtipoNomina.Create;
      TiNomina.identificador := cdTipoNomina.FieldByName('idtiponomina').AsInteger;
      TiNomina.titulo := cdTipoNomina.FieldByName('titulo').AsString;
      cbTipoNomina1.AddItem(TiNomina.titulo, TiNomina);
      cdTipoNomina.Next;
    end;

    if cbTipoNomina1.Items.Count >0 then
    begin
      cbTipoNomina1.ItemIndex := 0;
      cbTipoNomina1Change(nil);
    end;
    //filtrarFecha;
  Finally
    screen.Cursor := Cursor;
  End;
end;


procedure TFrmVacaciones.CargarDatos_DatosPanel;

begin

End;

procedure TFrmVacaciones.cbTipoNomina1Change(Sender: TObject);
Var
  Cursor: TCursor;
begin
  try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      JvLabel2.Caption := cbTipoNomina1.Text;

      cdVacacionesPeriodos.close;

      //Aqui agrego pesta�as al TAdvTabSet
      if Not CargarDatosFiltrados(cdVacacionesPeriodos, 'IdTipoNomina', [TTipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador]) then
        raise InteligentConnection.CreateByCode(6, ['Vacaciones', TTipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador, 'Id. Tipo N�mina']);

     CdVacacionesPeriodos.Open;

      TabDiasVacaciones.Tabs.Clear();
      CdVacacionesPeriodos.First;

      Try
        TabDiasVacaciones.Tag := 1;

        while Not cdVacacionesPeriodos.Eof do
        begin
          TabDiasVacaciones.Tabs.Add(cdVacacionesPeriodos.FieldByName('Aplicacion').AsString);
          CdVacacionesPeriodos.Next;
        end;
      Finally
        TabDiasVacaciones.Tag := 0;
      End;

      if TabDiasVacaciones.Tabs.Count > 0 then
        FiltrarFecha;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

  end;
end;

procedure TFrmVacaciones.cdVacaciones2AfterOpen(DataSet: TDataSet);
begin
  btnBtn_editar.Enabled := (cdVacaciones.Active) and (cdVacaciones.RecordCount > 0);
  btnBtn_quitar.Enabled := btnBtn_quitar.Enabled;
end;

procedure TFrmVacaciones.cdVacaciones2AfterRefresh(DataSet: TDataSet);
begin
  btnBtn_editar.Enabled := (cdVacaciones.Active) and (cdVacaciones.RecordCount > 0);
  btnBtn_quitar.Enabled := btnBtn_quitar.Enabled;
end;

procedure TFrmVacaciones.CrearVentana;
begin
  frmEmergente := Tform.Create(self);
  frmEmergente.Width := pnl_DatosLinea.Width+20;
  frmEmergente.Height := 250;

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;

  btnBtn_AgregarLinea.Enabled := CdVacacionesUpt.State = dsInsert;

  pnl_DatosLinea.Align := alClient;
  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;

  pnl_BotonesLinea.Align := alBottom;

  frmEmergente.ShowModal;
end;

procedure TFrmVacaciones.dbgrd3DblClick(Sender: TObject);
begin
  btnBtn_EditarClick(nil);
end;

procedure TFrmVacaciones.editarReg;
begin

end;

procedure TFrmVacaciones.FiltrarFecha;
var
  Fecha:string;
  Cursor: TCursor;
begin
  if (TabDiasVacaciones.Tag = 0) and (Length(trim(TabDiasvacaciones.Tabs[TabDiasvacaciones.TabIndex])) > 0) then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crSQLWait;

      cdVacaciones.close;

      Fecha := DatetoStrSql(StrToDate(Copy(TabDiasvacaciones.Tabs[TabDiasvacaciones.TabIndex], 1, 10)));

      if Not CargarDatosFiltrados(cdVacaciones,'Aplicacion,IdTipoNomina',[Fecha ,TtipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador]) then
        raise InteligentException.CreateByCode(6, ['Vacaciones', cdAguinaldo.fieldByName('Aplicacion').AsDateTime, 'Fecha Aplicaci�n']);

      cdVacaciones.Open;
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
end;

procedure TFrmVacaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmVacaciones.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog)  then
        raise InteligentException.CreateByCode(5, ['Tipo Nomina']);

      if Not CrearConjunto(CdVacacionesPeriodos, 'rhu_diasvacaciones_aplicacion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Periodos de Vacaciones']);

      if Not CrearConjunto(cdVacaciones, 'rhu_diasvacaciones', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['D�as de Vacaciones']);

      if Not CrearConjunto(CdVacacionesUpt, 'rhu_diasvacaciones', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Dias de Vacaciones']);

      CargarDatos;
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

end.


