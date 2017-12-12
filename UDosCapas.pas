unit UDosCapas;

interface

Uses
  ZDataSet, DBClient, Variants, SysUtils, Dialogs, Classes, DateUtils,
  StrUtils, FrxClass, UInteliDialog, Forms, DB, frxPreview, Controls,
  WIndows;

Type
  TTipoSentencia = (ccCatalog, ccSelect, ccUpdate, ccLocate);

  TParametro = Class
    Pos: Integer;
    Value: Variant;
  End;

  TDescripcion = Class
    Tabla: String;
    Descripcion: String;
  End;

  // Inicia declaración para manejo de errores
  TErrores = Class
    Codigo: Integer;
    Usuario: String;
    Tecnico: String;
    MsgTipo: TMsgDlgType;
    Informar: Boolean;
  end;

  ClassException = class(Exception)
  private
    FErrorCode: Integer;
    FStatusCode: String;
    FTitle: String;
    FMsgType: TMsgDlgType;
  public
    constructor Create(const Msg: string);
    constructor CreateWithCode(const ErrorCode: Integer; const Msg: string);
    constructor CreateByCode(const ErrorCode: Integer; Valores: Array of Variant);
    constructor CreateWithStatus(const StatusCode: String; const Msg: string);
    constructor CreateClone(const E:ClassException);

    property ErrorCode: Integer read FErrorCode;
    property StatusCode: string read FStatuscode;
    property Title: String read FTitle;
    property MsgType: TMsgDlgType read FMsgType;
  end;

  InteligentException = Class(ClassException);
  InteligentWarning = Class(ClassException);
  InteligentConnection = Class(ClassException);
  // Termina declaración para manejo de errores

var
  ListaErrores: TStringList;
  ListaTablas: TStringList;
  ForzarLocales: Boolean;

function CrearConjunto(DataSet: TZQuery; Tabla: String; Tipo: TTipoSentencia): boolean; overload;
function CrearConjunto(DataSet: TZReadOnlyQuery; Tabla: String; Tipo: TTipoSentencia): boolean; overload;
function CargarDatosFiltrados(DataSet: TZQuery; Campos: String; Valores: Array of Variant; Reusar: Boolean = False): Boolean; overload;
function CargarDatosFiltrados(DataSet: TZReadOnlyQuery; Campos: String; Valores: Array of Variant; Reusar: Boolean = False): Boolean; overload;
function DateTimetoStrSql(Fecha: TDateTime): String;
function DatetoStrSql(Fecha: TDate): String; overload;
function DatetoStrSql(Fecha: TDate; Separador: String): String; overload;

function ActualizaReporte(Ruta: String; NombreReporte: String): Boolean;
function ReportCompare(NombreReporte: String): boolean;
function CompararReporte(Ruta: String; NombreReporte: String): Boolean;
procedure ImprimeReporte(NombreReporte: String; Reporte: TFrxReport); overload;
procedure ImprimeReporte(NombreReporte: String; Reporte: TfrxReport; Preview: TfrxPreview); overload;
procedure ImprimeReporte(NombreReporte: String; Reporte: TfrxReport; var pRuta: String); overload;
procedure ImprimeReporte(NombreReporte: String; Reporte: TfrxReport; var pRuta: String; Preview: TfrxPreview); overload;

function GetWindowsTemp: TFileName;

implementation

Uses
  frm_Connection;

var
  QuerySentencias: TClientDataSet;
  QueryRead: TZReadOnlyQuery;

{$REGION 'CLASSEXCEPTION'}
constructor ClassException.CreateClone(const E: ClassException);
begin
  inherited Create(E.Message);
  FErrorCode:=E.ErrorCode;
  FStatusCode:=E.Statuscode;
end;

