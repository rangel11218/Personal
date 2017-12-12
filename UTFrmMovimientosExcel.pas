unit UTFrmMovimientosExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDosCapas, UInteliDialog, URegistro, DB, ZAbstractRODataset,
  ZDataset, StdCtrls, Mask, JvLabel, ExtCtrls, AdvGlowButton,
  Frm_Connection, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, StrUtils,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, DateUtils,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ComObj,
  ComCtrls, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, cxContainer, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmMovimientosExcel = class(TForm)
    cdPersonal: TZReadOnlyQuery;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    btnProceder: TAdvGlowButton;
    dsPersonal: TDataSource;
    tvDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    NombreCompleto: TcxGridDBColumn;
    FechaReingreso: TcxGridDBColumn;
    btnGenerarExcel: TAdvGlowButton;
    btnCerrar: TAdvGlowButton;
    JvLabel3: TJvLabel;
    IdOrganizacion: TComboBox;
    cdOrganizacion: TZReadOnlyQuery;
    FechaBaja: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    Panel3: TPanel;
    ProgressBar1: TProgressBar;
    Desde: TcxDateEdit;
    Hasta: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure btnProcederClick(Sender: TObject);
    procedure btnGenerarExcelClick(Sender: TObject);
    procedure cdPersonalAfterOpen(DataSet: TDataSet);
    procedure cdPersonalAfterRefresh(DataSet: TDataSet);
    procedure cdPersonalAfterClose(DataSet: TDataSet);
    procedure IdOrganizacionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovimientosExcel: TFrmMovimientosExcel;

implementation

{$R *.dfm}

uses
  Personal, UExcelConst;

const
  CaptionTM: Array[0..1] of String = ('Listado de Reingresos de Personal', 'Listado de Personal dado de Baja');
  NomMes: Array[1..12] of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE');

procedure TFrmMovimientosExcel.btnGenerarExcelClick(Sender: TObject);
var
  Excel, WorkBook, WorkSheet: Variant;
  Termina: Boolean;
  Marca: TBookMark;
  i, Conse: Word;
  LocCursor: TCursor;
  Cerrarlo: Boolean;
  NombreArchivo: String;
