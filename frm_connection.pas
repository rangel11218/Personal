unit frm_connection;

interface

uses
  SysUtils, Classes, DB, ADODB, frxExportCSV, frxExportText, frxExportImage,
  frxExportPDF, frxExportRTF, frxExportHTML, frxClass, frxDBSet, ImgList, Menus,
  Messages, StdActns, ActnList, Controls, Windows, frxRich, frxGZip, Global,
  frxDMPExport, ExtCtrls, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent, Math,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, System.ImageList, ZAbstractConnection, ZConnection,
  ZAbstractDataset, ZDataset, ZAbstractRODataset, cxGraphics, UInteliDialog;

type
  Tconnection = class(TDataModule)
    ds_setup: TDataSource;
    ImageList1: TImageList;
    QryBusca: TZReadOnlyQuery;
    zCommand: TZQuery;
    contrato: TZReadOnlyQuery;
    configuracion: TZReadOnlyQuery;
    QryBusca2: TZReadOnlyQuery;
    zConnection: TZConnection;
    Auxiliar: TZReadOnlyQuery;
    ConnTrx: TZConnection;
    qryBuscaTrx: TZReadOnlyQuery;
    CommandTrx: TZQuery;
    IconosBarra: TcxImageList;
    roqConfiguracion: TZReadOnlyQuery;
    roqReportes: TZReadOnlyQuery;
    Reporte: TZQuery;
    ContratosxUsuario: TZReadOnlyQuery;
    imgOrganizaciones: TImageList;
    Imagenes16: TcxImageList;
    Imagenes32: TcxImageList;

    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure zConnectionAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    RelacionImgIdOrganizacion: TStringList;
  end;

var
  ArregloIdPersonal: Array Of String;
  connection: Tconnection;

function xNumerosALetras(Numero: currency): string;
procedure LimpiarBufferTeclado;
procedure LimpiarBufferMouse;
function Conectar(var conexion:TzConnection;Server,DataBase:string;Port:integer):boolean;
function Encripta(Cadena: string): string;
function DesEncripta(Cadena: string): string;

implementation

{$R *.dfm}

function xxIntToLleters(Valor: LongInt): string;
const
  aUnitat: array[1..15] of string = ('UN', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS',
    'SIETE', 'OCHO', 'NUEVE', 'DIEZ', 'ONCE', 'DOCE',
    'TRECE', 'CATORCE', 'QUINCE');
  aCentena: array[1..9] of string = ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS',
    'CUATROCIENTOS', 'QUINIENTOS', 'SEISCIENTOS',
    'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
  aDecena: array[1..9] of string = ('DIECI', 'VEINTI', 'TREINTA', 'CUARENTA', 'CINCUENTA',
    'SESENTA', 'SETENTA', 'OCHENTA', 'NOVENTA');
var
  Centena, Decena, Unitat, Doble: LongInt;
  Linea: string;
begin
  if valor = 100 then Linea := ' CIEN ' {Maximo Valor sera 999, ejemplo con 123}
  else begin
    Linea := '';
    Centena := Valor div 100; {1 }
    Doble := Valor - (Centena * 100); {23}
    Decena := (Valor div 10) - (Centena * 10); {2 }
    Unitat := Valor - (Decena * 10) - (Centena * 100); {3 }
    if Centena > 0 then Linea := Linea + Acentena[centena] + ' ';
    if Doble > 0 then begin
      if Doble = 20 then Linea := Linea + ' VEINTE '
      else begin
        if doble < 16 then Linea := Linea + Aunitat[Doble]
        else begin
          Linea := Linea + ' ' + Adecena[Decena];
          if (Decena > 2) and (Unitat <> 0) then Linea := Linea + ' Y ';
          if Unitat > 0 then Linea := Linea + Aunitat[Unitat];
        end;
      end;
    end;
  end;
  Result := Linea;
end;

function xIntToLleters(Numero: LongInt): string;
var
  Millions, mils, unitats: Longint;
  Linea: string;
begin
     {Inicializamos el string que contendra las letras segun el valor numerico}
  if numero = 0 then Linea := 'CERO'
  else if numero < 0 then Linea := 'MENOS '
  else if numero > 0 then Linea := '';
     {Determinamos el Nº de millones, miles, i unidades de numero en positivo}
  Numero := Abs(Numero);
  millions := numero div 1000000;
  mils := (numero - (millions * 1000000)) div 1000;
  unitats := numero - ((millions * 1000000) + (mils * 1000));
     {Vamos poniendot en el string las cadenas de los numeros(llamando a subfuncion)}
  if millions = 1 then Linea := Linea + ' UN MILLON '
  else if millions > 1 then Linea := Linea + xxIntToLleters(millions) + ' MILLONES ';
  if mils = 1 then Linea := Linea + ' MIL '
  else if mils > 1 then Linea := Linea + xxIntToLleters(mils) + ' MIL ';
  if unitats > 0 then Linea := Linea + xxIntToLleters(unitats);
  xIntToLleters := Linea;
