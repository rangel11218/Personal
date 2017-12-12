unit UTFrmPlaza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvLabel, StdCtrls, Mask, DBCtrls, ExtCtrls, Frm_Connection,
  UDosCapas, UInteliDialog, AdvGlowButton, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, URegistro, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ZAbstractRODataset, ZDataset, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxSpinEdit;

type
  TFrmPlaza = class(TForm)
    dsPlazaDetalle: TDataSource;
    Panel1: TPanel;
    dsPlaza: TDataSource;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    CodigoPlaza: TDBEdit;
    Panel3: TPanel;
    JvLabel4: TJvLabel;
    Panel4: TPanel;
    JvLabel2: TJvLabel;
    IdSolicitante: TDBLookupComboBox;
    Panel5: TPanel;
    Panel6: TPanel;
    JvLabel3: TJvLabel;
    Panel7: TPanel;
    Observaciones: TDBMemo;
    Panel8: TPanel;
    Panel9: TPanel;
    EdtPuesto: TEdit;
    btnBuscarCargo: TAdvGlowButton;
    JvLabel5: TJvLabel;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel10: TPanel;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    ColTituloCargo: TcxGridDBColumn;
    dsSolicitante: TDataSource;
    dsCargo: TDataSource;
    pnlSel: TPanel;
    tvDatosSel: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel12: TPanel;
    btnAceptarSel: TAdvGlowButton;
    btnCancelSel: TAdvGlowButton;
    ColCodigoCargoSel: TcxGridDBColumn;
    ColTituloCargoSel: TcxGridDBColumn;
    ColCantidad: TcxGridDBColumn;
    pnlEdit: TPanel;
    Panel11: TPanel;
    btnOkEdit: TAdvGlowButton;
    btnCancelarEdit: TAdvGlowButton;
    IdCargoEdit: TDBLookupComboBox;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    ColFecha: TcxGridDBColumn;
    dsBuscarPlaza: TDataSource;
    BalloonHint1: TBalloonHint;
    Fecha: TcxDBDateEdit;
    FechaRequeridoEdit: TcxDBDateEdit;
    CantidadEdit: TcxDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure EdtPuestoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarCargoClick(Sender: TObject);
    procedure tvDatosSelCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvDatosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure IdCargoEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CodigoPlazaKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoPlazaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodigoPlazaClick(Sender: TObject);
    procedure CodigoPlazaExit(Sender: TObject);
    procedure tvDatosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure GrabarPlaza;
    procedure FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
  public
    IdPlaza_LID: Integer;
    TituloDepartamento: String;
  end;

var
  FrmPlaza: TFrmPlaza;

implementation

{$R *.dfm}

Uses
  UTFrmDeptos;

procedure TFrmPlaza.btnBuscarCargoClick(Sender: TObject);
var
  CadBuscar: String;
  Lista: TStringList;
  i: Integer;
  Valores: Array[0..9] of Variant;
  FormaSel: TForm;