begin
  Excel := CreateOleObject('Excel.Application');
  LocCursor := Screen.Cursor;
  Cerrarlo := True;
  try
    Screen.Cursor := crHourGlass;

    Excel.Visible := True;
    Excel.DisplayAlerts := False;

    Sleep(5000);

    // Pausa mientras no responda esta madre...
    repeat
      Sleep(1000);
      try
        Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
        Termina := True;
      except
        Termina := False;
      end;
    until Termina;
    Excel.Visible := False;

    if FrmMain.TipoMovimiento = 0 then
      NombreArchivo := 'ALTAS DEL '
    else
      NombreArchivo := 'BAJAS DEL ';
    NombreArchivo := NombreArchivo + IntToStr(YearOf(Hasta.Date)) + '-' + RightStr('0' + IntToStr(MonthOfTheYear(Hasta.Date)), 2) + RightStr('0' + IntToStr(DayOfTheMonth(Hasta.Date)), 2);

    SaveDialog1.FileName := NombreArchivo;
    if SaveDialog1.Execute(Self.Handle) then
    begin
      ProgressBar1.Position := 0;
      ProgressBar1.Max := cdPersonal.RecordCount;
      ProgressBar1.Visible := True;

      WorkSheet := WorkBook.WorkSheets[1];
      WorkSheet.Name := 'TituloPesta';

      // Dar formato a las columnas
      Excel.Columns[1].ColumnWidth := 10.71;
      Excel.Columns[2].ColumnWidth := 15.86;
      Excel.Columns[3].ColumnWidth := 15.86;
      Excel.Columns[4].ColumnWidth := 15.14;
      Excel.Columns[5].ColumnWidth := 32.14;
      Excel.Columns[6].ColumnWidth := 20.43;
      Excel.Columns[7].ColumnWidth := 21.29;
      Excel.Columns[8].ColumnWidth := 17.86;
      Excel.Columns[9].ColumnWidth := 30.57;
      Excel.Columns[10].ColumnWidth := 12.14;
      Excel.Columns[11].ColumnWidth := 15.29;
      Excel.Columns[12].ColumnWidth := 16.29;
      Excel.Columns[13].ColumnWidth := 15.29;
      Excel.Columns[14].ColumnWidth := 25;
      Excel.Columns[15].ColumnWidth := 39.71;

      // Dar formato a los renglones
      Excel.Rows[1].RowHeight := 18.75;
      Excel.Rows[2].RowHeight := 25.50;
      Excel.Rows[3].RowHeight := 12.75;

      // Poner los colores adecuados
      // Linea 1
      WorkSheet.Range['A1:O1'].Select;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
      Excel.Selection.Interior.Color := 65535;
      Excel.Selection.Interior.TintAndShade := 0;
      Excel.Selection.Interior.PatternTintAndShade := 0;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 11;
      Excel.Selection.Font.Strikethrough := False;
      Excel.Selection.Font.Superscript := False;
      Excel.Selection.Font.Subscript := False;
      Excel.Selection.Font.OutlineFont := False;
      Excel.Selection.Font.Shadow := False;
      Excel.Selection.Font.Underline := xlUnderlineStyleNone;
      Excel.Selection.Font.ThemeColor := xlThemeColorLight1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeFont := xlThemeFontMinor;

      // Linea 2 y 3 Part. 1
      WorkSheet.Range['A2:C3'].Select;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
      Excel.Selection.Interior.ThemeColor := xlThemeColorAccent5;
      Excel.Selection.Interior.TintAndShade := -0.249946592608417;
      Excel.Selection.Interior.PatternTintAndShade := 0;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 8;
      Excel.Selection.Font.Strikethrough := False;
      Excel.Selection.Font.Superscript := False;
      Excel.Selection.Font.Subscript := False;
      Excel.Selection.Font.OutlineFont := False;
      Excel.Selection.Font.Shadow := False;
      Excel.Selection.Font.Underline := xlUnderlineStyleNone;
      Excel.Selection.Font.ThemeColor := xlThemeColorLight1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeColor := xlThemeColorDark1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeFont := xlThemeFontMinor;

      // Linea 2 y 3 Part. 2
      WorkSheet.Range['D2:H3'].Select;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
      Excel.Selection.Interior.ThemeColor := xlThemeColorAccent2;
      Excel.Selection.Interior.TintAndShade := -0.499984740745262;
      Excel.Selection.Interior.PatternTintAndShade := 0;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Strikethrough := False;
      Excel.Selection.Font.Superscript := False;
      Excel.Selection.Font.Subscript := False;
      Excel.Selection.Font.OutlineFont := False;
      Excel.Selection.Font.Shadow := False;
      Excel.Selection.Font.Underline := xlUnderlineStyleNone;
      Excel.Selection.Font.ThemeColor := xlThemeColorDark1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeFont := xlThemeFontMinor;

      // Linea 2 y 3 Part. 3
      WorkSheet.Range['I2:K3'].Select;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
      Excel.Selection.Interior.ThemeColor := xlThemeColorAccent5;
      Excel.Selection.Interior.TintAndShade := -0.249946592608417;
      Excel.Selection.Interior.PatternTintAndShade := 0;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Strikethrough := False;
      Excel.Selection.Font.Superscript := False;
      Excel.Selection.Font.Subscript := False;
      Excel.Selection.Font.OutlineFont := False;
      Excel.Selection.Font.Shadow := False;
      Excel.Selection.Font.Underline := xlUnderlineStyleNone;
      Excel.Selection.Font.ThemeColor := xlThemeColorDark1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeFont := xlThemeFontMinor;

      // Linea 2 y 3 Part. 4
      WorkSheet.Range['L2:O3'].Select;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
      Excel.Selection.Interior.Color := 6299648;
      Excel.Selection.Interior.TintAndShade := 0;
      Excel.Selection.Interior.PatternTintAndShade := 0;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 10;
      Excel.Selection.Font.Strikethrough := False;
      Excel.Selection.Font.Superscript := False;
      Excel.Selection.Font.Subscript := False;
      Excel.Selection.Font.OutlineFont := False;
      Excel.Selection.Font.Shadow := False;
      Excel.Selection.Font.Underline := xlUnderlineStyleNone;
      Excel.Selection.Font.ThemeColor := xlThemeColorDark1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeFont := xlThemeFontMinor;

      WorkSheet.Range['A1:O3'].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.WrapText := True;

      // Poner los textos del encabezado
      WorkSheet.Range['A1:K1'].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlBottom;
      Excel.Selection.WrapText := False;
      Excel.Selection.Orientation := 0;
      Excel.Selection.AddIndent := False;
      Excel.Selection.IndentLevel := 0;
      Excel.Selection.ShrinkToFit := False;
      Excel.Selection.ReadingOrder := xlContext;
      Excel.Selection.MergeCells := True;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 14;
      case cdPersonal.FieldByName('IdxEstado').AsInteger of
        1: Excel.Selection.FormulaR1C1 := 'ALTA ' + cdPersonal.FieldByName('NombreLocalidad').AsString + '                                                       ' + RightStr('0' + IntToStr(DayOfTheMonth(Hasta.Date)), 2) + ' ' + NomMes[MonthOfTheYear(Hasta.Date)] + ' ' + IntToStr(YearOf(Hasta.Date));
        2: Excel.Selection.FormulaR1C1 := 'BAJA ' + cdPersonal.FieldByName('NombreLocalidad').AsString + '                                                       ' + RightStr('0' + IntToStr(DayOfTheMonth(Hasta.Date)), 2) + ' ' + NomMes[MonthOfTheYear(Hasta.Date)] + ' ' + IntToStr(YearOf(Hasta.Date));
      end;

      WorkSheet.Range['L1:O1'].Select;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlBottom;
      Excel.Selection.WrapText := False;
      Excel.Selection.Orientation := 0;
      Excel.Selection.AddIndent := False;
      Excel.Selection.IndentLevel := 0;
      Excel.Selection.ShrinkToFit := False;
      Excel.Selection.ReadingOrder := xlContext;
      Excel.Selection.MergeCells := True;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 11;
      Excel.Selection.FormulaR1C1 := 'INFORMACION INFONAVIT';

      WorkSheet.Cells[2, 1].FormulaR1C1 := 'PARTIDA';
      WorkSheet.Cells[2, 2].FormulaR1C1 := 'LUGAR TRABAJO';
      WorkSheet.Cells[2, 3].FormulaR1C1 := 'PROYECTO';
      WorkSheet.Cells[2, 4].FormulaR1C1 := 'No. TRABAJADOR';
      WorkSheet.Cells[2, 5].FormulaR1C1 := 'NOMBRE';
      WorkSheet.Cells[2, 6].FormulaR1C1 := 'CURP';
      WorkSheet.Cells[2, 7].FormulaR1C1 := 'RFC' + #10 + 'con homoclave';
      WorkSheet.Cells[2, 8].FormulaR1C1 := 'No. IMSS';
      WorkSheet.Cells[2, 9].FormulaR1C1 := 'DIRECCION';
      WorkSheet.Cells[2, 10].FormulaR1C1 := 'CODIGO POSTAL';
      WorkSheet.Cells[2, 11].FormulaR1C1 := 'CATEGORIA / PUESTO';
      WorkSheet.Cells[2, 12].FormulaR1C1 := 'TIENE';
      WorkSheet.Cells[2, 13].FormulaR1C1 := 'NUMERO CREDITO';
      WorkSheet.Cells[2, 14].FormulaR1C1 := 'DESCUENTO VSM, % , $';
      WorkSheet.Cells[2, 15].FormulaR1C1 := 'HOJA DE RETENCIÓN';
      WorkSheet.Cells[2, 15].Font.Size := 11;

      // Poner los datos de los empleados
      cdPersonal.DisableControls;
      Marca := cdPersonal.Bookmark;
      try
        cdPersonal.First;
        Conse := 1;
        while Not cdPersonal.Eof do
        begin
          ProgressBar1.Position := cdPersonal.RecNo;

          WorkSheet.Cells[Conse + 3, 1].FormulaR1C1 := IntToStr(Conse);
          WorkSheet.Cells[Conse + 3, 2].FormulaR1C1 := cdPersonal.FieldByName('NombreLocalidad').AsString;
          WorkSheet.Cells[Conse + 3, 3].FormulaR1C1 := cdPersonal.FieldByName('TituloProyecto').AsString;
          WorkSheet.Cells[Conse + 3, 4].NumberFormat := '@';
          WorkSheet.Cells[Conse + 3, 4].FormulaR1C1 := #39 + cdPersonal.FieldByName('CodigoPersonal').AsString;
          WorkSheet.Cells[Conse + 3, 5].FormulaR1C1 := cdPersonal.FieldByName('NombreCompleto').AsString;
          WorkSheet.Cells[Conse + 3, 6].FormulaR1C1 := cdPersonal.FieldByName('CURP').AsString;
          WorkSheet.Cells[Conse + 3, 7].FormulaR1C1 := cdPersonal.FieldByName('RFC').AsString;
          //WorkSheet.Cells[Conse + 3, 8].NumberFormat := '@';
          WorkSheet.Cells[Conse + 3, 8].FormulaR1C1 := #39 + cdPersonal.FieldByName('NumeroSeguroSocial').AsString;
          WorkSheet.Cells[Conse + 3, 9].FormulaR1C1 := cdPersonal.FieldByName('Domicilio').AsString;
          WorkSheet.Cells[Conse + 3, 10].FormulaR1C1 := cdPersonal.FieldByName('CP').AsString;
          WorkSheet.Cells[Conse + 3, 11].FormulaR1C1 := cdPersonal.FieldByName('TituloCargo').AsString;
          WorkSheet.Cells[Conse + 3, 12].FormulaR1C1 := cdPersonal.FieldByName('Infonavit').AsString;
          WorkSheet.Cells[Conse + 3, 13].FormulaR1C1 := cdPersonal.FieldByName('tAplicacionInfonavit').AsString;
          WorkSheet.Cells[Conse + 3, 14].FormulaR1C1 := cdPersonal.FieldByName('NumeroInfonavit').AsString;

          WorkSheet.Range['A' + IntToStr(Conse + 3) + ':O' + IntToStr(Conse +3)].WrapText := True;

          Inc(Conse);
          cdPersonal.Next;
        end;
      finally
        if cdPersonal.BookmarkValid(Marca) then
          cdPersonal.GotoBookmark(Marca);

        cdPersonal.EnableControls;
      end;

      // Verificar la altura de los renglones para poner como valor minimo de 30
      for i := 4 to Conse +2 do
        if Excel.Rows[i].RowHeight < 30 then
          Excel.Rows[i].RowHeight := 30;

      // Color verde para los datos
      WorkSheet.Range['A4:O' + IntToStr(Conse +2)].Select;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.Font.FontStyle := 'Negrita';
      Excel.Selection.Font.Size := 11;
      Excel.Selection.Font.Strikethrough := False;
      Excel.Selection.Font.Superscript := False;
      Excel.Selection.Font.Subscript := False;
      Excel.Selection.Font.OutlineFont := False;
      Excel.Selection.Font.Shadow := False;
      Excel.Selection.Font.Underline := xlUnderlineStyleNone;
      Excel.Selection.Font.ThemeColor := xlThemeColorLight1;
      Excel.Selection.Font.TintAndShade := 0;
      Excel.Selection.Font.ThemeFont := xlThemeFontMinor;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Interior.PatternColorIndex := xlAutomatic;
      Excel.Selection.Interior.ThemeColor := xlThemeColorAccent6;
      Excel.Selection.Interior.TintAndShade := 0;
      Excel.Selection.Interior.PatternTintAndShade := 0;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.WrapText := True;

      // Pintar los renglones de verde
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.WrapText := True;
      Excel.Selection.Borders[xlDiagonalDown].LineStyle := xlNone;
      Excel.Selection.Borders[xlDiagonalUp].LineStyle := xlNone;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
      Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
      Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
      Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideHorizontal].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlInsideHorizontal].TintAndShade := 0;
      Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

      // Poner las lineas de división
      WorkSheet.Range['A1:O' + IntToStr(Conse +2)].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;
      Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
      Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
      Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideHorizontal].ColorIndex := xlAutomatic;
      Excel.Selection.Borders[xlInsideHorizontal].TintAndShade := 0;
      Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

      WorkSheet.Range['A1:A1'].Select;

      Excel.Visible := True;
      try
        // Grabar el archivo
        Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName, xlOpenXMLWorkbook);
      finally
        Excel.Visible := False;
      end;

      Excel.Visible := InteliDialog.ShowModal('Proceso terminado', 'El proceso ha generado el archivo:' + #10 + #10 + SaveDialog1.FileName + #10 + #10 + '¿Desea abrir el archivo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
    end;
  finally
    ProgressBar1.Visible := False;
    Screen.Cursor := LocCursor;

    Excel.DisplayAlerts := True;
    if Not Excel.Visible then
      Excel.Quit;

    Excel := Null;
  end;
end;

procedure TFrmMovimientosExcel.btnProcederClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    cdPersonal.Close;
    if Not CargarDatosFiltrados(cdPersonal, 'IdOrganizacion,IdxEstado,ContratacionDesde,ContratacionHasta', [Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), FrmMain.TipoMovimiento +1, DateToStrSQL(Desde.Date), DateToStrSQL(Hasta.Date)]) then
      ShowMessage('Error');
    cdPersonal.Open;

  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmMovimientosExcel.cdPersonalAfterClose(DataSet: TDataSet);
