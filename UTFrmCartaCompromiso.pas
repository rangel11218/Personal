unit UTFrmCartaCompromiso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDosCapas, UInteliDialog, Frm_Connection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, CheckLst, ExtCtrls, JvLabel,
  AdvGlowButton, Spin, DBClient, frxClass, frxDBSet, Mask, cxGraphics,
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
  cxDBEdit;

type
  TFrmCartaCompromiso = class(TForm)
    cdCarta: TZQuery;
    Panel1: TPanel;
    clbDocumentos: TCheckListBox;
    JvLabel1: TJvLabel;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    dsPersonal: TDataSource;
    cdDocumentos: TClientDataSet;
    frxDBDocumentos: TfrxDBDataset;
    frxDBCarta: TfrxDBDataset;
    frxCartaCOmpromiso: TfrxReport;
    JvLabel2: TJvLabel;
    dsCarta: TDataSource;
    JvLabel3: TJvLabel;
    FechaEmision: TcxDBDateEdit;
    FechaLimite: TcxDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure cdCartaAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    IdCarta: Integer;
    procedure InterpretarNumero(Valor: Integer);
  public

  end;

Const
  Orden: Array[0..15] of Integer = (0,1,14,5,2,4,6,3,7,13,12,9,10,11,8,15);

var
  FrmCartaCompromiso: TFrmCartaCompromiso;

implementation

{$R *.dfm}

procedure TFrmCartaCompromiso.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCartaCompromiso.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCartaCompromiso.cdCartaAfterPost(DataSet: TDataSet);
begin
  IdCarta := DataSet.FieldByName('IdCartaCompromiso').AsInteger;
end;

procedure TFrmCartaCompromiso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  i, c: Integer;
  Valor, Acum: Integer;
  Obj: TWinControl;
  LocCursor: TCursor;
  Nombre: String;
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        Valor := 1;
        Acum := 0;
        for i := 0 to 15 do
        begin
          if clbDocumentos.Checked[i] then
            Acum := Acum + Valor;

          Valor := Valor * 2;
        end;

        cdCarta.FieldByName('bDocumentos').AsInteger := Acum;

        cdCarta.Post;
        cdCarta.Refresh;
      finally
        Screen.Cursor := LocCursor;
      end;

      //***********************************************************************
      // Crear conjunto documentos
      cdDocumentos.EmptyDataSet;
      cdDocumentos.Open;

      c := 0;
      for i := 0 to 15 do
        if clbDocumentos.Checked[i] then
        begin
          Inc(c);

          cdDocumentos.Append;
          cdDocumentos.FieldByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
          cdDocumentos.FieldByName('Partida').AsInteger := c;
          cdDocumentos.FieldByName('Titulo').AsString := clbDocumentos.Items[i];
          cdDocumentos.Post;
        end;

      Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\CartaCompromiso.fr3';
      frxCartaCompromiso.LoadFromFile(Nombre);
      frxCartaCompromiso.ShowReport(True);
      //***********************************************************************

      CanClose := True;
    except
      on e:InteligentException do
      begin
        if Assigned(Obj) and (Obj.CanFocus) then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        CanClose := True;
        cdCarta.Cancel;

        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
    cdCarta.Cancel;
end;

procedure TFrmCartaCompromiso.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  cdDocumentos.CreateDataSet;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CrearConjunto(cdCarta, 'rhu_cartacompromiso', ccUpdate);
      CargarDatosFiltrados(cdCarta, 'IdPersonal', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger]);
      cdCarta.Open;

      if cdCarta.RecordCount = 0 then
      begin
        // Crear el registro de la nuevacarta
        cdCarta.Append;
        cdCarta.FieldByName('IdCartaCompromiso').AsInteger := 0;
        cdCarta.FieldByName('FechaEmision').AsDateTime := Now;
        cdCarta.FieldByName('FechaLimite').AsDateTime := Now;
        cdCarta.FieldByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
        cdCarta.FieldByName('IdOrganizacion').AsInteger := dsPersonal.DataSet.FieldByName('IdOrganizacion').AsInteger;
        cdCarta.FieldByName('IdDepartamento').AsInteger := dsPersonal.DataSet.FieldByName('IdDepartamento').AsInteger;
        cdCarta.FieldByName('IdCargo').AsInteger := dsPersonal.DataSet.FieldByName('IdCargo').AsInteger;
        cdCarta.FieldByName('Comentarios').AsString := '';
        cdCarta.FieldByName('bDocumentos').AsInteger := dsPersonal.DataSet.FieldByName('bDocumentos').AsInteger;
        cdCarta.Post;
        CargarDatosFiltrados(cdCarta, 'IdCartaCompromiso', [IdCarta]);
        cdCarta.Refresh;
      end;

      cdCarta.Edit;

      InterpretarNumero(cdCarta.FieldByName('bDocumentos').AsInteger);
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

procedure TFrmCartaCompromiso.InterpretarNumero(Valor: Integer);
var
  i: Integer;
  Res: String;
begin
//(0,1,14,5,2,4,6,3,7,13,12,9,10,11,8,15)
  clbDocumentos.Checked[Orden[00]] := cdCarta.FieldByName('DoctoActaNacimiento').AsInteger <> 0;
  clbDocumentos.Checked[Orden[01]] := cdCarta.FieldByName('DoctoCURP').AsInteger <> 0;
  clbDocumentos.Checked[Orden[02]] := cdCarta.FieldByName('DoctoRFC').AsInteger <> 0;
  clbDocumentos.Checked[Orden[04]] := cdCarta.FieldByName('DoctoNoPenales').AsInteger <> 0;
  clbDocumentos.Checked[Orden[03]] := cdCarta.FieldByName('DoctoExamenMedico').AsInteger <> 0;
  clbDocumentos.Checked[Orden[05]] := cdCarta.FieldByName('DoctoIMSS').AsInteger <> 0;
  clbDocumentos.Checked[Orden[06]] := cdCarta.FieldByName('DoctoCompDom').AsInteger <> 0;
  clbDocumentos.Checked[Orden[07]] := cdCarta.FieldByName('DoctoIFE').AsInteger <> 0;
  clbDocumentos.Checked[Orden[08]] := cdCarta.FieldByName('DoctoCurriculum').AsInteger <> 0;
  clbDocumentos.Checked[Orden[09]] := cdCarta.FieldByName('DoctoFotos').AsInteger <> 0;
  clbDocumentos.Checked[Orden[10]] := cdCarta.FieldByName('DoctoContrato').AsInteger <> 0;
  clbDocumentos.Checked[Orden[11]] := cdCarta.FieldByName('DoctoEstudios').AsInteger <> 0;
  clbDocumentos.Checked[Orden[12]] := cdCarta.FieldByName('DoctoInfonavit').AsInteger <> 0;
  clbDocumentos.Checked[Orden[13]] := cdCarta.FieldByName('DoctoLicencia').AsInteger <> 0;
  clbDocumentos.Checked[Orden[14]] := cdCarta.FieldByName('DoctoDescripPto').AsInteger <> 0;
  clbDocumentos.Checked[Orden[15]] := cdCarta.FieldByName('DoctoCartaConfi').AsInteger <> 0;
{  Res := '';
  for i := 0 to 15 do
    clbDocumentos.Checked[Orden[i]] := ((Valor shr i) and 1) = 0;}
end;

end.
