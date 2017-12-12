unit UTFrmPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, AdvGlowButton, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, Clipbrd,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxImage, frm_Connection, DB, UDosCapas,
  UInteliDialog, ZAbstractRODataset, ZAbstractDataset, ZDataset, cxDBEdit,
  ExtDlgs, Menus, UCodigoBarras, JvLabel, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxCalendar;

type
  TFrmPersonal = class(TForm)
    pnlImagen: TPanel;
    pnlDatos: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnTomarFoto: TAdvGlowButton;
    btnSeleccionarArchivo: TAdvGlowButton;
    pnlBotonesInf: TPanel;
    btnCancelar: TAdvGlowButton;
    btnAgregar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    Panel6: TPanel;
    dsPersonal: TDataSource;
    opdImagenPersonal: TOpenPictureDialog;
    cdPersonal: TZQuery;
    gbInfonavit: TGroupBox;
    Infonavit: TDBCheckBox;
    cdPais: TZReadOnlyQuery;
    cdEstado: TZReadOnlyQuery;
    cdCiudad: TZReadOnlyQuery;
    dsEstado: TDataSource;
    dsPais: TDataSource;
    dsCiudad: TDataSource;
    tAplicacionInfonavit: TDBComboBox;
    JvLabel15: TLabel;
    NumeroInfonavit: TDBEdit;
    JvLabel16: TLabel;
    JvLabel17: TLabel;
    pnlDomicilioContacto: TPanel;
    gbDomicilio: TGroupBox;
    JvLabel8: TLabel;
    JvLabel9: TLabel;
    JvLabel10: TLabel;
    JvLabel11: TLabel;
    JvLabel12: TLabel;
    JvLabel13: TLabel;
    JvLabel14: TLabel;
    Calle: TDBEdit;
    Numero: TDBEdit;
    Colonia: TDBEdit;
    CP: TDBEdit;
    cbPais: TComboBox;
    cbEstado: TComboBox;
    IdCiudad: TDBLookupComboBox;
    gbContacto: TGroupBox;
    Contacto: TDBEdit;
    JvLabel18: TLabel;
    TelefonoContacto: TDBEdit;
    JvLabel19: TLabel;
    cdBanco: TZReadOnlyQuery;
    dsBanco: TDataSource;
    gbBanco: TGroupBox;
    JvLabel24: TLabel;
    JvLabel25: TLabel;
    JvLabel26: TLabel;
    Sucursal: TDBEdit;
    IdBancoCFDI: TDBLookupComboBox;
    Cuenta: TDBEdit;
    sbGenerales: TScrollBox;
    JvLabel1: TLabel;
    CodigoPersonal: TDBEdit;
    JvLabel2: TLabel;
    Nombres: TDBEdit;
    JvLabel3: TLabel;
    APaterno: TDBEdit;
    JvLabel4: TLabel;
    AMaterno: TDBEdit;
    JvLabel5: TLabel;
    NumeroSeguroSocial: TDBEdit;
    Curp: TDBEdit;
    JvLabel6: TLabel;
    Rfc: TDBEdit;
    JvLabel7: TLabel;
    JvLabel20: TLabel;
    Telefono: TDBEdit;
    JvLabel21: TLabel;
    GrupoSanguineo: TDBEdit;
    Correo: TDBEdit;
    JvLabel22: TLabel;
    JvLabel23: TLabel;
    EstadoCivil: TDBComboBox;
    NombrePadre: TDBEdit;
    JvLabel27: TLabel;
    Sexo: TDBComboBox;
    JvLabel28: TLabel;
    NombreMadre: TDBEdit;
    JvLabel29: TLabel;
    EstadoNacimiento: TDBEdit;
    JvLabel30: TLabel;
    Panel1: TPanel;
    JvLabel31: TLabel;
    btnDocumentos: TAdvGlowButton;
    btnLimpiar: TAdvGlowButton;
    Timer1: TTimer;
    cdCodigo: TZReadOnlyQuery;
    Panel2: TPanel;
    CodigoBarras: TDBImage;
    Grafico: TImage;
    GrupoContratacion: TComboBox;
    Label1: TLabel;
    cdGrupo: TZQuery;
    gbCargo: TGroupBox;
    JvLabel32: TJvLabel;
    IdCargo: TDBLookupComboBox;
    cdCargo: TZReadOnlyQuery;
    dsCargo: TDataSource;
    JvLabel33: TJvLabel;
    JvLabel35: TJvLabel;
    IdDepartamento: TDBLookupComboBox;
    JvLabel37: TJvLabel;
    cdOrganizacion: TZReadOnlyQuery;
    dsOrganizacion: TDataSource;
    cdDepartamento: TZReadOnlyQuery;
    dsDepartamento: TDataSource;
    IdOrganizacion: TComboBox;
    gbComentarios: TGroupBox;
    Descripcion: TDBMemo;
    JvLabel34: TJvLabel;
    ImagenPersonal: TImage;
    FactorInfonavit: TcxDBCalcEdit;
    FechaRegistro: TcxDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnSeleccionarArchivoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTomarFotoClick(Sender: TObject);
    procedure cdPersonalAfterPost(DataSet: TDataSet);
    procedure cdPaisAfterScroll(DataSet: TDataSet);
    procedure cbPaisChange(Sender: TObject);
    procedure cbEstadoChange(Sender: TObject);
    procedure InfonavitClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure CodigoPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure cdOrganizacionAfterScroll(DataSet: TDataSet);
    procedure IdOrganizacionChange(Sender: TObject);
    procedure IdOrganizacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdGlobalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Objeto: TWinControl;
    Resultado: TModalResult;
    PaisAfter: Boolean;
    EstadoAfter: Boolean;
    CtaTimer: Word;
    ProcedeDepto: Boolean;
    procedure AgregarPersonal;
    procedure RegistrarPersonal;
    function CargarOrganizaciones: Integer;
  public
    Modo: TDataSetState;
    IdPersonal: Integer;
    procedure CargarPaises;
    procedure CargarEstados;
  end;

