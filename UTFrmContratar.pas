unit UTFrmContratar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, UDosCapas,
  UInteliDialog, URegistro, StdCtrls, DBCtrls, ExtCtrls, JvLabel,
  AdvGlowButton, Frm_Connection, Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxImage,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxCalc;

type
  TFrmContratar = class(TForm)
    dsPersonal: TDataSource;
    cdPersonalIMSS: TZQuery;
    dsPersonalIMSS: TDataSource;
    Panel1: TPanel;
    gbContratacion: TGroupBox;
    gbDomicilio: TGroupBox;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    JvLabel4: TJvLabel;
    IdDepartamento: TDBLookupComboBox;
    JvLabel5: TJvLabel;
    IdLocalidad: TDBLookupComboBox;
    JvLabel6: TJvLabel;
    IdProyecto: TDBLookupComboBox;
    JvLabel7: TJvLabel;
    Calle: TDBEdit;
    CP: TDBEdit;
    JvLabel11: TJvLabel;
    JvLabel9: TJvLabel;
    Numero: TDBEdit;
    JvLabel8: TJvLabel;
    JvLabel10: TJvLabel;
    Colonia: TDBEdit;
    cbPais: TComboBox;
    JvLabel14: TJvLabel;
    JvLabel12: TJvLabel;
    cbEstado: TComboBox;
    JvLabel13: TJvLabel;
    IdCiudad: TDBLookupComboBox;
    cbDomicilio: TCheckBox;
    cdOrganizacion: TZReadOnlyQuery;
    dsOrganizacion: TDataSource;
    cbIdOrganizacion: TComboBox;
    cdDepartamento: TZReadOnlyQuery;
    dsDepartamento: TDataSource;
    cdLocalidad: TZReadOnlyQuery;
    dsLocalidad: TDataSource;
    cdProyecto: TZReadOnlyQuery;
    dsProyecto: TDataSource;
    IdCargo: TDBLookupComboBox;
    JvLabel15: TJvLabel;
    cdCargo: TZReadOnlyQuery;
    dsCargo: TDataSource;
    Panel2: TPanel;
    NombreCompleto: TDBText;
    JvLabel1: TJvLabel;
    NumeroSeguroSocial: TDBText;
    CURP: TDBText;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    RFC: TDBText;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    DBCheckBox1: TDBCheckBox;
    JvLabel20: TJvLabel;
    IdPlazaDetalle: TcxLookupComboBox;
    SaveDialog1: TSaveDialog;
    cdPlazaDetalle: TZReadOnlyQuery;
    dsPlazaDetalle: TDataSource;
    cdPlazaAsignacion: TZQuery;
    pnlEntregaPase: TPanel;
    JvLabel21: TJvLabel;
    JvLabel23: TJvLabel;
    Panel9: TPanel;
    AdvGlowButton4: TAdvGlowButton;
    btnpaOk: TAdvGlowButton;
    FechaPase: TcxDateEdit;
    SalarioDiario: TcxDBCalcEdit;
    SalarioIntegrado: TcxDBCalcEdit;
    AdvPicture1: TImage;
    procedure FormShow(Sender: TObject);
    procedure cbDomicilioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbIdOrganizacionChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SalarioDiarioExit(Sender: TObject);
    procedure cdDepartamentoAfterOpen(DataSet: TDataSet);
    procedure cdPersonalIMSSAfterPost(DataSet: TDataSet);
  private
    Procesar: Boolean;
    LID_IdPersonalIMSS: Integer;
    procedure CambiarEstado(Modo: Boolean);
  public
    { Public declarations }
  end;

var
  FrmContratar: TFrmContratar;

implementation

{$R *.dfm}

const
  myColor: array[False..True] of TColor = (clSilver, clBlack);

procedure TFrmContratar.cbIdOrganizacionChange(Sender: TObject);
begin
  if cbIdOrganizacion.ItemIndex > -1 then
  begin
    cdOrganizacion.Locate('IdOrganizacion', Integer(cbIdOrganizacion.Items.Objects[cbIdOrganizacion.ItemIndex]), []);
    IdDepartamento.KeyValue := Null;
  end;
end;

procedure TFrmContratar.cdDepartamentoAfterOpen(DataSet: TDataSet);
begin
  if Not cdPlazaDetalle.Active then
    cdPlazaDetalle.Open;
