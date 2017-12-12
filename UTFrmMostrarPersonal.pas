unit UTFrmMostrarPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, frxPreview, UDosCapas, UInteliDialog, ExtCtrls, AdvGlowButton,
  Frm_Connection, UTFrmPersonal, ExtDlgs, StdCtrls, Mask, DBCtrls,
  JvLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, StrUtils, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, ComObj, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, UCodigoBarras, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Menus, ShellAPI, cxImage, Spin, DelphiZXIngQRCode, DBClient,
  UExcelConst, ComCtrls, dxCore, cxDateUtils, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxCalc;

type
  TFrmMostrarPersonal = class(TForm)
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    dsPersonal: TDataSource;
    cdPersonal: TZQuery;
    frxDBPersonal: TfrxDBDataset;
    dsBuscarPersonal: TDataSource;
    Timer1: TTimer;
    Panel1: TPanel;
    btnGuardarFoto: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    spdImagen: TSavePictureDialog;
    Panel2: TPanel;
    btnContratar: TAdvGlowButton;
    btnBaja: TAdvGlowButton;
    Panel3: TPanel;
    btnDocumentoacion: TAdvGlowButton;
    pnlBaja: TPanel;
    Panel5: TPanel;
    NombreCompleto: TDBText;
    Panel6: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    Timer2: TTimer;
    pmImagen: TPopupMenu;
    Actualizarcdigodebarras1: TMenuItem;
    Grafico: TImage;
    Panel7: TPanel;
    btnImprimirBaja: TAdvGlowButton;
    frxBaja: TfrxReport;
    cdSolicita: TZReadOnlyQuery;
    pnlImagen: TPanel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    PaintBox1: TPaintBox;
    cdCapacidad: TZReadOnlyQuery;
    cdCapacidadxPersonal: TZQuery;
    frxDBCapacidadxPersonal: TfrxDBDataset;
    frxDBPagina2: TfrxDBDataset;
    frxDBPagina3: TfrxDBDataset;
    cdPagina3: TClientDataSet;
    btnBorrarBaja: TAdvGlowButton;
    cdCargo: TZReadOnlyQuery;
    gbPanelEstado: TGroupBox;
    pAmarillo: TPanel;
    pVerde: TPanel;
    pAzul: TPanel;
    pRojo: TPanel;
    lblEstado: TJvLabel;
    pmColores: TPopupMenu;
    Capturarfechadeentregadepase1: TMenuItem;
    Eliminarfechadeentregadepase1: TMenuItem;
    pnlEntregaPase: TPanel;
    JvLabel21: TJvLabel;
    Panel9: TPanel;
    AdvGlowButton4: TAdvGlowButton;
    btnpaOk: TAdvGlowButton;
    JvLabel23: TJvLabel;
    btnBorrarContrato: TAdvGlowButton;
    Panel10: TPanel;
    pCafe: TPanel;
    Panel4: TPanel;
    JvLabel9: TJvLabel;
    MotivoBaja: TRadioGroup;
    pnlFechaBaja: TPanel;
    JvLabel8: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    BajaRecontratar: TComboBox;
    IdSolicita: TComboBox;
    pnlCuantoTiempo: TPanel;
    JvLabel12: TJvLabel;
    CuantoSiTemporal: TMemo;
    pnlCausas: TPanel;
    JvLabel3: TJvLabel;
    lblCausas: TJvLabel;
    TipoCausa: TComboBox;
    Causas: TMemo;
    Panel8: TPanel;
    Comentarios: TMemo;
    PageBaja: TPageControl;
    PagerBajax: TTabSheet;
    PageBajax2: TTabSheet;
    PageFiniquitox2: TTabSheet;
    gbContratacion: TGroupBox;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel15: TJvLabel;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    NombreOrganizacion: TDBText;
    FechaReingreso: TDBText;
    FechaReal: TDBText;
    TituloDepartamento: TDBText;
    NombreLocalidad: TDBText;
    TituloProyecto: TDBText;
    TituloCargo: TDBText;
    JvLabel10: TJvLabel;
    SalarioDiario: TDBText;
    JvLabel11: TJvLabel;
    SalarioIntegrado: TDBText;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    JvLabel20: TJvLabel;
    btnVacPend: TAdvGlowButton;
    JvLabel22: TJvLabel;
    FechaMovimiento: TcxDateEdit;
    DiasVacacionesPendientes: TcxCalcEdit;
    SalarioSemanalBaja: TcxCalcEdit;
    Indemnizacion: TcxCalcEdit;
    FechaPagoAguinaldo: TcxDateEdit;
    AdvPicture1: TImage;
    AdvPicture2: TImage;
    FechaPase: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarFotoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnContratarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDocumentoacionClick(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer2Timer(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure Actualizarcdigodebarras1Click(Sender: TObject);
    procedure TipoCausaChange(Sender: TObject);
    procedure btnImprimirBajaClick(Sender: TObject);
    procedure IdSolicitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVacPendClick(Sender: TObject);
    procedure FechaMovimientoChange(Sender: TObject);
    procedure pColoresClick(Sender: TObject);
    procedure Capturarfechadeentregadepase1Click(Sender: TObject);
    procedure Eliminarfechadeentregadepase1Click(Sender: TObject);
    procedure btnBorrarContratoClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure btnBorrarBajaClick(Sender: TObject);
    procedure FechaMovimientoClick(Sender: TObject);
  private
    Posicion: Integer;
    Verdadero: Boolean;
    QRCodeBitmap: TBitmap;
    procedure EstadoBotonesIMSS;
    procedure CargarSolicita;
    procedure LlenarIdSolicita;
    function ConsultaVacaciones: Real;
    procedure EstadoPaneles;
  public
    IdPersonal: Integer;
    procedure GenerarCredencial;
    procedure CartaConfidencial;
    procedure CartaCompromiso;
    procedure PermisoAusencia;
    procedure ListaPermisos;
    procedure GenerarCartaRecomendacion(Cual: Word);
    function GetPagoAguinaldo: TDate;
    procedure DescripcionPuesto;
  end;

var
  FrmMostrarPersonal: TFrmMostrarPersonal;

implementation

uses
  UTFrmBuscarPersonal, UTFrmContratar, UTFrmDocumentosPersonal, Personal,
  UTFrmReporteDatos, UTFrmCartaConf, UTFrmCartaCompromiso,
  UTFrmConsultaVacaciones, UTFrmPermisoAusencia, UTFrmListaPermisos;

{$R *.dfm}

const
  LeyendaEstado: Array[1..5] Of String = ('Se capturaron sus documentos el %Valor% y aún no tiene pase para ingresar a la refinería.',
                                          'Tiene pase para ingresar a refinería desde el %Valor%, se espera la confirmación de que está trabajando.',
                                          'Se encuentra trabajando desde el %Valor%, tiene menos de tres días.',
                                          'Se encuentra trabajando desde el %Valor%, tiene %Dias% días hasta hoy.',
                                          'Ya ha sido dado de baja el día %Valor%.');

procedure TFrmMostrarPersonal.Actualizarcdigodebarras1Click(Sender: TObject);
var
  Num: String;
  Stream: TStream;
begin
  Num := StringOfChar('0', 12 - Length(cdPersonal.FieldByName('IdPersonal').AsString)) + cdPersonal.FieldByName('IdPersonal').AsString + '0';
  Codifica(Num, Grafico);

  Stream := TMemoryStream.Create;
  try
    Grafico.Picture.Bitmap.SaveToStream(Stream);
    Stream.Position := 0;

    Connection.zCommand.Close;
    Connection.zCommand.SQL.Text := 'SELECT IdPersonal, Imagen FROM nuc_personal WHERE IdPersonal = ' + cdPersonal.FieldByName('IdPersonal').AsString;
    Connection.zCommand.Open;
    Connection.zCommand.Edit;
    TBlobField(Connection.zCommand.FieldByName('Imagen')).LoadFromStream(Stream);
    Connection.zCommand.Post;
  finally
    Connection.zCommand.Close;
    FreeAndNil(Stream);

    cdPersonal.Refresh;
    frxReport1.ShowReport(True);
  end;
end;

function TFrmMostrarPersonal.ConsultaVacaciones: Real;
begin
  Result := 0.00;

  Application.CreateForm(TFrmConsultaVacaciones, FrmConsultaVacaciones);
  try
    FrmConsultaVacaciones.IdPersonal := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
    FrmConsultaVacaciones.IdPersonalIMSS := dsPersonal.DataSet.FieldByName('IdPersonalIMSS').AsInteger;
    FrmConsultaVacaciones.FechaBaja := FechaMovimiento.Date;
    FrmConsultaVacaciones.Show;
    Result := FrmConsultaVacaciones.DiasVacacionesPendientes;
  finally
    FreeAndNil(FrmConsultaVacaciones);
  end;
end;

procedure TFrmMostrarPersonal.btnBajaClick(Sender: TObject);
var
  FormaEdit: TForm;
begin
  FormaEdit := TForm.Create(Self);
  try
    FechaPagoAguinaldo.Date := GetPagoAguinaldo;    // Localizar la fecha de ultimo pago de Aguinaldo
    DiasVacacionesPendientes.Value := ConsultaVacaciones;   // Mandar pedir los dias de vacaciones pendientes

    FormaEdit.OnCloseQuery := FormaEditCloseQuery;
    FormaEdit.Caption := 'Dar de baja Empleado';
    FormaEdit.Width := 590;
    FormaEdit.Height := 500;
    FormaEdit.Position := poOwnerFormCenter;
    FormaEdit.BorderStyle := bsDialog;

    FechaMovimiento.Date := Now;
    Comentarios.Text := '';
    PageBaja.ActivePageIndex := 1;

    pnlBaja.Parent := FormaEdit;
    pnlBaja.Visible := True;
    pnlBaja.Align := alClient;

    CargarSolicita;

    MotivoBaja.ItemIndex := 0;
    CuantoSiTemporal.Text := '';
    BajaRecontratar.ItemIndex := 0;
    Causas.Text := '';
    TipoCausa.ItemIndex := 0;
    TipoCausa.OnChange(TipoCausa);

    FormaEdit.ShowModal;
    EstadoPaneles;
  finally
    pnlBaja.Align := alNone;
    pnlBaja.Visible := False;
    pnlBaja.Parent := Self;
    FormaEdit.Destroy;
  end;
end;

procedure TFrmMostrarPersonal.btnBorrarBajaClick(Sender: TObject);
begin
  if InteliDialog.ShowModal('Eliminar registro de baja', '¿Desea eliminar el registro de baja?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Connection.zCommand.SQL.Text := 'DELETE FROM nuc_personalimss WHERE IdPersonalIMSS = :IdPersonalIMSS';
    Connection.zCommand.ParamByName('IdPersonalIMSS').AsInteger := cdPersonal.FieldByName('IdPersonalImssBaja').AsInteger;
    Connection.zCommand.ExecSQL;

    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);
    EstadoBotonesIMSS;
    EstadoPaneles;
  end;
end;

procedure TFrmMostrarPersonal.btnBorrarContratoClick(Sender: TObject);
begin
  if InteliDialog.ShowModal('Eliminar registro de contratación', '¿Desea eliminar el registro de contratación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Connection.zCommand.SQL.Text := 'DELETE FROM nuc_personalimss WHERE IdPersonalIMSS = :IdPersonalIMSS';
    Connection.zCommand.ParamByName('IdPersonalIMSS').AsInteger := cdPersonal.FieldByName('IdPersonalIMSS').AsInteger;
    Connection.zCommand.ExecSQL;

    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);
    EstadoBotonesIMSS;
    EstadoPaneles;
  end;
end;

procedure TFrmMostrarPersonal.btnContratarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmContratar, FrmContratar);
  FrmContratar.dsPersonal.DataSet := cdPersonal;
  if FrmContratar.ShowModal = mrOk then
  begin
    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);
    EstadoBotonesIMSS;
    EstadoPaneles;

    Timer2.Enabled := True;
  end;
