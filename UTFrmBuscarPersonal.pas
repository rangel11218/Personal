unit UTFrmBuscarPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, ComCtrls, StdCtrls, JvLabel, DB, StrUtils,
  DateUtils, URegistro, ZAbstractRODataset, ZDataset, UDosCapas,
  Frm_Connection, ImgList, UInteliDialog, Tabs, Menus;

type
  TFrmBuscarPersonal = class(TForm)
    lvRecetas: TListView;
    pnlInferior: TPanel;
    btnAbrir: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    pnlBuscar: TPanel;
    JvLabel2: TJvLabel;
    eBuscar: TEdit;
    Panel4: TPanel;
    btnAbajo: TAdvGlowButton;
    btnArriba: TAdvGlowButton;
    Panel3: TPanel;
    dsMenu: TDataSource;
    pnlSuperior: TPanel;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    cbVista: TComboBox;
    Panel6: TPanel;
    btnProceder: TAdvGlowButton;
    JvLabel3: TJvLabel;
    Buscar: TComboBox;
    tsTipo: TTabSet;
    btnGrupos: TAdvGlowButton;
    cdGrupo: TZReadOnlyQuery;
    pmGrupos: TPopupMenu;
    Eduardo1: TMenuItem;
    N1: TMenuItem;
    procedure eBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbVistaChange(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure lvRecetasChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lvRecetasDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAbajoClick(Sender: TObject);
    procedure btnArribaClick(Sender: TObject);
    procedure btnProcederClick(Sender: TObject);
    procedure BuscarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tsTipoChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure btnGruposClick(Sender: TObject);
    procedure GlobalClick(Sender: TObject);
    procedure lvRecetasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Resultado: TModalResult;
    btnActual: TAdvGlowButton;
    ProcedeSeleccionar: Boolean;
    CadenaGeneral: String;
    procedure ProseguirBusqueda;
    function LocalizaNodo(Key: Word; Shift: TShiftState;
      var Ind: Integer; Inicializa: Boolean): Boolean;
    procedure CargarListaRecetas(Idx: Integer; pGrupo: String);
  public
    {}
  end;

var
  FrmBuscarPersonal: TFrmBuscarPersonal;

implementation

{$R *.dfm}

const
  MaxItems = 10;

procedure TFrmBuscarPersonal.btnAbrirClick(Sender: TObject);
begin
  Resultado := mrOk;
  Close;
end;

procedure TFrmBuscarPersonal.btnAbajoClick(Sender: TObject);
begin
  btnActual := btnAbajo;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarPersonal.btnArribaClick(Sender: TObject);
begin
  btnActual := btnArriba;    // Establecer por default la busqueda hacia abajo
  ProseguirBusqueda;
end;

procedure TFrmBuscarPersonal.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmBuscarPersonal.btnGruposClick(Sender: TObject);
var
  MenuItem: TMenuItem;
begin
  // Crear los grupos
  if cdGrupo.SQL.Text = '' then
    CrearConjunto(cdGrupo, 'nuc_personal_grupos', ccSelect);

  if Not cdGrupo.Active then
    cdGrupo.Open;

  while pmGrupos.Items.Count > 2 do
    pmGrupos.Items.Delete(pmGrupos.Items.Count -1);

  cdGrupo.First;
  while Not cdGrupo.Eof do
  begin
    MenuItem := TMenuItem.Create(pmGrupos);
    MenuItem.Caption := cdGrupo.FieldByName('GpoCont').AsString;
    MenuItem.OnClick := GlobalClick;
    MenuItem.Tag := 1;

    pmGrupos.Items.Add(MenuItem);
    cdGrupo.Next;
  end;

  pmGrupos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFrmBuscarPersonal.btnProcederClick(Sender: TObject);
var
  Procede: Boolean;
begin
  CadenaGeneral := '';

  // Filtrar los datos
  Buscar.Text := Trim(Buscar.Text);
  if Buscar.Text = '' then
    Procede := InteliDialog.ShowModal('Selección de Personas', 'No se ha indicado ningún criterio de busqueda de Personas.' + #10 + #10 + '¿Desea seleccionar todas las Personas en el catálogo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  else
    Procede := True;

  if Procede then
  begin
    CargarListaRecetas(tsTipo.TabIndex, '');
    lvRecetas.SetFocus;
  end;
end;

procedure TFrmBuscarPersonal.BuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    btnProceder.Click;
end;

procedure TFrmBuscarPersonal.eBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Ind: Integer;
begin
  if (Key = 13) and (Shift = []) then
    ProseguirBusqueda;
end;

procedure TFrmBuscarPersonal.GlobalClick(Sender: TObject);
begin
  CadenaGeneral := StringReplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll]);
  if TWinControl(Sender).Tag > 0 then
  begin
    CargarListaRecetas(tsTipo.TabIndex, CadenaGeneral);
    lvRecetas.SetFocus;
  end;
