unit UTFrmPermisoAusencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvLabel, StdCtrls, Mask, frxClass, DBCtrls, ExtCtrls, ComCtrls,
  AdvGlowButton, Frm_Connection, UDosCapas, UInteliDialog, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxDBSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxSpinEdit, cxTimeEdit;

type
  TFrmPermisoAusencia = class(TForm)
    frxReport1: TfrxReport;
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    IdSolicita: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    cbTipoPermiso: TComboBox;
    Tiempo: TDBMemo;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    EspecificarOtro: TDBMemo;
    JvLabel9: TJvLabel;
    Observaciones: TDBMemo;
    Panel3: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnImprimir: TAdvGlowButton;
    cdPermisoAusencia: TZQuery;
    dsSolicita: TDataSource;
    dsPermisoAusencia: TDataSource;
    PorHoras: TDBCheckBox;
    Causa: TDBComboBox;
    dsPersonal: TDataSource;
    frxDBPermiso: TfrxDBDataset;
    hInicio: TcxDBTimeEdit;
    hTermino: TcxDBTimeEdit;
    FechaSolicitud: TcxDBDateEdit;
    Inicio: TcxDBDateEdit;
    Termino: TcxDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure cdPermisoAusenciaBeforePost(DataSet: TDataSet);
    procedure PorHorasClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cdPermisoAusenciaAfterPost(DataSet: TDataSet);
  private
    LastId: Integer;
  public
    { Public declarations }
  end;

var
  FrmPermisoAusencia: TFrmPermisoAusencia;

implementation

{$R *.dfm}

procedure TFrmPermisoAusencia.cdPermisoAusenciaAfterPost(DataSet: TDataSet);
begin
  LastId := DataSet.FieldByName('IdPermisoAusencia').AsInteger;
end;

procedure TFrmPermisoAusencia.cdPermisoAusenciaBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('TipoPermiso').AsInteger := cbTipoPermiso.ItemIndex;
end;

procedure TFrmPermisoAusencia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Obj: TWinControl;
  Nombre: String;
begin
  CanClose := True;

  if ModalResult = mrOk then
  begin
    try
      CanClose := False;

      // Validar captura
      if IdSolicita.KeyValue = Null then
      begin
        Obj := IdSolicita;
        raise InteligentException.CreateByCode(18, ['Jefe Inmediato']);
      end;

      if cbTipoPermiso.ItemIndex = -1 then
      begin
        Obj := cbTipoPermiso;
        raise InteligentException.CreateByCode(18, ['Tipo de permiso']);
      end;

      if Causa.ItemIndex = -1 then
      begin
        Obj := Causa;
        raise InteligentException.CreateByCode(18, ['Causa de ausencia']);
      end;

      cdPermisoAusencia.Post;

      if InteliDialog.ShowModal('Permiso generado correctamente', '¿Desea imprimir ahora el permiso generado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        CargarDatosFiltrados(cdPermisoAusencia, 'IdPermisoAusencia', [LastId]);
        cdPermisoAusencia.Refresh;

        Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\PermisoAusencia.fr3';
        frxReport1.LoadFromFile(Nombre);
        frxReport1.ShowReport(True);
      end;

      CanClose := True;
    except
      on e:InteligentException do
      begin
        if Assigned(Obj) and Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;

      on e:Exception do
      begin
        cdPermisoAusencia.Cancel;
        CanClose := True;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    cdPermisoAusencia.Cancel;
end;

procedure TFrmPermisoAusencia.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crhourGlass;

      CrearConjunto(cdPermisoAusencia, 'rhu_permisoausencia', ccUpdate);
      CargarDatosFiltrados(cdPermisoAusencia, 'IdPermisoAusencia', [-9]);
      cdPermisoAusencia.Open;
      cdPermisoAusencia.Append;

      cdPermisoAusencia.FieldByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
      cdPermisoAusencia.FieldByName('IdCargoHist').AsInteger := dsPersonal.DataSet.FieldByName('IdCargo').AsInteger;
      cdPermisoAusencia.FieldByName('IdDepartamentoHist').AsInteger := dsPersonal.DataSet.FieldByName('IdDepartamento').AsInteger;
      cdPermisoAusencia.FieldByName('IdLocalidadHist').AsInteger := dsPersonal.DataSet.FieldByName('IdLocalidad').AsInteger;
      cdPermisoAusencia.FieldByName('IdProyectoHist').AsInteger := dsPersonal.DataSet.FieldByName('IdProyecto').AsInteger;
      cdPermisoAusencia.FieldByName('PorHoras').AsString := 'No';
      cdPermisoAusencia.FieldByName('FechaSolicitud').AsDateTime := Date;
      cdPermisoAusencia.FieldByName('Inicio').AsDateTime := Date;
      cdPermisoAusencia.FieldByName('Termino').AsDateTime := Date;
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

procedure TFrmPermisoAusencia.PorHorasClick(Sender: TObject);
begin
  hInicio.Enabled := PorHoras.Checked;
  hTermino.Enabled := PorHoras.Checked;
  Termino.Enabled := Not PorHoras.Checked;
end;

end.