end;

procedure TFrmMostrarPersonal.btnDocumentoacionClick(Sender: TObject);
begin
  if cdPersonal.Active and (cdPersonal.RecordCount > 0) then
  begin
    Application.CreateForm(TFrmDocumentosPersonal, FrmDocumentosPersonal);
    FrmDocumentosPersonal.IdPersonal := cdPersonal.FieldByName('IdPersonal').AsInteger;
    FrmDocumentosPersonal.dsPersonal.DataSet := cdPersonal;
    if FrmDocumentosPersonal.ShowModal = mrOk then
    begin
      cdPersonal.Refresh;
      Posicion := frxPreview1.GetTopPosition;
      frxReport1.ShowReport(True);

      Timer2.Enabled := True;
    end;
  end;
end;

procedure TFrmMostrarPersonal.btnEditarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPersonal, FrmPersonal);
  FrmPersonal.Modo := dsEdit;
  FrmPersonal.IdPersonal := cdPersonal.FieldByName('IdPersonal').AsInteger;
  {FrmPersonal.dsCapacidad.DataSet := cdCapacidad;
  FrmPersonal.dsCapacidadxPersonal.DataSet := cdCapacidadxPersonal;}
  if FrmPersonal.ShowModal = mrOk then
  begin
    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);

    Timer2.Enabled := True;
  end;