end;

procedure TFrmContratar.cdPersonalIMSSAfterPost(DataSet: TDataSet);
begin
  LID_IdPersonalIMSS := DataSet.FieldByName('IdPersonalIMSS').AsInteger;
end;

procedure TFrmContratar.cbDomicilioClick(Sender: TObject);
begin
  CambiarEstado(cbDomicilio.Checked);
end;

procedure TFrmContratar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOk then
    cdPersonalIMSS.Cancel;
end;

procedure TFrmContratar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  LocCursor: TCursor;
  Obj: TWinControl;
begin
  CanClose := True;

  if ModalResult = mrOk then
  begin
    // Verificar los campos capturados
    try
      LocCursor := Screen.Cursor;
      CanClose := False;
      try
        Screen.Cursor := crHourGlass;

        if cbIdOrganizacion.ItemIndex = -1 then
        begin
          Obj := cbIdOrganizacion;
          raise InteligentException.CreateByCode(18, ['Empresa']);
        end;

        if IdDepartamento.KeyValue = Null then
        begin
          Obj := IdDepartamento;
          raise InteligentException.CreateByCode(18, ['Departamento']);
        end;

        {if IdPlazaDetalle.EditValue = Null then
        begin
          Obj := IdPlazaDetalle;
          raise InteligentException.CreateByCode(18, ['Plaza vacante']);
        end;}

        if IdLocalidad.KeyValue = Null then
        begin
          Obj := IdLocalidad;
          raise InteligentException.CreateByCode(18, ['Localidad']);
        end;

        if IdProyecto.KeyValue = Null then
        begin
          Obj := IdProyecto;
          raise InteligentException.CreateByCode(18, ['Proyecto']);
        end;

        if IdCargo.KeyValue = Null then
        begin
          Obj := IdCargo;
          raise InteligentException.CreateByCode(18, ['Puesto']);
        end;

        if SalarioDiario.Value = 0 then
        begin
          Obj := SalarioDiario;
          raise InteligentException.CreateByCode(18, ['Salario Diario']);
        end;

        if SalarioIntegrado.Value = 0 then
        begin
          Obj := SalarioIntegrado;
          raise InteligentException.CreateByCode(18, ['Salario Integrado']);
        end;

        if cbDomicilio.Checked then
        begin
          Calle.Clear;
          Numero.Clear;
          Colonia.Clear;
          CP.Clear;
          IdCiudad.KeyValue := Null;
        end
        else
        begin
          if Trim(Calle.Text) = '' then
          begin
            Obj := Calle;
            raise InteligentException.CreateByCode(18, ['Calle']);
          end;

          if Trim(Numero.Text) = '' then
          begin
            Obj := Numero;
            raise InteligentException.CreateByCode(18, ['Numero']);
          end;

          if Trim(Colonia.Text) = '' then
          begin
            Obj := Colonia;
            raise InteligentException.CreateByCode(18, ['Colonia']);
          end;

          if Trim(CP.Text) = '' then
          begin
            Obj := CP;
            raise InteligentException.CreateByCode(18, ['C.P.']);
          end;

          if cbPais.ItemIndex = -1 then
          begin
            Obj := cbPais;
            raise InteligentException.CreateByCode(18, ['Pais']);
          end;

          if cbEstado.ItemIndex = -1 then
          begin
            Obj := cbEstado;
            raise InteligentException.CreateByCode(18, ['Estado']);
          end;

          if IdCiudad.KeyValue = Null then
          begin
            Obj := IdCiudad;
            raise InteligentException.CreateByCode(18, ['Ciudad']);
          end;
        end;

        cdPersonalIMSS.Post;

        try
          CargarDatosFiltrados(cdPlazaAsignacion, 'IdPlazaAsignacion', [-9]);
          cdPlazaAsignacion.Open;

          cdPlazaAsignacion.Append;
          cdPlazaAsignacion.FieldByName('IdPlazaAsignacion').AsInteger := 0;
          cdPlazaAsignacion.FieldByName('IdPlazaDetalle').AsInteger := cdPlazaDetalle.FieldByName('IdPlazaDetalle').AsInteger;
          cdPlazaAsignacion.FieldByName('IdPersonalIMSS').AsInteger := LID_IdPersonalIMSS;
          cdPlazaAsignacion.Post;
        finally
          cdPlazaAsignacion.Close;
        end;

        CanClose := True;

        Connection.CommandTrx.SQL.Text := 'COMMIT';
        Connection.CommandTrx.ExecSQL;
      finally
        Screen.Cursor := LocCursor;
      end;
    except
      on e:InteligentException do
      begin
        if Obj.CanFocus then
          Obj.SetFocus;
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:InteligentWarning do
      begin
        CanClose := True;

        Connection.CommandTrx.SQL.Text := 'ROLLBACK';
        Connection.CommandTrx.ExecSQL;

        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;

      on e:Exception do
      begin
        CanClose := True;

        Connection.CommandTrx.SQL.Text := 'ROLLBACK';
        Connection.CommandTrx.ExecSQL;

        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    end;
  end
  else
  begin
    Connection.CommandTrx.SQL.Text := 'ROLLBACK';
    Connection.CommandTrx.ExecSQL;
  end;
