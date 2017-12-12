unit UTFrmCartaConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, StdCtrls, Mask, AdvGlowButton,
  JvLabel, ExtCtrls, ShellAPI, Frm_Connection, UDosCapas, StrUtils, ComObj,
  DateUtils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmCartaConf = class(TForm)
    dsPersonal: TDataSource;
    cdCarta: TZReadOnlyQuery;
    sdCarta: TSaveDialog;
    pnlEdit: TPanel;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    btnCancelEdit: TAdvGlowButton;
    btnOkEdit: TAdvGlowButton;
    FechaCarta: TcxDateEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormaEditCloseQuery(Sender: TObject;
    var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCartaConf: TFrmCartaConf;

implementation

uses Personal, UInteliDialog;

const
  bFecha = '[Fecha_Reemplazar]';
  bNombre = '[Nombre_Reemplazar]';

{$R *.dfm}

procedure TFrmCartaConf.FormaEditCloseQuery(Sender: TObject;
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

procedure TFrmCartaConf.FormActivate(Sender: TObject);
begin
  FrmMain.bmOpcionesVacaciones.Visible := True;
end;

procedure TFrmCartaConf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCartaConf.FormDeactivate(Sender: TObject);
begin
  FrmMain.bmOpcionesVacaciones.Visible := False;
end;

procedure TFrmCartaConf.FormShow(Sender: TObject);
const
  NomMes: Array[1..12] of string = ('enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre');

var
  Word: Variant;
  Documento: Variant;
  RutaTemp,
  RutaSave: TFileName;
  LocCursor: TCursor;
  Vuelta: Integer;
  Info: TShellExecuteInfo;
  FormaEdit: TForm;
  Anio,
  CadenaFecha: String;

function GetWindowsTemp: TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  SetString(Result, WinDir, GetTempPath(MAX_PATH, WinDir));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

begin
  //cdCarta := TZReadOnlyQuery.Create(Self);
  CrearConjunto(cdCarta, 'rhu_cartamembretada', ccSelect);

  sdCarta := TSaveDialog.Create(Self);

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      CargarDatosFiltrados(cdCarta, 'IdOrganizacion', [dsPersonal.DataSet.FieldByName('IdOrganizacion').AsInteger]);
      cdCarta.Open;

      if cdCarta.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No ha sido posible localizar el registro de la empresa que contiene el machote de la carta de confidencialidad, informe de esto al administrador del sistema.']);

      if cdCarta.FieldByName('Carta').IsNull then
        raise InteligentException.CreateByCode(24, ['No existe el machote de la carta de confidencialidad, el campo parece estar vacío; informe de lo anterior al administrador del sistema']);

      // Bajar el registro a disco
      Vuelta := 0;
      repeat
        RutaTemp := ReplaceStr(DateToStr(Date), '/', '') + Copy(ReplaceStr(TimeToStr(Time), ':', ''), 1, 6);
        RutaTemp := GetWindowsTemp + 'CTA-CONF-' + dsPersonal.DataSet.FieldByName('IdPersonal').AsString + RutaTemp + '.doc';
        if FileExists(RutaTemp) then
        begin
          Sleep(1000);
          Inc(Vuelta);
        end;
      until (Not FileExists(RutaTemp)) or (Vuelta > 10);

      if Vuelta > 10 then
        raise InteligentException.CreateByCode(24, ['El machote de la carta de confiderncialidad no puede ser bajado a disco, informe de esto al administrador del sistema.' + #10 + #10 + 'Nombre fallido: ' + RutaTemp]);

      // Seleccionar el nombre del archivo en donde se va a registrar la carta
      RutaSave := ReplaceStr(dsPersonal.DataSet.FieldByName('NombreCompleto').AsString, ',', '') + ' - CARTA DE CONFIDENCIALIDAD.doc';

      sdCarta.FileName := RutaSave;
      if Not sdCarta.Execute then
        raise InteligentException.Create('***');
      RutaSave := sdCarta.FileName;

      FormaEdit := TForm.Create(Self);
      try
        FormaEdit.Height := 200;
        FormaEdit.Width := 355;
        FormaEdit.Caption := 'Modificar fecha de carta';
        FormaEdit.Position := poMainFormCenter;
        FormaEdit.OnCloseQuery := FormaEditCloseQuery;

        pnlEdit.Parent := FormaEdit;
        pnlEdit.Align := alClient;
        pnlEdit.Visible := True;

        Anio := Copy(dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsString, 7, 4);
        if dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').IsNull Or (Anio = '0000') Or (StrToInt(Anio) < 2000) then
          FechaCarta.Date := Now()
        else
          FechaCarta.Date := dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsDateTime;

        if FormaEdit.ShowModal = mrOk then
          dsPersonal.DataSet.Refresh
        else
          raise InteligentException.Create('***');
      finally
        pnlEdit.Visible := False;
        pnlEdit.Align := alNone;
        pnlEdit.Parent := Self;

        FormaEdit.Destroy;
      end;

      TBlobField(cdCarta.FieldByName('Carta')).SaveToFile(RutaTemp);

      Word := CreateOleObject('Word.Application');
      Word.Documents.Open(RutaTemp);
      Word.Visible := False;
      Word.DisplayAlerts := False;
      Documento := Word.Documents.Item(1);

      // Cambiar la fecha
      Word.Selection.Move(6, -1);  // Ir al inicio de la hoja
      Word.Selection.Find.Execute(bFecha);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

      while Word.Selection.Find.Found do
      begin
        CadenaFecha := RightStr('0' + IntToStr(DayOfTheMonth(dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsDateTime)), 2);
        CadenaFecha := CadenaFecha + ' de ' + NomMes[MonthOfTheYear(dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsDateTime)];
        CadenaFecha := CadenaFecha + ' de ' + IntToStr(YearOf(dsPersonal.DataSet.FieldByName('FechaCartaConfidencial').AsDateTime));
        Word.Selection.Text := CadenaFecha;
        Word.Selection.Move(6, -1);
        Word.Selection.Find.Execute(bFecha);
      end;

      // Cambiar el nombre
      Word.Selection.Move(6, -1);  // Ir al inicio de la hoja
      Word.Selection.Find.Execute(bNombre);   //Selection.Find.Execute(sss,,,,,,,,,,,,,,)

      while Word.Selection.Find.Found do
      begin
        Word.Selection.Text := dsPersonal.DataSet.FieldByName('NombreCompleto').AsString;
        Word.Selection.Move(6, -1);
        Word.Selection.Find.Execute(bNombre);
      end;

      //Documento.SaveAs2(RutaSave);
      Documento.SaveAs2(RutaSave, 12, False, '', True, '', False, False, False, False, False, , , , , , 15);

      Word.Quit;

      case InteliDialog.ShowModal('La carta de confidencialidad ha sido generada', '¿Qué desea hacer con la carta de confidencialidad en este momento?' + #10 + #10 + 'Pulse <Si> para abrir el archivo, <No> para abrir la ubicación del archivo y <Cancelar> para cerrar esta ventana', mtConfirmation, [mbYes, mbNo, mbCancel], 0)  of
        mrYes: begin
                 FillChar(Info, SizeOf(Info), #0);
                 Info.cbSize := SizeOf(Info);
                 Info.fMask := SEE_MASK_DEFAULT;
                 Info.lpFile := PWideChar(RutaSave);
                 Info.nShow := SW_NORMAL;

                 Win32Check(ShellExecuteEx(@Info));
{                 Word.Visible := True;
                 Word.DisplayAlerts := True;}
               end;
        mrNo: ShellExecute(Application.Handle, 'open', 'explorer.exe', PChar('/select, "' + RutaSave + '"'), nil, SW_NORMAL);
        mrCancel: ;

      end;
    finally
      Screen.Cursor := LocCursor;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  except
    on e:InteligentException do
    begin
      if e.Message <> '***' then
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
