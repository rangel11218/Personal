unit UTFrmRecibosNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, frxDBSet, DB, ExtCtrls;

type
  TFrmRecibosNomina = class(TForm)
    dsPersonal: TDataSource;
    dsDeducciones: TDataSource;
    dsPercepciones: TDataSource;
    frxDBDeducciones: TfrxDBDataset;
    frxDBPersonal: TfrxDBDataset;
    frxDBPercepciones: TfrxDBDataset;
    frxRecibos: TfrxReport;
    frxPreview1: TfrxPreview;
    Timer1: TTimer;
    cdUMA: TfrxDBDataset;
    dsUMA: TDataSource;
    dsReal: TDataSource;
    frxDBReal: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    NombreReporte: String;
  end;

var
  FrmRecibosNomina: TFrmRecibosNomina;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure TFrmRecibosNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRecibosNomina.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrmRecibosNomina.Timer1Timer(Sender: TObject);
var
  Nombre: String;
  LocCursor: TCursor;
begin
  Timer1.Enabled := False;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      Nombre := ExtractFilePath(Application.ExeName) + 'Reportes\' + NombreReporte;
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