begin
  btnGenerarExcel.Enabled := False;
end;

procedure TFrmMovimientosExcel.cdPersonalAfterOpen(DataSet: TDataSet);
begin
  btnGenerarExcel.Enabled := (DataSet.Active) and (DataSet.RecordCount > 0);
end;

procedure TFrmMovimientosExcel.cdPersonalAfterRefresh(DataSet: TDataSet);
begin
  btnGenerarExcel.Enabled := (DataSet.Active) and (DataSet.RecordCount > 0);
end;

procedure TFrmMovimientosExcel.FormShow(Sender: TObject);
var
  LocCursor: TCursor;
begin
  try
    LocCursor := Screen.Cursor;
    try
      Screen.Cursor := crHourGlass;

      Caption := CaptionTM[FrmMain.TipoMovimiento];

      CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog);
      CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog);
      cdOrganizacion.Open;
      IdOrganizacion.Items.Clear;
      IdOrganizacion.Items.AddObject('< Todas las empresas >', TObject(-1));
      while not cdOrganizacion.Eof do
      begin
        IdOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));
        cdOrganizacion.Next;
      end;
      IdOrganizacion.ItemIndex := 0;
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

procedure TFrmMovimientosExcel.IdOrganizacionChange(Sender: TObject);
begin
  cdOrganizacion.Locate('IdOrganizacion', Integer(IdOrganizacion.Items.Objects[IdOrganizacion.ItemIndex]), []);
end;

end.
