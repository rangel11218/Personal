unit UTFrmAbrirPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_Connection, DB;

type
  TFrmAbrirPersonal = class(TForm)
    dsBuscarPersonal: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbrirPersonal: TFrmAbrirPersonal;

implementation

{$R *.dfm}

Uses
  UTFrmBuscarPersonal, UTFrmMostrarPersonal, Borrar;

procedure TFrmAbrirPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmAbrirPersonal.FormShow(Sender: TObject);
var
  i: Integer;
begin
  try
    SetLength(ArregloIdPersonal, 0);

    Application.CreateForm(TFrmBuscarPersonal, FrmBuscarPersonal);
    FrmBuscarPersonal.dsMenu.DataSet := dsBuscarPersonal.DataSet;
    if FrmBuscarPersonal.ShowModal = mrCancel then
      raise Exception.Create('***');

    for i := 0 to high(ArregloIdPersonal) do
    begin
      Application.CreateForm(TFrmMostrarPersonal, FrmMostrarPersonal);
      FrmMostrarPersonal.IdPersonal := StrToInt(ArregloIdPersonal[i]);
      FrmMostrarPersonal.dsBuscarPersonal.DataSet := dsBuscarPersonal.DataSet;
      FrmMostrarPersonal.Show;
    end;

    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  except
    on e:Exception do
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  end;
end;

end.