end;

procedure TFrmMostrarPersonal.btnGuardarFotoClick(Sender: TObject);
var
  Command: string;
  Info: TShellExecuteInfo;
  Ruta,
  Nombre: String;
  Forma: TForm;
begin
  spdImagen.Filter := 'Gráfico tipo ' + UpperCase(RightStr(dsPersonal.DataSet.FieldByName('ExtImagen').AsString, Length(dsPersonal.DataSet.FieldByName('ExtImagen').AsString) -1)) + ' (*' + dsPersonal.DataSet.FieldByName('ExtImagen').AsString +')|*' + dsPersonal.DataSet.FieldByName('ExtImagen').AsString;
  if spdImagen.Execute then
  begin
    // Verificar si ya tiene la extensión
    Nombre := spdImagen.FileName;
    Ruta := ExtractFilePath(Nombre);
    if Pos('.', Nombre) = 0 then
      Nombre := Nombre + dsPersonal.DataSet.FieldByName('ExtImagen').AsString;
    TBlobField(dsPersonal.DataSet.FieldByName('ImagenPersonal')).SaveToFile(Nombre);

    AdvPicture2.Picture.LoadFromFile(Nombre);

    Forma := TForm.Create(Self);
    try
      Forma.Caption := 'Imagen';
      Forma.Height := 180;
      Forma.Width := 450;
      Forma.BorderStyle := bsDialog;
      Forma.Position := poOwnerFormCenter;

      pnlImagen.Parent := Forma;
      pnlImagen.Align := alClient;
      pnlImagen.Visible := True;

      case Forma.ShowModal of
        mrOk: begin
          FillChar(Info, SizeOf(Info), #0);
          Info.cbSize := SizeOf(Info);
          Info.fMask := SEE_MASK_DEFAULT;
          Info.lpFile := PWideChar(Nombre);
          Info.nShow := SW_NORMAL;

          Win32Check(ShellExecuteEx(@Info));
        end;

        mrRetry: ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar('/select, "' + Nombre + '"'), nil, SW_NORMAL);

        mrYes: ;
      end;
    finally
      pnlImagen.Visible := False;
      pnlImagen.Align := alNone;
      pnlImagen.Parent := Self;

      Forma.Destroy;
    end;
  end;
end;

procedure TFrmMostrarPersonal.btnImprimirBajaClick(Sender: TObject);
var
  Ruta: String;
begin
  Ruta := ExtractFilePath(application.ExeName) + 'Reportes\SalidaPersonal.fr3';
  frxBaja.LoadFromFile(Ruta);
  frxBaja.ShowReport(True);
end;

procedure TFrmMostrarPersonal.btnVacPendClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaVacaciones, FrmConsultaVacaciones);
  FrmConsultaVacaciones.IdPersonal := dsPersonal.DataSet.FieldByName('IdPersonal').Asinteger;
  FrmConsultaVacaciones.IdPersonalIMSS := dsPersonal.DataSet.FieldByName('IdPersonalIMSS').Asinteger;
  FrmConsultaVacaciones.dsBuscarPersonal.DataSet := FrmMain.cdBuscarPersonal;
  FrmConsultaVacaciones.ShowModal;
end;

procedure TFrmMostrarPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.bmOpciones.Visible := False;
  Action := caFree;
end;

procedure TFrmMostrarPersonal.FechaMovimientoChange(Sender: TObject);
begin
  DiasVacacionesPendientes.Value := ConsultaVacaciones;   // Mandar pedir los dias de vacaciones pendientes
end;

procedure TFrmMostrarPersonal.FechaMovimientoClick(Sender: TObject);
begin
  //DiasVacacionesPendientes.Value := ConsultaVacaciones;   // Mandar pedir los dias de vacaciones pendientes
end;

procedure TFrmMostrarPersonal.FormActivate(Sender: TObject);
begin
  FrmMain.bmOpciones.Visible := Verdadero;
end;