begin
  try
    // Usar la cadena capturada para buscar los puestos que coinsidan
    CadBuscar := StringReplace(edtPuesto.Text, ',', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
    CadBuscar := StringReplace(CadBuscar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);

    CadBuscar := StringReplace(CadBuscar, ' ', ',', [rfReplaceAll, rfIgnoreCase]);
    Lista := TStringList.Create;
    Lista.CommaText := CadBuscar;

    for i := 0 to 9 do
    begin
      if i < Lista.Count then
        Valores[i] := Lista[i]
      else
        Valores[i] := -1;
    end;

    try
      CargarDatosFiltrados(TZReadOnlyQuery(dsCargo.DataSet), 'Texto1,Texto2,Texto3,Texto4,Texto5,Texto6,Texto7,Texto8,Texto9,Texto10', Valores);

      if dsCargo.DataSet.Active then
        dsCargo.DataSet.Refresh
      else
        dsCargo.DataSet.Open;

      // Verificar el resultado del dataset
      if dsCargo.DataSet.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No existen puestos de trabajo con el criterio indicado']);

      if dsCargo.DataSet.RecordCount > 0 then
      begin
        if dsCargo.DataSet.RecordCount > 1 then
          // Mostrar los cargos que resultaron
          FormaSel := TForm.Create(Self);

        try
          if dsCargo.DataSet.RecordCount > 1 then
          begin
            FormaSel.Caption := 'Seleccione el puesto de trabajo';

            try
              FormaSel.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\FormaSel', 'Height'));
            except
              FormaSel.Height := 300;
            end;

            try
              FormaSel.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\FormaSel', 'Width'));
            except
              FormaSel.Width := 410;
            end;

            for i := 0 to tvDatosSel.ColumnCount -1 do
              try
                tvDatosSel.Columns[i].Width := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\tvDatosSel', 'Col' + IntToStr(i)));
              except
                ;
              end;

            pnlSel.Parent := FormaSel;
            pnlSel.Align := alClient;
            pnlSel.Visible := True;
          end;

          if dsPlaza.DataSet.State = dsInsert then
          begin
            case InteliDialog.ShowModal('Se necesita grabar', 'Antes de agregar una nueva plaza de trabajo es necesario grabar los datos generales' + #10 + #10 + '¿Desea grabarlos en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
              mrYes: GrabarPlaza;
              mrNo: raise InteligentException.CreateByCode(24, ['Proceso cancelado por el usuario, no se pieden agregar plazas de trabajo']);
              mrCancel: raise InteligentException.Create('***');
            end;
          end;

          if (((dsCargo.DataSet.RecordCount > 1) and (FormaSel.ShowModal = mrOk)) or (dsCargo.DataSet.RecordCount = 1)) then
          begin
            dsPlazaDetalle.DataSet.Append;
            dsPlazaDetalle.DataSet.FieldByName('IdPlazaDetalle').AsInteger := 0;
            dsPlazaDetalle.DataSet.FieldByName('IdPlaza').AsInteger := dsPlaza.DataSet.FieldByName('IdPlaza').AsInteger;
            dsPlazaDetalle.DataSet.FieldByName('IdCargo').AsInteger := dsCargo.DataSet.FieldByName('IdCargo').AsInteger;
            dsPlazaDetalle.DataSet.FieldByName('Cantidad').AsInteger := 1;
            dsPlazaDetalle.DataSet.FieldByName('Fecha').AsDateTime := dsPlaza.DataSet.FieldByName('Fecha').AsDateTime;
            dsPlazaDetalle.DataSet.FieldByName('FechaRequerido').AsDateTime := dsPlaza.DataSet.FieldByName('Fecha').AsDateTime;
            dsPlazaDetalle.DataSet.FieldByName('Activo').AsString := 'Si';
            dsPlazaDetalle.DataSet.FieldByName('ExperienciaMinima').AsInteger := 1;
            dsPlazaDetalle.DataSet.FieldByName('UnidadExperiencia').AsInteger := 2;
            dsPlazaDetalle.DataSet.Post;

            dsPlazaDetalle.DataSet.Refresh;
          end;

          EdtPuesto.SetFocus;
          EdtPuesto.SelectAll;
        finally
          if dsCargo.DataSet.RecordCount > 1 then
          begin
            SetRegistry('\Ventanas', '\' + Self.Name + '\FormaSel', 'Width', IntToStr(FormaSel.Width));
            SetRegistry('\Ventanas', '\' + Self.Name + '\FormaSel', 'Height', IntToStr(FormaSel.Height));

            for i := 0 to tvDatosSel.ColumnCount -1 do
              SetRegistry('\Ventanas\' + Self.Name, '\tvDatosSel', 'Col' + IntToStr(i), IntToStr(tvDatosSel.Columns[i].Width));

            pnlSel.Visible := False;
            pnlSel.Align := alNone;
            pnlSel.Parent := Self;

            FormaSel.Destroy;
          end;
        end;
      end;
    finally
      CargarDatosFiltrados(TZReadOnlyQuery(dsCargo.DataSet), 'Texto1', [-1]);
    end;
  except
    on e:InteligentException do
      if e.Message <> '***' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

procedure TFrmPlaza.CodigoPlazaClick(Sender: TObject);
begin
  if BalloonHint1.ShowingHint then
    BalloonHint1.HideHint;
end;

procedure TFrmPlaza.CodigoPlazaExit(Sender: TObject);
begin
  if BalloonHint1.ShowingHint then
    BalloonHint1.HideHint;
end;

procedure TFrmPlaza.CodigoPlazaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if BalloonHint1.ShowingHint then
    BalloonHint1.HideHint;
end;

procedure TFrmPlaza.CodigoPlazaKeyPress(Sender: TObject; var Key: Char);
var
  R: TRect;
begin
  if Key = ' ' then
  begin
    R := CodigoPlaza.BoundsRect;
    R.TopLeft := ClientToScreen(R.TopLeft);
    R.BottomRight := ClientToScreen(R.BottomRight);
    BalloonHint1.Description := 'Este campo no admite espacios en blanco';
    BalloonHint1.ShowHint(R);

    Key := #0;
  end
  else
    BalloonHint1.HideHint;
end;

procedure TFrmPlaza.EdtPuestoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarCargo.Click;
end;

procedure TFrmPlaza.FormaEditCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  LocCursor: TCursor;
  Obj: TWinControl;
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        if IdCargoEdit.KeyValue = Null then
        begin
          Obj := IdCargoEdit;
          raise InteligentException.CreateByCode(18, ['Puesto']);
        end;

        if CantidadEdit.Value <= 0 then
        begin
          Obj := CantidadEdit;
          raise InteligentException.CreateByCode(8, ['El valor en Cantidad debe ser mayor que cero.']);
        end;
      finally
        Screen.Cursor := LocCursor;
      end;

      dsPlazaDetalle.DataSet.Post;
      dsPlazaDetalle.DataSet.Refresh;
      CanClose := True;
    except
      on e:InteligentException do
      begin
        if Assigned(Obj) and Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        dsPlazaDetalle.DataSet.Cancel;
        CanClose := True;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TFrmPlaza.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Obj: TWinControl;
  LocCursor: TCursor;
  NotIdPlaza: LongInt;
begin
  CanClose := True;

  if TForm(Sender).ModalResult = mrOk then
  begin
    CanClose := False;

    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        if CodigoPlaza.Text = '' then
        begin
          Obj := CodigoPlaza;
          raise InteligentException.CreateByCode(18, ['Código de solicitud']);
        end;

        // Verificar si el código no se repite
        if dsPlaza.DataSet.State = dsEdit then
          NotIdPlaza := dsPlaza.DataSet.FieldByName('IdPlaza').AsInteger
        else
        begin
          dsPlaza.DataSet.FieldByName('IdOrganizacionHist').AsInteger := dsSolicitante.DataSet.FieldByName('IdOrganizacion').AsInteger;
          dsPlaza.DataSet.FieldByName('IdDepartamentoHist').AsInteger := dsSolicitante.DataSet.FieldByName('IdDepartamento').AsInteger;
          dsPlaza.DataSet.FieldByName('IdCargoHist').AsInteger := dsSolicitante.DataSet.FieldByName('IdCargo').AsInteger;

          NotIdPlaza := -1;
        end;

        dsBuscarPlaza.DataSet.Close;
        CargarDatosFiltrados(TZReadOnlyQuery(dsBuscarPlaza.DataSet), 'IdDepartamento,CodigoPlaza,NotIdPlaza', [dsPlaza.DataSet.FieldByName('IdDepartamento').AsInteger, CodigoPlaza.Text, NotIdPlaza]);
        dsBuscarPlaza.DataSet.Open;

        if dsBuscarPlaza.DataSet.RecordCount > 0 then
        begin
          Obj := CodigoPlaza;
          raise InteligentException.CreateByCode(24, ['Ya existe un registro de solicitud de plazas vacantes con el código ' + CodigoPlaza.Text + ' para el departamento: ' + TituloDepartamento]);
        end;

        if IdSolicitante.KeyValue = Null then
        begin
          Obj := IdSolicitante;
          raise InteligentException.CreateByCode(18, ['Solicitante']);
        end;

        dsPlaza.DataSet.Post;

        CanClose := True;
      finally
        dsBuscarPlaza.DataSet.Close;
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if Assigned(Obj) and Obj.CanFocus then
          Obj.SetFocus;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmPlaza.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if dsPlaza.DataSet.State = dsEdit then
      begin
        EdtPuesto.SetFocus;
        CargarDatosFiltrados(TZQuery(dsPlazaDetalle.DataSet), 'IdPlaza', [dsPlaza.DataSet.FieldByName('IdPlaza').AsInteger]);
      end;
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

procedure TFrmPlaza.GrabarPlaza;
var
  LocCursor: TCursor;
  Obj: TWinControl;
begin
  try
    LocCursor := Screen.Cursor;
    try
      // Validar la captura
      Screen.Cursor := crHourGlass;

      if CodigoPlaza.Text = '' then
      begin
        Obj := CodigoPlaza;
        raise InteligentException.CreateByCode(18, ['Código de Plaza']);
      end;

      if IdSolicitante.KeyValue = Null then
      begin
        Obj := IdSolicitante;
        raise InteligentException.CreateByCode(18, ['Solicitante']);
      end;

      dsPlaza.DataSet.FieldByName('IdOrganizacionHist').AsInteger := dsSolicitante.DataSet.FieldByName('IdOrganizacion').AsInteger;
      dsPlaza.DataSet.FieldByName('IdDepartamentoHist').AsInteger := dsSolicitante.DataSet.FieldByName('IdDepartamento').AsInteger;
      dsPlaza.DataSet.FieldByName('IdCargoHist').AsInteger := dsSolicitante.DataSet.FieldByName('IdCargo').AsInteger;

      dsPlaza.DataSet.Post;
      CargarDatosFiltrados(TZQuery(dsPlaza.DataSet), 'IdPlaza', [IdPlaza_LID]);
      dsPlaza.DataSet.Refresh;
      dsPlaza.DataSet.Edit;

      CargarDatosFiltrados(TZQuery(dsPlazaDetalle.DataSet), 'IdPlaza', [IdPlaza_LID]);
    finally
      SCreen.Cursor := LocCursor;
    end;
  except
    on e:InteligentException do
    begin
      if Assigned(Obj) and (Obj.CanFocus) then
        Obj.SetFocus;

      raise;
    end;

    on e:Exception do
      raise;
  end;
end;

procedure TFrmPlaza.IdCargoEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    dsCargo.DataSet.Refresh;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmPlaza.tvDatosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  FormaEdit: TForm;
  LocCursor: TCursor;
begin
  if tvDatos.DataController.DataSource.DataSet.RecordCount > 0 then
  begin
    FormaEdit := TForm.Create(Self);
    try
      LocCursor := Screen.Cursor;
      try
        Screen.Cursor := crHourGlass;

        if dsCargo.DataSet.Active then
          dsCargo.DataSet.Refresh
        else
          dsCargo.DataSet.Open;

        FormaEdit.Caption := 'Editar partida de solicitud de plazas';
        FormaEdit.Height := 220;
        FormaEdit.Width := 433;
        FormaEdit.Position := poOwnerFormCenter;
        FormaEdit.OnCloseQuery := FormaEditCloseQuery;

        pnlEdit.Parent := FormaEdit;
        pnlEdit.Align := alClient;
        pnlEdit.Visible := True;
      finally
        Screen.Cursor := LocCursor;
      end;

      FormaEdit.ShowModal;

      EdtPuesto.SetFocus;
      EdtPuesto.SelectAll;
    finally
      pnlEdit.Visible := False;
      pnlEdit.Align := alNone;
      pnlEdit.Parent := Self;
    end;
  end;
end;

procedure TFrmPlaza.tvDatosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 46 then
  begin
    if InteliDialog.ShowModal('Eliminar partida de solicitud de plazas', 'Ha seleccionado eliminar la partida de solicitu de plaza:' + #10 + #10 + dsPlazaDetalle.DataSet.FieldByName('TituloCargo').AsString + #10 + #10 + '¿Está seguro de hacerlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dsPlazaDetalle.DataSet.Delete;
      //tvDatos.DataController.Groups.FullExpand;
    end;
  end;
end;

procedure TFrmPlaza.tvDatosSelCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if tvDatosSel.DataController.DataSource.DataSet.RecordCount > 0 then
    btnAceptarSel.Click;
end;

end.
