unit frm_acceso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frm_connection, global, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, DB, strUtils, ADOdb, ExtCtrls,
  jpeg, ComCtrls, ZDataset, frxpngimage, IniFiles, ZSqlProcessor, Menus,
  OleCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  cxButtons, dxSkinsdxBarPainter, cxClasses, dxBar, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxGDIPlusClasses, ImgList,
  cxListView, cxGroupBox, cxImage, UDosCapas, UInteliDialog, URegistro,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList;

type
  TObjServidor = class
    Nombre: String;
    IP: String;
    Port: String;
  end;

  Tfrmacceso = class(TForm)
    StatusBar: TStatusBar;
    Label4: TLabel;
    Label3: TLabel;
    ZqScript: TZSQLProcessor;
    imgIcons: TcxImageList;
    cxImageList1: TcxImageList;
    Panel1: TPanel;
    DBs: TcxListView;
    cxImage1: TcxImage;
    cxGroupBox1: TcxGroupBox;
    lbServidorbd: TLabel;
    lbUsuario: TLabel;
    lbPassword: TLabel;
    tsPassword: TcxTextEdit;
    tsIdUsuario: TcxTextEdit;
    cmbServer: TcxComboBox;
    cxButton1: TcxButton;
    btnAdelante: TcxButton;
    procedure btnAdelanteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioEnter(Sender: TObject);
    procedure tsIdUsuarioExit(Sender: TObject);
    procedure tsPasswordEnter(Sender: TObject);
    procedure tsPasswordExit(Sender: TObject);
    procedure cmbServerEnter(Sender: TObject);
    procedure cmbServerExit(Sender: TObject);
    procedure cmbServerKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure cmbServerChange(Sender: TObject);
    procedure SetTransparentForm(AHandle: THandle; AValue: byte = 0);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlassButton1Click(Sender: TObject);
    function TestServer: boolean;
    procedure Button1Click(Sender: TObject);
    procedure tsIdUsuarioChange(Sender: TObject);
    procedure DBsDblClick(Sender: TObject);
    procedure DBsKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdUsuarioEditing(Sender: TObject; var CanEdit: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    ResultadoM: TModalResult;
    OldDB: String;
  public
    dbGralExiste : Boolean;
  end;

const
  WS_EX_LAYERED = $80000;
  LWA_COLORKEY = 1;
  LWA_ALPHA = 2;

type
  TSetLayeredWindowAttributes = function(
    hwnd: HWND; // handle to the layered window
    crKey: TColor; // specifies the color key
    bAlpha: byte; // value for the blend function
    dwFlags: DWORD // action
    ): BOOL; stdcall;

var
  frmacceso: Tfrmacceso;
  intentos: byte;
  mensaje: string;
  listServ: tstringlist;
  Ini: TIniFile;
  FilePath: string;
  flagAccesoEnIni: boolean;
  sqlUsuarioExiste : string;

implementation

uses
  Personal, frm_AltaServidor;

{$R *.dfm}

procedure Tfrmacceso.SetTransparentForm(AHandle: THandle; AValue: byte = 0);
var
  Info: TOSVersionInfo;
  SetLayeredWindowAttributes: TSetLayeredWindowAttributes;
begin
  //Check Windows version
  Info.dwOSVersionInfoSize := SizeOf(Info);
  GetVersionEx(Info);
  if (Info.dwPlatformId = VER_PLATFORM_WIN32_NT) and
    (Info.dwMajorVersion >= 5) then
  begin
    SetLayeredWindowAttributes := GetProcAddress(GetModulehandle(user32), 'SetLayeredWindowAttributes');
    if Assigned(SetLayeredWindowAttributes) then
    begin
      SetWindowLong(AHandle, GWL_EXSTYLE, GetWindowLong(AHandle, GWL_EXSTYLE) or WS_EX_LAYERED);
         //Make form transparent
      SetLayeredWindowAttributes(AHandle, 0, AValue, LWA_ALPHA);
    end;
  end;
end;

procedure Tfrmacceso.btnAdelanteClick(Sender: TObject);
var
  zQuery, zQuery1: tzReadOnlyQuery;
  lFoundDB: Boolean;
  QrAcceso: TzReadOnlyQuery;
  Error: boolean;
  AlterUsuarios: TzsqlProcessor;
  Archidioma, Archivo: string;
  FileText: TextFile;
  appINI, inilogin : TIniFile;
  usuariodioma : string;

procedure ProcesarBaseDatos;
var
  IdxSel: Integer;
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if (uppercase(tsidusuario.text) = 'ADMIN') then
      global_bduser := 'root'
    else
      global_bduser := 'inteligent';

    connection.zConnection.Disconnect;

    connection.zConnection.HostName := TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).IP;
    connection.zConnection.Port := StrToInt(TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).Port);
    connection.zConnection.User := 'root';
    connection.zConnection.Password := 'danae';
    connection.zConnection.Database := '';
    connection.zConnection.Catalog := '';
    connection.zConnection.Connect;

    if Not connection.zConnection.Ping then
      raise Exception.Create('No se ha podido establecer comunicación con el servidor');

    QrAcceso := TzReadOnlyquery.Create(nil);
    QrAcceso.Connection := connection.zConnection;
    QrAcceso.SQL.Text := 'select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
      ' and servidor=' + quotedstr(TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).IP);

    global_bdUser := 'root';
    global_bdPass := 'danae';
    Connection.zConnection.Disconnect;
    connection.zConnection.HostName := TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).IP;
    connection.zConnection.Port := StrToInt(TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).Port);
    connection.zConnection.User := 'root';
    connection.zConnection.Password := 'danae';
    connection.zConnection.Database := '';

    connection.zConnection.Connect;

    if connection.zConnection.Ping then
    begin
      DBs.Clear;
      dbGralExiste := False;

      zQuery := TZReadOnlyQuery.Create(Self);
      try
        zQuery.Connection := connection.zConnection;
        zQuery.Active := False;
        zQuery.SQL.Text := 'SELECT ' +
                           '  schema_name ' +
                           'FROM ' +
                           '  INFORMATION_SCHEMA.SCHEMATA ' +
                           'WHERE ' +
                           '  NOT ((SCHEMA_NAME = "mysql") OR ' +
                           '       (SCHEMA_NAME = "information_schema") OR ' +
                           '       (SCHEMA_NAME = "performance_schema") OR ' +
                           '       (SCHEMA_NAME = "test") OR ' +
                           '       (SCHEMA_NAME = "chat") OR ' +
                           '       (SCHEMA_NAME = "chat_php") OR ' +
                           '       (SCHEMA_NAME = "ic_exsoll") OR ' +
                           '       (SCHEMA_NAME = "joomla") OR ' +
                           '       (SCHEMA_NAME = "phpmyadmin") OR ' +
                           '       (SCHEMA_NAME = "adminintel"))';
        zQuery.Open;

        dbGralExiste := zQuery.Locate('schema_name', 'db_gral', []);

        {while Not zQuery.Eof do
        begin
          if (zQuery.FieldByName('Database').AsString = 'db_gral') then
          begin
            dbGralExiste := True;
          end;
          zQuery.Next;
        end;}

        if dbGralExiste then
        begin
          Connection.zConnection.Disconnect;
          connection.zConnection.Database := 'db_gral';

          with connection.zCommand do
          begin
            Active := False;
            SQL.Clear;
            SQL.Add('select ' +
                    'ub.useer, ' +
                    'ub.nombrees, ' +
                    'b.bd_user ' +
                    'from user_bd ub ' +
                    'inner join bd b ' +
                    'on b.id_bd = ub.id_bds ' +
                    'where useer = :useer ' +
                    'group by b.bd_user');
            Params.ParamByName('useer').AsString := tsIdUsuario.Text;
            Open;
          end;

          if connection.zCommand.RecordCount = 0 then
            raise InteligentConnection.Create('Este usuario no tiene asignado ninguna Base de Datos vuelva a intentarlo.');

          while Not connection.zCommand.Eof do
          begin
            {zQuery.Active := False;
            zQuery.SQL.Clear;
            zQuery.SQL.Add('show databases');
            zQuery.Open;}

            lFoundDB := False;
            IdxSel := -1;
            zQuery.First;
            while not zQuery.Eof do
            begin
              {if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') and (zQuery.FieldValues['database'] <> 'adminintel') then
              begin}
                if (connection.zCommand.FieldByName('bd_user').AsString = zQuery.FieldByName('Database').AsString) then
                begin
                  //sDataName.Properties.Items.Add(zQuery.FieldValues['database']);
                  with DBs.Items.Add do
                  begin
                    if OldDB = zQuery.FieldByName( 'schema_name' ).AsString then
                      IdxSel := DBs.Items.Count -1;

                    Caption := zQuery.FieldByName( 'schema_name' ).AsString;
                    ImageIndex := 2;
                  end;
                end;
              {end
              else
                lFoundDB := True;}
              zQuery.Next;
            end;

            DBs.Visible := True;
            if IdxSel >= 0 then
            begin
              DBs.ItemIndex := IdxSel;
              DBs.Items[IdxSel].MakeVisible(True);
            end
            else
              DBs.ItemIndex := 0;
            Dbs.SetFocus;

            connection.zCommand.Next;
          end;
        end
        else
        begin
          {zQuery.Active := False;
          zQuery.SQL.Clear;
          zQuery.SQL.Add('show databases');
          zQuery.Open;}

          lFoundDB := False;
          IdxSel := -1;
          zQuery.First;
          while not zQuery.Eof do
          begin
            {if (zQuery.FieldValues['database'] <> 'mysql') and (zQuery.FieldValues['database'] <> 'information_schema') and (zQuery.FieldValues['database'] <> 'test') and (zQuery.FieldValues['database'] <> 'chat') and (zQuery.FieldValues['database'] <> 'chat_php') and (zQuery.FieldValues['database'] <> 'ic_exsoll') and (zQuery.FieldValues['database'] <> 'joomla') and (zQuery.FieldValues['database'] <> 'phpmyadmin') and (zQuery.FieldValues['database'] <> 'adminintel') then
            begin}
              with DBs.Items.Add do
              begin
                if OldDB = zQuery.FieldByName( 'schema_name' ).AsString then
                  IdxSel := Dbs.Items.Count -1;

                Caption := zQuery.FieldByName( 'schema_name' ).AsString;
                ImageIndex := 2;
              end;
            {end
            else
              lFoundDB := True;}
            zQuery.Next;
          end;

          DBs.Visible := True;
          if IdxSel >= 0 then
          begin
            DBs.ItemIndex := IdxSel;
            DBs.Items[IdxSel].MakeVisible(True);
          end
          else
            DBs.ItemIndex := 0;
          Dbs.SetFocus;

        end;
      finally
        zQuery.Close;
        zQuery.Destroy;
      end;
    end;
  finally
    Screen.Cursor := LocCursor
  end;