constructor ClassException.Create(const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := -1;
end;

constructor ClassException.CreateWithCode(const ErrorCode: Integer;
  const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := ErrorCode;
end;

constructor ClassException.CreateByCode(const ErrorCode: Integer; Valores: Array of Variant);
var
  Cadena: String;
  xPos, Difer: Integer;
  Variable,
  Resultado: String;
  Inicio: Integer;
  Numero: Byte;
  Parametros: TStringList;
  Parametro: TParametro;
  Tabla: Boolean;
begin
  // Acceder a la lista de errores para encontrar su descripción
  xPos := ListaErrores.IndexOf(IntToStr(ErrorCode));
  if xPos >= 0 then
  begin
    FTitle := TErrores(ListaErrores.Objects[xPos]).Usuario;
    FMsgType := TErrores(ListaErrores.Objects[xPos]).MsgTipo;
    Cadena := TErrores(ListaErrores.Objects[xPos]).Tecnico;

    Parametros := TStringList.Create;
    Parametros.Clear;

    // Analizar la cadena obtenida en busqueda de parámetros
    Inicio := 0;
    for xPos := 1 to Length(Cadena) do
    begin
      if Cadena[xPos] = '<' then
      begin
        Inicio := xPos;
        Variable := '';
      end;

      if Inicio > 0 then
        Variable := Variable + Cadena[xPos];

      if (Cadena[xPos] = '>') and (Inicio > 0) then
      begin
        Variable := Copy(Variable,2,Length(Variable));
        if (Variable[1] = '%') and (Length(Variable) > 2) then
        begin
          Variable := Copy(Variable, 2, Length(Variable) - 2);

          // Dar de alta el parametro
          Parametro := TParametro.Create;
          Parametro.Pos := xPos - (Length(Variable) + 3);
          Parametro.Value := Null;

          // Verificar si existe un valor para este parametro
          Try
            Numero := StrToInt(Variable);
          Except
            Numero := 0;
          End;

          if (Numero > 0) and (Numero <= High(Valores) + 1) then
            if Copy(Valores[Numero - 1], 1, 1) = '!' then
              // Tratar de obtener la descripción de la tabla indicada
              if ListaTablas.IndexOf(Copy(Valores[Numero - 1], 2, Length(Valores[Numero - 1]))) >= 0 then
                Parametro.Value := TDescripcion(ListaTablas.Objects[ListaTablas.IndexOf(Copy(Valores[Numero - 1], 2, Length(Valores[Numero - 1])))]).Descripcion
              else
                Parametro.Value := '(' + Valores[Numero - 1] + ')'
            else
              Parametro.Value := Valores[Numero - 1];

          Parametros.AddObject(Variable, Parametro);  // Agregar el parametro a la lista

          // Inicializar las variables de control
          Inicio := 0;
          Variable := '';
        end;
      end;
    end;

    // Substituir las variables por sus valores correspondientes
    Inicio := 1;
    Numero := 0;
    Difer := 0;
    for xPos := 0 to Parametros.Count - 1 do
    begin
      if TParametro(Parametros.Objects[xPos]).Value <> Null then
      begin
        Resultado := TParametro(Parametros.Objects[xPos]).Value;
        Variable := Copy(Cadena, Inicio, TParametro(Parametros.Objects[xPos]).Pos + Difer);
        Variable := Variable + Resultado;
        Variable := Variable + Copy(Cadena, TParametro(Parametros.Objects[xPos]).Pos + Difer + 4 + Length(Parametros[xPos]), Length(Cadena));

        Difer := Difer + (Length(TParametro(Parametros.Objects[xPos]).Value) - (3 + Length(Parametros[xPos])));

        Cadena := Variable;
      end;
    end;
  end
  else
    Cadena := 'Código de error desconocido';

  inherited Create(Cadena);
  FErrorCode := ErrorCode;
end;

constructor ClassException.CreateWithStatus(const StatusCode, Msg: string);
begin
  inherited Create(Msg);
  FStatusCode := StatusCode;
end;
{$ENDREGION}

procedure CrearDatosSentencias;
var
  i: Integer;
begin
  QueryRead := TZReadOnlyQuery.Create(Nil);
  QuerySentencias := TClientDataSet.Create(Nil);

  QueryRead.Connection := Connection.ConnTrx;
  QueryRead.SQL.Text := 'select sTablaPrimaria, sTipo, lStatus, sIdentificador, sSentencia from nuc_sentencias where sTablaPrimaria = :Tabla and sTipo = :Tipo';
  QueryRead.ParamByName('Tabla').AsString := '-9';
  QueryRead.ParamByName('Tipo').AsString := '-9';

  if Connection.ConnTrx.Connected and Not Connection.ConnTrx.Ping then
    Connection.ConnTrx.Reconnect;

  // Leer la estructura de la tabla de sentencias
  try
    if QueryRead.Active then
      QueryRead.Refresh
    else
      QueryRead.Open;
    for i := 0 to QueryRead.FieldDefs.Count -1 do
      QuerySentencias.FieldDefs.Add(QueryRead.FieldDefs.Items[i].Name, QueryRead.FieldDefs.Items[i].DataType, QueryRead.FieldDefs.Items[i].Size, QueryRead.FieldDefs.Items[i].Required);
    QuerySentencias.CreateDataSet;
    QuerySentencias.Open;
  finally
    QueryRead.Close;
  end;
end;

function GetSentence(Tabla: string; Tipo: string): String;
var
  Resultado: String;
  i: Integer;
begin
  Resultado := '';

  // Localizar la sentencia en base a los parametros indicados
  Try
    Try
      if (Not Assigned(QuerySentencias)) or (Not QuerySentencias.Active) then
        CrearDatosSentencias;

      try
        QuerySentencias.Filtered := False;
        QuerySentencias.Filter := 'sTablaPrimaria = ' + QuotedStr(Tabla);
        QuerySentencias.Filtered := True;

        // Verificar si la sentencia ya se ha leido
        if Not QuerySentencias.Locate('sTipo', Tipo, []) then
        begin
          // Si no encuentra la sentencia se deberá agregar a la memoria
          QueryRead.Close;
          QueryRead.Params.ParamByName('Tabla').AsString := Tabla;
          QueryRead.Params.ParamByName('Tipo').AsString := Tipo;
          QueryRead.Open;

          // Verificar si la sentencia existe realmente
          if QueryRead.RecordCount = 0 then
          begin
            QuerySentencias.Filtered := False;

            // Si la sentencia no existe entonces se deberá crear una sentencia por default
            QuerySentencias.Append;
            QuerySentencias.FieldByName('sTablaPrimaria').AsString := Tabla;
            QuerySentencias.FieldByName('sTipo').AsString := Tipo;
            QuerySentencias.FieldByName('lStatus').AsString := 'Activo';
            QuerySentencias.FieldByName('sIdentificador').AsString := '';
            QuerySentencias.FieldByName('sSentencia').AsString := 'SELECT * FROM ' + Tabla;
            QuerySentencias.Post;
          end
          else
          begin
            // Si la sentencia existe se deberá agregar a la tabla
            QuerySentencias.Append;
            for i := 0 to QuerySentencias.FieldDefs.Count -1 do
              QuerySentencias.FieldByName(QuerySentencias.FieldDefs.Items[i].Name).AsString := QueryRead.FieldByName(QuerySentencias.FieldDefs.Items[i].Name).AsString;
            QuerySentencias.Post;
          end;
        end;

        Resultado := QuerySentencias.FieldByName('sSentencia').AsString;
      finally
        QuerySentencias.Filtered := False;
      end;
    Except
      Resultado := 'SELECT * FROM ' + Tabla
    End;
  Finally
    Result := Resultado;
  End;
end;

function CrearConjunto(DataSet: TZQuery; Tabla: String; Tipo: TTipoSentencia): Boolean;
var
  MaxNumero, i: Integer;
  LocTipo: String;
begin
  Result := False;

  // Crear el Query asignandolo a la conexión local del servidor
  Try
    if Not Assigned(DataSet.Connection) then
      DataSet.Connection := Connection.ConnTrx;

    if DataSet.Connection.Connected and Not DataSet.Connection.Ping then
      DataSet.Connection.Reconnect;

    case Tipo of
      ccCatalog: LocTipo := 'CATALOGO';
      ccSelect: LocTipo := 'SELECT';
      ccUpdate: LocTipo := 'UPDATE';
      ccLocate: LocTipo := 'LOCATE';
    end;

    DataSet.SQL.Text := GetSentence(Tabla, LocTipo);

    // Verificar si la sentencia es validada con el -1
    if Pos('-1', DataSet.SQL.Text) > 0 then
    begin
      // Poner todos los parametros a -1 para acceder a todo el catálogo por default
      for i := 0 to DataSet.Params.Count - 1 do
        DataSet.Params.Items[i].Value := '-1';
    end;

    {if Tipo = stUpdate then
    begin
      DataSet.BeforePost := GlobalBeforePost;
      DataSet.AfterPost := GlobalAfterPost;
      DataSet.BeforeDelete := GlobalBeforeDelete;
      DataSet.AfterDelete := GlobalAfterDeleteCancelScroll;
      DataSet.OnPostError := GlobalPostError;
      // LocQuery.AfterScroll  := GlobalAfterInsert;
    end;
    DataSet.BeforeOpen := GlobalBeforeOpen;
    DataSet.AfterOpen := GlobalAfterOpen;}

    Result := True; // Solo si llega a este punto del proceso es que ambos objetos fueron creado satisfactoriamente
  Except
    raise; // Siendo este un error de programación, es necesario informar de ello
  End;
end;

function CrearConjunto(DataSet: TZReadOnlyQuery; Tabla: String; Tipo: TTipoSentencia): Boolean;
begin
  Result := CrearConjunto(TZQuery(DataSet), Tabla, Tipo);
end;

function CargarDatosFiltrados(DataSet: TZQuery; Campos: String; Valores: Array of Variant; Reusar: Boolean = False): Boolean; overload;
var
  Cadena: String;
  pValor: String;
  i, p: Integer;
  Lista: TStringList;
begin
  Result := True;

  Lista := TStringList.Create;
  Lista.CommaText := UpperCase(Campos);

  Try
    if Lista.Count <> high(Valores) +1 then
      raise Exception.Create('*');

    for i := 0 to DataSet.Params.Count -1 do
    begin
      p := Lista.IndexOf(UpperCase(DataSet.Params.Items[i].Name));
      if p >= 0 then
        DataSet.ParamByName(DataSet.Params.Items[i].Name).Text := Valores[p]
      else
        DataSet.ParamByName(DataSet.Params.Items[i].Name).Text := '-1';
    end;
  Except
    Result := False;
  End;
end;

function CargarDatosFiltrados(DataSet: TZReadOnlyQuery; Campos: String; Valores: Array of Variant; Reusar: Boolean = False): Boolean; overload;
begin
  Result := CargarDatosFiltrados(TZQuery(DataSet), Campos, Valores, Reusar);
end;

function DateTimetoStrSql(Fecha: tDateTime):String;
var
  dia, mes, año, hora, min, seg, Suf: String;
  wAnyo, wMes, wDia: Word;
  h, m, s, ms: Word;
begin
   Result := '';
  Try
    DecodeDateTime(Fecha, wAnyo, wMes, wDia, h, m, s, ms);

    if h >= 12 then
      Suf := ' PM'
    else
      Suf := ' AM';

    if h > 12 then
      h := h -12;

    if h = 0 then
      h := 12;

    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);
    Hora := vartostr(h);
    Min := vartostr(m);
    Seg := vartostr(s);

    Mes := RightStr('0' + Mes, 2);
    Dia := RightStr('0' + Dia, 2);
    Hora := RightStr('0' + Hora, 2);
    Min := RightStr('0' + Min, 2);
    Seg := RightStr('0' + Seg, 2);

    Result := mes + '/' + dia + '/' + año + ' ' + Hora + ':' + Min + ':' + Seg + Suf;
  Except
    Result := '';
  End;
end;

function DatetoStrSql(fecha: tdate):String;
var
  dia,mes,año: String;
  wAnyo, wMes, wDia: Word;
begin
   Result := '';
  Try
    DecodeDate( Fecha, wAnyo, wMes, wDia );
    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);

    if Length(dia) < 2 then
      dia := '0' + dia;
    if Length(mes) < 2 then
      mes := '0' + mes;

    Result := año+'/'+mes+'/'+dia;
  Except
    Result := '';
  End;