end;

procedure TFrmBuscarPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i, x: Integer;
  Cadena: String;
  Lista: TStringList;
begin
  CargarDatosFiltrados(TZReadOnlyQuery(dsMenu.DataSet), 'NotIdxEstado', [-1]);

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));
  SetRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex', IntToStr(cbVista.ItemIndex));
  SetRegistry('\Ventanas', '\' + Self.Name + '\tsTipo', 'TabIndex', IntToStr(tsTipo.TabIndex));
  SetRegistry('\Ventanas', '\' + Self.Name + '\Buscar', 'CommaText', Buscar.Items.CommaText);

  for i := 0 to lvRecetas.Columns.Count -1 do
    try
      SetRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas', 'Col' + IntToStr(i), IntToStr(lvRecetas.Column[i].Width));
    except
      ;
    end;

  Cadena := '';
  x := 0;
  for i := 0 to lvRecetas.Items.Count -1 do
  begin
    if lvRecetas.Items.Item[i].Selected then
    begin
      inc(x);
      Cadena := Cadena + IntToStr(Integer(lvRecetas.Items.Item[i].Data)) + ',';
    end;
  end;

  if Cadena <> '' then
  begin
    Cadena := Copy(Cadena, 1, Length(Cadena) -1);
    SetLength(ArregloIdPersonal, x);
    try
      Lista := TStringList.Create;
      Lista.CommaText := Cadena;
      for i := 0 to Lista.Count -1 do
        ArregloIdPersonal[i] := Lista[i];
    finally
      Lista.Destroy;
    end;
  end;

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmBuscarPersonal.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
end;

procedure TFrmBuscarPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // Tecla <ESC>
  if (Key = 27) and (Shift = []) then
    if pnlBuscar.Visible then
      pnlBuscar.Visible := False
    else
      Close;

  // Tecla <F3>   Repetir la busqueda
  if (Key = 114) and (Shift = []) then
  begin
    Key := 13;
    eBuscarKeyDown(Sender, Key, []);
  end;

  // Tecla <F5>   Refrescar los datos
  if (Key = 116) and (Shift = []) then
  begin
    dsMenu.DataSet.Refresh;
    CargarListaRecetas(tsTipo.TabIndex, '');
  end;

  // Teclas <CTRL> + B
  if (Key = 66) and (ssCtrl in Shift) then
  begin
    pnlBuscar.Visible := True;
    eBuscar.SetFocus;
    if Not Assigned(btnActual) then
      btnActual := btnAbajo;
  end;
end;

procedure TFrmBuscarPersonal.FormShow(Sender: TObject);
var
  i: Word;
begin
  Try
    Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
  Except
    ;
  End;

  Try
    Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
  Except
    ;
  End;

  Try
    Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
  Except
    ;
  End;

  Try
    Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
  Except
    ;
  End;

  Try
    cbVista.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\cbVista', 'ItemIndex'));
  Except
    ;
  End;

  Try
    Buscar.Items.CommaText := VarRegistry('\Ventanas', '\' + Self.Name + '\Buscar', 'CommaText');
  Except
    ;
  End;

  ProcedeSeleccionar := False;
  try
    try
      tsTipo.TabIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\tsTipo', 'TabIndex'));
    Except
      ;
    end;
  finally
    ProcedeSeleccionar := True;
  end;

  for i := 0 to lvRecetas.Columns.Count -1 do
    try
      lvRecetas.Column[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\lvRecetas', 'Col' + IntToStr(i)));
    except
      ;
    end;

  Buscar.DropDownCount := MaxItems;

  if TZReadOnlyQuery(dsMenu.DataSet).SQL.Text = '' then
    CrearConjunto(TZReadOnlyQuery(dsMenu.DataSet), 'nuc_personal', ccCatalog);
end;

procedure TFrmBuscarPersonal.ProseguirBusqueda;
var
  Ind: Integer;
begin
  // Verificar si se encontró el nodo
  if LocalizaNodo(13, [], Ind, False) then
    lvRecetas.Selected := lvRecetas.Items[Ind]
  else
  begin
    // Si ya se terminó la busqueda entonces se deberá informar al usuario y preguntarle que desea hacer
    {if InteliDialog.ShowModal('Recorrido finalizado', 'No se han encontrado más coinsidencias con el texto "' + eBuscar.Text + '".' + #10 + #10 +
                              funcPregunta(btnActual), mtConfirmation, [mbYes, mbNo], 0) = mrYes then}
    begin
      if btnActual = btnAbajo then
        Ind := 0
      else
        Ind := lvRecetas.Items.Count -1;

      if LocalizaNodo(13, [], Ind, True) then
        lvRecetas.Selected := lvRecetas.Items[Ind]
    end;
  end;

  if Assigned(lvRecetas.Selected) then
    lvRecetas.Selected.MakeVisible(True);
end;

procedure TFrmBuscarPersonal.tsTipoChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  if ProcedeSeleccionar then
    CargarListaRecetas(NewTab, CadenaGeneral);
end;

function TFrmBuscarPersonal.LocalizaNodo(Key: Word; Shift: TShiftState;
  var Ind: Integer; Inicializa: Boolean): Boolean;
var
  Nodo: TListItem;
  Encontrado: Boolean;
  Punto: TPoint;
  mPos: Integer;
begin
  // Realizar la busqueda con el criterio indicado
  // Seleccionar el nodo de inicio de busqueda
  if Inicializa then
  begin
    Nodo := lvRecetas.Items[Ind];    // Iniciar en el indicado por el programador
    Ind := Nodo.Index;
  end
  else
  begin
    if Assigned(lvRecetas.Selected) then
    begin
      Nodo := lvRecetas.Selected;  // Iniciar desde el nodo seleccionado

      if btnActual = btnAbajo then
        Ind := Nodo.Index +1
      else
        Ind := Nodo.Index -1;
    end
    else
    begin
      Nodo := lvRecetas.Items[0];  // Iniciar desde el primer nodo
      lvRecetas.Selected := Nodo;
      Ind := Nodo.Index;
    end;
  end;

  // Recorrer la lista
  Encontrado := False;
  while (Not Encontrado) and (Ind < lvRecetas.Items.Count) and (Ind >= 0) do
  begin
    mPos := POS(UpperCase(eBuscar.Text), UpperCase(lvRecetas.Items[Ind].Caption));
    Encontrado := mPos > 0;

    if Not Encontrado then
    begin
      if btnActual = btnAbajo then
        Inc(Ind)
      else
        Dec(Ind);
    end;
  end;

  Result := Encontrado;
end;

procedure TFrmBuscarPersonal.lvRecetasChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(lvRecetas.Selected) then
    dsMenu.DataSet.Locate('IdPersonal', Integer(lvRecetas.Selected.Data), []);
end;

procedure TFrmBuscarPersonal.lvRecetasDblClick(Sender: TObject);
begin
  if btnAbrir.Enabled then
    btnAbrir.Click;
end;

procedure TFrmBuscarPersonal.lvRecetasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key = 69) then
    lvRecetas.SelectAll;
end;

procedure TFrmBuscarPersonal.CargarListaRecetas(Idx: Integer; pGrupo: String);
const
  NomMes: Array[1..12] of string = ('Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre');

var
  Nodo: TListItem;
  Lista: TStringList;
  ListaFechas: TStringList;
  Grupo: TListGroup;
  IdGpo: Integer;
  RespStr,
  lcNombre: String;
  MesAnio: String;
  LocCursor: TCursor;

function DesconFecha(pFecha: TDate): String;
begin
  Result := RightStr('0' + IntToStr(DayOfTheMonth(pFecha)), 2) + ' de ' + NomMes[MonthOfTheYear(pFecha)] + ' de ' + IntToStr(YearOf(pFecha));
end;

begin
  LocCursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    if pGrupo <> '' then
    begin
      CargarDatosFiltrados(TZReadOnlyQuery(dsMenu.DataSet), 'Grupo', [pGrupo]);
    end
    else
    begin
      Buscar.Text := Trim(Buscar.Text);

      // Verificar si el texto capturado ya ha sido registrado en el combo
      if Length(Buscar.Text) > 0 then
      begin
        RespStr := Buscar.Text;
        if (Buscar.Items.IndexOf(Buscar.Text) < 0) then
        begin
          // Si no se encuentra el texto se deberá agregar
          Buscar.Items.Insert(0, Buscar.Text);

          if Buscar.Items.Count > MaxItems then
            Buscar.Items.Delete(Buscar.Items.Count -1);
        end
        else
        begin
          // Si ya existe se deberá de mover el elemento a la primera posición
          Buscar.Items.Move(Buscar.ItemIndex, 0);
        end;
        Buscar.ItemIndex := Buscar.Items.IndexOf(RespStr);
      end;
      if Idx = 0 then
        CargarDatosFiltrados(TZReadOnlyQuery(dsMenu.DataSet), 'CadenaBuscar,NotIdxEstado', [Buscar.Text, -1])
      else
        CargarDatosFiltrados(TZReadOnlyQuery(dsMenu.DataSet), 'CadenaBuscar,IdxEstado', [Buscar.Text, Idx -1]);
    end;
    if dsMenu.DataSet.Active then
      dsMenu.DataSet.Refresh
    else
      dsMenu.DataSet.Open;

    lvRecetas.Items.Clear;
    lvRecetas.Groups.Clear;

    Lista := TStringList.Create;
    Lista.Clear;

    ListaFechas := TStringList.Create;
    ListaFechas.Clear;

    if dsMenu.DataSet.Active then
      dsMenu.DataSet.Refresh
    else
      dsMenu.DataSet.Open;

    dsMenu.DataSet.First;
    while not dsMenu.DataSet.Eof do
    begin
      MesAnio := dsMenu.DataSet.FieldByName('LeyendaEstado').AsString;
      IdGpo := Lista.IndexOf(MesAnio);
      if IdGpo < 0 then
      begin
        Grupo := lvRecetas.Groups.Add;
        Grupo.Header := MesAnio;
        //Grupo.Subtitle := dsMenu.DataSet.FieldByName('LeyendaEstado').AsString;
        Grupo.Footer := 'Total de ' + MesAnio;

        Grupo.TitleImage := 25; //11;
        if Not dsMenu.DataSet.FieldByName('FechaBaja').IsNull then
          Grupo.TitleImage := 27
        else
          if Not dsMenu.DataSet.FieldByName('FechaReingreso').IsNull then
            Grupo.TitleImage := 26;
        //Grupo.TitleImage := 1;

        IdGpo := Grupo.Index;

        Lista.AddObject(MesAnio, TObject(IdGpo));
      end
      else
        IdGpo := Integer(Lista.Objects[IdGpo]);

      Nodo := lvRecetas.Items.Add;
      Nodo.Caption := dsMenu.DataSet.FieldByName('NombreCompleto').AsString + '  - (' + dsMenu.DataSet.FieldByName('CodigoPersonal').AsString + ')';
      Nodo.ImageIndex := 25; //11;
      if Not dsMenu.DataSet.FieldByName('FechaBaja').IsNull then
        Nodo.ImageIndex := 27
      else
        if Not dsMenu.DataSet.FieldByName('FechaReingreso').IsNull then
          Nodo.ImageIndex := 26;
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('CodigoPersonal').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('GpoCont').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('NumeroSeguroSocial').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('CURP').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('RFC').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('NombreOrganizacion').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('TituloDepartamento').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('NombreLocalidad').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('TituloProyecto').AsString);
      Nodo.SubItems.Add(dsMenu.DataSet.FieldByName('TituloCargo').AsString);
      Nodo.Data := TObject(dsMenu.DataSet.FieldByName('IdPersonal').AsInteger);
      Nodo.GroupID := IdGpo;

      dsMenu.DataSet.Next;
    end;

    if lvRecetas.Items.Count > 0 then
    begin
      lvRecetas.Selected := lvRecetas.Items[0];

      cbVista.OnChange(Nil);
    end;
  Finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmBuscarPersonal.cbVistaChange(Sender: TObject);
begin
  // Cambiar la visualización del listview
  case cbVista.ItemIndex of
    0: lvRecetas.ViewStyle := vsIcon;
    1: lvRecetas.ViewStyle := vsList;
    2: lvRecetas.ViewStyle := vsReport;
  else
    lvRecetas.ViewStyle := vsSmallIcon;
  end;

  btnAbrir.Enabled := lvRecetas.Items.Count > 0;
end;

end.
