unit UTFrmCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdSSLOpenSSL, IdSMTP, IdMessage, IdAttachmentFile, UDosCapas,
  IdExplicitTLSClientServerBase, JvLabel, StdCtrls, URegistro, UInteliDialog,
  Frm_Connection, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  AdvGlowButton, ExtCtrls;

type
  TCadena = String;
  TFrmCorreo = class(TForm)
    cdPersonal: TZReadOnlyQuery;
    DBGrid1: TDBGrid;
    dsPersonal: TDataSource;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    eCorreo: TEdit;
    ePassword: TEdit;
    JvLabel2: TJvLabel;
    Panel2: TPanel;
    btnEnviarCorreo: TAdvGlowButton;
    cdHost: TZReadOnlyQuery;
    procedure FormShow(Sender: TObject);
    procedure btnEnviarCorreoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Indice: TStringList;
    procedure EnviarCorreo(IPuerto:Integer; SHostin, SDe, SContraseña, SPara,
      SEncabezado, SCuerpo, CCopia: string; FileName: String);
  public
    { Public declarations }
  end;

var
  FrmCorreo: TFrmCorreo;

implementation

{$R *.dfm}

procedure TFrmCorreo.btnEnviarCorreoClick(Sender: TObject);
var
  pEncabezado,
  NombreHost,
  Host: String;
  Obj: TWinControl;
  Idx: Integer;
begin
  try
    Obj := Nil;

    if Pos('@', eCorreo.Text) <= 0 then
    begin
      Obj := eCorreo;
      raise InteligentException.CreateByCode(24, ['La dirección de correo electrónico es incorrecta.']);
    end;

    Host := Copy(eCorreo.Text, Pos('@', eCorreo.Text) +1, Length(eCorreo.Text));

    if Pos('.', Host) <= 0 then
    begin
      Obj := eCorreo;
      raise InteligentException.CreateByCode(24, ['La dirección de correo electrónico es incorrecta.']);
    end;

    Host := Copy(Host, 1, Pos('.', Host) -1);

    Idx := Indice.IndexOf(Host);
    if Idx = -1 then
      raise InteligentException.CreateByCode(24, ['No es posible interpretar el servidor de correo: ' + Host]);

    pEncabezado := 'Eduardo Rangel Vallejo';
    //EnviarCorreo(587, 'smtp.gmail.com', 'eduardo.siner@gmail.com', '001218rangel', cdPersonal.FieldByName('Correo').AsString, pEncabezado, pEncabezado, '', '');
    //EnviarCorreo(587, 'smtp.live.com', eCorreo.Text, ePassword.Text, cdPersonal.FieldByName('Correo').AsString, pEncabezado, pEncabezado, '', '');
    EnviarCorreo(587, TCadena(Indice.Objects[Idx]), eCorreo.Text, ePassword.Text, cdPersonal.FieldByName('Correo').AsString, pEncabezado, pEncabezado, '', '');
  except
    on e:InteligentException do
    begin
      if Assigned(Obj) then
        Obj.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCorreo.EnviarCorreo(IPuerto:Integer; SHostin, SDe,
  SContraseña, SPara, SEncabezado, SCuerpo, CCopia: string; FileName: String);
var
  SeguridadSSL: TIdSSLIOHandlerSocketOpenSSL;
  Conexion: TIdSMTP;
  Mensage: TIdMessage;
  Correcto: boolean;
begin
  Correcto := False;
  SeguridadSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    Conexion:= TIdSMTP.Create(nil);
    try
      Mensage:= TIdMessage.Create(nil);
      try
        with SeguridadSSL do
        begin
          defaultport := IPuerto;
          Destination := ':25';
          port:=25;
          SSLOptions.Mode := sslmBoth;
          SSLOptions.Method := sslvTLSv1;
          Name:= 'ssl1';
        end;

        with Mensage do
        begin
          Body.Clear;
          Body.Add(sCuerpo);
          From.Text := sde;
          Recipients.EMailAddresses := SPara;
          {if CCA then
            CCList.EMailAddresses := CCopia;}
          Subject := SEncabezado;
          Priority := TidMessagePriority(mpHighest);
          //TIdAttachmentFile.Create(Mensage.MessageParts,Concat(FileName));
        end;

        with Conexion do
        begin
          Username := sde;
          Password := SContraseña;
          Host     := SHostin;
          Port     := IPuerto;
          IOHandler := SeguridadSSL;
          AuthType := satDefault;
          UseTLS := utUseExplicitTLS;

          try
            Connect;
            Try
              Send(Mensage);
            Finally
              Disconnect;
            End;
            //ShowMessage('Se envio el correo en forma correcta');
            Correcto := True;
          Except
            on e: exception do
              ShowMessage('Fallo en el envio de email:'+e.Message);
          End;

          If Connected Then Disconnect;
        end;
      finally
        FreeAndNil(Mensage);
      end;
    finally
      FreeAndNil(Conexion);
    end;
  finally
    FreeAndNil(SeguridadSSL);
  end;
end;

procedure TFrmCorreo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCorreo.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
  Cadena: TCadena;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog);
    CargarDatosFiltrados(cdPersonal, 'ConCorreo', ['Si']);
    cdPersonal.Open;

    Indice := TStringList.Create;
    Indice.Clear;

    Cadena := 'smtp.gmail.com';
    Indice.AddObject('gmail', TObject(Cadena));

    Cadena := 'smtp.live.com';
    Indice.AddObject('hotmail', TObject(Cadena));

    //Cadena := 'smtp.live.com';
    Indice.AddObject('outlook', TObject(Cadena));
  finally
    Screen.Cursor := LocCursor;
  end;
end;

end.