var
  FrmPersonal: TFrmPersonal;

implementation

{$R *.dfm}

uses
  Personal, UTFrmTomarFoto;

const
  MaxHeight = 250;

procedure TFrmPersonal.btnAgregarClick(Sender: TObject);
begin
  try
    RegistrarPersonal;

    InteliDialog.ShowModal('Registro de Personal', 'Registro de personal ha sido registrado de manera correcta.', mtInformation, [mbOk], 0);

    AgregarPersonal;
  except
    on e:InteligentException do
    begin
      if Assigned(Objeto) and Objeto.CanFocus then
        Objeto.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmPersonal.btnLimpiarClick(Sender: TObject);
begin
  // Eliminar la imagen
  if (Not cdPersonal.FieldByName('ImagenPersonal').IsNull) and (InteliDialog.ShowModal('Eliminar Imagen', '¿Desea eliminar la imagen actual para esta Persona?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    ImagenPersonal.Picture := Nil;
    TBlobField(cdPersonal.FieldByName('ImagenPersonal')).Clear;
    cdPersonal.FieldByName('ExtImagen').AsString := '';
  end;
end;

procedure ResizeImage(Image : TGraphic; AWidth, AHeight : Integer);
var bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    bmp.PixelFormat := pf32bit;
    bmp.Width := AWidth;
    bmp.Height := AHeight;
    bmp.Canvas.StretchDraw(Rect(0,0,AWidth, AHeight), Image);
    Image.Assign(bmp);
  finally
    bmp.Free;
  end;
end;

procedure TFrmPersonal.btnSeleccionarArchivoClick(Sender: TObject);
var
  Extension: String;
  LocCursor: TCursor;
  NewName: String;
  Factor: Real;
  NewHeight,
  NewWidth: Integer;
  Stream: TMemoryStream;
begin
  if opdImagenPersonal.Execute then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      ImagenPersonal.Picture.LoadFromFile(opdImagenPersonal.FileName);
      if ImagenPersonal.Picture.Height > MaxHeight then
      begin
        Factor := ImagenPersonal.Picture.Height / ImagenPersonal.Picture.Width;
        NewHeight := MaxHeight;
        NewWidth := Round(NewHeight * Factor);

        Stream := TMemoryStream.Create;
        try
          ResizeImage(ImagenPersonal.Picture.Graphic, NewHeight, NewWidth);
          //Stream.WriteComponent(ImagenPersonal);
          ImagenPersonal.Picture.Graphic.SaveToStream(Stream);

          TBlobField(cdPersonal.FieldByName('ImagenPersonal')).LoadFromStream(Stream);
        finally
          Stream.Free;
        end;

        InteliDialog.ShowModal('Imagen muy grande', 'La imagen seleccionada es muy grande para poder ser almacenada de manera conveniente en la base de datos, ésta ha sido modificada en su tamaña, es posible que se pierda calidad en la misma.', mtInformation, [mbOk], 0);
      end
      else
        TBlobField(cdPersonal.FieldByName('ImagenPersonal')).LoadFromFile(opdImagenPersonal.FileName);

      Extension := ExtractFileExt(opdImagenPersonal.FileName);
      cdPersonal.FieldByName('ExtImagen').AsString := Extension;


      //ImagenPersonal.Picture.LoadFromFile(opdImagenPersonal.FileName);
    finally
      Screen.Cursor := LocCursor;
    end;
  end;
end;

procedure TFrmPersonal.btnTomarFotoClick(Sender: TObject);
var
  NombreTmp: String;
  Stream: TMemoryStream;
begin
  Application.CreateForm(TFrmTomarFoto, FrmTomarFoto);
  FrmTomarFoto.dsPersonal.DataSet := cdPersonal;
  FrmTomarFoto.ShowModal;

  Stream := TMemoryStream.Create;
  try
    TBlobField(cdPersonal.FieldByName('ImagenPersonal')).SaveToStream(Stream);
    ImagenPersonal.Picture.Graphic.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TFrmPersonal.cbEstadoChange(Sender: TObject);
begin
  cdEstado.Locate('IdEstado', Integer(cbEstado.Items.Objects[cbEstado.ItemIndex]), []);
end;

procedure TFrmPersonal.cbPaisChange(Sender: TObject);
begin
  cdPais.Locate('IdPais', Integer(cbPais.Items.Objects[cbPais.ItemIndex]), []);
  CargarEstados;
end;

procedure TFrmPersonal.cdOrganizacionAfterScroll(DataSet: TDataSet);
begin
  if ProcedeDepto then
  begin
    CargarDatosFiltrados(cdDepartamento, 'IdOrganizacion', [DataSet.FieldByName('IdOrganizacion').AsInteger]);
    if cdDepartamento.Active then
      cdDepartamento.Refresh
    else
      cdDepartamento.Open;

    if cdPersonal.Active and (cdPersonal.RecordCount > 0) and (cdPersonal.State in [dsEdit, dsInsert]) then
      cdPersonal.FieldByName('IdDepartamento').Clear;
  end;
end;

procedure TFrmPersonal.cdPaisAfterScroll(DataSet: TDataSet);
var
  Marca: TBookMark;
begin
  if PaisAfter then
  begin
    if Not cdEstado.Active then
      cdEstado.Open;

    cdEstado.DisableControls;
    Marca := cdEstado.Bookmark;
    try
      cdEstado.First;
      while Not cdEstado.Eof do
      begin

        cdEstado.Next;
      end;
    finally
      if cdEstado.BookmarkValid(Marca) then
        cdEstado.GotoBookmark(Marca);
      cdEstado.EnableControls;
    end;
  end;
end;

procedure TFrmPersonal.cdPersonalAfterPost(DataSet: TDataSet);
begin
  FrmMain.pIdPersonal := DataSet.FieldByName('IdPersonal').AsInteger;
end;

procedure TFrmPersonal.CodigoPersonalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Key := #0;
end;

procedure TFrmPersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdPersonal.State in [dsInsert, dsEdit] then
    cdPersonal.Cancel;

  ModalResult := Resultado;
end;

procedure TFrmPersonal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrOk then
  begin
    CanClose := False;

    try
      RegistrarPersonal;
      CanClose := True;
      Resultado := mrOk;
    except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

        if Assigned(Objeto) and Objeto.CanFocus then
        begin
          Objeto.SetFocus;
          CtaTimer := 0;
          Timer1.Enabled := True;
        end;
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Try
    TEdit(Self.ActiveControl).Color := clWindow;
  except
    ;
  End;
  CtaTimer := 0;
  Timer1.Enabled := False;
end;

procedure TFrmPersonal.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  NombreTmp: String;
  Idx, IdxGpo, IdxOrg: Integer;
begin
  ProcedeDepto := False;
  Resultado := mrCancel;
  PaisAfter := False;
  EstadoAfter := False;
  CtaTimer := 0;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdGrupo, 'nuc_personal_grupocont', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Grupos de Contratación']);

      if Not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Paises']);

      if Not CrearConjunto(cdEstado, 'nuc_estado', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Estados']);

      if Not CrearConjunto(cdCiudad, 'nuc_ciudad', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Ciudades']);

      if Not CrearConjunto(cdBanco, 'rhu_bancos_cfdi', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Bancos']);

      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal']);

      if Not CrearConjunto(cdCodigo, 'nuc_personal_verificacodigo', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Verificador de Código']);

      if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Empresas']);

      if Not CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

      if Not CrearConjunto(cdCargo, 'nuc_cargo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Puestos de Trabajo']);

      if IdPersonal > -1 then
        CargarDatosFiltrados(cdPersonal, 'IdPersonal', [IdPersonal])
      else
        CargarDatosFiltrados(cdPersonal, 'IdPersonal', [-9]);

      cdPais.DisableControls;
      cdEstado.DisableControls;

      PaisAfter := False;
      try
        cdPais.Open;
        CargarPaises;
      finally
        PaisAfter := True;
      end;

      cdBanco.Open;
      cdCiudad.Open;
      cdPersonal.Open;
      cdGrupo.Open;
      cdOrganizacion.Open;

      IdOrganizacion.ItemIndex := CargarOrganizaciones;
      if IdOrganizacion.ItemIndex >= 0 then
        if cdOrganizacion.Locate('IdOrganizacion', Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), []) then
          cdOrganizacion.AfterScroll(cdOrganizacion);

      cdCargo.Open;

      GrupoContratacion.Clear;
      cdGrupo.First;
      IdxGpo := -1;
      while Not cdGrupo.Eof do
      begin
        if GrupoContratacion.Items.IndexOf(cdGrupo.FieldByName('GpoCont').AsString) = -1 then
          GrupoContratacion.Items.Add(cdGrupo.FieldByName('GpoCont').AsString);

        if AnsiCompareText(cdPersonal.FieldByName('GpoCont').AsString, cdGrupo.FieldByName('GpoCont').AsString) = 0 then
          IdxGpo := GrupoContratacion.Items.Count -1;

        cdGrupo.Next;
      end;

      GrupoContratacion.ItemIndex := IdxGpo;

      cdPais.EnableControls;
      cdEstado.EnableControls;

      cdEstado.MasterSource := dsPais;
      cdCiudad.MasterSource := dsEstado;

      CodigoBarras.Visible := Modo <> dsInsert;

      if Modo = dsInsert then
        AgregarPersonal
      else
      begin
        // Si se trata de una edición de datos se deberá leer el pais y estado correspondiente
        // Localizar el pais
        Idx := 0;
        while (Idx < cbPais.Items.Count) and (Integer(cbPais.Items.Objects[Idx]) <> cdPersonal.FieldByName('IdPais').AsInteger) do
          Inc(Idx);

        if Integer(cbPais.Items.Objects[Idx]) = cdPersonal.FieldByName('IdPais').AsInteger then
        begin
          cbPais.ItemIndex := Idx;
          cbPais.OnChange(cbPais);

          // Seleccionar ahora el Estado
          Idx := 0;
          while (Idx < cbEstado.Items.Count) and (Integer(cbEstado.Items.Objects[Idx]) <> cdPersonal.FieldByName('IdEstado').AsInteger) do
            Inc(Idx);

          if Integer(cbEstado.Items.Objects[Idx]) = cdPersonal.FieldByName('IdEstado').AsInteger then
          begin
            cbEstado.ItemIndex := Idx;
            cbEstado.OnChange(cbEstado);
          end;
        end;

        if Not cdPersonal.FieldByName('ImagenPersonal').IsNull then
        begin
          NombreTmp := ExtractFilePath(application.ExeName) + 'Temp' + cdPersonal.FieldByName('ExtImagen').AsString;
          TBlobField(cdPersonal.FieldByName('ImagenPersonal')).SaveToFile(NombreTmp);
          ImagenPersonal.Picture.LoadFromFile(NombreTmp);
        end;
        cdPersonal.Edit;
      end;

      btnAgregar.Visible := cdPersonal.State = dsInsert;

      CodigoPersonal.SetFocus;
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

procedure TFrmPersonal.IdGlobalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then
    TDBLookUpComboBox(Sender).DataSource.DataSet.FieldByName(TDBLookUpComboBox(Sender).DataField).Clear;
end;

procedure TFrmPersonal.IdOrganizacionChange(Sender: TObject);
begin
  if ProcedeDepto and (IdOrganizacion.ItemIndex > -1) then
    cdOrganizacion.Locate('IdOrganizacion', Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), []);
end;

procedure TFrmPersonal.IdOrganizacionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then
  begin
    IdOrganizacion.ItemIndex := -1;
    cdDepartamento.Close;
  end;
end;

procedure TFrmPersonal.InfonavitClick(Sender: TObject);
begin
  tAplicacionInfonavit.Enabled := Infonavit.Checked;
  NumeroInfonavit.Enabled := Infonavit.Checked;
  FactorInfonavit.Enabled := Infonavit.Checked;
end;

procedure TFrmPersonal.AgregarPersonal;
begin
  cdPersonal.Append;
  cdPersonal.FieldByName('IdPersonal').AsInteger := 0;
  cdPersonal.FieldByName('Activo').AsString := 'Si';
  cdPersonal.FieldByName('Infonavit').AsString := 'No';
  cdPersonal.FieldByName('FactorInfonavit').AsFloat := 0;
  cdPersonal.FieldByName('ExtImagen').AsString := '';
  cdPersonal.FieldByName('Infonavit').AsString := 'No';
  cdPersonal.FieldByName('FechaCartaConfidencial').AsString := '01/01/1890';
  cdPersonal.FieldByName('FechaRegistro').AsDateTime := Date;
  Infonavit.OnClick(Infonavit);
end;

procedure TFrmPersonal.RegistrarPersonal;
var
  Num: String;
  Valor: Integer;
  Stream: TStream;
  Insertando: Boolean;
  StrUltimoId: String;
begin
  Objeto := nil;

  if GrupoContratacion.Text = '' then
  begin
    Objeto := GrupoContratacion;
    raise InteligentException.CreateByCode(18, ['Grupo de Contratación']);
  end;

  if cdPersonal.FieldByName('CodigoPersonal').AsString = '' then
  begin
    Objeto := CodigoPersonal;
    raise InteligentException.CreateByCode(18, ['Código de Personal']);
  end;

  if cdPersonal.FieldByName('Nombres').AsString = '' then
  begin
    Objeto := Nombres;
    raise InteligentException.CreateByCode(18, ['Nombre']);
  end;

  if cdPersonal.FieldByName('AMaterno').AsString = '' then
  begin
    Objeto := AMaterno;
    raise InteligentException.CreateByCode(18, ['Apellido Materno']);
  end;

  if cdPersonal.FieldByName('NumeroSeguroSocial').AsString = '' then
  begin
    Objeto := NumeroSeguroSocial;
    raise InteligentException.CreateByCode(18, ['No. IMSS']);
  end;

  if cdPersonal.FieldByName('Curp').AsString = '' then
  begin
    Objeto := Curp;
    raise InteligentException.CreateByCode(18, ['CURP']);
  end;

  if cdPersonal.FieldByName('RFC').AsString = '' then
  begin
    Objeto := Rfc;
    raise InteligentException.CreateByCode(18, ['R.F.C.']);
  end;

  // Verificar si el código se duplica o no
  try
    if cdPersonal.State = dsInsert then
      CargarDatosFiltrados(cdCodigo, 'IdPersonal,CodigoPersonal', [-1, cdPersonal.FieldByName('CodigoPersonal').AsString])
    else
      CargarDatosFiltrados(cdCodigo, 'IdPersonal,CodigoPersonal', [cdPersonal.FieldByName('IdPersonal').AsString, cdPersonal.FieldByName('CodigoPersonal').AsString]);

    cdCodigo.Open;

    if cdCodigo.RecordCount > 0 then
    begin
      Objeto := CodigoPersonal;
      raise InteligentException.CreateByCode(24, ['El Código que ha capturado ya ha sido utlizado para otro empleado:' + #10 + #10 + cdCodigo.FieldByName('NombreCompleto').AsString + #10 + #10 + 'Verifique esto e intente de nuevo.']);
    end;
  finally
    cdCodigo.Close;
  end;

  if cdPersonal.FieldByName('ImagenPersonal').IsNull then
    if InteliDialog.ShowModal('No se ha cargado una imagen', 'No ha cargado una imagen correspondiente al empleado que está dando de alta.' + #10 + #10 + '¿Desea grabar el registro sin dicha imagen?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentException.CreateByCode(18, ['Imagen']);

  Insertando := cdPersonal.State = dsInsert;

  cdPersonal.FieldByName('GpoCont').AsString := GrupoContratacion.Text;
  cdPersonal.FieldByName('FechaGrupo').AsDateTime := Now;

  // Verificar la información capturada para determinar si ya se entregaron los documentos que correspondan
  // el resultado se grabará en el campo bDocumentos
  Valor := cdPersonal.FieldByName('bDocumentos').AsInteger;

  // CURP = 1
  {if cdPersonal.FieldByName('CURP').IsNull and (((Valor shr 1) and 1) = 0) then
    cdPersonal.FieldByName('bDocumentos').AsInteger := cdPersonal.FieldByName('bDocumentos').AsInteger - 1;
  if (Not cdPersonal.FieldByName('CURP').IsNull) and (((Valor shr 1) and 1) <> 0) then
    cdPersonal.FieldByName('bDocumentos').AsInteger := cdPersonal.FieldByName('bDocumentos').AsInteger + 1;
}

  cdPersonal.Post;

  // Verificar si el grupo de contratación es nuevo
  if GrupoContratacion.Items.IndexOf(GrupoContratacion.Text) = -1 then
    GrupoContratacion.Items.Add(GrupoContratacion.Text);

  StrUltimoId := IntToStr(FrmMain.pIdPersonal);

  // Generar el código de barras
  Num := StringOfChar('0', 12 - Length(StrUltimoId)) + StrUltimoId + '0';
  Codifica(Num, Grafico);

  Stream := TMemoryStream.Create;
  try
    Grafico.Picture.Bitmap.SaveToStream(Stream);
    Stream.Position := 0;

    cdPersonal.Edit;
    TBlobField(cdPersonal.FieldByName('Descripcion')).LoadFromStream(Stream);
    cdPersonal.Post;
  finally
    FreeAndNil(Stream);
    cdPersonal.Refresh;
  end;
end;

procedure TFrmPersonal.Timer1Timer(Sender: TObject);
begin
  try
    if CtaTimer < 12 then
    begin
      if TEdit(Self.ActiveControl).Color = clWindow then
        TEdit(Self.ActiveControl).Color := clGradientActiveCaption
      else
        TEdit(Self.ActiveControl).Color := clWindow;

      TEdit(Self.ActiveControl).RePaint;
      Inc(CtaTimer);
    end
    else
    begin
      Timer1.Enabled := False;
      TEdit(Self.ActiveControl).Color := clWindow;
      CtaTimer := 0;
    end;
  except
    ;
  end;
end;

procedure TFrmPersonal.CargarPaises;
var
  Marca: TBookMark;
begin
  Marca := cdPais.Bookmark;
  cdPais.DisableControls;
  try
    cdPais.First;
    cbPais.Items.Clear;
    while not cdPais.Eof do
    begin
      cbPais.Items.AddObject(cdPais.FieldByName('TituloPais').AsString, TObject(cdPais.FieldByName('IdPais').AsInteger));

      cdPais.Next;
    end;

    // Al cargar los paises se debe inicializar el Estado y la Ciudad
    cbEstado.ItemIndex := -1;
    if cdPersonal.Active then
      cdPersonal.FieldByName('IdCiudad').AsInteger := -1;
  finally
    if cdPais.BookmarkValid(Marca) then
      cdPais.GotoBookmark(Marca);
    cdPais.EnableControls;
  end;
end;

procedure TFrmPersonal.CargarEstados;
var
  Marca: TBookMark;
begin
  if cbPais.ItemIndex > -1 then
  begin
    Marca := cdPais.Bookmark;
    cdEstado.DisableControls;
    try
      cdEstado.First;
      cbEstado.Items.Clear;
      while not cdEstado.Eof do
      begin
        cbEstado.Items.AddObject(cdEstado.FieldByName('TituloEstado').AsString, TObject(cdEstado.FieldByName('IdEstado').AsInteger));

        cdEstado.Next;
      end;
    finally
      if cdEstado.BookmarkValid(Marca) then
        cdEstado.GotoBookmark(Marca);
      cdEstado.EnableControls;
    end;
  end;
end;

function TFrmPersonal.CargarOrganizaciones: Integer;
var
  IdxOrg: Integer;
begin
  IdxOrg := -1;
  ProcedeDepto := False;
  try
    cdOrganizacion.First;
    IdOrganizacion.Items.Clear;
    while not cdOrganizacion.Eof do
    begin
      if cdPersonal.FieldByName('IdOrganizacion').AsInteger = cdOrganizacion.FieldByName('IdOrganizacion').AsInteger then
        IdxOrg := IdOrganizacion.Items.Count;

      IdOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

      cdOrganizacion.Next;
    end;
  finally
    Result := IdxOrg;
    ProcedeDepto := True;
  end;
end;

end.