end;

function xNumerosALetras(Numero: currency): string;
Var
  iEntero  : Longint ;
  iDecimal : Longint ;

  iValorNumerico, tNumerico: LongInt;
  Resultado: Real;
begin
  iEntero := trunc(Numero);
  iDecimal := Trunc(Frac(Numero)*100);

  iValorNumerico := Trunc(Numero);
  Resultado := roundto(Numero - iValorNumerico, -2);
  Resultado := Resultado * 100;
  iValorNumerico := Trunc(Resultado);
  result :=  xIntToLleters(iEntero) + ' PESOS ';
  if iValorNumerico > 0 then
    result := result + IntToStr(iValorNumerico) + '/100 M.N.'
  Else
    result := result + '00/100 M.N.';

  Result := StringReplace(Result, '  ', ' ', [rfReplaceAll]);
end;

procedure LimpiarBufferTeclado;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE or PM_NOYIELD) do;
end;

procedure LimpiarBufferMouse;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_MOUSEFIRST, WM_MOUSELAST, PM_REMOVE oR PM_NOYIELD) do;
end;

Function Conectar(var conexion:TzConnection;Server,DataBase:string;Port:integer):boolean;
var
  error,isroot:boolean;
  QrAcceso:TzReadOnlyQuery;
  local_Pass:String;
begin
  error:=false;
  isRoot:=false;
  Conexion.Disconnect;
  Conexion.HostName:=Global_ServAcceso;
  Conexion.Database:='';
  Conexion.Catalog:='';
  Conexion.Port:=Global_PortAcceso;
  Conexion.User:=IntelUser;
  Conexion.Password:=IntelPass;
  conexion.Protocol:=connection.zConnection.Protocol;
  try
    Conexion.Connect;
  except
    on e:exception do
    begin
      if pos('Access denied',e.message)>0 then
      begin
        Conexion.Disconnect;
        Conexion.User :=IntelUser;
        Conexion.Password :=IntelPass ;
        conexion.HostName:=server;
        Conexion.Database := '' ;
        Conexion.Catalog := '' ;
        conexion.Port:=port;
        conexion.Protocol:=connection.zConnection.Protocol;
        Try
          Conexion.Connect ;
        except
          on e : exception do
          begin
            if pos('Access denied',e.message)>0 then
            begin
              Conexion.Disconnect;
              Conexion.User :='root';
              Conexion.Password :=IntelPass ;
              conexion.HostName:=server;
              Conexion.Database := database ;
              Conexion.Catalog := database ;
              conexion.Port:=port;
              conexion.Protocol:=connection.zConnection.Protocol;
              Try
                Conexion.Connect ;
                isRoot:=true;
              except
                error:=true;
              End;
            end
            else
              error:=true;
          end;
        End;

        if not error then
        begin
          If not Conexion.Ping Then
          begin
              error:=true;
          end;
        end;
      end
      else
        error:=true;
    end;
  end;

  if not error then
  begin
    if conexion.Ping then
    begin
      if not isroot then
      begin
        QrAcceso:=TzReadOnlyquery.Create(nil);
        QrAcceso.Connection:=Conexion;
        QrAcceso.SQL.Text:='select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
                              ' and servidor=' +quotedstr(server);
        try
          QrAcceso.Open;
        except
          on E:exception do
          begin
            error:=true;
          end;
        end;

        if not error then
        begin
          try
            if QrAcceso.RecordCount=1 then
              local_Pass:=desencripta(QrAcceso.FieldByName('password').AsString)
            else
              local_Pass:=IntelPass;

          finally
            freeandnil(QrAcceso);
          end;

          Conexion.Disconnect;
          Conexion.HostName := server ;
          Conexion.Port := port;
          Conexion.User :=global_bduser;
          Conexion.Password :=Local_pass;
          Conexion.Database :=database ;
          conexion.Protocol:=connection.zConnection.Protocol;

          try
            Conexion.Connect;
          except
            on E:exception do
              error:=true;
          end;
        end;
      End;
    end;
  end;
  result:=not error;