end;

procedure TFrmContratar.FormShow(Sender: TObject);
var
  Forma: TForm;
  IdxOrg: Integer;
  LocCursor: TCursor;
  Stream: TMemoryStream;
begin
  Procesar := False;

  Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
  Connection.CommandTrx.ExecSQL;

  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Empresas']);

      if Not CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

      if Not CrearConjunto(cdLocalidad, 'nuc_localidad', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Localidades']);

      if Not CrearConjunto(cdProyecto, 'nuc_proyecto', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Proyectos']);

      if Not CrearConjunto(cdCargo, 'nuc_cargo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Puestos de Trabajo']);

      if Not CrearConjunto(cdPersonalIMSS, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Movimientos de Personal']);

      if Not CrearConjunto(cdPlazaDetalle, 'rhu_plazaasignacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Plazas vacantes']);

      if Not CrearConjunto(cdPlazaAsignacion, 'rhu_plazaasignacion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Asignación de Plazas']);

      CargarDatosFiltrados(cdPlazaDetalle, 'pOrden', [0]);

      cdOrganizacion.DisableControls;
      IdxOrg := -1;
      try
        cdOrganizacion.Open;
        while Not cdOrganizacion.Eof do
        begin
          cbIdOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

          if cdOrganizacion.FieldByName('IdOrganizacion').AsInteger = dsPersonal.DataSet.FieldByName('IdOrganizacion').AsInteger then
            IdxOrg := cbIdOrganizacion.Items.Count -1;

          cdOrganizacion.Next;
        end;
      finally
        cdOrganizacion.EnableControls;
      end;

      cbIdOrganizacion.ItemIndex := IdxOrg;
      cbIdOrganizacion.OnChange(cbIdOrganizacion);

      cdDepartamento.Open;
      cdLocalidad.Open;
      cdProyecto.Open;
      cdCargo.Open;

      if Not dsPersonal.DataSet.FieldByName('ImagenPersonal').IsNull then
      begin
        // Poner la imagen del personal
        Stream := TMemoryStream.Create;
        try
          try
            TBlobField(dsPersonal.DataSet.FieldByName('ImagenPersonal')).SaveToStream(Stream);
            AdvPicture1.Picture.Graphic.LoadFromStream(Stream);
          except
            InteliDialog.ShowModal('Error de imagen', 'Error al cargar la imagen almacenada en el registro de Personal', mtWarning, [mbOk], 0);
          end;
        finally
          Stream.Free;
        end;
      end;

      if dsPersonal.DataSet.FieldByName('FechaPase').IsNull then
      begin
        case InteliDialog.ShowModal('No se registró fecha de entrega de pase', 'No se ha registrado la fecha de entrega de pase para ingreso a la refinería.' + #10 + '¿Desea asignar la fecha de entrega del pase en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: begin
                   Forma := TForm.Create(Self);
                   try
                     pnlEntregaPase.Parent := Forma;
                     pnlEntregaPase.Align := alClient;
                     pnlEntregaPase.Visible := True;

                     Forma.Height := 140;
                     Forma.Width := 450;
                     Forma.BorderStyle := bsDialog;
                     Forma.Position := poOwnerFormCenter;

                     FechaPase.Date := Date;

                     if Forma.ShowModal = mrOk then
                     begin
                       Connection.zCommand.SQL.Text := 'UPDATE nuc_personal SET FechaPase = :FechaPase WHERE IdPersonal = :IdPersonal';
                       Connection.zCommand.ParamByName('FechaPase').AsString := DateToStrSQL(FechaPase.Date);
                       Connection.zCommand.ParamByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
                       Connection.zCommand.ExecSQL;

                       dsPersonal.DataSet.Refresh;
                     end
                     else
                       raise InteligentException.CreateByCode(24, ['El proceso de contratación ha sido cancelado por el usuario']);
                   finally
                     pnlEntregaPase.Visible := False;
                     pnlEntregaPase.Align := alNone;
                     pnlEntregaPase.Parent := Self;

                     Forma.Destroy;
                   end;
                 end;
          mrNo: ;
          mrCancel: raise InteligentException.CreateByCode(24, ['El proceso de contratación ha sido cancelado por el usuario']);
        end
      end;

      CargarDatosFiltrados(cdPersonalIMSS, 'IdPersonalIMSS', [-9]);
      cdPersonalIMSS.Open;
      cdPersonalIMSS.Append;

      cdPersonalIMSS.FieldByName('IdPersonalIMSS').AsInteger := 0;
      cdPersonalIMSS.FieldByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
      cdPersonalIMSS.FieldByName('FechaMovimiento').AsDateTIme := Now();
      cdPersonalIMSS.FieldByName('FechaReal').AsDateTIme := Now();
      cdPersonalIMSS.FieldByName('FechaRegistro').AsDateTIme := Now();
      cdPersonalIMSS.FieldByName('Procesado').AsString := 'Si';
      cdPersonalIMSS.FieldByName('TipoMovimiento').AsString := 'Reingreso';
      cdPersonalIMSS.FieldByName('Calle').AsVariant := dsPersonal.DataSet.FieldByName('Calle').AsVariant;
      cdPersonalIMSS.FieldByName('Numero').AsVariant := dsPersonal.DataSet.FieldByName('Numero').AsVariant;
      cdPersonalIMSS.FieldByName('Colonia').AsVariant := dsPersonal.DataSet.FieldByName('Colonia').AsVariant;
      cdPersonalIMSS.FieldByName('IdCiudad').AsVariant := dsPersonal.DataSet.FieldByName('IdCiudad').AsVariant;
      cdPersonalIMSS.FieldByName('CP').AsVariant := dsPersonal.DataSet.FieldByName('CP').AsVariant;
      if Not dsPersonal.DataSet.FieldByName('IdDepartamento').IsNull then
        cdPersonalIMSS.FieldByName('IdDepartamento').AsInteger := dsPersonal.DataSet.FieldByName('IdDepartamento').AsInteger;
      if Not dsPersonal.DataSet.FieldByName('IdCargo').IsNull then
        cdPersonalIMSS.FieldByName('IdCargo').AsInteger := dsPersonal.DataSet.FieldByName('IdCargo').AsInteger;


      Procesar := True;
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

procedure TFrmContratar.SalarioDiarioExit(Sender: TObject);
begin
  // Calcular el integrado si este no se ha capturado
  if (SalarioDiario.DataBinding.DataSource.DataSet.FieldByName('SalarioIntegrado').IsNull) and (Not Self.ActiveControl.ClassNameIs('TAdvGlowButton')) then
  begin
    SalarioDiario.DataBinding.DataSource.DataSet.FieldByName('SalarioIntegrado').AsFloat := SalarioDiario.Value * 1.0452;
    SalarioIntegrado.Value := Round(SalarioDiario.Value * 104.52) / 100;
  end;
end;

procedure TFrmContratar.CambiarEstado(Modo: Boolean);
begin
  Calle.Enabled := Modo;
  Numero.Enabled := Modo;
  Colonia.Enabled := Modo;
  CP.Enabled := Modo;
  IdCiudad.Enabled := Modo;
  cbEstado.Enabled := Modo;
  cbPais.Enabled := Modo;

  Calle.Font.Color := myColor[Modo];
  Numero.Font.Color := myColor[Modo];
  Colonia.Font.Color := myColor[Modo];
  CP.Font.Color := myColor[Modo];
  IdCiudad.Font.Color := myColor[Modo];
  cbEstado.Font.Color := myColor[Modo];
  cbPais.Font.Color := myColor[Modo];
end;

end.
