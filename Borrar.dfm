object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 674
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbPanelEstado: TGroupBox
    Left = 0
    Top = 0
    Width = 1063
    Height = 49
    Align = alTop
    Caption = 'Estado'
    TabOrder = 0
    Visible = False
    ExplicitWidth = 1021
    object lblEstado: TJvLabel
      Left = 602
      Top = 24
      Width = 51
      Height = 13
      Caption = 'lblEstado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrack = False
    end
    object pAmarillo: TPanel
      Tag = 1
      Left = 7
      Top = 18
      Width = 200
      Height = 23
      Hint = 
        'Se capturaron sus documentos pero no tiene pase para ingresar a ' +
        'la refiner'#237'a'
      Caption = 'Capturado'
      Color = clYellow
      ParentBackground = False
      TabOrder = 0
      Visible = False
    end
    object pVerde: TPanel
      Tag = 2
      Left = 121
      Top = 18
      Width = 200
      Height = 23
      Hint = 
        'Ya tiene pase para ingresar a la refiner'#237'a y tiene menos de 3 d'#237 +
        'as trabajando'
      Caption = 'Con Pase < 3'
      Color = clLime
      ParentBackground = False
      TabOrder = 1
      Visible = False
    end
    object pAzul: TPanel
      Tag = 3
      Left = 220
      Top = 18
      Width = 200
      Height = 23
      Hint = 'Trabajando menos de tres d'#237'as'
      Caption = 'Trabajando < 3'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object pRojo: TPanel
      Tag = 4
      Left = 320
      Top = 17
      Width = 200
      Height = 23
      Hint = 'Ya ha sido dado de baja'
      Caption = 'Baja'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object pCafe: TPanel
      Tag = 4
      Left = 277
      Top = 17
      Width = 200
      Height = 23
      Hint = 'Tiene m'#225's de tres d'#237'as trabajando'
      Caption = 'Trabajando > 3'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
  end
  object PagerBaja: TAdvToolBarPager
    Left = 0
    Top = 49
    Width = 1063
    Height = 200
    ActivePage = PageFiniquitox
    CaptionButtons = [cbClose, cbMinimize, cbMaximize]
    Hints.MDICloseBtnHint = 'Close'
    Hints.MDIMinimizeBtnHint = 'Minimize'
    Hints.MDIMaximizeBtnHint = 'Maximize'
    Hints.HelpBtnHint = 'Help'
    TabGroups = <>
    TabSettings.EndMargin = 0
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    PageLeftMargin = 0
    PageRightMargin = 0
    OptionPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFDE3E3E3E3FF000000FDE3FFFDFDE3E3E3FF000000FDE3FFFDFDE3
      E3E3FF000000FDE3FFFDE3FFFDE3FD000000FDE3FFFDFDFDFDFDFD000000FDE3
      FFFFFFFFFFFDFD000000FDE3E3E3E3E3E3FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    OptionDisabledPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFD07070707FF000000FD07FFFDFD070707FF000000FD07FFFDFD07
      0707FF000000FD07FFFD07FFFD07FD000000FD07FFFDFDFDFDFDFD000000FD07
      FFFFFFFFFFFDFD000000FD070707070707FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    Visible = False
    TabOrder = 1
    ExplicitWidth = 1021
    object PageContratacionx: TAdvPage
      Left = 4
      Top = 52
      Width = 1055
      Height = 143
      Caption = 'AdvToolBarPager11'
      object gbContratacion: TGroupBox
        Left = 0
        Top = 0
        Width = 1055
        Height = 143
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1013
        object JvLabel4: TJvLabel
          Left = 84
          Top = 46
          Width = 45
          Height = 13
          Caption = 'Empresa:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel5: TJvLabel
          Left = 56
          Top = 68
          Width = 73
          Height = 13
          Caption = 'Departamento:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel6: TJvLabel
          Left = 81
          Top = 90
          Width = 48
          Height = 13
          Caption = 'Localidad:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel7: TJvLabel
          Left = 82
          Top = 112
          Width = 47
          Height = 13
          Caption = 'Proyecto:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel15: TJvLabel
          Left = 92
          Top = 134
          Width = 37
          Height = 13
          Caption = 'Puesto:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel16: TJvLabel
          Left = 30
          Top = 24
          Width = 98
          Height = 13
          Caption = 'Fecha Contrataci'#243'n:'
          Transparent = True
          HotTrack = False
        end
        object JvLabel17: TJvLabel
          Left = 247
          Top = 24
          Width = 73
          Height = 13
          Caption = 'Fecha Ingreso:'
          Transparent = True
          HotTrack = False
        end
        object NombreOrganizacion: TDBText
          Left = 137
          Top = 46
          Width = 117
          Height = 13
          AutoSize = True
          DataField = 'NombreOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FechaReingreso: TDBText
          Left = 137
          Top = 24
          Width = 90
          Height = 13
          AutoSize = True
          DataField = 'FechaReingreso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FechaReal: TDBText
          Left = 328
          Top = 24
          Width = 58
          Height = 13
          AutoSize = True
          DataField = 'FechaReal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TituloDepartamento: TDBText
          Left = 137
          Top = 68
          Width = 115
          Height = 13
          AutoSize = True
          DataField = 'TituloDepartamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object NombreLocalidad: TDBText
          Left = 137
          Top = 90
          Width = 97
          Height = 13
          AutoSize = True
          DataField = 'NombreLocalidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TituloProyecto: TDBText
          Left = 137
          Top = 112
          Width = 83
          Height = 13
          AutoSize = True
          DataField = 'TituloProyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TituloCargo: TDBText
          Left = 137
          Top = 134
          Width = 65
          Height = 13
          AutoSize = True
          DataField = 'TituloCargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel10: TJvLabel
          Left = 63
          Top = 155
          Width = 66
          Height = 13
          Caption = 'Salario Diario:'
          Transparent = True
          HotTrack = False
        end
        object SalarioDiario: TDBText
          Left = 137
          Top = 155
          Width = 72
          Height = 13
          AutoSize = True
          DataField = 'SalarioDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object JvLabel11: TJvLabel
          Left = 264
          Top = 155
          Width = 87
          Height = 13
          Caption = 'Salario Integrado:'
          Transparent = True
          HotTrack = False
        end
        object SalarioIntegrado: TDBText
          Left = 359
          Top = 155
          Width = 96
          Height = 13
          AutoSize = True
          DataField = 'SalarioIntegrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object PageBajax: TAdvPage
      Left = 4
      Top = 52
      Width = 1055
      Height = 143
      Caption = 'AdvToolBarPager12'
    end
    object PageFiniquitox: TAdvPage
      Left = 4
      Top = 52
      Width = 1055
      Height = 143
      Caption = 'AdvToolBarPager13'
      object JvLabel22: TJvLabel
        Left = 17
        Top = 104
        Width = 139
        Height = 13
        Caption = 'Importe de la Indemnizaci'#243'n:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel20: TJvLabel
        Left = 17
        Top = 76
        Width = 168
        Height = 13
        Caption = 'Salario Semanal a la fecha de baja:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel19: TJvLabel
        Left = 17
        Top = 47
        Width = 151
        Height = 13
        Caption = 'Dias de Vacaciones pendientes:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel18: TJvLabel
        Left = 17
        Top = 19
        Width = 140
        Height = 13
        Caption = 'Fecha de pago de Aguinaldo:'
        Transparent = True
        HotTrack = False
      end
      object btnVacPend: TAdvGlowButton
        Left = 277
        Top = 43
        Width = 80
        Height = 22
        Caption = 'Seleccionar...'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        TabStop = True
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object FechaPagoAguinaldo: TcxDateEdit
        Left = 163
        Top = 16
        TabOrder = 1
        Width = 121
      end
      object DiasVacacionesPendientes: TcxCalcEdit
        Left = 174
        Top = 43
        EditValue = 0.000000000000000000
        TabOrder = 2
        Width = 97
      end
      object SalarioSemanalBaja: TcxCalcEdit
        Left = 191
        Top = 73
        EditValue = 0.000000000000000000
        TabOrder = 3
        Width = 101
      end
      object Indemnizacion: TcxCalcEdit
        Left = 176
        Top = 102
        EditValue = 0.000000000000000000
        TabOrder = 4
        Width = 90
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 560
    Top = 144
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 0.800000000000000000
    PreviewOptions.ZoomMode = zmManyPages
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42905.446438344900000000
    ReportOptions.LastChange = 43063.580813738430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Contratacion.Visible := <frxDBPersonal."FechaReingreso"> > 0;'
      '  '
      '  if <frxDBPersonal."IdxEstado"> > 1 then'
      
        '    Linea.Color := clRed                                        ' +
        '                       '
      '  else'
      
        '    if <frxDBPersonal."IdxEstado"> > 0 then                     ' +
        '              '
      '      Linea.Color := clLime          '
      '    else'
      '      Linea.Color := clNone;'
      ''
      '  if <frxDBPersonal."DoctoActaNacimiento"> = 1 then'
      
        '    DoctoActaNacimiento.Text := '#39'X'#39';                            ' +
        '                      '
      ''
      '  if <frxDBPersonal."DoctoActaNacimiento"> = 1 then'
      '    DoctoActaNacimiento.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoCURP"> = 1 then'
      '    DoctoCURP.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoNoPenales"> = 1 then'
      '    DoctoNoPenales.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoExamenMedico"> = 1 then'
      '    DoctoExamenMedico.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoRFC"> = 1 then'
      '    DoctoRFC.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoIMSS"> = 1 then'
      '    DoctoIMSS.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoCompDom"> = 1 then'
      '    DoctoCompDom.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoIFE"> = 1 then'
      '    DoctoIFE.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoCurriculum"> = 1 then'
      '    DoctoCurriculum.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoFotos"> = 1 then'
      '    DoctoFotos.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoContrato"> = 1 then'
      '    DoctoContrato.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoEstudios"> = 1 then'
      '    DoctoEstudios.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoInfonavit"> = 1 then'
      '    DoctoInfonavit.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoLicencia"> = 1 then'
      '    DoctoLicencia.Text := '#39'X'#39';  '
      ''
      '  if <frxDBPersonal."DoctoDescripPto"> = 1 then'
      '    DoctoDescripPto.Text := '#39'X'#39';'
      ''
      '  if <frxDBPersonal."DoctoCartaConfi"> = 1 then'
      '    DoctoCartaConfi.Text := '#39'X'#39';          '
      'end;'
      ''
      'procedure Page2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Page2.Visible := False;                                       ' +
        '                     '
      'end;'
      ''
      'procedure FechaBajaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  lblBaja.Visible := <frxDBPersonal."IdxEstado"> = 2;           ' +
        ' '
      
        '  FechaBaja.Visible := <frxDBPersonal."IdxEstado"> = 2;         ' +
        '                                         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 472
    Top = 184
    Datasets = <
      item
      end
      item
      end
      item
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 260.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 650.079160000000000000
        Top = 117.165430000000000000
        Width = 740.787880000000000000
        Child = frxReport1.Contratacion
        RowCount = 0
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 498.897960000000000000
          Width = 733.228820000000000000
          Height = 143.622140000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 733.228820000000000000
          Height = 166.299320000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 3.779530000000000000
          Top = 325.039580000000000000
          Width = 733.228820000000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 139.842610000000000000
          Height = 124.724490000000000000
          DataField = 'imagenpersonal'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 7.559060000000003000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'codigopersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBPersonal."codigopersonal"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 26.456710000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'NombreCompleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Century'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 245.669450000000000000
          Top = 49.133889999999990000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'numerosegurosocial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."numerosegurosocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 245.669450000000000000
          Top = 86.929189999999990000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'rfc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 245.669450000000000000
          Top = 68.031539999999990000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'curp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 49.133889999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'mero IMSS:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Top = 86.929189999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'R.F.C.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Top = 68.031539999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CURP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Top = 328.819109999999900000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'DOMICILIO:')
        end
        object Memo11: TfrxMemoView
          Left = 45.354360000000000000
          Top = 347.716759999999900000
          Width = 684.094930000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."Domicilio"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 113.385900000000000000
          Top = 158.740260000000000000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."telefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 18.897650000000000000
          Top = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel'#233'fono:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 113.385900000000000000
          Top = 177.637910000000000000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          DataField = 'Gruposanguineo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."Gruposanguineo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 18.897650000000000000
          Top = 177.637910000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Grupo Sanguineo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 113.385900000000000000
          Top = 196.535560000000000000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          DataField = 'correo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."correo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 18.897650000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Correo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 113.385900000000000000
          Top = 215.433210000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'EstadoCivil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."EstadoCivil"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 18.897650000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado Civil:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 419.527830000000000000
          Width = 733.228820000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 7.559060000000000000
          Top = 423.307360000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'DATOS DE CONTACTO:')
        end
        object Memo35: TfrxMemoView
          Left = 113.385900000000000000
          Top = 442.205010000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          DataField = 'contacto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 45.354360000000000000
          Top = 442.205010000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 113.385900000000000000
          Top = 461.102660000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          DataField = 'telefonocontacto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."telefonocontacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 45.354360000000000000
          Top = 461.102660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tel'#233'fono:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 7.559060000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'GENERALES:')
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 215.433210000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'sexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."sexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 328.819110000000000000
          Top = 215.433210000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sexo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 120.944960000000000000
          Top = 234.330860000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'nombrepadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."nombrepadre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 18.897650000000000000
          Top = 234.330860000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre Padre:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 120.944960000000000000
          Top = 253.228510000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'nombremadre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."nombremadre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 18.897650000000000000
          Top = 253.228510000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre Madre:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 120.944960000000000000
          Top = 272.126160000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'estadonacimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."estadonacimiento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 18.897650000000000000
          Top = 272.126160000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Lugar Nac.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 529.134200000000000000
          Top = 272.126160000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'fechanacimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."fechanacimiento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 480.000310000000000000
          Top = 272.126160000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoActaNacimiento: TfrxMemoView
          Left = 136.063080000000000000
          Top = 521.575140000000100000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoCURP: TfrxMemoView
          Left = 136.063080000000000000
          Top = 544.252319999999900000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoNoPenales: TfrxMemoView
          Left = 514.016080000000000000
          Top = 612.283860000000000000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoExamenMedico: TfrxMemoView
          Left = 328.819110000000000000
          Top = 521.575140000000100000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoRFC: TfrxMemoView
          Left = 136.063080000000000000
          Top = 566.929499999999900000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoIMSS: TfrxMemoView
          Left = 136.063080000000000000
          Top = 612.283860000000000000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoCompDom: TfrxMemoView
          Left = 328.819110000000000000
          Top = 544.252319999999900000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoIFE: TfrxMemoView
          Left = 136.063080000000000000
          Top = 589.606680000000000000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoCurriculum: TfrxMemoView
          Left = 328.819110000000000000
          Top = 566.929499999999900000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoFotos: TfrxMemoView
          Left = 514.016080000000000000
          Top = 589.606680000000000000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoContrato: TfrxMemoView
          Left = 514.016080000000000000
          Top = 566.929499999999900000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoEstudios: TfrxMemoView
          Left = 328.819110000000000000
          Top = 612.283860000000000000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoInfonavit: TfrxMemoView
          Left = 514.016080000000000000
          Top = 521.575140000000100000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoLicencia: TfrxMemoView
          Left = 514.016080000000000000
          Top = 544.252319999999900000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object DoctoDescripPto: TfrxMemoView
          Left = 328.819110000000000000
          Top = 589.606680000000000000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 18.897650000000000000
          Top = 525.354669999999900000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Acta de Nacimiento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 18.897650000000000000
          Top = 548.031849999999900000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'CURP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 374.173470000000000000
          Top = 616.063390000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Antecedentes No Penales')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 211.653680000000000000
          Top = 525.354669999999900000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Examen M'#233'dico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 18.897650000000000000
          Top = 570.709030000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Comprobante RFC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 18.897650000000000000
          Top = 616.063390000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Comprobante IMSS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 200.315090000000000000
          Top = 548.031849999999900000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Comprobante Domicilio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 18.897650000000000000
          Top = 593.386210000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Identificaci'#243'n INE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 211.653680000000000000
          Top = 570.709030000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Curriculum')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 396.850650000000000000
          Top = 593.386210000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fotograf'#237'as')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 396.850650000000000000
          Top = 570.709030000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Contrato Firmado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 200.315090000000000000
          Top = 616.063390000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Comprobante Estudios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 396.850650000000000000
          Top = 525.354669999999900000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Retenci'#243'n Infonavit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 374.173470000000000000
          Top = 548.031849999999900000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Licencia seg'#250'n Puesto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 181.417440000000000000
          Top = 593.386210000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Descripci'#243'n del Puesto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 7.559060000000000000
          Top = 502.677490000000100000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'DOCUMENTACI'#211'N:')
        end
        object DoctoCartaConfi: TfrxMemoView
          Left = 702.992580000000000000
          Top = 521.575140000000100000
          Width = 18.897650000000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 563.149970000000000000
          Top = 525.354669999999900000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Carta de Confidencialidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture3: TfrxPictureView
          Left = 623.622450000000000000
          Top = 49.133889999999990000
          Width = 113.385900000000000000
          Height = 79.370130000000000000
          DataField = 'Imagen'
          Stretched = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo14: TfrxMemoView
          Left = 151.181200000000000000
          Top = 113.385900000000000000
          Width = 464.882190000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Andalus'
          Font.Style = []
          Memo.UTF8W = (
            '[Estatus]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        Condition = 'frxDBPersonal."idpersonal"'
        object Memo2: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Baskerville Old Face'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha de Personal')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Width = 166.299320000000000000
          Height = 45.354360000000000000
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000BC0000
            00350806000000FBF681BB0000000467414D410000B18F0BFC61050000001974
            455874536F6674776172650041646F626520496D616765526561647971C9653C
            00000C524944415478DAED5D4D882C57153E6FA10822E987A262C057B3310B23
            3383C180844CF7C66C92CC6B11170ACE34447761DE2CB29E9E855B6786EC62C0
            9E882E4260E6E5B9898B74BD20424479F3501771937A820B17920E2268B288F7
            AB3EA7FBF4ED5BD5F573ABAB5F531F14F57B6F9D73EBBBA7CEBDE754F7355A41
            3CF9D5CEFEBB7F1F0EEA96A3C1FAE15ADD02B860087F6108DFAD5B8E06EB8755
            25FC0766B561483FAA5B9606EB859523BC217B6056EF9BA56B087F59B73C0DD6
            0BAB48F85B667562965343F8C3BAE569B05E5845C25F98D54DB34486F01B75CB
            D360BDB0528437646F99D507EAD0B621FD55DD7235581FAC1AE16377A6F5F92F
            D1E85FFFC4A181217CAF6EB91AAC0F568DF018AC065FFCCA0DFACFBF3F34CB08
            B334CD6C4D036F5819C223D86456BF90FDED6F7F87EEFDFEB7D83C3684EFD72D
            5F83F5C02A113EB6EEB20FC2FFE58FEFD0C71FFDB7B1F20DBC612508AFA62227
            7834788CAE7FE1CB86F477B1DBF8F20DBCA076C273A0E99E595AF6B9677FF022
            0DEFFC12BE3C763B86F461DDF23678B8B10A841F9A55DB75EE6BDF7832B6F4C3
            3BAF6137A2F13465E3DA34288C5A096FC8DE37ABA3A4F39FFAF467E8B91FBE18
            0F5EDF7FEF3E0E35AE4D8352A88DF086EC6DB31A2EBA0E56FEF1279EA6B7DEF8
            B9B836BD2675B84151D442788EA86256A695E57AF8F21F7FF43F43FA57B00BD6
            779A086C8322A88BF018A46E65BD1E81A8CE733FA2BFFDF95D999B8FA8F1E71B
            14C0D2096FC88EE0D27EDE724F3DF3FD7800FB87F04DF1E7AF0CE1B7972D7F83
            871B4B25BC1D4DCD0319C0026FBFF95A936BD3A0109646784376B830F7CAD4B1
            F1D8267DABFD3CA2AF74E7572FC76B6A06B10D72602984CF3B484D037C79F8F4
            B0F0750C628D2EC8D547E7DDB14EB5797DC5F2E41A5F70BD075C4FC475447C4E
            47A243B31CFAD0D7D47BC2F7833ECE0F6EF8D9DD647D034B578D5C1FECF0DB1E
            F72FCB8990D7682BF8BA97D26E2E2C8BF089C1A5BCF8ECE75AF4CCF77E1CBB38
            6A105B88643975C043873B96E5018190A739EBEFD36C4C629234C7DFF8EAFB42
            CF5ED94F204DBD9FE87D53DF3575AEC5F2DCCA5A9F2E9FE1DEDE38E140480946
            A172C2BBF264CAE2F12776E8EBDF7C3ADEFEDD5BAFD33FA2F7B059D9278105C6
            1EB9DDAC0584FF24A15829772E89F04C761032F34C9A2E9FF1DE55121E70BEF9
            2B257C5A9E4C59606E1ED6DEF2E72BC9B7715858000D8AC6BC6B1D8F8A90B020
            E181C203F714C2C340D9963D495F4198A7ED1D84479B3D28A287C10DAE2BB08E
            CF7D265A35E1E5FB54EF90B97900161E969E2AF80E3621229CDB65C9709F3E15
            233C00D7A65760DC904478BB830F58676F2EA383F0A58D15BB9D17D6E199CF44
            2B237CD6D4813290012CA05C1BAFB3360E3D60C93ABE75C949783CC02DC7B16E
            DA80CD71CF24C227FAF61EF5F54EF82CF55649F8AA7DB4192B8F3C9BDFFCFA65
            6C7AB5F22B4AF8EB341E53D86FCF5C33560DE1FD29537ACE3D2BB495FFEB9FDE
            910F46BC597907E123AA20AD210FE115315D516BC8759845FF86F0FE9429943E
            5004128C029495F79676A07E094D23A2B1DF8CDE9585F8A34556B708E1F9DC3E
            B96790168E33D68DF03CBB04431B24D55B15E15DB31A112F1A20C18739AA7E84
            E67DD7E0BBBD9702CCCB032AD766238F3FBB401FD7AC4511409ED02C67760728
            4A783EDFA6F160CD6EF3D4199CAC84F78849FCC017E1D99B80DE582370175897
            5CD76FE32A7AAEDC1C885CA47BF59557DB79EA74E1859FBC30D7383FFBE9DB81
            716B02766BAE3CCF2AF822BD606666A50CE1F91AB439481F58A7D04E5D575BD4
            40F8581E8C819631C623476CC60BE10D8185E49AEC9B34B538552B0684BCC683
            BDCFDB57BC7F653A4869F233A9F658C780E6C9951713D7AB2CE1F9BAA48011DA
            A1E778ABD441F8F8ADB304C23B0391B908AF880D4131520C2A16DA37421ABB15
            0F78DB4B47D0609F3FB00EA3CDD05EFB34EF76C4036C1F84E76B51FF09B907B3
            33333839087FECA9792003083FAA88F0D02D34CB79D2982995F086E0018DA7BE
            36693E9225D613800FB193A2C086215664D5ED0A1264C1A1A9EBD4AACBFE4D4A
            8D50C907E8B71010F135782B84A6EECA92D0988C17563BC5C4F64578752FBB3E
            C164066BC506ADE0525A443E32CB198D796763E1A480604E11431EB1E09B7CE8
            014D079CA324429872FB949C6FD2B17D6EEE4C2893F811B703F07B0F1D9D07F2
            2605B9E63A88A52B1A39E0E586D2F9B20AF22711DB37E1B91CDAD7F54CE49EAB
            4478C436F02C0E28DDF28734B6E08322F7F5A64811D231E1F2CCD7775C83D5BC
            9DAD4E2C93F05C166D8CE73237834396DB5337E1659686DD42B4C54D4AB6FA78
            23C0E20FF2CCC6F9247C9A5B11B1E0DBDA3A33E15D0F2349C18E6D754D1D281F
            50F20072CE9DAA138EFCA24A09CFE5D1CE3008A9D98F293EBCF7A4BC2CD392EC
            02EE937BBA51634063ABBF5046AF3DD7906FD1E8FED890AF6F9569B3E27B094A
            455086C603CC4BAB2C1A23356DD79429AD63C240342FA0E32ECD93AE72C2731D
            AEF1C30C14E15D1FD90FCC729BB205DA9230F1B5F3CEC373AC01C44F4B4644DD
            6769EE8E6FC263760081A4A4016C6408B89150769FA679F367AC1C1E52CF9419
            249499F90156DDB0AC3CEE57EA9BD78448AB4FC401B2AA09AFF4498C822BC2B7
            A9BAC4BF38025C34F0C4CFE380DC335E82D8DD71FDEA742591D6147FBE6B5B69
            47D92DB82DB25E706DD24C4FE240352F2A7CF833392FCB223CD7E7FC28C74A59
            80DEE81C8167BDE58D562AD2AA3E3D3C4A9171AECECAB22513AC6FFC299E8FB9
            6F1E33B8822CF1CF6BFB9A5FAFC0C28734760D66BEBD749070F22F86D64F897B
            C906757CB2E84C43E0991EB8626DF2F3218FC41DECC875E1BF374A7077465C67
            A4AFAD92F06828977F1D9AE590853BCD4B4C532F1A6940EEF458606E9C50163E
            7CF88CAF6B99261D5901221D3BF09632A1EBCD289F1DC3C80B5B2FD137CA33D3
            92225F40D3E7E46CA7AA5C1ADCF42243E340C9C3456E0ED7A9671AD28214718E
            8AEF086A83F5405584CF936895C922E7ACD39B0FDF60BD50A54B93F57BD649FE
            03EFEB40147C55199C244D5BDA407A80F72F921AAC07AA247CA19F7A28096F83
            624B97C0AC02446C553A02A63C2395503792D9253E7FC56B1C1FF175015F83ED
            962A2FE90D5A8F40CAF39A9222C6221F5F4B32BBA567BAB45C2C8FB8865A3EB9
            DF969243B6450ED17B4BDD2F72E8B4B540E6B6AA4BCBDF52F70EF44C1DDF9352
            74927A22D566CBFB990E565C7E710CBE759BFCFE64C7881769AC6DDF5155351E
            41BD4830438C4192D1102F80AB75CEE7F7689A8D89ED3810C21DA58F63884348
            B00DAE9C0ABC0930DB30609D703FC9EF19F1753D070930B6B9CD87304DD7E17B
            0EF1B6E368B4C88519971ECB1DEBC1D7881C7B347DDBEEAA7AB5DEB7F91CF677
            4DF96D55FE52C903D9D1E966BE3E33D7CA64465BC962DF47DAEF1C633CF51C46
            2CAFD4216D7DCC6D877A1E516D7AA83B5DE53FC424C968F0A9B90324CDAEE445
            C8CA5CB17F7F5E45B217CB0F12498AEC0937B81C6FF1FE3E8D2D529FCB057CFE
            9CC9878E0F3280C4115984E76DD481A43D04EF4ED96AA1BE50BD5D8ECC7657C9
            D7B6EA927C7DB87520C8B9259758723C8798B07C0DDA0EE577C425940EA3B759
            2F219B7480BBFC3CDA5C5F570C0FCB1CE9B72EBBBB622450DF96A32DFA7CF926
            F4E5FD88F583A1D995A0A2A3AD6FD1D4C88EB411ACE5F7E1B3A4042CC05207A5
            1CE012EBB1CB87D1A0985EC5C39354E9733DE32464A5F1433DA0A9AB82CE635B
            78E883F10BAC211ED80E4D3F810CC54A6912F27E9BDB32927A5996D8BAD2948C
            01CDBA4D4254DC036439B3E4846E43B52D6FB223DE3F5075CB39B48958FCBEBA
            57A8AD2C1354B2228FB9BCC82FED8B36EFB06E20F605D73BE4E71039DA1A65E5
            0D8036DCA3655B78175898323FBFB73062EB51D6368D8980FBC5515D8B704365
            F14F944594813688848706928088200C1E58CB223C5EC3F79146C10F6FC0FE2D
            B6C5C2EFD3D802F72CF95C6F0B193FE16D70206F05AE03C4003985B0C4BA89E5
            DCE66BEFA96DD407421E293749CA43AF21974747BB2BE9206CCDCF2CC25FB0D5
            965414B2DAE206B7C5A93236F0D30FF9BED201BBFC1694B6BECDED071D650CD5
            D6B38075125E5EBD1A68A473B5EF4A168A28E3DCBD275925E90A6B3CD03D8BF0
            720E0D7C9F65269A5A7DF8983B8A706D758DB817E800E808211FD71FACE8318A
            E83EB2E4938829CE3F60F2A00C087B9D0920F7C4353DD629262C7726219FFE50
            5E0F5A8989DE675976ADF27DBEEC94665312CEEC5C28F5FCE3F40A9A1ABF88DB
            0B7580D85DEEF470073BBC2D06C6D6E958D523EE598BEB98B8BAB5FE8B9FFAA2
            6A87D7DBD6804C72652EB9712F5729D5B7C1C387FF034589AA9F82DE98670000
            000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Linea: TfrxMemoView
          Left = 170.078850000000000000
          Width = 566.929500000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Contratacion: TfrxChild
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 789.921770000000000000
        Width = 740.787880000000000000
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 733.228820000000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000045000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'COMENTARIOS:')
        end
        object Memo15: TfrxMemoView
          Left = 30.236240000000000000
          Top = 26.456710000000040000
          Width = 702.992580000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."descripcion"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 260.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        Condition = 'frxDBPersonal."idpersonal"'
        object Memo84: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Baskerville Old Face'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha de Personal')
          ParentFont = False
        end
        object Picture5: TfrxPictureView
          Width = 166.299320000000000000
          Height = 45.354360000000000000
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000BC0000
            00350806000000FBF681BB0000000467414D410000B18F0BFC61050000001974
            455874536F6674776172650041646F626520496D616765526561647971C9653C
            00000C524944415478DAED5D4D882C57153E6FA10822E987A262C057B3310B23
            3383C180844CF7C66C92CC6B11170ACE34447761DE2CB29E9E855B6786EC62C0
            9E882E4260E6E5B9898B74BD20424479F3501771937A820B17920E2268B288F7
            AB3EA7FBF4ED5BD5F573ABAB5F531F14F57B6F9D73EBBBA7CEBDE754F7355A41
            3CF9D5CEFEBB7F1F0EEA96A3C1FAE15ADD02B860087F6108DFAD5B8E06EB8755
            25FC0766B561483FAA5B9606EB859523BC217B6056EF9BA56B087F59B73C0DD6
            0BAB48F85B667562965343F8C3BAE569B05E5845C25F98D54DB34486F01B75CB
            D360BDB0528437646F99D507EAD0B621FD55DD7235581FAC1AE16377A6F5F92F
            D1E85FFFC4A181217CAF6EB91AAC0F568DF018AC065FFCCA0DFACFBF3F34CB08
            B334CD6C4D036F5819C223D86456BF90FDED6F7F87EEFDFEB7D83C3684EFD72D
            5F83F5C02A113EB6EEB20FC2FFE58FEFD0C71FFDB7B1F20DBC612508AFA62227
            7834788CAE7FE1CB86F477B1DBF8F20DBCA076C273A0E99E595AF6B9677FF022
            0DEFFC12BE3C763B86F461DDF23678B8B10A841F9A55DB75EE6BDF7832B6F4C3
            3BAF6137A2F13465E3DA34288C5A096FC8DE37ABA3A4F39FFAF467E8B91FBE18
            0F5EDF7FEF3E0E35AE4D8352A88DF086EC6DB31A2EBA0E56FEF1279EA6B7DEF8
            B9B836BD2675B84151D442788EA86256A695E57AF8F21F7FF43F43FA57B00BD6
            779A086C8322A88BF018A46E65BD1E81A8CE733FA2BFFDF95D999B8FA8F1E71B
            14C0D2096FC88EE0D27EDE724F3DF3FD7800FB87F04DF1E7AF0CE1B7972D7F83
            871B4B25BC1D4DCD0319C0026FBFF95A936BD3A0109646784376B830F7CAD4B1
            F1D8267DABFD3CA2AF74E7572FC76B6A06B10D72602984CF3B484D037C79F8F4
            B0F0750C628D2EC8D547E7DDB14EB5797DC5F2E41A5F70BD075C4FC475447C4E
            47A243B31CFAD0D7D47BC2F7833ECE0F6EF8D9DD647D034B578D5C1FECF0DB1E
            F72FCB8990D7682BF8BA97D26E2E2C8BF089C1A5BCF8ECE75AF4CCF77E1CBB38
            6A105B88643975C043873B96E5018190A739EBEFD36C4C629234C7DFF8EAFB42
            CF5ED94F204DBD9FE87D53DF3575AEC5F2DCCA5A9F2E9FE1DEDE38E140480946
            A172C2BBF264CAE2F12776E8EBDF7C3ADEFEDD5BAFD33FA2F7B059D9278105C6
            1EB9DDAC0584FF24A15829772E89F04C761032F34C9A2E9FF1DE55121E70BEF9
            2B257C5A9E4C59606E1ED6DEF2E72BC9B7715858000D8AC6BC6B1D8F8A90B020
            E181C203F714C2C340D9963D495F4198A7ED1D84479B3D28A287C10DAE2BB08E
            CF7D265A35E1E5FB54EF90B97900161E969E2AF80E3621229CDB65C9709F3E15
            233C00D7A65760DC904478BB830F58676F2EA383F0A58D15BB9D17D6E199CF44
            2B237CD6D4813290012CA05C1BAFB3360E3D60C93ABE75C949783CC02DC7B16E
            DA80CD71CF24C227FAF61EF5F54EF82CF55649F8AA7DB4192B8F3C9BDFFCFA65
            6C7AB5F22B4AF8EB341E53D86FCF5C33560DE1FD29537ACE3D2BB495FFEB9FDE
            910F46BC597907E123AA20AD210FE115315D516BC8759845FF86F0FE9429943E
            5004128C029495F79676A07E094D23A2B1DF8CDE9585F8A34556B708E1F9DC3E
            B96790168E33D68DF03CBB04431B24D55B15E15DB31A112F1A20C18739AA7E84
            E67DD7E0BBBD9702CCCB032AD766238F3FBB401FD7AC4511409ED02C67760728
            4A783EDFA6F160CD6EF3D4199CAC84F78849FCC017E1D99B80DE582370175897
            5CD76FE32A7AAEDC1C885CA47BF59557DB79EA74E1859FBC30D7383FFBE9DB81
            716B02766BAE3CCF2AF822BD606666A50CE1F91AB439481F58A7D04E5D575BD4
            40F8581E8C819631C623476CC60BE10D8185E49AEC9B34B538552B0684BCC683
            BDCFDB57BC7F653A4869F233A9F658C780E6C9951713D7AB2CE1F9BAA48011DA
            A1E778ABD441F8F8ADB304C23B0391B908AF880D4131520C2A16DA37421ABB15
            0F78DB4B47D0609F3FB00EA3CDD05EFB34EF76C4036C1F84E76B51FF09B907B3
            33333839087FECA9792003083FAA88F0D02D34CB79D2982995F086E0018DA7BE
            36693E9225D613800FB193A2C086215664D5ED0A1264C1A1A9EBD4AACBFE4D4A
            8D50C907E8B71010F135782B84A6EECA92D0988C17563BC5C4F64578752FBB3E
            C164066BC506ADE0525A443E32CB198D796763E1A480604E11431EB1E09B7CE8
            014D079CA324429872FB949C6FD2B17D6EEE4C2893F811B703F07B0F1D9D07F2
            2605B9E63A88A52B1A39E0E586D2F9B20AF22711DB37E1B91CDAD7F54CE49EAB
            4478C436F02C0E28DDF28734B6E08322F7F5A64811D231E1F2CCD7775C83D5BC
            9DAD4E2C93F05C166D8CE73237834396DB5337E1659686DD42B4C54D4AB6FA78
            23C0E20FF2CCC6F9247C9A5B11B1E0DBDA3A33E15D0F2349C18E6D754D1D281F
            50F20072CE9DAA138EFCA24A09CFE5D1CE3008A9D98F293EBCF7A4BC2CD392EC
            02EE937BBA51634063ABBF5046AF3DD7906FD1E8FED890AF6F9569B3E27B094A
            455086C603CC4BAB2C1A23356DD79429AD63C240342FA0E32ECD93AE72C2731D
            AEF1C30C14E15D1FD90FCC729BB205DA9230F1B5F3CEC373AC01C44F4B4644DD
            6769EE8E6FC263760081A4A4016C6408B89150769FA679F367AC1C1E52CF9419
            249499F90156DDB0AC3CEE57EA9BD78448AB4FC401B2AA09AFF4498C822BC2B7
            A9BAC4BF38025C34F0C4CFE380DC335E82D8DD71FDEA742591D6147FBE6B5B69
            47D92DB82DB25E706DD24C4FE240352F2A7CF833392FCB223CD7E7FC28C74A59
            80DEE81C8167BDE58D562AD2AA3E3D3C4A9171AECECAB22513AC6FFC299E8FB9
            6F1E33B8822CF1CF6BFB9A5FAFC0C28734760D66BEBD749070F22F86D64F897B
            C906757CB2E84C43E0991EB8626DF2F3218FC41DECC875E1BF374A7077465C67
            A4AFAD92F06828977F1D9AE590853BCD4B4C532F1A6940EEF458606E9C50163E
            7CF88CAF6B99261D5901221D3BF09632A1EBCD289F1DC3C80B5B2FD137CA33D3
            92225F40D3E7E46CA7AA5C1ADCF42243E340C9C3456E0ED7A9671AD28214718E
            8AEF086A83F5405584CF936895C922E7ACD39B0FDF60BD50A54B93F57BD649FE
            03EFEB40147C55199C244D5BDA407A80F72F921AAC07AA247CA19F7A28096F83
            624B97C0AC02446C553A02A63C2395503792D9253E7FC56B1C1FF175015F83ED
            962A2FE90D5A8F40CAF39A9222C6221F5F4B32BBA567BAB45C2C8FB8865A3EB9
            DF969243B6450ED17B4BDD2F72E8B4B540E6B6AA4BCBDF52F70EF44C1DDF9352
            74927A22D566CBFB990E565C7E710CBE759BFCFE64C7881769AC6DDF5155351E
            41BD4830438C4192D1102F80AB75CEE7F7689A8D89ED3810C21DA58F63884348
            B00DAE9C0ABC0930DB30609D703FC9EF19F1753D070930B6B9CD87304DD7E17B
            0EF1B6E368B4C88519971ECB1DEBC1D7881C7B347DDBEEAA7AB5DEB7F91CF677
            4DF96D55FE52C903D9D1E966BE3E33D7CA64465BC962DF47DAEF1C633CF51C46
            2CAFD4216D7DCC6D877A1E516D7AA83B5DE53FC424C968F0A9B90324CDAEE445
            C8CA5CB17F7F5E45B217CB0F12498AEC0937B81C6FF1FE3E8D2D529FCB057CFE
            9CC9878E0F3280C4115984E76DD481A43D04EF4ED96AA1BE50BD5D8ECC7657C9
            D7B6EA927C7DB87520C8B9259758723C8798B07C0DDA0EE577C425940EA3B759
            2F219B7480BBFC3CDA5C5F570C0FCB1CE9B72EBBBB622450DF96A32DFA7CF926
            F4E5FD88F583A1D995A0A2A3AD6FD1D4C88EB411ACE5F7E1B3A4042CC05207A5
            1CE012EBB1CB87D1A0985EC5C39354E9733DE32464A5F1433DA0A9AB82CE635B
            78E883F10BAC211ED80E4D3F810CC54A6912F27E9BDB32927A5996D8BAD2948C
            01CDBA4D4254DC036439B3E4846E43B52D6FB223DE3F5075CB39B48958FCBEBA
            57A8AD2C1354B2228FB9BCC82FED8B36EFB06E20F605D73BE4E71039DA1A65E5
            0D8036DCA3655B78175898323FBFB73062EB51D6368D8980FBC5515D8B704365
            F14F944594813688848706928088200C1E58CB223C5EC3F79146C10F6FC0FE2D
            B6C5C2EFD3D802F72CF95C6F0B193FE16D70206F05AE03C4003985B0C4BA89E5
            DCE66BEFA96DD407421E293749CA43AF21974747BB2BE9206CCDCF2CC25FB0D5
            965414B2DAE206B7C5A93236F0D30FF9BED201BBFC1694B6BECDED071D650CD5
            D6B38075125E5EBD1A68A473B5EF4A168A28E3DCBD275925E90A6B3CD03D8BF0
            720E0D7C9F65269A5A7DF8983B8A706D758DB817E800E808211FD71FACE8318A
            E83EB2E4938829CE3F60F2A00C087B9D0920F7C4353DD629262C7726219FFE50
            5E0F5A8989DE675976ADF27DBEEC94665312CEEC5C28F5FCE3F40A9A1ABF88DB
            0B7580D85DEEF470073BBC2D06C6D6E958D523EE598BEB98B8BAB5FE8B9FFAA2
            6A87D7DBD6804C72652EB9712F5729D5B7C1C387FF034589AA9F82DE98670000
            000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo86: TfrxMemoView
          Left = 170.078850000000000000
          Width = 566.929500000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 170.078850000000000000
          Top = 37.795300000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS DE CONTRATACION')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 170.078850000000000000
          Top = 64.252010000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          DataField = 'NombreCompleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Century'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 128.504020000000000000
        Top = 139.842610000000000000
        Width = 740.787880000000000000
        RowCount = 0
        object Memo88: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Memo.UTF8W = (
            'CONTRATACI'#211'N:')
        end
        object Memo89: TfrxMemoView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          Height = 128.504020000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'EMPRESA:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 79.370130000000000000
          Top = 34.015770000000000000
          Width = 510.236550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."NombreOrganizacion"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DEPARTAMENTO:')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 113.385900000000000000
          Top = 52.913420000000000000
          Width = 476.220780000000000000
          Height = 15.118120000000000000
          DataField = 'TituloDepartamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."TituloDepartamento"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 15.118120000000000000
          Top = 71.811070000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'LUGAR TRABAJO:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 117.165430000000000000
          Top = 71.811070000000000000
          Width = 472.441250000000000000
          Height = 15.118120000000000000
          DataField = 'NombreLocalidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."NombreLocalidad"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 15.118120000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PROYECTO:')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 86.929190000000000000
          Top = 90.708720000000000000
          Width = 502.677490000000000000
          Height = 15.118120000000000000
          DataField = 'TituloProyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."TituloProyecto"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 15.118120000000000000
          Top = 109.606370000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 79.370130000000000000
          Top = 109.606370000000000000
          Width = 510.236550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."TituloCargo"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 619.842920000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Alta:')
          ParentFont = False
          VAlign = vaCenter
        end
        object lblBaja: TfrxMemoView
          Left = 619.842920000000000000
          Top = 52.913420000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Baja:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 657.638220000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."FechaReingreso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FechaBaja: TfrxMemoView
          Left = 657.638220000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'FechaBajaOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBPersonal."FechaBaja"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 260.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      OnBeforePrint = 'Page2OnBeforePrint'
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        Condition = 'frxDBCapacidadxPersonal."IdPersonal"'
        object Memo53: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Baskerville Old Face'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha de Personal')
          ParentFont = False
        end
        object Picture4: TfrxPictureView
          Width = 166.299320000000000000
          Height = 45.354360000000000000
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000BC0000
            00350806000000FBF681BB0000000467414D410000B18F0BFC61050000001974
            455874536F6674776172650041646F626520496D616765526561647971C9653C
            00000C524944415478DAED5D4D882C57153E6FA10822E987A262C057B3310B23
            3383C180844CF7C66C92CC6B11170ACE34447761DE2CB29E9E855B6786EC62C0
            9E882E4260E6E5B9898B74BD20424479F3501771937A820B17920E2268B288F7
            AB3EA7FBF4ED5BD5F573ABAB5F531F14F57B6F9D73EBBBA7CEBDE754F7355A41
            3CF9D5CEFEBB7F1F0EEA96A3C1FAE15ADD02B860087F6108DFAD5B8E06EB8755
            25FC0766B561483FAA5B9606EB859523BC217B6056EF9BA56B087F59B73C0DD6
            0BAB48F85B667562965343F8C3BAE569B05E5845C25F98D54DB34486F01B75CB
            D360BDB0528437646F99D507EAD0B621FD55DD7235581FAC1AE16377A6F5F92F
            D1E85FFFC4A181217CAF6EB91AAC0F568DF018AC065FFCCA0DFACFBF3F34CB08
            B334CD6C4D036F5819C223D86456BF90FDED6F7F87EEFDFEB7D83C3684EFD72D
            5F83F5C02A113EB6EEB20FC2FFE58FEFD0C71FFDB7B1F20DBC612508AFA62227
            7834788CAE7FE1CB86F477B1DBF8F20DBCA076C273A0E99E595AF6B9677FF022
            0DEFFC12BE3C763B86F461DDF23678B8B10A841F9A55DB75EE6BDF7832B6F4C3
            3BAF6137A2F13465E3DA34288C5A096FC8DE37ABA3A4F39FFAF467E8B91FBE18
            0F5EDF7FEF3E0E35AE4D8352A88DF086EC6DB31A2EBA0E56FEF1279EA6B7DEF8
            B9B836BD2675B84151D442788EA86256A695E57AF8F21F7FF43F43FA57B00BD6
            779A086C8322A88BF018A46E65BD1E81A8CE733FA2BFFDF95D999B8FA8F1E71B
            14C0D2096FC88EE0D27EDE724F3DF3FD7800FB87F04DF1E7AF0CE1B7972D7F83
            871B4B25BC1D4DCD0319C0026FBFF95A936BD3A0109646784376B830F7CAD4B1
            F1D8267DABFD3CA2AF74E7572FC76B6A06B10D72602984CF3B484D037C79F8F4
            B0F0750C628D2EC8D547E7DDB14EB5797DC5F2E41A5F70BD075C4FC475447C4E
            47A243B31CFAD0D7D47BC2F7833ECE0F6EF8D9DD647D034B578D5C1FECF0DB1E
            F72FCB8990D7682BF8BA97D26E2E2C8BF089C1A5BCF8ECE75AF4CCF77E1CBB38
            6A105B88643975C043873B96E5018190A739EBEFD36C4C629234C7DFF8EAFB42
            CF5ED94F204DBD9FE87D53DF3575AEC5F2DCCA5A9F2E9FE1DEDE38E140480946
            A172C2BBF264CAE2F12776E8EBDF7C3ADEFEDD5BAFD33FA2F7B059D9278105C6
            1EB9DDAC0584FF24A15829772E89F04C761032F34C9A2E9FF1DE55121E70BEF9
            2B257C5A9E4C59606E1ED6DEF2E72BC9B7715858000D8AC6BC6B1D8F8A90B020
            E181C203F714C2C340D9963D495F4198A7ED1D84479B3D28A287C10DAE2BB08E
            CF7D265A35E1E5FB54EF90B97900161E969E2AF80E3621229CDB65C9709F3E15
            233C00D7A65760DC904478BB830F58676F2EA383F0A58D15BB9D17D6E199CF44
            2B237CD6D4813290012CA05C1BAFB3360E3D60C93ABE75C949783CC02DC7B16E
            DA80CD71CF24C227FAF61EF5F54EF82CF55649F8AA7DB4192B8F3C9BDFFCFA65
            6C7AB5F22B4AF8EB341E53D86FCF5C33560DE1FD29537ACE3D2BB495FFEB9FDE
            910F46BC597907E123AA20AD210FE115315D516BC8759845FF86F0FE9429943E
            5004128C029495F79676A07E094D23A2B1DF8CDE9585F8A34556B708E1F9DC3E
            B96790168E33D68DF03CBB04431B24D55B15E15DB31A112F1A20C18739AA7E84
            E67DD7E0BBBD9702CCCB032AD766238F3FBB401FD7AC4511409ED02C67760728
            4A783EDFA6F160CD6EF3D4199CAC84F78849FCC017E1D99B80DE582370175897
            5CD76FE32A7AAEDC1C885CA47BF59557DB79EA74E1859FBC30D7383FFBE9DB81
            716B02766BAE3CCF2AF822BD606666A50CE1F91AB439481F58A7D04E5D575BD4
            40F8581E8C819631C623476CC60BE10D8185E49AEC9B34B538552B0684BCC683
            BDCFDB57BC7F653A4869F233A9F658C780E6C9951713D7AB2CE1F9BAA48011DA
            A1E778ABD441F8F8ADB304C23B0391B908AF880D4131520C2A16DA37421ABB15
            0F78DB4B47D0609F3FB00EA3CDD05EFB34EF76C4036C1F84E76B51FF09B907B3
            33333839087FECA9792003083FAA88F0D02D34CB79D2982995F086E0018DA7BE
            36693E9225D613800FB193A2C086215664D5ED0A1264C1A1A9EBD4AACBFE4D4A
            8D50C907E8B71010F135782B84A6EECA92D0988C17563BC5C4F64578752FBB3E
            C164066BC506ADE0525A443E32CB198D796763E1A480604E11431EB1E09B7CE8
            014D079CA324429872FB949C6FD2B17D6EEE4C2893F811B703F07B0F1D9D07F2
            2605B9E63A88A52B1A39E0E586D2F9B20AF22711DB37E1B91CDAD7F54CE49EAB
            4478C436F02C0E28DDF28734B6E08322F7F5A64811D231E1F2CCD7775C83D5BC
            9DAD4E2C93F05C166D8CE73237834396DB5337E1659686DD42B4C54D4AB6FA78
            23C0E20FF2CCC6F9247C9A5B11B1E0DBDA3A33E15D0F2349C18E6D754D1D281F
            50F20072CE9DAA138EFCA24A09CFE5D1CE3008A9D98F293EBCF7A4BC2CD392EC
            02EE937BBA51634063ABBF5046AF3DD7906FD1E8FED890AF6F9569B3E27B094A
            455086C603CC4BAB2C1A23356DD79429AD63C240342FA0E32ECD93AE72C2731D
            AEF1C30C14E15D1FD90FCC729BB205DA9230F1B5F3CEC373AC01C44F4B4644DD
            6769EE8E6FC263760081A4A4016C6408B89150769FA679F367AC1C1E52CF9419
            249499F90156DDB0AC3CEE57EA9BD78448AB4FC401B2AA09AFF4498C822BC2B7
            A9BAC4BF38025C34F0C4CFE380DC335E82D8DD71FDEA742591D6147FBE6B5B69
            47D92DB82DB25E706DD24C4FE240352F2A7CF833392FCB223CD7E7FC28C74A59
            80DEE81C8167BDE58D562AD2AA3E3D3C4A9171AECECAB22513AC6FFC299E8FB9
            6F1E33B8822CF1CF6BFB9A5FAFC0C28734760D66BEBD749070F22F86D64F897B
            C906757CB2E84C43E0991EB8626DF2F3218FC41DECC875E1BF374A7077465C67
            A4AFAD92F06828977F1D9AE590853BCD4B4C532F1A6940EEF458606E9C50163E
            7CF88CAF6B99261D5901221D3BF09632A1EBCD289F1DC3C80B5B2FD137CA33D3
            92225F40D3E7E46CA7AA5C1ADCF42243E340C9C3456E0ED7A9671AD28214718E
            8AEF086A83F5405584CF936895C922E7ACD39B0FDF60BD50A54B93F57BD649FE
            03EFEB40147C55199C244D5BDA407A80F72F921AAC07AA247CA19F7A28096F83
            624B97C0AC02446C553A02A63C2395503792D9253E7FC56B1C1FF175015F83ED
            962A2FE90D5A8F40CAF39A9222C6221F5F4B32BBA567BAB45C2C8FB8865A3EB9
            DF969243B6450ED17B4BDD2F72E8B4B540E6B6AA4BCBDF52F70EF44C1DDF9352
            74927A22D566CBFB990E565C7E710CBE759BFCFE64C7881769AC6DDF5155351E
            41BD4830438C4192D1102F80AB75CEE7F7689A8D89ED3810C21DA58F63884348
            B00DAE9C0ABC0930DB30609D703FC9EF19F1753D070930B6B9CD87304DD7E17B
            0EF1B6E368B4C88519971ECB1DEBC1D7881C7B347DDBEEAA7AB5DEB7F91CF677
            4DF96D55FE52C903D9D1E966BE3E33D7CA64465BC962DF47DAEF1C633CF51C46
            2CAFD4216D7DCC6D877A1E516D7AA83B5DE53FC424C968F0A9B90324CDAEE445
            C8CA5CB17F7F5E45B217CB0F12498AEC0937B81C6FF1FE3E8D2D529FCB057CFE
            9CC9878E0F3280C4115984E76DD481A43D04EF4ED96AA1BE50BD5D8ECC7657C9
            D7B6EA927C7DB87520C8B9259758723C8798B07C0DDA0EE577C425940EA3B759
            2F219B7480BBFC3CDA5C5F570C0FCB1CE9B72EBBBB622450DF96A32DFA7CF926
            F4E5FD88F583A1D995A0A2A3AD6FD1D4C88EB411ACE5F7E1B3A4042CC05207A5
            1CE012EBB1CB87D1A0985EC5C39354E9733DE32464A5F1433DA0A9AB82CE635B
            78E883F10BAC211ED80E4D3F810CC54A6912F27E9BDB32927A5996D8BAD2948C
            01CDBA4D4254DC036439B3E4846E43B52D6FB223DE3F5075CB39B48958FCBEBA
            57A8AD2C1354B2228FB9BCC82FED8B36EFB06E20F605D73BE4E71039DA1A65E5
            0D8036DCA3655B78175898323FBFB73062EB51D6368D8980FBC5515D8B704365
            F14F944594813688848706928088200C1E58CB223C5EC3F79146C10F6FC0FE2D
            B6C5C2EFD3D802F72CF95C6F0B193FE16D70206F05AE03C4003985B0C4BA89E5
            DCE66BEFA96DD407421E293749CA43AF21974747BB2BE9206CCDCF2CC25FB0D5
            965414B2DAE206B7C5A93236F0D30FF9BED201BBFC1694B6BECDED071D650CD5
            D6B38075125E5EBD1A68A473B5EF4A168A28E3DCBD275925E90A6B3CD03D8BF0
            720E0D7C9F65269A5A7DF8983B8A706D758DB817E800E808211FD71FACE8318A
            E83EB2E4938829CE3F60F2A00C087B9D0920F7C4353DD629262C7726219FFE50
            5E0F5A8989DE675976ADF27DBEEC94665312CEEC5C28F5FCE3F40A9A1ABF88DB
            0B7580D85DEEF470073BBC2D06C6D6E958D523EE598BEB98B8BAB5FE8B9FFAA2
            6A87D7DBD6804C72652EB9712F5729D5B7C1C387FF034589AA9F82DE98670000
            000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo57: TfrxMemoView
          Left = 170.078850000000000000
          Width = 566.929500000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 170.078850000000000000
          Top = 37.795300000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPETENCIAS ADICIONALES')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Top = 113.385900000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Competencia')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 124.724490000000000000
          Top = 113.385900000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Puesto')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 249.448980000000000000
          Top = 113.385900000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'A'#241'os')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 302.362400000000000000
          Top = 113.385900000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valoraci'#243'n')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 400.630180000000000000
          Top = 113.385900000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Comentarios')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 170.078850000000000000
          Top = 64.252010000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          DataField = 'NombreCompleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Century'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombreCompleto"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 740.787880000000000000
        RowCount = 0
        Stretched = True
        object Memo59: TfrxMemoView
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Titulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBCapacidadxPersonal."Titulo"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 124.724490000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TituloCargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBCapacidadxPersonal."TituloCargo"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 249.448980000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCapacidadxPersonal."Anios"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 302.362400000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Valoracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBCapacidadxPersonal."Valoracion"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 400.630180000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Comentarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBCapacidadxPersonal."Comentarios"]')
          ParentFont = False
        end
      end
    end
  end
  object cdPagina3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdPersonal'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 392
    Top = 312
  end
end
