unit UTFrmTomarFoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls,
  AdvGlowButton, cxImage, ExtCtrls, ImgList, VFrames, DB,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFrmTomarFoto = class(TForm)
    Panel2: TPanel;
    pbCamara: TPaintBox;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Imagen: TcxImage;
    Panel4: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    Panel1: TPanel;
    cbCamaras: TComboBox;
    cbTamanios: TComboBox;
    btnTomarFoto: TAdvGlowButton;
    btnEncender: TAdvGlowButton;
    btnPausar: TAdvGlowButton;
    btnDetener: TAdvGlowButton;
    dsPersonal: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbCamarasChange(Sender: TObject);
    procedure cbTamaniosChange(Sender: TObject);
    procedure btnTomarFotoClick(Sender: TObject);
    procedure btnEncenderClick(Sender: TObject);
    procedure btnPausarClick(Sender: TObject);
    procedure btnDetenerClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    cam: TVideoImage;
    procedure BorrarImagen;
  public
    { Public declarations }
  end;

var
  FrmTomarFoto: TFrmTomarFoto;

implementation

{$R *.dfm}

procedure TFrmTomarFoto.AdvGlowButton1Click(Sender: TObject);
var
  Nombre: String;
begin
  Nombre := ExtractFilePath(Application.ExeName) + 'temp.bmp';
  dsPersonal.DataSet.FieldByName('ExtImagen').AsString := '.bmp';
  TBlobField(dsPersonal.DataSet.FieldByName('ImagenPersonal')).LoadFromFile(Nombre);
  Close;
end;

procedure TFrmTomarFoto.btnDetenerClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    cam.VideoStop;

    btnEncender.Enabled := True;
    btnPausar.Enabled := False;
    btnDetener.Enabled := False;
    btnTomarFoto.Enabled := False;

    cbTamanios.Items.Clear;
    cbTamanios.Enabled := False;

    BorrarImagen;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmTomarFoto.btnEncenderClick(Sender: TObject);
var
  VS: TStringList;
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;
    if cam.IsPaused then
    begin
      cam.VideoResume;
    end
    else
    begin
      cam.VideoStart(cbCamaras.Items.Strings[cbCamaras.ItemIndex]);
      VS := TStringList.Create;
      try
        cam.GetListOfSupportedVideoSizes(VS);
        cbTamanios.Items.CommaText := VS.CommaText;
        cbTamanios.ItemIndex := 0;
        cbTamanios.OnChange(cbTamanios);
      finally
        VS.Free;
      end;
    end;

    btnEncender.Enabled := False;
    btnPausar.Enabled := True;
    btnDetener.Enabled := True;
    btnTomarFoto.Enabled := True;

    cbTamanios.Enabled := True;

    BorrarImagen;
  finally
    Screen.Cursor := LocCursor;
  end;
  //cam.GetVideoPropertySettings(VideoP, Min, Max, Tamanio, Defa, Actual, Auto);
end;

procedure TFrmTomarFoto.btnPausarClick(Sender: TObject);
var
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    cam.VideoPause;

    btnEncender.Enabled := True;
    btnPausar.Enabled := False;
    btnDetener.Enabled := True;
    btnTomarFoto.Enabled := False;

    cbTamanios.Enabled := False;

    BorrarImagen;
  finally
    Screen.Cursor := LocCursor;
  end;
end;

procedure TFrmTomarFoto.btnTomarFotoClick(Sender: TObject);
var
  BMP: TBitmap;
  Nombre: String;
begin
  try
    Nombre := ExtractFilePath(Application.ExeName) + 'temp.bmp';

    BMP := TBitmap.Create;
    cam.GetBitmap(BMP);
    BMP.SaveToFile(Nombre);

    Imagen.Picture.LoadFromFile(Nombre);
  finally
    BMP.Free;
  end;
end;

procedure TFrmTomarFoto.cbCamarasChange(Sender: TObject);
begin
  cam.SetDisplayCanvas(pbCamara.Canvas);
end;

procedure TFrmTomarFoto.cbTamaniosChange(Sender: TObject);
begin
  BorrarImagen;
  cam.SetResolutionByIndex(cbTamanios.ItemIndex);
end;

procedure TFrmTomarFoto.FormClose(Sender: TObject; var Action: TCloseAction);
var
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    cam.VideoStop;
    cam.Destroy;
  finally
    Screen.Cursor := LocCursor;;
  end;
end;

procedure TFrmTomarFoto.FormShow(Sender: TObject);
var
  strlst: TStringList;
begin
  strlst := TStringList.Create;
  try
    cam := TVideoImage.Create;
    cam.GetListOfDevices(strlst);
    cbCamaras.Items.CommaText := strlst.CommaText;
    if cbCamaras.Items.Count = 0 then
      raise Exception.Create('No hay ni una camara');
    cam.VideoStop;
    cbCamaras.ItemIndex := 0;
    cbCamaras.OnChange(cbCamaras);
  finally
    strlst.Destroy;
  end;
end;

procedure TFrmTomarFoto.BorrarImagen;
var
  Rect: TRect;
begin
  Rect.Left := -1;
  Rect.Top := -1;
  Rect.Right := pbCamara.Width;
  Rect.Bottom := pbCamara.Height;

  pbCamara.Canvas.Brush.Color := pbCamara.Color;
  pbCamara.Canvas.FillRect(Rect);
end;

end.