end;

function DatetoStrSql(fecha: tdate;separador:string):String;
var
  dia,mes,año: String;
  wAnyo, wMes, wDia: Word;
begin
   Result := '';
  Try
    DecodeDate( Fecha, wAnyo, wMes, wDia );
    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);

    if Length(dia) < 2 then
      dia := '0' + dia;
    if Length(mes) < 2 then
      mes := '0' + mes;

    Result := año+separador+mes+separador+dia;
  Except
    Result := '';
  End;
end;

{$REGION 'ImprimeReporte'}
procedure ImprimeReporte(NombreReporte: String; Reporte: TFrxReport);
var
  pRuta: String;
begin
  pRuta := '*';
  ImprimeReporte(NombreReporte, Reporte, pRuta, Nil);
end;

procedure ImprimeReporte(NombreReporte: String; Reporte: TFrxReport; Preview: TfrxPreview);
var
  pRuta: String;
begin
  pRuta := '*';
  ImprimeReporte(NombreReporte, Reporte, pRuta, Preview);
end;

procedure ImprimeReporte(NombreReporte: String; Reporte: TfrxReport; var pRuta: String);
begin
  ImprimeReporte(NombreReporte, Reporte, pRuta, Nil);
end;

procedure ImprimeReporte(NombreReporte: String; Reporte: TfrxReport; var pRuta: String; Preview: TfrxPreview);
var
  Ruta, Cadena: String;
  Archivo: TSearchRec;
  Resultado: Integer;
  Termina: Boolean;