end;

procedure SeleccionarBaseDatos;
var
  LocCursor: TCursor;
begin
  try
    try
      Inc(Intentos);

      if Intentos = 4 then
        raise Exception.Create('Intento accesar en mas de 3 ocaciones. Saliendo del Sistema');

      if Not connection.zConnection.Ping then
        raise Exception.Create('Se ha perdido la conexión con la base de datos');

      if (DBs.SelCount = 1) and (DBs.selected.Caption <> '') then
      begin
        global_db := DBs.selected.Caption;
        FrmMain.status.Panels.Items[5].Text  :=   global_db;
        global_ipServer := TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).IP;
        connection.zConnection.Disconnect;
        connection.zConnection.HostName := TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).IP;
        connection.zConnection.Database := global_db;
        connection.zConnection.Port := StrToInt(TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).Port);
        connection.zConnection.User := global_bduser;
        connection.zConnection.Password := global_bdpass;
        connection.zConnection.Connect;
      end;

      if uppercase(tsidusuario.text) = 'ADMIN' then
      begin
        connection.Zcommand.Active := false;
        connection.Zcommand.SQL.Text := 'select * from usuarios where sidusuario=' + quotedstr(tsidusuario.text);
        try
          connection.Zcommand.Open;
        except
          on E: exception do
          begin
            StatusBar.Panels[0].Text := e.Message;
            raise;
          end;
        end;

        if connection.Zcommand.recordcount = 0 then
        begin
          if uppercase(tspassword.text) = uppercase(intelpass) then
          begin
            AlterUsuarios := TzSqlProcessor.Create(nil);
            AlterUsuarios.Connection := connection.zConnection;
            AlterUsuarios.Script.Text := 'ALTER TABLE `usuarios` MODIFY COLUMN `sPassword` VARCHAR(50) COLLATE latin1_swedish_ci NOT NULL DEFAULT "" COMMENT "Contraseña";';

            try
              AlterUsuarios.Execute;
            except
              on E: exception do
                raise InteligentException.Create('Ocurrio un error al Inicializar Parametros de Configuracion.' + #13 + #10 +
                                                 'Informacion del error: ' + e.Message);
            end;

            connection.QryBusca.active := false;
            connection.QryBusca.SQL.text := 'insert into usuarios(sidusuario,spassword) values(:user,:pass)';
            connection.QryBusca.ParamByName('user').AsString := 'admin';
            try
              connection.QryBusca.ParamByName('pass').AsString := encripta(Intelpass);
              connection.QryBusca.ExecSQL;
              connection.Zcommand.Refresh;
            except
              on e: exception do
                raise InteligentException.Create('No se Pudo Cargar el Administrador.' + #13 + #10 +
                                                 'Informacion del error: ' + e.ClassName + ',' + e.Message);
            end;
          end
          else
            if (tsIdUsuario.Text = 'admin') and (tsPassword.Text = 'admin') then
            begin
              global_usuario := UpperCase(tsIdUsuario.Text);
              Global_IdUsuario := connection.Zcommand.FieldByName('IdUsuario').AsInteger;
              raise InteligentConnection.Create('***');
            end
            else
              raise InteligentConnection.Create('El usuario no existe');
        end;

        if connection.Zcommand.recordcount = 1 then
        begin
          if (uppercase(desencripta(connection.Zcommand.FieldByName('spassword').AsString)) <> uppercase(tspassword.Text)) and (uppercase(connection.Zcommand.FieldByName('spassword').AsString) <> uppercase(tspassword.Text)) then
            raise InteligentConnection.Create('PASSWORD INCORRECTO');
        end
        else
          raise InteligentConnection.Create('Ese Usuario No EXISTE');
      end;

      global_contrato := '';
      Global_IdContrato := -1;
      global_usuario := uppercase(tsIdUsuario.Text);
      Global_IdUsuario := connection.Zcommand.FieldByName('IdUsuario').AsInteger;
      global_password := '';
      global_nombre := 'ADMINISTRADOR DEL SISTEMA';
      global_puesto := 'ADMINISTRADOR UNICO';
      global_activo := '';
      global_grupo := 'ADMINISTRADOR';

      ResultadoM := mrOk;
      Close;
    finally
      Screen.Cursor := LocCursor;
    end;
  except
    on e:InteligentConnection do
      if e.Message <> '***' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      raise;
  end;
