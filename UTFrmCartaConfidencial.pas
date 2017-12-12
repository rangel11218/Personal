unit UTFrmCartaConfidencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, DB, ExtCtrls, Frm_Connection, AdvGlowButton,
  StdCtrls, Mask, Menus, JvLabel, UInteliDialog, UDosCapas, DateUtils,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmCartaConfidencial = class(TForm)
    dsPersonal: TDataSource;
    frxCartaConfidencial: TfrxReport;
    frxPreviewCarta: TfrxPreview;
    Timer1: TTimer;
    pnlEdit: TPanel;
    Panel2: TPanel;
    btnCancelEdit: TAdvGlowButton;
    btnOkEdit: TAdvGlowButton;
    JvLabel1: TJvLabel;
    PopupMenu1: TPopupMenu;
    Especificarfecha1: TMenuItem;
    frxImprimir: TfrxReport;
    FechaCarta: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Especificarfecha1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    procedure BotonImprimirCarta;
  end;

var
  FrmCartaConfidencial: TFrmCartaConfidencial;

implementation

{$R *.dfm}

Uses
  Personal;

procedure TFrmCartaConfidencial.Especificarfecha1Click(Sender: TObject);
var
  FormaEdit: TForm;
  Anio: String;
begin
  FormaEdit := TForm.Create(Self);
  try
    FormaEdit.Height := 200;
    FormaEdit.Width := 355;
    FormaEdit.Caption := 'Modificar fecha de carta';
    FormaEdit.Position := poOwnerFormCenter;
    FormaEdit.OnCloseQuery := FormaEditCloseQuery;

    pnlEdit.Parent := FormaEdit;
    pnlEdit.Align := alClient;
    pnlEdit.Visible := True;

    Anio := Copy(dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsString, 1, 4);
    if dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').IsNull Or (Anio = '0000') then
      FechaCarta.Date := Now()
    else
      FechaCarta.Date := dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsDateTime;

    if FormaEdit.ShowModal = mrOk then
    begin
      dsPersonal.DataSet.Refresh;
      frxCartaConfidencial.ShowReport(False);
    end;
  finally
    pnlEdit.Visible := False;
    pnlEdit.Align := alNone;
    pnlEdit.Parent := Self;

    FormaEdit.Destroy;
  end;
end;

procedure TFrmCartaConfidencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCartaConfidencial.FormDeactivate(Sender: TObject);
begin
  FrmMain.bmOpcionesVacaciones.Visible := False;
end;

procedure TFrmCartaConfidencial.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl In Shift) and (Key = 80) then
    BotonImprimirCarta;
end;

procedure TFrmCartaConfidencial.FormActivate(Sender: TObject);
begin
  FrmMain.bmOpcionesVacaciones.Visible := True;
end;

procedure TFrmCartaConfidencial.FormaEditCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      // Actualizar la fecha
      Connection.zCommand.Close;
      Connection.zCommand.SQL.Text := 'UPDATE nuc_personal SET FechaCartaConfidencial = :FechaCartaConfidencial WHERE IdPersonal = :IdPersonal';
      Connection.zCommand.ParamByName('FechaCartaConfidencial').AsString := DateToStrSQL(FechaCarta.Date);
      Connection.zCommand.ParamByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
      Connection.zCommand.ExecSQL;

      CanClose := True;
    except
      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCartaConfidencial.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmCartaConfidencial.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;

  FrxCartaConfidencial.LoadFromFile('Reportes\CartaConfidencial.fr3');
  FrxCartaConfidencial.ShowReport(True);
end;

procedure TFrmCartaConfidencial.BotonImprimirCarta;
begin
  FrxImprimir.LoadFromFile('Reportes\CartaConfidencial.fr3');
  FrxImprimir.Print;
end;

end.
