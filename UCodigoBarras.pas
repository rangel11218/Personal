unit UCodigoBarras;

interface

Uses
  SysUtils, ExtCtrls, Graphics, Classes, Dialogs;

const
  CodificaIzq : array[0..9] of PChar=('AAAAA','ABABB','ABBAB','ABBBA','BAABB','BBAAB','BBBAA','BABAB','BABBA','BBABA');
  EAN_izqA : array[0..9] of PChar=('0001101','0011001','0010011','0111101','0100011','0110001','0101111','0111011','0110111','0001011');
  EAN_izqB : array[0..9] of PChar=('0100111','0110011','0011011','0100001','0011101','0111001','0000101','0010001','0001001','0010111');
  EAN_dcha : array[0..9] of PChar=('1110010','1100110','1101100','1000010','1011100','1001110','1010000','1000100','1001000','1110100');

  function DigitoControl(Num: String): Byte;
  procedure EANCorrecto(var num : string);
  procedure Codifica(Var Num : string; Var Grafico: TImage);
  procedure Dibujar(Matrix : string; Num: String; Grafico: TImage);

implementation

function DigitoControl(Num: String): Byte;
var
  i, N, Flag: Byte;
  Sum: Integer;
begin
  if Not((Length(Num) = 7) or (Length(Num) = 8) or (Length(Num) = 12) or (Length(Num) = 13)) then
    raise Exception.Create('LONGITUD DE CODIGO NO VALIDA');

  try
    Sum := 0;
    if (Length(Num) = 8) or (Length(Num) = 13) then
      N := Length(Num) -1
    else
      N := Length(Num);

    for i := 1 to N do
    begin
      if (i mod 2) = 0 then
      begin
        if N = 12 then
          Sum := Sum + StrToInt(Num[i]) * 3
        else
          Sum := Sum + StrToInt(Num[i]);
      end
      else
      begin
        if N = 12 then
          Sum := Sum + StrToInt(Num[i])
        else
          Sum := Sum + StrToInt(Num[i]) * 3;
      end;
    end;
    if Sum > 99 then
      Flag := 10 - (Sum mod 100)
    else
      Flag := 10 - (Sum mod 10);
    if Flag = 10 then Flag := 0;
  finally
    Result := Flag;
  end;
end;

procedure EANCorrecto(var Num: string);
var
  Flag: Byte;
begin
  Flag := DigitoControl(Num);
  if not (StrToInt(num[Length(Num)]) = Flag) then
  begin
    Num := Copy(Num, 1, Length(Num) -1) + IntToStr(Flag);
    {ShowMessage('El dígito de control no es válido y será cambiado' + #10 +
                'El dígito correcto es ' + IntToStr(Flag));}
  end;
end;

procedure Codifica(Var Num : string; Var Grafico: TImage);
var
  Matrix: string;
  i: integer;
begin
  Matrix := '';
  case Length(Num) of
  13: begin
    EANCorrecto(Num);
    matrix := Matrix + 'x0x'; // barra inicio
    matrix := Matrix + EAN_izqA[StrToInt(Num[2])];
    for i := 3 to 7 do
      if CodificaIzq[StrToInt(num[1])][i -3] = 'A' then
        Matrix := Matrix + EAN_izqA[StrToInt(Num[i])]
      else
        Matrix := Matrix + EAN_izqB[StrToInt(Num[i])];
    Matrix := Matrix + '0x0x0'; // barra central
    Matrix := Matrix + EAN_dcha[StrToInt(Num[8])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[9])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[10])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[11])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[12])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[13])];
    Matrix := Matrix + 'x0x'; // barra final
    Dibujar(Matrix, Num, Grafico);
  end;
  8: begin
    EANCorrecto(Num);
    Matrix := Matrix + 'x0x';
    Matrix := Matrix + EAN_izqA[StrToInt(Num[1])];
    Matrix := Matrix + EAN_izqA[StrToInt(Num[2])];
    Matrix := Matrix + EAN_izqA[StrToInt(Num[3])];
    Matrix := Matrix + EAN_izqA[StrToInt(Num[4])];
    Matrix := Matrix + '0x0x0';
    Matrix := Matrix + EAN_dcha[StrToInt(Num[5])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[6])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[7])];
    Matrix := Matrix + EAN_dcha[StrToInt(Num[8])];
    Matrix := Matrix + 'x0x';
    Dibujar(Matrix, Num, Grafico);
  end
  else
    raise Exception.Create('LONGITUD DE CODIGO NO VALIDA');
  end;
end;

procedure Dibujar(Matrix : string; Num: String; Grafico: TImage);
var
  i : integer;
begin
  Grafico.Canvas.Brush.Color := clWhite;
  Grafico.Canvas.FillRect(Rect(0, 0, Grafico.Width, Grafico.Height));
  Grafico.Canvas.Pen.Color := clBlack;
  for i := 1 to Length(Matrix) do
    if Matrix[i] = '1' then
      Grafico.Canvas.PolyLine([Point(10 +i,10),Point(10 +i, 50)])
    else
      if Matrix[i]='x' then
        Grafico.Canvas.PolyLine([Point(10 +i, 10),Point(10 +i, 55)]);
  if Length(Num) = 13 then
  begin
    Grafico.Canvas.TextOut(3, 50, Num[1]);
    Grafico.Canvas.TextOut(17, 50, copy(Num, 2, 6));
    Grafico.Canvas.TextOut(63, 50, copy(Num, 8, 6));
  end
  else
  if Length(Num) = 8 then
  begin
    Grafico.Canvas.TextOut(16, 50, copy(Num, 1, 4));
    Grafico.Canvas.TextOut(48, 50, copy(Num, 5, 4));
  end;
end;

end.