end;

begin
  Error := false;

  try
    // Verificar si ya se han mostrado las bases de datos
    if dbs.Visible = False then
      ProcesarBaseDatos
    else
      SeleccionarBaseDatos;

    if dbs.visible then
    begin
      dbs.SetFocus;
      //dbs.Items[0].Selected := true;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;


procedure Tfrmacceso.FormShow(Sender: TObject);
var
  MiArchivo: string;
  FileText: TextFile;
  wCadena: WideString;
  sTipo: string;
  iVector,
  iPos: Byte;
  sPortAcceso: string;
  appINI: TIniFile;
  detectar, idioma,
  OldPort,
  xOldPort,
  OldIP,
  xOldIP,
  OldServidor,
  xOldServidor,
  OldListaServidores: string;
  i: integer;
  oldcursor: tcursor;
  noEncuentraIdioma: Boolean;
  LocCursor: TCursor;
  OldtsPuerto: Word;
  Lista: TStringList;
  ObjServidor: TObjServidor;
  ListaTres: TStringList;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      try
        OldListaServidores := VarRegistry('\Ventanas', '\' + Self.Name, 'ListaServidores');

        // Separar el servidor del IP
        {if Pos('|', OldListaServidores) = 0 then
          raise Exception.Create('Error Message');

        OldIP := Copy(OldListaServidores, Pos('|', OldListaServidores) +1, Length(OldListaServidores));
        OldServidor := Copy(OldListaServidores, 1, Length(OldIP) -1);

        if OldServidor[1] = '"' then
          OldServidor := Copy(OldListaServidores, 2, Length(OldListaServidores));

        if OldListaServidores[Length(OldListaServidores)] = '"' then
          OldListaServidores := Copy(OldListaServidores, 1, Length(OldListaServidores) -1);}
      except
        OldListaServidores := '';
      end;

      try
        OldDB := VarRegistry('\Ventanas', '\' + Self.Name, 'DataBase');
      except
        OldDB := '';
      end;

      try
        xOldIP := VarRegistry('\Ventanas', '\' + Self.Name, 'Servidor');
        xOldIP := StringReplace(xOldIP, ',', '°', [rfReplaceAll, rfIgnoreCase]);
        xOldIP := StringReplace(xOldIP, '|', ',', [rfReplaceAll, rfIgnoreCase]);

        ListaTres := TStringList.Create;
        try
          ListaTres.CommaText := xOldIP;

          xOldIP := StringReplace(xOldIP, '°', ',', [rfReplaceAll, rfIgnoreCase]);

          // Establecer valores predeterminados si los datos son incorrectos
          if ListaTres.Count <> 3 then
          begin
            OldIP := '127.0.0.1';
            OldServidor := 'LOCALHOST';
            OldPort := '3306';
          end
          else
          begin
            // Separar el servidor del IP
            OldServidor := ListaTres[0];
            OldIP := ListaTres[1];
            OldPort := ListaTres[2];
          end;
        finally
          ListaTres.Destroy;
        end;

        {if Pos('|', xOldIP) = 0 then
          raise Exception.Create('Error Message');

        OldIP := Copy(xOldIP, Pos('|', xOldIP) +1, Length(xOldIP));
        OldServidor := Copy(xOldIP, 1, Length(xOldIP) - Length(OldIP) -1);}
      except
        OldServidor := '';
        OldIP := '';
        OldPort := '';
      end;

      //asigna el idioma que esta por default en el combo
      ShowWindow(Application.Handle, SW_SHOW);
      cmbServer.Properties.Items.Clear;
      StatusBar.Panels[0].Text := '';
      sPortAcceso := '3306';

      //configuracion del sistema
      global_archivoini := MiArchivo;
      flagAccesoEnIni := False;

      ini := TIniFile.Create(global_archivoini);
      Global_ServAcceso := ini.readString('SYSTEM', 'SERV_ACCESO', '');
      sPortAcceso := ini.readString('SYSTEM', 'PORT_ACCESO', '');
      global_title_embarque := ini.readString('SYSTEM', 'TITLE_EMBARQUE', '');
      global_files := ini.readString('SYSTEM', 'FILES', extractfilepath(application.exename) + 'Reportes\');
      global_inicio := ini.readInteger('SYSTEM', 'ITEM_INICIAL', 1);
      global_final := ini.readInteger('SYSTEM', 'ITEM_FINAL', 1000);
      global_dias := ini.readInteger('SYSTEM', 'DIAS_ANTERIORES', 10);
      global_independiente := ini.readString('SYSTEM', 'ORDEN_UNICA', 'No');
      global_menu := ini.readString('SYSTEM', 'MENU_INICIAL', 'activo');
      global_db := ini.readString('SYSTEM', 'DATA_NAME', 'inteligent');
      global_dependencia := ini.readString('SYSTEM', 'DEPENDENCIA', '');
      global_checkgenerador := ini.readString('SYSTEM', 'CHECK_GENERADORES', '|INSTALACION|ORDENDECAMBIO|REFERENCIA|WBS|');
      global_ruta := ini.readString('SYSTEM', 'RUTA_SISTEMA', extractfilepath(application.exename));
      ini.free;

      if sPortAcceso <> '' then flagAccesoEnIni := True;

      Lista := TStringList.Create;
      try
        Lista.CommaText := OldListaServidores;
        cmbServer.Properties.Items.Clear;
        for i := 0 to Lista.Count -1 do
        begin
          ObjServidor := TObjServidor.Create;

          xOldIP := Lista[i];
          xOldIP := StringReplace(xOldIP, ',', '°', [rfReplaceAll, rfIgnoreCase]);
          xOldIP := StringReplace(xOldIP, '|', ',', [rfReplaceAll, rfIgnoreCase]);

          ListaTres := TStringList.Create;
          try
            ListaTres.CommaText := xOldIP;

            if ListaTres.Count = 3 then
            begin
              xOldServidor := ListaTres[0];
              xOldIP := ListaTres[1];
              xOldPort := ListaTres[2];

              {if Pos('|', Lista[i]) > 0 then
              begin
                xOldIP := Copy(Lista[i], Pos('|', Lista[i]) +1, Length(Lista[i]));
                xOldServidor := Copy(Lista[i], 1, Length(Lista[i]) - Length(xOldIP) -1);
              end
              else
              begin
                xOldIP := '';
                xOldServidor := Lista[i];
              end;}

              ObjServidor.Nombre := xOldServidor;
              ObjServidor.IP := xOldIP;
              ObjServidor.Port := xOldPort;

              cmbServer.Properties.Items.AddObject(ObjServidor.Nombre + ' (' + ObjServidor.IP + '):' + ObjServidor.Port, ObjServidor);
            end;
          finally
            ListaTres.Destroy;
          end;
        end;

        if cmbServer.Properties.Items.Count = 0 then
        begin
          OldServidor := 'LOCALHOST';
          OldIP := '127.0.0.1';
          OldPort := '3306';

          ObjServidor := TObjServidor.Create;
          ObjServidor.Nombre := OldServidor;
          ObjServidor.IP := OldIP;
          ObjServidor.Port := OldPort;
          cmbServer.Properties.Items.AddObject(ObjServidor.Nombre + ' (' + ObjServidor.IP + '):' + ObjServidor.Port, ObjServidor);
        end;
      finally
        Lista.Clear;
        Lista.Destroy;
      end;

      ObjServidor := TObjServidor.Create;
      if OldIP = '' then
      begin
        ObjServidor.Nombre := 'LOCALHOST';
        ObjServidor.IP := '127.0.0.1';
        ObjServidor.Port := '3306';
      end
      else
      begin
        ObjServidor.Nombre := OldServidor;
        ObjServidor.IP := OldIP;
        ObjServidor.Port := OldPort;
      end;

      if cmbServer.Properties.Items.IndexOf(ObjServidor.Nombre + ' (' + ObjServidor.IP + '):' + ObjServidor.Port) = -1 then
        cmbServer.Properties.Items.AddObject(ObjServidor.Nombre + ' (' + ObjServidor.IP + '):' + ObjServidor.Port, ObjServidor);

      try
        cmbServer.ItemIndex := cmbServer.Properties.Items.IndexOf(ObjServidor.Nombre + ' (' + ObjServidor.IP + '):' + ObjServidor.Port);
      except
        if cmbServer.Properties.Items.Count > 0 then
          cmbServer.ItemIndex := 0;
      end;

      intentos := 0;
      tsPassword.Text := '';

      try
        Global_PortAcceso := strtoint(sportacceso);

      except
        Global_PortAcceso := 3306;
      end;

      tsIdUsuario.SetFocus;
      application.processmessages;
      ResultadoM := mrCancel;
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

procedure Tfrmacceso.AdvGlassButton1Click(Sender: TObject);
var
  Pos, i: Integer;
  NombreServ: string;
  ObjServidor: TObjServidor;
begin
  Application.CreateForm(TfrmAltaServidor, frmAltaServidor);

  try
    frmAltaServidor.Top := self.Top + trunc(self.Height / 4);
    frmAltaServidor.Left := self.Left + trunc(self.Width / 10);
    frmAltaServidor.ShowModal;

    if frmAltaServidor.Servidor <> '' then
    begin
      tsIdUsuario.SetFocus;

      pos := -1;
      for I := 0 to listServ.Count - 1 do
        if uppercase(listServ.ValueFromIndex[i]) = frmAltaServidor.Servidor then
        begin
          pos := i;
          NombreServ := listServ.Names[i];
          break;
        end;

      if Pos >= 0 then
      begin
        ShowMessage('El servidor que está intentando dar de alta ya existe ( ' + NombreServ + ' ).' + #10 + #10 + 'Verifique esto e intente de nuevo..');
        cmbServer.ItemIndex := Pos;
        cmbServer.Properties.OnChange(Sender);
        cmbServer.SetFocus;
        Exit;
      end;

      ObjServidor := TObjServidor.Create;
      ObjServidor.Nombre := FrmAltaServidor.Descripcion;
      ObjServidor.IP := FrmAltaServidor.Servidor;
      ObjServidor.Port := IntToStr(FrmAltaServidor.hPuerto);

      cmbServer.Properties.Items.AddObject(ObjServidor.Nombre + ' (' + ObjServidor.IP + '):' + ObjServidor.Port, ObjServidor);
      cmbServer.ItemIndex := cmbServer.Properties.Items.Count -1;

      listServ.Add(frmAltaServidor.Servidor);

      cmbServer.Properties.OnChange(Sender);
          //Btn_Test.OnClick(Sender);
      TestServer;
    end
    else
      cmbServer.SetFocus;
  finally
    freeandnil(frmAltaServidor);
  end;
end;

procedure Tfrmacceso.tsPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btnAdelante.SetFocus
end;

procedure Tfrmacceso.tsIdUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPassword.SetFocus
end;

procedure Tfrmacceso.tsIdUsuarioChange(Sender: TObject);
begin
 // PostMessage(Self.Handle, WM_COMMAND, 1,EN_CHANGE);
end;

procedure Tfrmacceso.tsIdUsuarioEditing(Sender: TObject; var CanEdit: Boolean);
begin
  DBs.Clear;
  DBs.Visible := False;
end;

procedure Tfrmacceso.tsIdUsuarioEnter(Sender: TObject);
begin
  tsIdUsuario.Style.Color := global_color_entradaerp;
end;

procedure Tfrmacceso.tsIdUsuarioExit(Sender: TObject);
begin
  tsIdUsuario.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.tsPasswordEnter(Sender: TObject);
begin
  tsPassword.Style.Color := global_color_entradaerp
end;

procedure Tfrmacceso.tsPasswordExit(Sender: TObject);
begin
  tsPassword.Style.Color := global_color_salidaerp;
end;

procedure Tfrmacceso.cmbServerEnter(Sender: TObject);
begin
  cmbServer.Style.Color := global_color_Entradaerp
end;

procedure Tfrmacceso.cmbServerExit(Sender: TObject);
begin
  cmbServer.Style.Color := global_color_Salidaerp;
end;

procedure Tfrmacceso.cmbServerKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdUsuario.SetFocus
end;

procedure Tfrmacceso.cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure Tfrmacceso.DBsDblClick(Sender: TObject);
begin
  if dbs.SelCount = 1 then
    btnadelante.Click;
end;

procedure Tfrmacceso.DBsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnAdelante.Click;
end;

procedure Tfrmacceso.FormActivate(Sender: TObject);
var
  InfoSize, H, RsltLen: Cardinal;
  VersionBlock: Pointer;
  Rslt: PVSFixedFileInfo;
begin
{  SetTransparentForm(Handle, 215);}
  InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
  VersionBlock := AllocMem(InfoSize);
  try
    GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
    VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
      //Caption := 'INTEL-CODE << Sistema Inteligente para la Administración de Contratos Obra Publica Versión 2009.1.0 >>' ;
         //+ Format('%d.%d.%d.%d', [
         //Rslt.dwProductVersionMS div 65536,
         //Rslt.dwProductVersionMS mod 65536,
         //Rslt.dwProductVersionLS div 65536,
         //Rslt.dwProductVersionLS mod 65536]) + ' >>';
  finally
    FreeMem(VersionBlock);
  end;
end;

procedure Tfrmacceso.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  ListaServidores: TStringList;
  ObjServidor: TObjServidor;
begin
  if ResultadoM = mrOk then
  begin
    if DBs.Visible then
      SetRegistry('\Ventanas', '\' + Self.Name, 'DataBase', DBs.Selected.Caption);

    ListaServidores := TStringList.Create;
    ListaServidores.Clear;
    for i := 0 to cmbServer.Properties.Items.Count -1 do
    begin
      //ObjServidor := TObjServidor.Create;
      ObjServidor := TObjServidor(cmbServer.Properties.Items.Objects[i]);

      ListaServidores.Add(ObjServidor.Nombre + '|' + ObjServidor.IP + '|' + ObjServidor.Port);
    end;

    SetRegistry('\Ventanas', '\' + Self.Name, 'ListaServidores', ListaServidores.CommaText);
    SetRegistry('\Ventanas', '\' + Self.Name, 'Servidor', TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).Nombre + '|' + TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).IP + '|' + TObjServidor(cmbServer.Properties.Items.Objects[cmbServer.ItemIndex]).Port);

    AnimateWindow( Handle, 100, AW_HIDE or AW_VER_POSITIVE or AW_SLIDE );
  end;

  ModalResult := ResultadoM;
end;

procedure Tfrmacceso.FormCreate(Sender: TObject);
var
  fileSkin: TextFile;
  sSkin, path: string;
begin
  path:=ExtractFilePath(ParamStr(0));
  ListServ := tstringlist.Create;
  DBs.Items.Clear;
  
end;



procedure Tfrmacceso.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmacceso.Button1Click(Sender: TObject);
//var
 // IniTracer:TIniTracer;
begin
//  IniTracer:=TIniTracer.create(self,'SOFTWARE\INTELIGENT','INTELIGENT','INTELIGENT','cotemar');
//  IniTracer.cambiarIni;
 // IniTracer.Free;
end;

procedure Tfrmacceso.cmbServerChange(Sender: TObject);
var
  sPuerto: Integer;
begin
  DBs.Visible := False;
  btnAdelante.Caption := 'Iniciar Sesion';
end;

function Tfrmacceso.TestServer: boolean;
var
  hPuerto: Integer;
  VResult, continuar: Boolean;
begin
  try
    Continuar := true;
    Vresult := false;

    Connection.zConnection.Disconnect; //    ConnectionHMG.Disconnect;
    Connection.zConnection.Catalog := 'mysql'; // .ConnectionHMG.Catalog := 'mysql';
    Connection.zConnection.Catalog := 'mysql'; //ConnectionHMG.Database := 'mysql';
    Connection.zConnection.HostName := TObjServidor(cmbServer.Properties.Items.Objects[cmbserver.ItemIndex]).IP; //lblista.text;   //ConnectionHMG.HostName := lbLista.Text;
    Connection.zConnection.Password := intelpass;
    Connection.zConnection.Port := hPuerto;
    Connection.zConnection.Protocol := 'mysql-5';
    Connection.zConnection.User := 'root';
    Result := False;
    try
      Connection.zConnection.Connect;
      Result := Connection.zConnection.Ping;
    except
      cmbServer.SetFocus;
      raise InteligentException.Create('No ha podido ser posible establecer conexión con el servidor especificado.' + #10 + #10 + 'Revise los datos capturados para especificar el servidor o revise su conexión a la red si su base de datos se encuentra en un servidor remoto.');
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal('Error de acceso al servidor', e.Message, mtError, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure Tfrmacceso.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

end.

