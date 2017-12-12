unit UTFrmListaRaya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, frxDBSet, DB, ExtCtrls;

type
  TFrmListaRaya = class(TForm)
    dsPersonal: TDataSource;
    dsDeducciones: TDataSource;
    dsPercepciones: TDataSource;
    frxDBDeducciones: TfrxDBDataset;
    frxDBPersonal: TfrxDBDataset;
    frxDBPercepciones: TfrxDBDataset;
    frxRecibos: TfrxReport;
    frxPreview1: TfrxPreview;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure frxRecibosGetValue(const VarName: string; var Value: Variant);
  private
    Conse: Integer;
  public
    { Public declarations }
  end;

var
  FrmListaRaya: TFrmListaRaya;

implementation

uses UInteliDialog, frm_connection;

{$R *.dfm}

procedure TFrmListaRaya.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmListaRaya.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmListaRaya.frxRecibosGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Conse' then
  begin
    Inc(Conse);
    Value := Conse;
  end;

  if VarName = 'TITULOEMPRESA' then
    Value := 'SINER, S.A. DE C.V.';
end;

procedure TFrmListaRaya.Timer1Timer(Sender: TObject);
var
  Nombre: String;
  LocCursor: TCursor;
begin
  Timer1.Enabled := False;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      Conse := 0;
      Nombre := ExtractFilePath(Application.ExeName) + '\Reportes\ListaRaya.fr3';
      frxRecibos.LoadFromFile(Nombre);
      frxRecibos.ShowReport(True);
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