begin
  // Localizar la carpeta de archivos temporales del sistema
  Repeat
    Termina := True;

    Try
      if ForzarLocales then
      begin
        ForzarLocales := False;
        if Connection.roqConfiguracion.Locate('Parametro', 'DirReporte', []) then
          Ruta := ExtractFilePath(Application.ExeName) + Connection.roqConfiguracion.FieldByName('Valor1').asString
        else
          Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
        if Not FileExists(Ruta + NombreReporte) then
          raise InteligentException.CreateByCode(15, [NombreReporte]);
        Break;
      end;

      Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\';
      if Not DirectoryExists(Ruta) then
        ForceDirectories(Ruta);

      // Verificar si el archivo ya existe
      if FindFirst(Ruta + NombreReporte, faAnyFile, Archivo) = 0 then
      begin
        Cadena := Archivo.Name + ':' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp));

        // Verificar si el archivo está actualizado
        if Not CompararReporte(Ruta, Cadena) then
          // Actualizar el reporte con el reporte que se encuentra en la base de datos
          Try
            if not ActualizaReporte(Ruta, NombreReporte) then
            begin
              // Creo que aquí es donde se debe borrar el reporte de TEMP
            end;
          Except
            raise InteligentException.CreateByCode(15, [NombreReporte]);
          End;
      end
      else
      begin
        // Actualizar el reporte con el reporte que se encuentra en la base de datos
        Try
          if not ActualizaReporte(Ruta, NombreReporte) then
          begin
            // Por el momento se deberá obtener el reporte de la carpeta de reportes, paulatinamente esto dejará de funcionar cuando los reportes se encuentren en la base de datos
            if Connection.roqConfiguracion.Locate('Parametro', 'DirReporte', []) then
              Ruta := ExtractFilePath(Application.ExeName) + Connection.roqConfiguracion.FieldByName('Valor1').asString
            else
              Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
            if Not FileExists(Ruta + NombreReporte) then
              raise InteligentException.CreateByCode(15, [NombreReporte]);
          end;
        Except
          raise InteligentException.CreateByCode(15, [NombreReporte]);
        End;
      end;
    Except
      on e:InteligentException do
      begin
        Ruta := '';

        // Si se trata de un preview en pantalla no se deberá mostrar la pregunta
        if Not Assigned(Preview) then
          Termina := InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbYes, mbNo], 0) = mrNo;
      end;

      on e:Exception do
      begin
        Ruta := '';

        // Si se trata de un preview en pantalla no se deberá mostrar el mensaje
        if Not Assigned(Preview) then
          InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    End;
  Until Termina;

  // Verificar si pRuta tiene un valor '', si es así se deberá evitar la generación del error y devolver solamente el Nombre
  if pRuta = '' then
    pRuta := Ruta + NombreReporte
  else
  begin
    if Ruta <> '' then
    begin
      Reporte.PreviewOptions.MDIChild := False;
      Reporte.PreviewOptions.Modal := True;
      Reporte.PreviewOptions.ShowCaptions := False;
      Reporte.Previewoptions.ZoomMode := zmPageWidth;
      Reporte.LoadFromFile(Ruta + NombreReporte);
      Reporte.ShowReport(False);
    end;
  end;
