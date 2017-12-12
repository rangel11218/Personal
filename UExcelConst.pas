unit UExcelConst;

interface

const
  //borde
  xlCenter = -4108;
  xlRight = -4152;
  xlTop = -4160;

  //alineaciones  horizontal
  xlBottom =-4107;
  xlDiagonalDown = 5;
  xlDiagonalUp = 6;
  xlNone = -4142;
  xlContext = -5002;
  xlEdgeBottom = 9;
  xlEdgeLeft = 7;
  xlEdgeTop = 8;
  xlEdgeRight = 10;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;

  //--------- Colores en Fondo de Celdas -------------------------------------
  xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
  xl_CL_AzulCielo = $00000022; // (33) Azul Cielo
  xl_CL_Turq      = $00000008; // ( 8) Truquesa
  xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
  xl_CL_Rojo      = $00000003; // ( 3) Rojo
  xl_CL_Gris      = $00000010;
  xl_CL_GrisLight = $0000000f;

   //hoja
   xlWBATWorksheet = -4167;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;

   xlSolid = 1;
   xlAutomatic = -4105;
   xlUnderlineStyleNone = -4142;
   xlThemeFontMinor = 2;
   xlThemeColorDark1 = 1;
   xlThemeColorLight1 = 2;
   xlThemeColorAccent2 = 6;
   xlThemeColorAccent5 = 9;
   xlThemeColorAccent6 = 10;

   // Constantes de Excel
   xlOpenXMLWorkbook = 51;

implementation

end.