procedure TFrmMostrarPersonal.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Obj: TWinControl;
  LocCursor: TCursor;
begin
  if TForm(Sender).ModalResult = mrOk then
  begin
    try
      LocCursor := Screen.Cursor;
      CanClose := False;
      try
        Screen.Cursor := crHourGlass;
        Obj := Nil;

        // Verificar la fecha de pago de último aguinaldo
        if FechaPagoAguinaldo.Date > FechaMovimiento.Date then
        begin
          Obj := FechaPagoAguinaldo;
          raise InteligentException.CreateByCode(24, ['La fecha indicada como pago de último aguinaldo (' + DateToStr(FechaPagoAguinaldo.Date) + ') no puede ser posterior a la fecha de baja (' + DateToStr(FechaMovimiento.Date) + '), verifique esto e intente de nuevo.']);
        end;

        Connection.zCommand.Close;
        Connection.zCommand.SQL.Text := 'SELECT ' +
                                        'IdPersonalIMSS,IdPersonal,FechaMovimiento,FechaReal,FechaRegistro,TipoMovimiento,Jornada,SalarioDiario,SalarioIntegrado, '+
                                        'Procesado,IdDepartamento,IdCargo,IdLocalidad,IdProyecto,IdSolicita,MotivoBaja,CuantoSiTemporal,BajaRecontratar, ' +
                                        'CausaVoluntaria,CausaInvoluntaria,TipoCausa,Comentarios,FechaPagoAguinaldo,DiasVacacionesPendientes,SalarioSemanalBaja,Indemnizacion ' +
                                        'FROM nuc_personalimss WHERE IdPersonal = -9';
        Connection.zCommand.Open;
        Connection.zCommand.Append;

        Connection.zCommand.FieldByName('IdPersonalIMSS').AsInteger := 0;
        Connection.zCommand.FieldByName('IdPersonal').AsInteger := cdPersonal.FieldByName('IdPersonal').AsInteger;
        Connection.zCommand.FieldByName('FechaMovimiento').AsDateTime := FechaMovimiento.Date;
        Connection.zCommand.FieldByName('FechaReal').AsDateTime := FechaMovimiento.Date;
        Connection.zCommand.FieldByName('FechaRegistro').AsDateTime := Now;
        Connection.zCommand.FieldByName('TipoMovimiento').AsString := 'Baja';
        Connection.zCommand.FieldByName('Jornada').AsInteger := 8;
        Connection.zCommand.FieldByName('SalarioDiario').AsFloat := 0.00;
        Connection.zCommand.FieldByName('SalarioIntegrado').AsFloat := 0.00;
        Connection.zCommand.FieldByName('Procesado').AsString := 'Si';
        Connection.zCommand.FieldByName('IdDepartamento').AsInteger := cdPersonal.FieldByName('IdDepartamento').AsInteger;
        Connection.zCommand.FieldByName('IdCargo').AsInteger := cdPersonal.FieldByName('IdCargo').AsInteger;
        Connection.zCommand.FieldByName('IdLocalidad').AsInteger := cdPersonal.FieldByName('IdLocalidad').AsInteger;
        Connection.zCommand.FieldByName('IdProyecto').AsInteger := cdPersonal.FieldByName('IdProyecto').AsInteger;
        Connection.zCommand.FieldByName('IdSolicita').AsInteger := Integer(IdSolicita.Items.Objects[IdSolicita.ItemIndex]);
        Connection.zCommand.FieldByName('FechaPagoAguinaldo').AsDateTime := FechaPagoAguinaldo.Date;
        Connection.zCommand.FieldByName('DiasVacacionesPendientes').AsFloat := DiasVacacionesPendientes.Value;
        Connection.zCommand.FieldByName('SalarioSemanalBaja').AsFloat := SalarioSemanalBaja.Value;
        Connection.zCommand.FieldByName('Indemnizacion').AsFloat := Indemnizacion.Value;
        case MotivoBaja.ItemIndex of
          0: Connection.zCommand.FieldByName('MotivoBaja').AsString := 'Terminacion de proyecto';
          1: Connection.zCommand.FieldByName('MotivoBaja').AsString := 'Causa administrativa';
          2: Connection.zCommand.FieldByName('MotivoBaja').AsString := 'Baja definitiva';
          3: Connection.zCommand.FieldByName('MotivoBaja').AsString := 'Baja temporal';
        end;
        Connection.zCommand.FieldByName('CuantoSiTemporal').AsString := CuantoSiTemporal.Text;
        if BajaRecontratar.ItemIndex = 0 then
          Connection.zCommand.FieldByName('BajaRecontratar').AsString := 'Recontratable'
        else
          Connection.zCommand.FieldByName('BajaRecontratar').AsString := 'No recontratable';
        Connection.zCommand.FieldByName('TipoCausa').AsString := TipoCausa.Text;
        if TipoCausa.ItemIndex = 0 then
          Connection.zCommand.FieldByName('CausaVoluntaria').AsString := Causas.Text
        else
          Connection.zCommand.FieldByName('CausaInvoluntaria').AsString := Causas.Text;
        Connection.zCommand.FieldByName('Comentarios').AsString := Comentarios.Text;

        Connection.zCommand.Post;

        CanClose := True;

        cdPersonal.Refresh;
        Posicion := frxPreview1.GetTopPosition;
        frxReport1.ShowReport(True);
        EstadoBotonesIMSS;

        Timer2.Enabled := True;
      finally
        if Connection.zCommand.State in [dsInsert, dsEdit] then
          Connection.zCommand.Cancel;

        Connection.zCommand.Close;
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if Obj.Parent.ClassNameIs('TPageControl') then
          PagerBajax.PageIndex := TPageControl(Obj.Parent).ActivePageIndex;

        if Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmMostrarPersonal.FormCreate(Sender: TObject);
begin
  IdPersonal := -1;
end;

