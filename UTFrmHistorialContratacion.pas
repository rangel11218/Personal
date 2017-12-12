unit UTFrmHistorialContratacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, ExtCtrls, frxPreview, DB, ZAbstractRODataset,
  ZDataset, UDosCapas, UInteliDialog, AdvGlowButton, Frm_Connection,
  JvLabel, ZAbstractDataset, StdCtrls, Mask, DBCtrls, Menus, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxCalc;

type
  TFrmHistorialContratacion = class(TForm)
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    Panel1: TPanel;
    frxDBHistorial: TfrxDBDataset;
    cdHistorial: TZReadOnlyQuery;
    dsBuscarPersonal: TDataSource;
    btnAbrir: TAdvGlowButton;
    cdEditar: TZQuery;
    pnlEditar: TPanel;
    lblDiario: TJvLabel;
    lblIntegrado: TJvLabel;
    lblFecha: TJvLabel;
    Panel3: TPanel;
    btnEditCancelar: TAdvGlowButton;
    btnEditAceptar: TAdvGlowButton;
    dsEditar: TDataSource;
    Sindicato: TDBCheckBox;
    IdLocalidad: TDBLookupComboBox;
    JvLabel1: TJvLabel;
    IdDepartamento: TDBLookupComboBox;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    cdDepartamento: TZReadOnlyQuery;
    cdLocalidad: TZReadOnlyQuery;
    cdOrganizacion: TZReadOnlyQuery;
    dsOrganizacion: TDataSource;
    dsDepartamento: TDataSource;
    dsLocalidad: TDataSource;
    IdOrganizacion: TComboBox;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    IdProyecto: TDBLookupComboBox;
    IdCargo: TDBLookupComboBox;
    dsProyecto: TDataSource;
    dsCargo: TDataSource;
    cdProyecto: TZReadOnlyQuery;
    cdCargo: TZReadOnlyQuery;
    pmOpciones: TPopupMenu;
    Editarregistrodecontratacin1: TMenuItem;
    Eliminarregistrodecontratacin1: TMenuItem;
    IdSolicita: TDBLookupComboBox;
    cdSolicita: TZReadOnlyQuery;
    dsSolicita: TDataSource;
    MotivoBaja: TDBComboBox;
    CuantoSiTemporal: TDBMemo;
    BajaRecontratar: TDBComboBox;
    cdDepartamentoPlazasPendientes: TZReadOnlyQuery;
    cdPlazaDetalle: TZQuery;
    cdPlaza: TZQuery;
    Comentarios: TDBMemo;
    JvLabel6: TJvLabel;
    Fecha: TcxDBDateEdit;
    FechaReal: TcxDBDateEdit;
    SalarioDiario: TcxDBCalcEdit;
    SalarioIntegrado: TcxDBCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1DblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure SalarioDiarioExit(Sender: TObject);
    procedure IdOrganizacionChange(Sender: TObject);
    procedure frxReport1ClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure frxPreview1Click(Sender: TObject);
  private
    IdPersonal: LongInt;
    FormaEdit: TForm;
    vTag: Word;
    OldFechaTop: Word;
    procedure FormaEditShow(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmHistorialContratacion: TFrmHistorialContratacion;

implementation

{$R *.dfm}

Uses
  Personal, UTFrmBuscarPersonal;

procedure TFrmHistorialContratacion.btnAbrirClick(Sender: TObject);
var
  Ruta: String;
begin
  try
    Application.CreateForm(TFrmBuscarPersonal, FrmBuscarPersonal);
    FrmBuscarPersonal.dsMenu.DataSet := dsBuscarPersonal.DataSet;
    if FrmBuscarPersonal.ShowModal <> mrOk then
      raise Exception.Create('***');

    IdPersonal := dsBuscarPersonal.DataSet.FieldByName('IdPersonal').AsInteger;

    cdHistorial.Close;
    CargarDatosFiltrados(cdHistorial, 'IdPersonal', [IdPersonal]);
    cdHistorial.Open;

    Self.Caption := 'HC-' + cdHistorial.FieldByName('NombreCompleto').AsString;

    Ruta := ExtractFilePath(application.ExeName) + 'Reportes\HistorialContratos.fr3';
    frxReport1.LoadFromFile(Ruta);
    frxReport1.ShowReport(True);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmHistorialContratacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmHistorialContratacion.FormShow(Sender: TObject);
begin
  OldFechaTop := lblFecha.Top;

  try
    dsBuscarPersonal.DataSet := FrmMain.cdBuscarPersonal;
    CrearConjunto(cdHistorial, 'nuc_personal_historialcontratacion', ccSelect);
    CrearConjunto(cdEditar, 'nuc_personalimss', ccUpdate);
    CrearConjunto(cdSolicita, 'nuc_personal', ccSelect);
    CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog);
    CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog);
    CrearConjunto(cdDepartamentoPlazasPendientes, 'nuc_departamento_plazaspendientes', ccSelect);
    CrearConjunto(cdLocalidad, 'nuc_localidad', ccCatalog);
    CrearConjunto(cdProyecto, 'nuc_proyecto', ccUpdate);
    CrearConjunto(cdCargo, 'rhu_plazaasignacion', ccCatalog);
    //CrearConjunto(cdCargo, 'nuc_cargo', ccCatalog);

    cdEditar.Open;
    cdOrganizacion.Open;
    cdDepartamento.Open;
    cdLocalidad.Open;
    cdProyecto.Open;
    cdCargo.Open;

    cdOrganizacion.DisableControls;
    IdOrganizacion.Items.Clear;
    try
      while Not cdOrganizacion.Eof do
      begin
        IdOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

        cdOrganizacion.Next;
      end;
    finally
      cdOrganizacion.DisableControls;
    end;

    btnAbrir.Click;
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

