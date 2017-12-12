unit UTFrmDocumentosPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UInteliDialog, UDosCapas, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, StdCtrls, DBCtrls, ExtCtrls, AdvGlowButton, Frm_Connection;

type
  TFrmDocumentosPersonal = class(TForm)
    cdDocumentos: TZQuery;
    dsPersonal: TDataSource;
    NombreCompleto: TDBText;
    DoctoActaNacimiento: TCheckBox;
    DoctoCurp: TCheckBox;
    DoctoNoPenales: TCheckBox;
    DoctoExamenMedico: TCheckBox;
    DoctoRFC: TCheckBox;
    DoctoIMSS: TCheckBox;
    DoctoCompDom: TCheckBox;
    DoctoIFE: TCheckBox;
    DoctoCurriculum: TCheckBox;
    DoctoFotos: TCheckBox;
    DoctoContrato: TCheckBox;
    DoctoEstudios: TCheckBox;
    DoctoInfonavit: TCheckBox;
    DoctoLicencia: TCheckBox;
    DoctoDescripPto: TCheckBox;
    Panel1: TPanel;
    btnOk: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    DoctoCartaConfi: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    IdPersonal: Integer;
  end;

var
  FrmDocumentosPersonal: TFrmDocumentosPersonal;

implementation

{$R *.dfm}

procedure TFrmDocumentosPersonal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  i, Suma: Integer;
begin
  if ModalResult = mrOk then
  begin
    // Obtener el valor requerido
    Suma := 0;
    for i := 0 to Self.ComponentCount -1 do
      if Self.Components[i].ClassNameIs('TCheckBox') then
        if TCheckBox(Self.Components[i]).Checked then
          Suma := Suma + TCheckBox(Self.Components[i]).Tag;

    Connection.zCommand.Close;
    Connection.zCommand.SQL.Text := 'UPDATE nuc_personal SET bDocumentos = :Suma WHERE IdPersonal = ' + IntToStr(IdPersonal);
    Connection.zCommand.ParamByName('Suma').AsInteger := Suma;
    Connection.zCommand.ExecSQL;
    //cdDocumentos.FieldByName('bDocumentos').AsInteger := Suma;
    //cdDocumentos.Post;
    //cdDocumentos.Refresh;
  end
  else
    cdDocumentos.Cancel;
end;

procedure TFrmDocumentosPersonal.FormShow(Sender: TObject);
begin
  CrearConjunto(cdDocumentos, 'nuc_personal_documentos', ccSelect);
  CargarDatosFiltrados(cdDocumentos, 'IdPersonal', [IdPersonal]);
  cdDocumentos.Open;

  DoctoActaNacimiento.Checked := cdDocumentos.FieldByName('DoctoActaNacimiento').AsInteger <> 0;
  DoctoCURP.Checked := cdDocumentos.FieldByName('DoctoCURP').AsInteger <> 0;
  DoctoNoPenales.Checked := cdDocumentos.FieldByName('DoctoNoPenales').AsInteger <> 0;
  DoctoExamenMedico.Checked := cdDocumentos.FieldByName('DoctoExamenMedico').AsInteger <> 0;
  DoctoRFC.Checked := cdDocumentos.FieldByName('DoctoRFC').AsInteger <> 0;
  DoctoIMSS.Checked := cdDocumentos.FieldByName('DoctoIMSS').AsInteger <> 0;
  DoctoCompDom.Checked := cdDocumentos.FieldByName('DoctoCompDom').AsInteger <> 0;
  DoctoIFE.Checked := cdDocumentos.FieldByName('DoctoIFE').AsInteger <> 0;
  DoctoCurriculum.Checked := cdDocumentos.FieldByName('DoctoCurriculum').AsInteger <> 0;
  DoctoFotos.Checked := cdDocumentos.FieldByName('DoctoFotos').AsInteger <> 0;
  DoctoContrato.Checked := cdDocumentos.FieldByName('DoctoContrato').AsInteger <> 0;
  DoctoEstudios.Checked := cdDocumentos.FieldByName('DoctoEstudios').AsInteger <> 0;
  DoctoInfonavit.Checked := cdDocumentos.FieldByName('DoctoInfonavit').AsInteger <> 0;
  DoctoLicencia.Checked := cdDocumentos.FieldByName('DoctoLicencia').AsInteger <> 0;
  DoctoDescripPto.Checked := cdDocumentos.FieldByName('DoctoDescripPto').AsInteger <> 0;
  DoctoCartaConfi.Checked := cdDocumentos.FieldByName('DoctoCartaConfi').AsInteger <> 0;

  cdDocumentos.Edit;
end;

end.