procedure TFrmMostrarPersonal.FormDeactivate(Sender: TObject);
begin
  FrmMain.bmOpciones.Visible := False;
end;

procedure TFrmMostrarPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 80) then
  begin
    FrxReport1.Print;
    FrxReport1.ShowReport(True);
  end;

  if Key = 116 then
  begin
    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);
    EstadoBotonesIMSS;
    EstadoPaneles;

    Timer2.Enabled := True;
  end;
end;

procedure TFrmMostrarPersonal.FormShow(Sender: TObject);
begin
  Verdadero := False;
  Timer1.Enabled := True;
end;

procedure TFrmMostrarPersonal.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'Estatus') = 0 then
    Value := lblEstado.Caption;
end;

procedure TFrmMostrarPersonal.Timer1Timer(Sender: TObject);
var
  i: Integer;
  Ruta: String;
  MDIChild: TForm;
begin
  Timer1.Enabled := False;
  MDIChild := Nil;

  cdPagina3.CreateDataSet;
  cdPagina3.EmptyDataSet;

  try
    if IdPersonal = -1 then
    begin
      Application.CreateForm(TFrmBuscarPersonal, FrmBuscarPersonal);
      FrmBuscarPersonal.dsMenu.DataSet := dsBuscarPersonal.DataSet;
      if FrmBuscarPersonal.ShowModal = mrCancel then
        raise Exception.Create('***');

      IdPersonal := dsBuscarPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
    end;

    Verdadero := True;
    Self.Activate;

    // Verificar si este empleado ya ha sido abierto
    i := 0;
    while i < Application.MainForm.MDIChildCount do
    begin
      if (CompareText(Application.MainForm.MDIChildren[i].ClassName, 'TFrmMostrarPersonal') = 0) and (TFrmMostrarPersonal(Application.MainForm.MDIChildren[i]).cdPersonal.Active) and (TFrmMostrarPersonal(Application.MainForm.MDIChildren[i]).cdPersonal.RecordCount > 0) and (TFrmMostrarPersonal(Application.MainForm.MDIChildren[i]).cdPersonal.FieldByName('IdPersonal').AsInteger = IdPersonal) then
      begin
        MDIChild := TFrmMostrarPersonal(Application.MainForm.MDIChildren[i]);
        raise InteligentException.CreateByCode(24, ['La persona que ha seleccionado ya se encuentra abierta dentro de la aplicación.' + #10 + #10 + 'Se seleccionará autmáticamente la ficha de esta persona.']);
      end;

      Inc(i);
    end;

    if cdPersonal.SQL.Text = '' then
      CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog);

    if cdCapacidadxPersonal.SQL.Text = '' then
      CrearConjunto(cdCapacidadxPersonal, 'rhu_capacidadxpersonal', ccUpdate);

    if cdCargo.SQL.Text = '' then
      CrearConjunto(cdCargo, 'nuc_cargo_excel', ccSelect);

    CargarDatosFiltrados(cdPersonal, 'IdPersonal', [IdPersonal]);
    if dsPersonal.DataSet.Active then
      dsPersonal.DataSet.Refresh
    else
      dsPersonal.DataSet.Open;

    CargarDatosFiltrados(cdCapacidadxPersonal, 'IdPersonal', [cdPersonal.FieldByName('IdPersonal').AsInteger]);
    if cdCapacidadxPersonal.Active then
      cdCapacidadxPersonal.Refresh
    else
      cdCapacidadxPersonal.Open;

    if Not dsPersonal.DataSet.FieldByName('NombreOrganizacion').IsNull then
    begin
      cdPagina3.Append;
      cdPagina3.FieldByName('IdPersonal').AsInteger := IdPersonal;
      cdPagina3.Post;
    end;

    Self.Caption := cdPersonal.FieldByName('NombreCompleto').AsString;
    EstadoBotonesIMSS;

    EstadoPaneles;

    Ruta := ExtractFilePath(application.ExeName) + 'Reportes\FichaPersonal.fr3';
    frxReport1.LoadFromFile(Ruta);
    frxReport1.ShowReport(True);
  except
    on e:InteligentException do
    begin
      if High(ArregloIdPersonal) < 1 then
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

        if Assigned(MDIChild) then
          MDIChild.BringToFront;
      end;

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

procedure TFrmMostrarPersonal.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  frxPreview1.SetPosition(1, Posicion);
end;

procedure TFrmMostrarPersonal.TipoCausaChange(Sender: TObject);
const
  EsVoluntaria: Array[False..True] Of String = ('involuntaria', 'voluntaria');
begin
  lblCausas.Caption := 'Especifique las causas si es ' + EsVoluntaria[TipoCausa.ItemIndex = 0];
end;

procedure TFrmMostrarPersonal.Eliminarfechadeentregadepase1Click(
  Sender: TObject);
begin
    Connection.zCommand.SQL.Text := 'UPDATE nuc_personal SET FechaPase = Null WHERE IdPersonal = :IdPersonal';
    Connection.zCommand.ParamByName('IdPersonal').AsInteger := cdPersonal.FieldByName('IdPersonal').AsInteger;
    Connection.zCommand.ExecSQL;

    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);
    EstadoBotonesIMSS;
    EstadoPaneles;
end;

procedure TFrmMostrarPersonal.EstadoBotonesIMSS;
begin
  btnContratar.Enabled := cdPersonal.FieldByName('IdxEstado').AsInteger <> 1;
  btnBaja.Enabled := cdPersonal.FieldByName('IdxEstado').AsInteger = 1;
  btnBorrarContrato.Enabled := (Not btnContratar.Enabled) and (btnBaja.Enabled);
  btnBorrarBaja.Enabled := cdPersonal.FieldByName('IdxEstado').AsInteger = 2;
  btnImprimirBaja.Enabled := btnBorrarBaja.Enabled;