end;

function Encripta(Cadena: string): string;
var
  Cuenta, CarByte, Calculo, ValCaracter, nBytes: Integer;
  Resul, ResCom: string;
begin
  ResCom := '';
  for Cuenta := 1 to Length(Cadena) do
  begin
    CarByte := Ord(Cadena[Cuenta]);

    // Encriptar el dato
    Calculo := (CarByte * Trunc((Cuenta + 2) / 2));
    nBytes := 0;
    Resul := '';
    while Calculo > 255 do
    begin
      ValCaracter := Random(3) + 252;
      Calculo := Calculo - ValCaracter;

      Resul := Resul + Chr(ValCaracter);
      Inc(nBytes);
    end;
    if Calculo > 0 then
    begin
      Resul := Resul + Chr(Calculo);
      Inc(nBytes);
    end;

    ResCom := ResCom + Chr(nBytes) + Resul;
  end;

  Encripta := ResCom;
end;

function DesEncripta(Cadena: string): string;
var
  Sec, Cuenta, nBytes, Calculo, H, CarByte: Integer;
  Resul: string;
begin
  Cuenta := 0;
  Sec := 0;
  Resul := '';
  while Cuenta < Length(Cadena) do
  begin
    Inc(Cuenta);
    Inc(Sec);

    // Determinar el número de bytes que ocupa el caracter
    nBytes := Ord(Cadena[Cuenta]);

    // Totalizar los bytes
    Calculo := 0;
    for h := 1 to nBytes do
    begin
      Calculo := Calculo + Ord(Cadena[Cuenta + H]);
    end;

    CarByte := Trunc((Calculo) / Trunc((Sec + 2) / 2));
    Cuenta := Cuenta + (nBytes);
    Resul := Resul + Chr(CarByte);
    //showmessage(Chr(CarByte));
  end;
  DesEncripta := Resul;
end;

procedure Tconnection.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DE LA ORDEN DE TRABAJO ' + global_orden ;

  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := global_fecha  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := global_fecha  ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;


  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;

  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;

  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;
                
  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;

end;

procedure Tconnection.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'ORDEN') = 0 then
    Value := 'DE LA ORDEN DE TRABAJO ' + global_orden;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
    Value := global_fecha;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := global_fecha;

  if CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
    Value := sDiarioDescripcionCorta;

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;
  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSuperIntendente
    else
      Value := sSuperIntendentePatio;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSupervisor
    else
      Value := sSupervisorPatio;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSupervisorTierra
    else
      Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    if global_sOrigen_reporte= 'No' then
      Value := sPuestoSuperIntendente
    else
      Value := sPuestoSuperIntendentePatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sPuestoSupervisor
    else
      Value := sPuestoSupervisorPatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    if global_sOrigen_reporte= 'No' then
      Value := sPuestoSupervisorTierra
    else
      Value := sPuestoResidente;

  if CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
    Value := mDescripcionOrden;
  if CompareText(VarName, 'PLATAFORMA') = 0 then
    Value := sPlataformaOrden;

  if CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
    Value := sJornadasSuspendidas;

  if CompareText(VarName, 'TURNO') = 0 then
    Value := sDescripcionTurno;

  if CompareText(VarName, 'REAL_ANTERIOR') = 0 then
    Value := dRealGlobalAnterior;
  if CompareText(VarName, 'REAL_ACTUAL') = 0 then
    Value := dRealGlobalActual;
  if CompareText(VarName, 'REAL_ACUMULADO') = 0 then
    Value := dRealGlobalAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
    Value := dProgramadoGlobalAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
    Value := dProgramadoGlobalActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
    Value := dProgramadoGlobalAcumulado;


  if CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
    Value := dRealOrdenAnterior;
  if CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
    Value := dRealOrdenActual;
  if CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
    Value := dRealOrdenAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
    Value := dProgramadoOrdenActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAcumulado;


    //;


end;

procedure Tconnection.zConnectionAfterConnect(Sender: TObject);
begin
  // Connectar la base de datos alterna con los datos de la base original
  if ConnTrx.Connected then
    ConnTrx.Disconnect;
  ConnTrx.Catalog  := zConnection.Catalog;
  ConnTrx.Database := zConnection.DataBase;
  ConnTrx.HostName := zConnection.HostName;
  ConnTrx.PassWord := zConnection.PassWord;
  ConnTrx.Port     := zConnection.Port;
  ConnTrx.User     := zConnection.User;
  ConnTrx.Connect;
end;

end.
