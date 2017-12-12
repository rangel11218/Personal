unit UTFrmSoftware;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDosCapas, UInteliDialog, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, Frm_Connection,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  AdvGlowButton, ExtCtrls, JvLabel, StdCtrls, Mask, DBCtrls,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmSoftware = class(TForm)
    cdSoftware: TZQuery;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsSoftware: TDataSource;
    ColCodigoSoftware: TcxGridDBColumn;
    ColTituloSoftware: TcxGridDBColumn;
    Panel1: TPanel;
    btnAgregar: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    btnEliminar: TAdvGlowButton;
    pnlEdit: TPanel;
    Panel3: TPanel;
    btnOkEdit: TAdvGlowButton;
    btnCancelarEdit: TAdvGlowButton;
    CodigoSoftware: TDBEdit;
    TituloSoftware: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    Panel2: TPanel;
    btnAgregarEdit: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAgregarClick(Sender: TObject);
    procedure FormaEditShow(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnEditarClick(Sender: TObject);
  private
    procedure UpdateRecord(Modo: TDataSetState);
  public
    { Public declarations }
  end;

var
  FrmSoftware: TFrmSoftware;

implementation

{$R *.dfm}

procedure TFrmSoftware.UpdateRecord(Modo: TDataSetState);
var
  FormaEdit: TForm;
begin
  FormaEdit := TForm.Create(Self);
  try
    if Modo = dsEdit then
      FormaEdit.Caption := 'Editar Software'
    else
      FormaEdit.Caption := 'Nuevo Software';
    FormaEdit.Height := 180;
    FormaEdit.Width := 430;
    FormaEdit.OnShow := FormaEditShow;
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;
    FormaEdit.Position := poOwnerFormCenter;

    pnlEdit.Parent := FormaEdit;
    pnlEdit.Align := alClient;
    pnlEdit.Visible := True;

    btnAgregarEdit.Visible := Modo = dsInsert;

    if Modo = dsEdit then
      cdSoftware.Edit
    else
      cdSoftware.Append;

    FormaEdit.ShowModal;
  finally
    pnlEdit.Visible := False;
    pnlEdit.Align := alNone;
    pnlEdit.Parent := Self;

    FormaEdit.Destroy;
  end;
end;

procedure TFrmSoftware.btnAgregarClick(Sender: TObject);
begin
  UpdateRecord(dsInsert);
end;

procedure TFrmSoftware.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSoftware.btnEditarClick(Sender: TObject);
begin
  UpdateRecord(dsEdit);
end;

procedure TFrmSoftware.FormaEditShow(Sender: TObject);
begin
  CodigoSoftware.SetFocus;
end;

procedure TFrmSoftware.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Obj: TWinControl;
  LocCursor: TCursor;
begin
  CanClose := True;
  
  if (TForm(Sender).ModalResult = mrOk) or (TForm(Sender).ModalResult = mrYes) then
  begin
    CanClose := False;
  
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        if Trim(CodigoSoftware.Text) = '' then
        begin
          Obj := CodigoSoftware;
          raise InteligentException.CreateByCode(18, ['Código']);
        end;

        if Trim(TituloSoftware.Text) = '' then
        begin
          Obj := TituloSoftware;
          raise InteligentException.CreateByCode(18, ['Título']);
        end;

        cdSoftware.Post;
        cdSoftware.Refresh;

        if TForm(Sender).ModalResult = mrYes then
        begin
          cdSoftware.Append;
          CodigoSoftware.SetFocus;
        end
        else
          CanClose := True;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if Assigned(Obj) then
          Obj.SetFocus;
          
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        if cdSoftware.State in [dsEdit, dsInsert] then
          cdSoftware.Cancel;

        CanClose := True;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TFrmSoftware.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdSoftware, 'rhu_software', ccUpdate);
      cdSoftware.Open;
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

end.