end;

procedure TFrmMostrarPersonal.GenerarCredencial;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
  Stream: TMemoryStream;
  Scale: Double;
  cdQR: TClientDataSet;
  sImage: TMemoryStream;
begin
  try
    QRCodeBitmap := TBitmap.Create;
    try
      // Crear el código QR para la credencial
      QRCode := TDelphiZXingQRCode.Create;
      try
        cdQR := TClientDataSet.Create(Self);
        cdQR.FieldDefs.Add('IdPersonal', ftInteger, 0, True);
        cdQR.FieldDefs.Add('ImagenQR', ftOraBlob, 0, True);
        cdQR.CreateDataSet;
        cdQR.Open;
        try
          Stream := TMemoryStream.Create;
          try
            QRCode.Data := cdPersonal.FieldByName('IdPersonal').AsString + '|' + cdPersonal.FieldByName('NombreCompleto').AsString;
            QRCode.Encoding := TQRCodeEncoding(0);
            QRCode.QuietZone := StrToIntDef('4', 4);
            QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
            for Row := 0 to QRCode.Rows - 1 do
            begin
              for Column := 0 to QRCode.Columns - 1 do
              begin
                if (QRCode.IsBlack[Row, Column]) then
                  QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
                else
                  QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
              end;
            end;
          finally
            Stream.Free;
          end;
        finally
          QRCode.Free;
          //cdQR.Free;
        end;
      finally
        //QRCode.Free;
      end;

      PaintBox1.Canvas.Brush.Color := clWhite;
      PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
      if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
      begin
        if (PaintBox1.Width < PaintBox1.Height) then
        begin
          Scale := PaintBox1.Width / QRCodeBitmap.Width;
        end else
        begin
          Scale := PaintBox1.Height / QRCodeBitmap.Height;
        end;
        PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
      end;

      // Agregar el codigo QR
      sImage := TMemoryStream.Create;
      QRCodeBitMap.SaveToStream(sImage);

      cdQR.Append;
      cdQR.FieldByName('IdPersonal').AsInteger := cdPersonal.FieldByName('IdPersonal').AsInteger;
      TBlobField(cdQR.FieldByName('ImagenQR')).LoadFromStream(sImage);
      cdQR.Post;

      Application.CreateForm(TFrmReporteDatos, FrmReporteDatos);
      FrmReporteDatos.frxDBPersonal.DataSource := dsPersonal;
      FrmReporteDatos.frxDBQR.DataSet := cdQR;
      FrmReporteDatos.NombreRepo := 'Reportes\Credencial2.fr3';
      FrmReporteDatos.Caption := 'Credencial de ' + cdPersonal.FieldByName('NombreCompleto').AsString;
      FrmReporteDatos.Show;
    finally
      QRCodeBitmap.Free;
    end;
  except
    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmMostrarPersonal.CartaConfidencial;
begin
  Application.CreateForm(TFrmCartaConf, FrmCartaConf);
  FrmCartaConf.Caption := 'Carta de confidencialidad de ' + cdPersonal.FieldByName('NombreCompleto').AsString;
  FrmCartaConf.dsPersonal.DataSet := cdPersonal;
  FrmCartaConf.Show;
end;

procedure TFrmMostrarPersonal.CartaCompromiso;
begin
  Application.CreateForm(TFrmCartaCompromiso, FrmCartaCompromiso);
  FrmCartaCompromiso.Caption := 'Carta compromiso de ' + cdPersonal.FieldByName('NombreCompleto').AsString;
  FrmCartaCompromiso.dsPersonal.DataSet := cdPersonal;
  FrmCartaCompromiso.Show;
end;

procedure TFrmMostrarPersonal.IdSolicitaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
    cdSolicita.Refresh;
end;

procedure TFrmMostrarPersonal.DescripcionPuesto;
var
  FileStream: TFileStream;
  BlobStream: TStream;
  Ruta,
  NombreReporte: String;
  Excel, WorkBook, Hoja: Variant;
  LocCursor: TCursor;
  Termina: Boolean;
  i: Integer;

function Limpia(Const Cadena: String): String;
var
  ii: Integer;
  Resultado: String;
begin
  for ii := 1 to Length(Cadena) do
    if UpCase(Cadena[ii]) in ['A'..'Z', '0'..'9'] then
      Resultado := Resultado + Cadena[ii];

  Result := Resultado;
end;

