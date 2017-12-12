unit Borrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, frxClass, Vcl.StdCtrls,
  JvLabel, Data.DB, Datasnap.DBClient, Frm_Connection, UInteliDialog, UDosCapas,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCalc, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, AdvGlowButton, Vcl.DBCtrls, AdvToolBar;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    frxReport1: TfrxReport;
    gbPanelEstado: TGroupBox;
    lblEstado: TJvLabel;
    pAmarillo: TPanel;
    pVerde: TPanel;
    pAzul: TPanel;
    pRojo: TPanel;
    pCafe: TPanel;
    cdPagina3: TClientDataSet;
    PagerBaja: TAdvToolBarPager;
    PageContratacionx: TAdvPage;
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
    PageBajax: TAdvPage;
    PageFiniquitox: TAdvPage;
    JvLabel22: TJvLabel;
    JvLabel20: TJvLabel;
    JvLabel19: TJvLabel;
    JvLabel18: TJvLabel;
    btnVacPend: TAdvGlowButton;
    FechaPagoAguinaldo: TcxDateEdit;
    DiasVacacionesPendientes: TcxCalcEdit;
    SalarioSemanalBaja: TcxCalcEdit;
    Indemnizacion: TcxCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    Posicion: Integer;
    Verdadero: Boolean;
    QRCodeBitmap: TBitmap;
  public
    IdPersonal: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Personal;

procedure TForm1.FormActivate(Sender: TObject);
begin
  FrmMain.bmOpciones.Visible := Verdadero;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMain.bmOpciones.Visible := False;
  Action := caFree;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  IdPersonal := -1;
end;

procedure TForm1.FormDeactivate(Sender: TObject);
begin
  FrmMain.bmOpciones.Visible := False;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 80) then
  begin
    FrxReport1.Print;
    FrxReport1.ShowReport(True);
  end;
{
  if Key = 116 then
  begin
    cdPersonal.Refresh;
    Posicion := frxPreview1.GetTopPosition;
    frxReport1.ShowReport(True);
    EstadoBotonesIMSS;
    EstadoPaneles;

    Timer2.Enabled := True;
  end;}
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Verdadero := False;
  Timer1.Enabled := True;
end;

procedure TForm1.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'Estatus') = 0 then
    Value := lblEstado.Caption;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
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
(*    if IdPersonal = -1 then
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
    frxReport1.ShowReport(True);*)
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

end.