end;

function ReportCompare(NombreReporte: String): boolean;
var
  LocQuery: TZReadOnlyQuery;
  Nombre: String;
  Vigencia: LongInt;
begin
  Try
    // Separar el nombre del reporte
    Nombre := copy(NombreReporte, 1, pos(':', NombreReporte) - 1);
    Vigencia := StrToInt(copy(NombreReporte, pos(':', NombreReporte) + 1, 100));

    Try
      LocQuery := TZReadOnlyQuery.Create(Nil);
      LocQuery.Connection := Connection.zConnection;
      LocQuery.SQL.Text := 'Select ArchivoOriginal, Vigencia from nuc_reporte where ArchivoOriginal = :Nombre and Activo = "Si" order by Vigencia DESC limit 1';
      LocQuery.ParamByName('Nombre').AsString := Nombre;
      LocQuery.Open;
      if LocQuery.RecordCount = 0 then
        raise Exception.Create('');

      Result := Vigencia = DateTimeToFileDate(LocQuery.FieldByName('Vigencia').AsDateTime);
    Finally
      if Assigned(LocQuery) then
      begin
        if LocQuery.Active then
          LocQuery.Close;

        LocQuery.Free;
      end;
    End;
  Except
    Result := False;
  End;
end;

function ActualizaReporte(Ruta: String; NombreReporte: String): Boolean;
var
  FileStream: TFileStream;
  BlobStream: TStream;
  Archivo: TSearchRec;
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Try
      if Not CargarDatosFiltrados(Connection.Reporte, 'ArchivoOriginal', [NombreReporte]) then
        raise Exception.Create('');

      Connection.Reporte.Open;
      if Connection.Reporte.RecordCount = 0 then
        raise Exception.Create('');

      // Actualizar el reporte en disco
      Try
        FileStream := TFileStream.Create(Ruta + NombreReporte, fmCreate);
        BlobStream := Connection.Reporte.CreateBlobStream(Connection.Reporte.FieldByName('Reporte'), bmRead);
        FileStream.CopyFrom(BlobStream, BlobStream.Size - BlobStream.Position);
      Finally
        BlobStream.Free;
        FileStream.Free;
      End;

      // Si el archivo ha sido grabado correctamente se deberá actualizar su fecha y hora de actualización conforme a los datos en el servidor
      if Not FileExists(Ruta + NombreReporte) then
        raise Exception.Create('');

      nFile := FileOpen(Ruta + NombreReporte, fmOpenReadWrite or fmShareDenyWrite);
      Fecha := DateTimeToFileDate(Connection.Reporte.FieldByName('Vigencia').AsDateTime);
      FileSetDate(nFile, Fecha);
      FileClose(nFile);
    Finally
      if Assigned(Connection.Reporte) and Connection.Reporte.Active then
        Connection.Reporte.Close;
    End;

    Result := True;
  Except
    Result := False;
  End;
end;

function CompararReporte(Ruta: String; NombreReporte: String): Boolean;
var
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Result := ReportCompare(NombreReporte);
  Except
    Result := False;
  End;
end;
{$ENDREGION}

function GetWindowsTemp: TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  SetString(Result, WinDir, GetTempPath(MAX_PATH, WinDir));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

end.