begin
  Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\';
  if Not DirectoryExists(Ruta) then
    ForceDirectories(Ruta);

  NombreReporte := Limpia(cdPersonal.FieldByName('TituloCargo').AsString) + '.xlsx';
  LocCursor := Screen.Cursor;

  try
    Screen.Cursor := crHourGlass;

    try
      CargarDatosFiltrados(cdCargo, 'IdCargo', [cdPersonal.FieldByName('IdCargo').AsInteger]);
      if cdCargo.Active then
        cdCargo.Refresh
      else
        cdCargo.Open;

      if (cdCargo.RecordCount = 0) or (cdCargo.FieldByName('Excel').IsNull) then
        raise InteligentException.CreateByCode(24, ['Se ha podido localizar el registro de archivo de excel de descripción de puestos en la base de datos']);

      // Actualizar el reporte en disco
      Try
        FileStream := TFileStream.Create(Ruta + NombreReporte, fmCreate);
        BlobStream := cdCargo.CreateBlobStream(cdCargo.FieldByName('Excel'), bmRead);
        FileStream.CopyFrom(BlobStream, BlobStream.Size - BlobStream.Position);
      Finally
        BlobStream.Free;
        FileStream.Free;
      End;

      if Not FileExists(Ruta + NombreReporte) then
        raise InteligentException.CreateByCode(24, ['No se ha podido recuperar el archivo desde la base de datos']);

      // Abrir el archivo en excel
      Excel := CreateOleObject('Excel.Application');

      try
        Excel.Visible := True;
        Excel.DisplayAlerts := False;

        Sleep(5000);

        // Pausa mientras no responda esta madre...
        repeat
          Sleep(1000);
          try
            Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
            Termina := True;
          except
            Termina := False;
          end;
        until Termina;

        Excel.Visible := False;
        Excel.Workbooks.Open(Ruta + NombreReporte);
        //Excel.Range('A5').Select;
        Excel.Cells[5,1].FormulaR1C1 := stringreplace(cdPersonal.FieldByName('NombreCompleto').AsString, ',', '', [rfReplaceAll]);
        Excel.Cells[5,2].FormulaR1C1 := 'EDUARDO VILLASEÑOR RODRIGUEZ';
        Excel.Cells[5,3].FormulaR1C1 := 'Gerente Salamanca';

        i := 1;
        while Excel.Workbooks.Count > 1 do
        begin
          Hoja := Excel.WorkBooks.Item[i];
          if Hoja.ActiveSheet.Cells[5,2].Value = '' then
            Excel.Workbooks.Item[i].Close
          else
            Inc(i);
        end;

        try
          Excel.Visible := True;
          Excel.ActiveSheet.PrintPreview(False); //, Collate:=True, IgnorePrintAreas:=False
        finally
          //Excel.Visible := False;
        end;
      finally
        Excel.Quit;
      end;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmMostrarPersonal.GenerarCartaRecomendacion(Cual: Word);
begin
  Application.CreateForm(TFrmReporteDatos, FrmReporteDatos);
  FrmReporteDatos.frxDBPersonal.DataSource := dsPersonal;
  case Cual of
    0: FrmReporteDatos.NombreRepo := 'Reportes\Recomendacion1.fr3';
    1: FrmReporteDatos.NombreRepo := 'Reportes\Recomendacion2.fr3';
  end;
  FrmReporteDatos.Caption := 'Recomendación #' + IntToStr(Cual) + ' para ' + cdPersonal.FieldByName('NombreCompleto').AsString;
  FrmReporteDatos.Show;
end;

procedure TFrmMostrarPersonal.Capturarfechadeentregadepase1Click(
  Sender: TObject);
var
  Forma: TForm;
begin
  Forma := TForm.Create(Self);
  try
    pnlEntregaPase.Parent := Forma;
    pnlEntregaPase.Align := alClient;
    pnlEntregaPase.Visible := True;

    Forma.Height := 140;
    Forma.Width := 450;
    Forma.BorderStyle := bsDialog;
    Forma.Position := poOwnerFormCenter;

    FechaPase.Date := Date;

    if Forma.ShowModal = mrOk then
    begin
      Connection.zCommand.SQL.Text := 'UPDATE nuc_personal SET FechaPase = :FechaPase WHERE IdPersonal = :IdPersonal';
      Connection.zCommand.ParamByName('FechaPase').AsString := DateToStrSQL(FechaPase.Date);
      Connection.zCommand.ParamByName('IdPersonal').AsInteger := cdPersonal.FieldByName('IdPersonal').AsInteger;
      Connection.zCommand.ExecSQL;

      cdPersonal.Refresh;
      Posicion := frxPreview1.GetTopPosition;
      frxReport1.ShowReport(True);
      EstadoBotonesIMSS;
      EstadoPaneles;
    end;
  finally
    pnlEntregaPase.Visible := False;
    pnlEntregaPase.Align := alNone;
    pnlEntregaPase.Parent := Self;

    Forma.Destroy;
  end;
end;

procedure TFrmMostrarPersonal.CargarSolicita;
var
  LocCursor: TCursor;
begin
  if cdSolicita.SQL.Text = '' then
    CrearConjunto(cdSolicita, 'nuc_personal', ccCatalog);

  if Not cdSolicita.Active then
  begin
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      cdSolicita.Open;

      LlenarIdSolicita;
    finally
      Screen.Cursor := LocCursor;
    end;
  end;
end;

procedure TFrmMostrarPersonal.LlenarIdSolicita;
var
  OldIdx: Integer;
begin
  cdSolicita.First;
  OldIdx := IdSolicita.ItemIndex;
  IdSolicita.Items.Clear;
  while not cdSolicita.Eof do
  begin
    IdSolicita.Items.AddObject(cdSolicita.FieldByName('NombreCompleto').AsString, TObject(cdSolicita.FieldByName('IdPersonal').AsInteger));
    cdSolicita.Next;
  end;

  if (OldIdx > -1) and (OldIdx < IdSolicita.Items.Count) then
    IdSolicita.ItemIndex := OldIdx
  else
    IdSolicita.ItemIndex := 0;
end;

procedure TFrmMostrarPersonal.pColoresClick(Sender: TObject);
begin
  case TWinControl(Sender).Tag of
    1: begin
         Capturarfechadeentregadepase1.Enabled := True;
         Eliminarfechadeentregadepase1.Enabled := False;
       end;
    2: begin
         Capturarfechadeentregadepase1.Enabled := False;
         Eliminarfechadeentregadepase1.Enabled := True;
       end;
    3: begin
         Capturarfechadeentregadepase1.Enabled := False;
         Eliminarfechadeentregadepase1.Enabled := False;
       end;
    4: begin
         Capturarfechadeentregadepase1.Enabled := False;
         Eliminarfechadeentregadepase1.Enabled := False;
       end;
  end;

  pmColores.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

function TFrmMostrarPersonal.GetPagoAguinaldo: TDate;
var
  cdGetDate: TZREadOnlyQuery;
