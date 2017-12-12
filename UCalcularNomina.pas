unit UCalcularNomina;

interface

Uses
  ZDataSet, UDosCapas, SysUtils;

type
  TIMSSDatos = class
    CodigoFactor: String;
    Nombre: String;
    Patron: Extended;
    Empleado: Extended;
  end;

  TIMSS = class
    Datos: Array[0..7] Of TIMSSDatos;
    constructor Create;
  end;

var
  cdISPT, cdSubsidio, cdIMSS, cdUMA: TZReadOnlyQuery;

procedure CalcularISPT(Inicio, Termino: TDate; Gravable: Real;
  var ISPT: Real; var Subsidio: Real);
procedure CalcularIMSS(Inicio, Termino: TDate; SueldoIMSS: Extended;
  var IMSS: TIMSS);

implementation

constructor TIMSS.Create;
begin
  Datos[0] := TIMSSDatos.Create;
  Datos[1] := TIMSSDatos.Create;
  Datos[2] := TIMSSDatos.Create;
  Datos[3] := TIMSSDatos.Create;
  Datos[4] := TIMSSDatos.Create;
  Datos[5] := TIMSSDatos.Create;
  Datos[6] := TIMSSDatos.Create;
  Datos[7] := TIMSSDatos.Create;
end;

procedure CalcularISPT(Inicio, Termino: TDate; Gravable: Real;
  var ISPT: Real; var Subsidio: Real);
var
  DifLimInf,
  ImpMarginal: Extended;
begin
  if Gravable > 0 then
  begin
    // Verificar si ya se abrieron las tablas de Impuesto
    if Not Assigned(cdISPT) then
      cdISPT := TZReadOnlyQuery.Create(Nil);

    if Not Assigned(cdSubsidio) then
      cdSubsidio := TZReadOnlyQuery.Create(Nil);

    if cdISPT.SQL.Text = '' then
    begin
      CrearConjunto(cdISPT, 'nom_tablaispt', ccCatalog);
      CargarDatosFiltrados(cdISPT, 'FechaAplicacion,IdTipoTablaISPT', [DateToStrSQL(Termino), 5]);

      cdISPT.Open;
    end;

    if cdSubsidio.SQL.Text = '' then
    begin
      CrearConjunto(cdSubsidio, 'nom_subsidioispt', ccCatalog);
      CargarDatosFiltrados(cdSubsidio, 'FechaAplicacion,IdTipoTablaISPT', [DateToStrSQL(Termino), 5]);

      cdSubsidio.Open;
    end;

    // Ubicar el registro correspondiente
    cdISPT.First;
    while (not cdISPT.Eof) and (Gravable > cdISPT.FieldByName('LimiteSuperior').AsFloat) do
      cdISPT.Next;

    // Ubicar el subsidio
    cdSubsidio.First;
    while (not cdSubsidio.Eof) and (Gravable > cdSubsidio.FieldByName('LimiteSuperior').AsFloat) do
      cdSubsidio.Next;

    DifLimInf := Gravable - cdISPT.FieldByName('LimiteInferior').AsFloat;
    ImpMarginal := DifLimInf * (cdISPT.FieldByName('PSELI').AsFloat / 100);
    ISPT := Round((ImpMarginal + cdISPT.FieldByName('CuotaFija').AsFloat) * 100) / 100;
    Subsidio := -1 * Round((cdSubsidio.FieldByName('Subsidio').AsFloat) * 100) / 100;
  end
  else
  begin
    ISPT := 0.00;
    Subsidio := 0.00;
  end;
end;

procedure CalcularIMSS(Inicio, Termino: TDate; SueldoIMSS: Extended;
  var IMSS: TIMSS);
var
  Aplicar, Exento, Gravado: Extended;
begin
  if Not Assigned(cdIMSS) then
    cdIMSS := TZReadOnlyQuery.Create(Nil);

  if Not Assigned(cdUMA) then
    cdUMA := TZReadOnlyQuery.Create(Nil);

  if cdIMSS.SQL.Text = '' then
  begin
    CrearConjunto(cdIMSS, 'nom_tablaimss', ccCatalog);
    CargarDatosFiltrados(cdIMSS, 'FechaAplicacion', [DateToStrSQL(Termino)]);

    cdIMSS.Open;
  end;

  if cdUMA.SQL.Text = '' then
  begin
    CrearConjunto(cdUMA, 'rhu_salario', ccCatalog);
    CargarDatosFiltrados(cdUMA, 'Aplicacion,TipoSalario', [DateToStrSQL(Termino), 'UMA']);

    cdUMA.Open;
  end;

  IMSS := TIMSS.Create;
  cdIMSS.First;
  while Not cdIMSS.Eof do
  begin
    IMSS.Datos[cdIMSS.RecNo -1].CodigoFactor := cdIMSS.FieldByName('CodigoFactor').AsString;
    IMSS.Datos[cdIMSS.RecNo -1].Nombre := cdIMSS.FieldByName('Nombre').AsString;

    // Verificar el salario que se va a aplicar
    if cdIMSS.FieldByName('AplicarSobre').AsString = 'SBC' then
      Aplicar := SueldoIMSS
    else
      Aplicar := StrToFloat(cdUMA.FieldByName('Salario').AsString);

    // Verificar si tiene parte exenta
    if cdIMSS.FieldByName('ExentoSobre').AsString = 'NINGUNO' then
      Exento := 0;

    if cdIMSS.FieldByName('ExentoSobre').AsString = 'SMGVDF' then
      Exento := StrToFloat(cdUMA.FieldByName('Salario').AsString) * cdIMSS.FieldByName('CuantoExento').AsInteger;

    if cdIMSS.FieldByName('ExentoSobre').AsString = 'SMGVZ' then
      Exento := StrToFloat(cdUMA.FieldByName('Salario').AsString) * cdIMSS.FieldByName('CuantoExento').AsInteger;

    if Aplicar > Exento then
      Gravado := Aplicar - Exento
    else
      Gravado := 0;

    IMSS.Datos[cdIMSS.RecNo -1].Patron := Round((Gravado * StrToFloat(cdIMSS.FieldByName('Patron').AsString))) / 100;
    IMSS.Datos[cdIMSS.RecNo -1].Empleado := Round((Gravado * StrToFloat(cdIMSS.FieldByName('Empleado').AsString))) / 100;

    cdIMSS.Next;
  end;
end;

end.
