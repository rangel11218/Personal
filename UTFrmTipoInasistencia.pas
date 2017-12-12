unit UTFrmTipoInasistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDosCapas, UInteliDialog, Frm_Connection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, URegistro,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  DBCtrls, JvLabel, Mask, AdvGlowButton, ExtCtrls, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFrmTipoInasistencia = class(TForm)
    cdTipoInasistencia: TZQuery;
    dsTipoInasistencia: TDataSource;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    btnAdd: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnBorrar: TAdvGlowButton;
    pnlEditar: TPanel;
    eTitulo: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    eDisminuyeAguinaldo: TDBCheckBox;
    eDisminuyeVacaciones: TDBCheckBox;
    Panel3: TPanel;
    btnEditCancelar: TAdvGlowButton;
    btnEditAceptar: TAdvGlowButton;
    eDescripcion: TDBEdit;
    Titulo: TcxGridDBColumn;
    Descripcion: TcxGridDBColumn;
    DisminuyeAguinaldo: TcxGridDBColumn;
    DisminuyeVacaciones: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBorrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoInasistencia: TFrmTipoInasistencia;

implementation

{$R *.dfm}

procedure TFrmTipoInasistencia.btnAddClick(Sender: TObject);
var
  FormaEdit: TForm;
begin
  FormaEdit := TForm.Create(Self);
  try
    FormaEdit.Width := 389;
    FormaEdit.Height := 263;
    FormaEdit.Caption := 'Agregar Tipo';
    FormaEdit.Position := poOwnerFormCenter;
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;

    pnlEditar.Parent := FormaEdit;
    pnlEditar.Align := alClient;
    pnlEditar.Visible := True;

    cdTipoInasistencia.Append;
    cdTipoInasistencia.FieldByName('IdTipoInasistencia').AsInteger := 0;
    cdTipoInasistencia.FieldByName('DisminuyeAguinaldo').AsString := 'No';
    cdTipoInasistencia.FieldByName('DisminuyeVacaciones').AsString := 'No';

    if FormaEdit.ShowModal = mrOk then
      cdTipoInasistencia.Refresh;
  finally
    pnlEditar.Visible := False;
    pnlEditar.Align := alNone;
    pnlEditar.Parent := Self;
  end;
end;

procedure TFrmTipoInasistencia.btnBorrarClick(Sender: TObject);
begin
  if (cdTipoInasistencia.RecordCount > 0) and (InteliDialog.ShowModal('Borrar tipo', '¿Está seguro de eliminar el tipo de inasistencia seleccionado?' + #10 + #10 + cdTipoInasistencia.FieldByName('Titulo').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    cdTipoInasistencia.Delete;
end;

procedure TFrmTipoInasistencia.btnEditarClick(Sender: TObject);
var
  FormaEdit: TForm;
begin
  FormaEdit := TForm.Create(Self);
  try
    FormaEdit.Width := 389;
    FormaEdit.Height := 263;
    FormaEdit.Caption := 'Modificar Tipo';
    FormaEdit.Position := poOwnerFormCenter;
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;

    pnlEditar.Parent := FormaEdit;
    pnlEditar.Align := alClient;
    pnlEditar.Visible := True;

    cdTipoInasistencia.Edit;

    if FormaEdit.ShowModal = mrOk then
      cdTipoInasistencia.Refresh;
  finally
    pnlEditar.Visible := False;
    pnlEditar.Align := alNone;
    pnlEditar.Parent := Self;
  end;
end;

procedure TFrmTipoInasistencia.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  LocCursor: TCursor;
  Obj: TWinControl;
begin
  if Sender.ClassNameIs('TForm') and (TForm(Sender).ModalResult = mrOk) then
  begin
    CanClose := False;
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        if eTitulo.Text = '' then
        begin
          Obj := eTitulo;
          raise InteligentException.CreateByCode(18, ['Titulo']);
        end;

        if eDescripcion.Text = '' then
        begin
          Obj := eDescripcion;
          raise InteligentException.CreateByCode(18, ['Descripción']);
        end;

        cdTipoInasistencia.Post;
        CanClose := True;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        CanClose := True;
        cdTipoInasistencia.Cancel;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    cdTipoInasistencia.Cancel;
end;

procedure TFrmTipoInasistencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  for i := 0 to tvDatos.ColumnCount -1 do
    SetRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i), IntToStr(tvDatos.Columns[i].Width));
end;

procedure TFrmTipoInasistencia.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  i: Integer;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      Try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
      Except
        ;
      End;

      Try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      Except
        ;
      End;

      for i := 0 to tvDatos.ColumnCount -1 do
        Try
          tvDatos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvDatos', 'Col' + IntToStr(i)));
        Except
          ;
        End;

      CrearConjunto(cdTipoInasistencia, 'nom_tipoinasistencia', ccCatalog);
      cdTipoInasistencia.Open;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