begin
  cdGetDate := TZReadOnlyQuery.Create(Self);
  try
    cdGetDate.Connection := Connection.ConnTrx;
    cdGetDate.SQL.Text := 'SELECT ' +
                          '  n.FechaNomina, ' +
                          '  n.FechaTerminoNomina ' +
                          'FROM ' +
                          '  nom_nomina n ' +
                          'INNER JOIN ' +
                          '  nom_detallenomina dn ' +
                          '    ON (dn.IdNomina = n.IdNomina) ' +
                          'WHERE ' +
                          '  n.IdTipoNomina = 4 AND ' +
                          '  n.FechaNomina > :FechaMovimiento AND ' +
                          '  dn.IdPersonal = :IdPersonal ';
    cdGetDate.ParamByName('FechaMovimiento').AsString := DateToStrSQL(dsPersonal.DataSet.FieldByName('FechaReingreso').AsDateTime);
    cdGetDate.ParamByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
    cdGetDate.Open;

    if cdGetDate.RecordCount > 0 then
      Result := cdGetDate.FieldByName('FechaTerminoNomina').AsDateTime
    else
      Result := Now;
  finally
    cdGetDate.Destroy;
  end;
end;

procedure TFrmMostrarPersonal.PermisoAusencia;
begin
  if cdSolicita.SQL.Text = '' then
    CrearConjunto(cdSolicita, 'nuc_personal', ccCatalog);

  if Not cdSolicita.Active then
    cdSolicita.Open;

  Application.CreateForm(TFrmPermisoAusencia, FrmPermisoAusencia);
  FrmPermisoAusencia.dsPersonal.DataSet := cdPersonal;
  FrmPermisoAusencia.dsSolicita.DataSet := cdSolicita;
  FrmPermisoAusencia.ShowModal;
end;

procedure TFrmMostrarPersonal.ListaPermisos;
begin
  if cdSolicita.SQL.Text = '' then
    CrearConjunto(cdSolicita, 'nuc_personal', ccCatalog);

  if Not cdSolicita.Active then
    cdSolicita.Open;

  Application.CreateForm(TFrmListaPermisos, FrmListaPermisos);
  FrmListaPermisos.dsPersonal.DataSet := cdPersonal;
  FrmListaPermisos.ShowModal;
end;

procedure TFrmMostrarPersonal.EstadoPaneles;
begin
    // Mostrar el panel de estado
    pAmarillo.Visible := (cdPersonal.FieldByName('FechaPase').IsNull) and (cdPersonal.FieldByName('IdPersonalIMSS').IsNull) and (cdPersonal.FieldByName('FechaBaja').IsNull);
    pVerde.Visible := (Not cdPersonal.FieldByName('FechaPase').IsNull) and (cdPersonal.FieldByName('IdPersonalIMSS').IsNull) and (cdPersonal.FieldByName('FechaBaja').IsNull);
    pAzul.Visible := (Not cdPersonal.FieldByName('FechaPase').IsNull) and (Not cdPersonal.FieldByName('IdPersonalIMSS').IsNull) and (cdPersonal.FieldByName('FechaBaja').IsNull) and (cdPersonal.FieldByName('FechaMovimiento').AsDateTime + 3 > Date);
    pCafe.Visible := (Not cdPersonal.FieldByName('FechaPase').IsNull) and (Not cdPersonal.FieldByName('IdPersonalIMSS').IsNull) and (cdPersonal.FieldByName('FechaBaja').IsNull) and (cdPersonal.FieldByName('FechaMovimiento').AsDateTime + 3 <= Date);
    pRojo.Visible := (Not cdPersonal.FieldByName('IdPersonalIMSS').IsNull) and (Not cdPersonal.FieldByName('FechaBaja').IsNull);

    lblEstado.Left := 220;

    if pAmarillo.Visible then
    begin
      pAmarillo.Caption := 'Capturado el ' + DateToStr(cdPersonal.FieldByName('FechaRegistro').AsDateTime);
      pAmarillo.Left := 7;
      lblEstado.Caption := ReplaceStr(LeyendaEstado[1], '%Valor%', DateToStr(cdPersonal.FieldByName('FechaRegistro').AsDateTime));
    end;

    if pVerde.Visible then
    begin
      pVerde.Caption := 'Con pase desde el ' + cdPersonal.FieldByName('FechaPase').AsString;
      pVerde.Left := 7;
      lblEstado.Caption := ReplaceStr(LeyendaEstado[2], '%Valor%', DateToStr(cdPersonal.FieldByName('FechaPase').AsDateTime));
    end;

    if pAzul.Visible then
    begin
      pAzul.Caption := 'Trabajando desde el ' + cdPersonal.FieldByName('FechaMovimiento').AsString;
      pAzul.Left := 7;
      lblEstado.Caption := ReplaceStr(LeyendaEstado[3], '%Valor%', DateToStr(cdPersonal.FieldByName('FechaMovimiento').AsDateTime));
    end;

    if pCafe.Visible then
    begin
      pCafe.Caption := 'Trabajando desde el ' + cdPersonal.FieldByName('FechaMovimiento').AsString;
      pCafe.Left := 7;
      lblEstado.Caption := ReplaceStr(ReplaceStr(LeyendaEstado[4], '%Valor%', DateToStr(cdPersonal.FieldByName('FechaMovimiento').AsDateTime)), '%Dias%', IntToStr(Trunc(Date) - Trunc(cdPersonal.FieldByName('FechaMovimiento').AsDateTime)));
    end;

    if pRojo.Visible then
    begin
      pCafe.Caption := 'Baja desde el ' + cdPersonal.FieldByName('FechaBaja').AsString;
      pRojo.Left := 7;
      lblEstado.Caption := ReplaceStr(LeyendaEstado[5], '%Valor%', DateToStr(cdPersonal.FieldByName('FechaBaja').AsDateTime));
    end;

    gbPanelEstado.Visible := pAmarillo.Visible or pVerde.Visible or pAzul.Visible or pCafe.Visible or pRojo.Visible;
end;

end.
