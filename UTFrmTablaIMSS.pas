unit UTFrmTablaIMSS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, DB, DBClient,
  UDosCapas, UInteliDialog, StdCtrls, DBCtrls, AdvGlowButton, JvLabel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,   dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Vcl.Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, cxCalendar;

type
  TFrmTablaIMSS = class(TForm)
    ToolBar1: TToolBar;
    Btn_Agregar: TToolButton;
    Btn_Editar: TToolButton;
    Btn_Quitar: TToolButton;
    ToolButton4: TToolButton;
    Btn_Refresh: TToolButton;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    dsDatos: TDataSource;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel11: TPanel;
    Panel6: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBText2: TDBText;
    Panel9: TPanel;
    DBText3: TDBText;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    dbmemCriterio: TDBMemo;
    pnl_DatosLinea: TPanel;
    pnl_BotonesLinea: TPanel;
    btnAgregarLinea: TAdvGlowButton;
    btnAceptarLinea: TAdvGlowButton;
    btnBtn_CerrarLinea: TAdvGlowButton;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    DxBarBtnNuevaTabla: TdxBarLargeButton;
    FrxReporteFactoresIMSS: TfrxReport;
    frxfactoresIMSS: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    btnImprmir: TdxBarLargeButton;
    cdDatos: TZQuery;
    lblTotal: TJvLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtCodigo: TDBEdit;
    edtNombre: TDBEdit;
    Label9: TLabel;
    edtPctPatron: TcxDBCalcEdit;
    edtPctEmpleado: TcxDBCalcEdit;
    cmbPago: TDBComboBox;
    cmbAplicarSobre: TDBComboBox;
    cmbExentoSobre: TDBComboBox;
    edtCuantoExento: TcxDBCalcEdit;
    dtpAplicacion: TcxDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure btnAgregarLineaClick(Sender: TObject);
    procedure cmbExentoSobreChange(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure btnImprmirClick(Sender: TObject);
    procedure cdDatosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    FrmCaptura: TForm;
    Modificado: Boolean;
    Buscar: TClientDataSet;
    procedure LeerDatos;
    procedure CrearVentana;
    function ValidaLinea: Boolean;
  public
    { Public declarations }
  end;

var
  FrmTablaIMSS: TFrmTablaIMSS;

implementation

{$R *.dfm}

procedure TFrmTablaIMSS.btnAgregarLineaClick(Sender: TObject);
begin
  try
    ValidaLinea;

    cdDatos.Post;

    Modificado := True;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal(e.ClassName + 'Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Exit;
    end;
  End;

  // Antes de salir o reiniciar, se coloca el foco en el primer control para que
  // de el efecto deseado principalmente en el momento de cerrar y abrir la
  // ventana de captura.
  dtpAplicacion.SetFocus;

  if Sender = btnAgregarLinea then
  begin
    beep; // Avisar de alguna manera al usuario que se hizo algo
    cdDatos.Append;
    cdDatos.FieldByName('FechaAplicacion').AsDateTime := Date;

    // Validar por que los campos no vienen con los datos inciales por default
    // indicados en la BD
    cdDatos.FieldByName('IdTablaIMSS').AsInteger := 0;
    cdDatos.FieldByName('ExentoSobre').AsString := 'SMGVDF';
    cdDatos.FieldByName('AplicarSobre').AsString := 'SBC';
    cdDatos.FieldByName('Pago').AsString := 'MENSUAL';
  end
  else
    FrmCaptura.Close

end;

procedure TFrmTablaIMSS.btnBtn_CerrarLineaClick(Sender: TObject);
begin
  if cdDatos.State in [dsEdit, dsInsert] then
    cdDatos.Cancel;
  Modificado := False;
  dtpAplicacion.SetFocus;
end;

procedure TFrmTablaIMSS.btnImprmirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      {Reporte := 'FactoresIMSS.fr3';
      CompReporte := FrxReporteFactoresIMSS;
      CompDataSetReporte := FrxFactoresIMSS;

      LocalImprimeReporte(cdDatos, DBGrid1, 'Tabla de Factores de I.M.S.S.');}
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

procedure TFrmTablaIMSS.Btn_AgregarClick(Sender: TObject);
Var
  PrevFocus: TWinControl;
begin
  // Agregar el renglón
  if Not Assigned(FrmCaptura) then
    CrearVentana;

  btnAgregarLinea.Visible := True;
  cdDatos.Append;
  cdDatos.FieldByName('FechaAplicacion').AsDateTime := Date;

  // Validar por que los campos no vienen con los datos inciales por default
  // indicados en la BD
  cdDatos.FieldByName('IdTablaIMSS').AsInteger := 0;
  cdDatos.FieldByName('ExentoSobre').AsString := 'SMGVDF';
  cdDatos.FieldByName('AplicarSobre').AsString := 'SBC';
  cdDatos.FieldByName('Pago').AsString := 'MENSUAL';

  PrevFocus := Self.ActiveControl;
  FrmCaptura.ShowModal;

  if Modificado then
    cdDatos.Refresh;
  PrevFocus.SetFocus;
end;

procedure TFrmTablaIMSS.Btn_EditarClick(Sender: TObject);
Var
  PrevFocus: TWinControl;
begin
  if Not Assigned(FrmCaptura) then
    CrearVentana;

  btnAgregarLinea.Visible := False;
  cdDatos.Edit;

  PrevFocus := Self.ActiveControl;
  FrmCaptura.ShowModal;

  if Modificado then
    cdDatos.Refresh;
  PrevFocus.SetFocus;
end;

procedure TFrmTablaIMSS.Btn_QuitarClick(Sender: TObject);
var
  Mensaje: string;
begin
  // Hacer las validaciones requeridas para determinar si es un registro
  // candidato a ser eliminado

  if false then
  begin
    InteliDialog.ShowModal('No se puede eliminar',
      'Este registro no puede ser eliminado debido a...', mtError, [mbOk], 0);
    Exit;
  end;

  Mensaje := Format('¿Está seguro de eliminar el registro [%s]?',[cdDatos.FieldByName('CodigoFactor').AsString]);
  if InteliDialog.ShowModal('Confirmación', Mensaje, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    cdDatos.Delete;
end;

procedure TFrmTablaIMSS.Btn_RefreshClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  if CdDatos.State = DsBrowse then
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      CdDatos.Refresh;
    Finally
      Screen.Cursor := OldCursor;
    End;
end;

procedure TFrmTablaIMSS.cdDatosAfterScroll(DataSet: TDataSet);
begin
  lblTotal.Caption := FloatToStr(cdDatos.FieldByName('Patron').AsFloat + cdDatos.FieldByName('Empleado').AsFloat);
end;

procedure TFrmTablaIMSS.cmbExentoSobreChange(Sender: TObject);
begin
  edtCuantoExento.Enabled := TDBComboBox(Sender).Text <> 'NINGUNO';

end;

procedure TFrmTablaIMSS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTablaIMSS.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdDatos, 'nom_tablaimss', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tabla de Factores de I.M.S.S.']);
      cdDatos.Open;

    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;



procedure TFrmTablaIMSS.LeerDatos;
begin
//
end;

function TFrmTablaIMSS.ValidaLinea: Boolean;
begin
    if Not (cdDatos.State in [dsEdit, dsInsert]) then
      raise InteligentException.CreateByCode(1, ['El dataset no se encuentra en Modo de edición o edición']);

    if Trim(edtCodigo.Text) = '' then
    begin
      edtCodigo.SetFocus;
      raise InteligentException.CreateByCode(18, ['Código']);
    end;

    if Trim(edtNombre.Text) = '' then
    begin
      edtNombre.SetFocus;
      raise InteligentException.CreateByCode(18, ['Nombre']);
    end;

    if edtPctPatron.Value < 0 then
    begin
      edtPctPatron.SetFocus;
      raise InteligentException.CreateByCode(8, ['El campo [% Patrón] debe ser mayor o igual que cero']);
    end;

    if edtPctEmpleado.Value < 0 then
    begin
      edtPctEmpleado.SetFocus;
      raise InteligentException.CreateByCode(8, ['El campo [% Empleado] debe ser mayor o igual que cero']);
    end;

    if edtCuantoExento.Value < 0 then
    begin
      edtCuantoExento.SetFocus;
      raise InteligentException.CreateByCode(8, ['El campo [% Empleado] debe ser mayor o igual que cero']);
    end;

end;

procedure TFrmTablaIMSS.CrearVentana;
begin
  FrmCaptura := TForm.Create(Self);
  FrmCaptura.Width := Pnl_DatosLinea.Width + 6;
  FrmCaptura.Height := Pnl_DatosLinea.Height + Pnl_BotonesLinea.Height + 25;

  Pnl_DatosLinea.Parent := FrmCaptura;
  Pnl_BotonesLinea.Parent := FrmCaptura;

  Pnl_DatosLinea.Visible := True;
  Pnl_BotonesLinea.Visible := True;

  Pnl_DatosLinea.Align := alClient;
  Pnl_BotonesLinea.Align := alBottom;
  FrmCaptura.BorderStyle := bsSingle;
  FrmCaptura.Position := poMainFormCenter;
  Pnl_DatosLinea.TabOrder := 0;
end;




end.