procedure TFrmHistorialContratacion.frxPreview1Click(Sender: TObject);
begin
  //ShowMessage('Rangel');
end;

procedure TFrmHistorialContratacion.frxReport1ClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  Punto: TPoint;
begin
  if (Button = mbRight) and (ssCtrl in Shift) and (Sender.Tag > 0) then
  begin
    if GetCursorPos(Punto) then
      pmOpciones.Popup(Punto.X, Punto.Y);

    //pmOpciones.Popup();
  end;
end;

procedure TFrmHistorialContratacion.frxReport1DblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
const
  TituloMovto: Array[False..True] Of String = ('Contratación', 'Baja');
var
  IdPersonalIMSS: LongInt;
  LocCursor: TCursor;
begin
  if (Button = mbLeft) and (ssCtrl in Shift) and (Sender.Tag > 0) then
  begin
    IdPersonalIMSS := StrToInt(Sender.TagStr);

    cdEditar.Close;
    CargarDatosFiltrados(cdEditar, 'IdPersonalIMSS', [IdPersonalIMSS]);
    cdEditar.Open;

(*    if InteliDialog.ShowModal('Eliminación de registro', '(No es posible modificar los datos de un registro de ' + TituloMovto[Sender.Tag = 9] + ', solamente se pueden eliminar para que estos puedan ser registrados de manera correcta)' + #10 + #10 + '¿Desea eliminar el registro de ' + TituloMovto[Sender.Tag = 9] + ' seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdEditar.Delete;
      cdHistorial.Refresh;
      frxReport1.ShowReport(True);
    end;

    exit;*)
    if (Sender.Tag <> 9) or ((Sender.Tag = 9) and (Sender.TagStr <> '0')) then
    begin
      if Sender.Tag = 9 then
      begin
        // Registro de Baja
        lblFecha.Caption := 'Fecha Baja:';

        JvLabel3.Caption := '';
        IdOrganizacion.Visible := False;
        JvLabel2.Caption := '';
        IdDepartamento.Visible := False;
        JvLabel1.Caption := '';
        IdLocalidad.Visible := False;
        JvLabel4.Caption := '';
        IdProyecto.Visible := False;
        JvLabel5.Caption := '';
        IdCargo.Visible := False;
        Sindicato.Visible := False;

        JvLabel3.Caption := 'Solicita:';
        IdSolicita.Visible := True;
        IdSolicita.Top := IdOrganizacion.Top;

        JvLabel2.Caption := 'Motivo Baja:';
        MotivoBaja.Visible := True;
        MotivoBaja.ItemIndex := 0;
        MotivoBaja.Top := IdDepartamento.Top;

        JvLabel1.Caption := 'Tiempo temporal:';
        CuantoSiTemporal.Visible := True;
        CuantoSiTemporal.Text := '';
        CuantoSiTemporal.Top := IdLocalidad.Top;

        JvLabel5.Caption := 'Tipo baja:';
        BajaRecontratar.Visible := True;
        BajaRecontratar.Text := '';
        BajaRecontratar.Top := IdCargo.Top;

        lblFecha.Top := BajaRecontratar.Top + BajaRecontratar.Height + 6;
        Fecha.Top := lblFecha.Top - 3;

        lblDiario.Caption := 'Comentarios:';
        Comentarios.Visible := True;
        Comentarios.Left := Fecha.Left;
        Comentarios.Top := lblDiario.Top;

        SalarioDiario.Visible := False;
        SalarioIntegrado.Visible := False;
        lblDiario.Visible := False;
        lblIntegrado.Visible := False;
      end
      else
      begin
        // Registro de Alta
        {lblFecha.Top := OldFechaTop;
        Fecha.Top := OldFechaTop;}

        lblFecha.Caption := 'Fecha Alta:';
        JvLabel3.Caption := 'Empresa:';
        IdOrganizacion.Visible := True;
        JvLabel2.Caption := 'Departamento:';
        IdDepartamento.Visible := True;
        JvLabel1.Caption := 'Localidad:';
        IdLocalidad.Visible := True;
        JvLabel4.Caption := 'Proyecto:';
        IdProyecto.Visible := True;
        JvLabel5.Caption := 'Puesto:';
        IdCargo.Visible := True;
        Sindicato.Visible := True;

        JvLabel3.Caption := 'Empresa:';
        IdSolicita.Visible := False;

        JvLabel2.Caption := 'Departamento:';
        MotivoBaja.Visible := False;

        JvLabel1.Caption := 'Localidad:';
        CuantoSiTemporal.Visible := False;

        JvLabel5.Caption := 'Puesto:';
        BajaRecontratar.Visible := False;

        lblDiario.Caption := 'Salario Diario:';
        Comentarios.Visible := False;

        SalarioDiario.Visible := True;
        SalarioIntegrado.Visible := True;
        lblDiario.Visible := True;
        lblIntegrado.Visible := True;
      end;

      IdOrganizacion.ItemIndex := 0;
      IdOrganizacion.OnChange(IdOrganizacion);

      cdEditar.Close;
      CargarDatosFiltrados(cdEditar, 'IdPersonalIMSS', [IdPersonalIMSS]);
      cdEditar.Open;

      CargarDatosFiltrados(cdCargo, 'pOrden,IdCargoObliga', [0, cdEditar.FieldByName('IdCargo').AsInteger]);
      cdCargo.Refresh;

      cdEditar.Edit;

      FormaEdit := TForm.Create(Self);
      try
        if Sender.Tag = 9 then
        begin
          FormaEdit.Caption := 'Modificación Baja';
          FormaEdit.Width := 386;
          FormaEdit.Height := 330;
        end
        else
        begin
          FormaEdit.Caption := 'Modificación Alta';
          FormaEdit.Width := 386;
          FormaEdit.Height := 330;
        end;
        FormaEdit.OnShow := FormaEditShow;
        FormaEdit.Position := poMainFormCenter;
        FormaEdit.BorderStyle := bsDialog;

        pnlEditar.Parent := FormaEdit;
        pnlEditar.Align := alClient;
        pnlEditar.Visible := True;

        vTag := Sender.Tag;

        dsDepartamento.DataSet := cdDepartamentoPlazasPendientes;
        LocCursor := Screen.Cursor;
        try
          Screen.Cursor := crHourGlass;

          if Not cdSolicita.Active then
            cdSolicita.Open;

          cdDepartamentoPlazasPendientes.Close;
          CargarDatosFiltrados(cdDepartamentoPlazasPendientes, 'IdOrganizacion,PorDepartamento,IdDepartamentoHuevo', [cdEditar.FieldByName('IdOrganizacion').AsInteger, 'Si', cdEditar.FieldByName('IdDepartamento').AsInteger]);
          cdDepartamentoPlazasPendientes.Open;

          if FormaEdit.ShowModal = mrOk then
          begin
            cdEditar.Post;
            cdHistorial.Refresh;
            frxReport1.ShowReport(True);
          end
          else
            cdEditar.Cancel;
        finally
          dsDepartamento.DataSet := cdDepartamento;
          cdDepartamentoPlazasPendientes.Close;
        end;
      finally
        Screen.Cursor := LocCursor;

        pnlEditar.Visible := False;
        pnlEditar.Align := alNone;
        pnlEditar.Parent := Self;

        FormaEdit.Destroy;
      end;
    end;
  end;
end;

procedure TFrmHistorialContratacion.IdOrganizacionChange(Sender: TObject);
begin
  cdOrganizacion.Locate('IdOrganizacion', Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), []);
end;

procedure TFrmHistorialContratacion.SalarioDiarioExit(Sender: TObject);
begin
  if cdEditar.FieldByName('SalarioIntegrado').IsNull or (cdEditar.FieldByName('SalarioIntegrado').AsFloat = 0) then
    cdEditar.FieldByName('SalarioIntegrado').AsFloat := Round(SalarioDiario.Value * 104.52) / 100;
end;

procedure TFrmHistorialContratacion.FormaEditShow(Sender: TObject);
begin
  try
    case vTag of
      1: Fecha.SetFocus;
      2: IdOrganizacion.SetFocus;
      3: IdDepartamento.SetFocus;
      4: IdLocalidad.SetFocus;
      5: IdProyecto.SetFocus;
      6: IdCargo.SetFocus;
      9: Fecha.SetFocus;
      7: SalarioDiario.SetFocus;
      8: SalarioIntegrado.SetFocus;
    end;
  except
    IdCargo.SetFocus;
  end;
end;

end.
