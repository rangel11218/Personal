object FrmMostrarPersonal: TFrmMostrarPersonal
  Left = 0
  Top = 0
  Caption = 'Ficha de Personal'
  ClientHeight = 704
  ClientWidth = 1021
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grafico: TImage
    Left = 78
    Top = 5
    Width = 162
    Height = 70
    Stretch = True
    Visible = False
  end
  object PaintBox1: TPaintBox
    Left = 271
    Top = 8
    Width = 263
    Height = 241
  end
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 214
    Width = 1021
    Height = 449
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    PopupMenu = pmImagen
    ThumbnailVisible = False
    UseReportHints = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 663
    Width = 1021
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    object btnGuardarFoto: TAdvGlowButton
      Left = 7
      Top = 5
      Width = 118
      Height = 31
      Align = alLeft
      Caption = '&Guardar Foto'
      ImageIndex = 8
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      TabStop = True
      OnClick = btnGuardarFotoClick
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
    object btnEditar: TAdvGlowButton
      Left = 125
      Top = 5
      Width = 118
      Height = 31
      Align = alLeft
      Caption = '&Editar Empleado'
      ImageIndex = 7
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      TabStop = True
      OnClick = btnEditarClick
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
    object Panel2: TPanel
      Left = 243
      Top = 5
      Width = 34
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
    end
    object btnContratar: TAdvGlowButton
      Left = 431
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Contratar'
      ImageIndex = 39
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      TabStop = True
      OnClick = btnContratarClick
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
    object btnBaja: TAdvGlowButton
      Left = 643
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = 'Dar &Baja'
      ImageIndex = 16
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      TabStop = True
      OnClick = btnBajaClick
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
    object Panel3: TPanel
      Left = 397
      Top = 5
      Width = 34
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
    end
    object btnDocumentoacion: TAdvGlowButton
      Left = 277
      Top = 5
      Width = 120
      Height = 31
      Align = alLeft
      Caption = '&Documentaci'#243'n'
      ImageIndex = 7
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = btnDocumentoacionClick
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
    object Panel7: TPanel
      Left = 843
      Top = 5
      Width = 34
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 7
    end
    object btnImprimirBaja: TAdvGlowButton
      Left = 877
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = 'Imprimir baja'
      ImageIndex = 12
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 8
      TabStop = True
      OnClick = btnImprimirBajaClick
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
    object btnBorrarBaja: TAdvGlowButton
      Left = 743
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = '&Eliminar Baja'
      ImageIndex = 5
      Images = connection.ImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 9
      TabStop = True
      OnClick = btnBorrarBajaClick
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
    object btnBorrarContrato: TAdvGlowButton
      Left = 531
      Top = 5
      Width = 100
      Height = 31
      Align = alLeft
      Caption = 'Eliminar Contrato'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 10
      OnClick = btnBorrarContratoClick
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
    object Panel10: TPanel
      Left = 631
      Top = 5
      Width = 12
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 11
    end
  end
  object pnlBaja: TPanel
    Left = 93
    Top = 202
    Width = 569
    Height = 465
    TabOrder = 2
    Visible = False
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 567
      Height = 422
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object NombreCompleto: TDBText
        Left = 8
        Top = 8
        Width = 175
        Height = 23
        AutoSize = True
        DataField = 'NombreCompleto'
        DataSource = dsPersonal
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Century Schoolbook'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AdvPicture1: TImage
        Left = 8
        Top = 8
        Width = 105
        Height = 105
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 567
        Height = 422
        Align = alClient
        Padding.Left = 4
        Padding.Top = 12
        Padding.Right = 4
        Padding.Bottom = 12
        TabOrder = 0
        object JvLabel9: TJvLabel
          Left = 15
          Top = 318
          Width = 75
          Height = 13
          Caption = 'Observaciones:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          HotTrack = False
        end
        object MotivoBaja: TRadioGroup
          Left = 5
          Top = 89
          Width = 557
          Height = 64
          Align = alTop
          Caption = 'Motivos de la baja:'
          Columns = 2
          Items.Strings = (
            'TERMINACION DE PROYECTO'
            'CAUSA ADMINISTRATIVA'
            'BAJA DEFINITIVA'
            'BAJA TEMPORAL')
          TabOrder = 1
          ExplicitTop = 81
        end
        object pnlFechaBaja: TPanel
          Left = 5
          Top = 13
          Width = 557
          Height = 76
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object JvLabel8: TJvLabel
            Left = 10
            Top = 29
            Width = 258
            Height = 16
            Caption = 'Dar de baja a este empleado con fecha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrack = False
          end
          object JvLabel1: TJvLabel
            Left = 396
            Top = 29
            Width = 113
            Height = 16
            Caption = 'Es recontratable:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            HotTrack = False
          end
          object JvLabel2: TJvLabel
            Left = 10
            Top = 58
            Width = 37
            Height = 13
            Caption = 'Solicita:'
            Transparent = True
            HotTrack = False
          end
          object BajaRecontratar: TComboBox
            Left = 515
            Top = 29
            Width = 49
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Items.Strings = (
              'Si'
              'No')
          end
          object IdSolicita: TComboBox
            Left = 51
            Top = 55
            Width = 381
            Height = 21
            TabOrder = 0
            Text = 'IdSolicita'
            OnKeyDown = IdSolicitaKeyDown
          end
          object FechaMovimiento: TcxDateEdit
            Left = 274
            Top = 28
            TabOrder = 2
            OnClick = FechaMovimientoClick
            Width = 86
          end
        end
        object pnlCuantoTiempo: TPanel
          Left = 5
          Top = 153
          Width = 557
          Height = 64
          Align = alTop
          BevelOuter = bvNone
          Padding.Left = 4
          Padding.Right = 4
          TabOrder = 2
          ExplicitTop = 145
          object JvLabel12: TJvLabel
            Left = 7
            Top = 6
            Width = 242
            Height = 13
            Caption = 'Si es baja temporal especifique por cuanto tiempo:'
            Transparent = True
            HotTrack = False
          end
          object CuantoSiTemporal: TMemo
            Left = 4
            Top = 22
            Width = 549
            Height = 42
            Align = alBottom
            Lines.Strings = (
              'CuantoSiTemporal')
            TabOrder = 0
          end
        end
        object pnlCausas: TPanel
          Left = 5
          Top = 217
          Width = 557
          Height = 103
          Align = alTop
          BevelOuter = bvNone
          Padding.Left = 4
          Padding.Right = 4
          TabOrder = 3
          ExplicitTop = 209
          object JvLabel3: TJvLabel
            Left = 10
            Top = 12
            Width = 59
            Height = 13
            Caption = 'La salida es:'
            Transparent = True
            HotTrack = False
          end
          object lblCausas: TJvLabel
            Left = 10
            Top = 43
            Width = 110
            Height = 13
            Caption = 'Especifique las causas:'
            Transparent = True
            HotTrack = False
          end
          object TipoCausa: TComboBox
            Left = 74
            Top = 9
            Width = 123
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnChange = TipoCausaChange
            Items.Strings = (
              'VOLUNTARIA'
              'INVOLUNTARIA')
          end
          object Causas: TMemo
            Left = 4
            Top = 61
            Width = 549
            Height = 42
            Align = alBottom
            Lines.Strings = (
              'CuantoSiTemporal')
            TabOrder = 1
          end
        end
        object Panel8: TPanel
          Left = 5
          Top = 367
          Width = 557
          Height = 42
          Align = alBottom
          BevelOuter = bvNone
          Padding.Left = 4
          Padding.Right = 4
          TabOrder = 4
          object Comentarios: TMemo
            Left = 4
            Top = 0
            Width = 549
            Height = 42
            Align = alClient
            Lines.Strings = (
              'Comentarios')
            TabOrder = 0
          end
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 423
      Width = 567
      Height = 41
      Align = alBottom
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 1
      object btnAceptar: TAdvGlowButton
        Left = 360
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Aceptar'
        ImageIndex = 2
        Images = connection.IconosBarra
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
      object btnCancelar: TAdvGlowButton
        Left = 460
        Top = 5
        Width = 100
        Height = 31
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 3
        Images = connection.IconosBarra
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
    end
  end
  object pnlImagen: TPanel
    Left = 550
    Top = 345
    Width = 463
    Height = 153
    TabOrder = 3
    Visible = False
    object JvLabel13: TJvLabel
      Left = 112
      Top = 16
      Width = 191
      Height = 13
      Caption = 'Imagen recuperada de la base de datos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrack = False
    end
    object JvLabel14: TJvLabel
      Left = 120
      Top = 48
      Width = 297
      Height = 39
      Caption = 
        'La imagen ha sido recuperada de manera satisfactoria.'#13#10#13#10#191'Desea ' +
        'abrir la imagen o la carpeta destino en este momento?'
      Transparent = True
      HotTrack = False
    end
    object AdvPicture2: TImage
      Left = 6
      Top = 11
      Width = 89
      Height = 86
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 118
      Top = 109
      Width = 100
      Height = 31
      Caption = '&Ver imagen'
      Default = True
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 224
      Top = 109
      Width = 100
      Height = 31
      Caption = '&Abrir ubicaci'#243'n'
      ModalResult = 4
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
    object AdvGlowButton3: TAdvGlowButton
      Left = 330
      Top = 109
      Width = 100
      Height = 31
      Caption = '&Cerrar'
      ModalResult = 6
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
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
  end
  object gbPanelEstado: TGroupBox
    Left = 0
    Top = 0
    Width = 1021
    Height = 49
    Align = alTop
    Caption = 'Estado'
    TabOrder = 4
    Visible = False
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
      OnClick = pColoresClick
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
      OnClick = pColoresClick
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
      OnClick = pColoresClick
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
      OnClick = pColoresClick
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
      OnClick = pColoresClick
    end
  end
  object pnlEntregaPase: TPanel
    Left = 540
    Top = 99
    Width = 446
    Height = 115
    TabOrder = 5
    Visible = False
    object JvLabel21: TJvLabel
      Left = 16
      Top = 8
      Width = 375
      Height = 13
      Caption = 
        'Favor de indicar la fecha en la que se entreg'#243' el pase de acceso' +
        ' a la refiner'#237'a:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel23: TJvLabel
      Left = 119
      Top = 38
      Width = 33
      Height = 13
      Caption = 'Fecha:'
      Transparent = True
      HotTrack = False
    end
    object Panel9: TPanel
      Left = 1
      Top = 73
      Width = 444
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object AdvGlowButton4: TAdvGlowButton
        Left = 338
        Top = 4
        Width = 100
        Height = 33
        Align = alRight
        Caption = '&Cancelar'
        ImageIndex = 3
        Images = connection.IconosBarra
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
      object btnpaOk: TAdvGlowButton
        Left = 238
        Top = 4
        Width = 100
        Height = 33
        Align = alRight
        Caption = '&Aceptar'
        ImageIndex = 2
        Images = connection.IconosBarra
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
    end
    object FechaPase: TcxDateEdit
      Left = 160
      Top = 36
      TabOrder = 1
      Width = 97
    end
  end
  object PageBaja: TPageControl
    Left = 0
    Top = 49
    Width = 1021
    Height = 165
    ActivePage = PageFiniquitox2
    Align = alTop
    TabOrder = 6
    Visible = False
    object PagerBajax: TTabSheet
      Caption = 'PagerBajax'
      object gbContratacion: TGroupBox
        Left = 0
        Top = 0
        Width = 1013
        Height = 137
        Align = alClient
        TabOrder = 0
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
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
          DataSource = dsPersonal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object PageBajax2: TTabSheet
      Caption = 'PageBajax2'
      ImageIndex = 1
    end
    object PageFiniquitox2: TTabSheet
      Caption = 'PageFiniquitox2'
      ImageIndex = 2
      object JvLabel18: TJvLabel
        Left = 17
        Top = 19
        Width = 140
        Height = 13
        Caption = 'Fecha de pago de Aguinaldo:'
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
      object JvLabel20: TJvLabel
        Left = 17
        Top = 76
        Width = 168
        Height = 13
        Caption = 'Salario Semanal a la fecha de baja:'
        Transparent = True
        HotTrack = False
      end
      object JvLabel22: TJvLabel
        Left = 17
        Top = 104
        Width = 139
        Height = 13
        Caption = 'Importe de la Indemnizaci'#243'n:'
        Transparent = True
        HotTrack = False
      end
      object btnVacPend: TAdvGlowButton
        Left = 336
        Top = 50
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
        OnClick = btnVacPendClick
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
      object DiasVacacionesPendientes: TcxCalcEdit
        Left = 184
        Top = 44
        EditValue = 0.000000000000000000
        TabOrder = 1
        Width = 121
      end
      object SalarioSemanalBaja: TcxCalcEdit
        Left = 196
        Top = 73
        EditValue = 0.000000000000000000
        TabOrder = 2
        Width = 121
      end
      object Indemnizacion: TcxCalcEdit
        Left = 171
        Top = 101
        EditValue = 0.000000000000000000
        TabOrder = 3
        Width = 121
      end
      object FechaPagoAguinaldo: TcxDateEdit
        Left = 163
        Top = 16
        TabOrder = 4
        Width = 86
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
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
    Left = 560
    Top = 16
    Datasets = <
      item
        DataSet = frxDBCapacidadxPersonal
        DataSetName = 'frxDBCapacidadxPersonal'
      end
      item
        DataSet = frxDBPagina2
        DataSetName = 'frxDBPagina2'
      end
      item
        DataSet = frxDBPagina3
        DataSetName = 'frxDBPagina3'
      end
      item
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
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
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
      DataSet = frxDBPagina3
      DataSetName = 'frxDBPagina3'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
      DataSet = frxDBPagina2
      DataSetName = 'frxDBPagina2'
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
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
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
        DataSet = frxDBCapacidadxPersonal
        DataSetName = 'frxDBCapacidadxPersonal'
        RowCount = 0
        Stretched = True
        object Memo59: TfrxMemoView
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Titulo'
          DataSet = frxDBCapacidadxPersonal
          DataSetName = 'frxDBCapacidadxPersonal'
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
          DataSet = frxDBCapacidadxPersonal
          DataSetName = 'frxDBCapacidadxPersonal'
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
          DataSet = frxDBCapacidadxPersonal
          DataSetName = 'frxDBCapacidadxPersonal'
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
          DataSet = frxDBCapacidadxPersonal
          DataSetName = 'frxDBCapacidadxPersonal'
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
          DataSet = frxDBCapacidadxPersonal
          DataSetName = 'frxDBCapacidadxPersonal'
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
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 720
    Top = 24
  end
  object cdPersonal: TZQuery
    Params = <>
    Left = 880
    Top = 32
  end
  object frxDBPersonal: TfrxDBDataset
    UserName = 'frxDBPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdxEstado=IdxEstado'
      'RegistroPatronal=RegistroPatronal'
      'Especial=Especial'
      'IdPersonalImss=IdPersonalImss'
      'Jornada=Jornada'
      'TipoMovimiento=TipoMovimiento'
      'FechaBaja=FechaBaja'
      'IdPersonalImssBaja=IdPersonalImssBaja'
      'Etiqueta=Etiqueta'
      'activo=activo'
      'FechaPase=FechaPase'
      'codigopersonal=codigopersonal'
      'Nombres=Nombres'
      'APaterno=APaterno'
      'AMaterno=AMaterno'
      'NombreCompleto=NombreCompleto'
      'curp=curp'
      'descripcion=descripcion'
      'correo=correo'
      'idpersonal=idpersonal'
      'ImagenPersonal=ImagenPersonal'
      'ExtImagen=ExtImagen'
      'Imagen=Imagen'
      'numerosegurosocial=numerosegurosocial'
      'fechaalta=fechaalta'
      'Gruposanguineo=Gruposanguineo'
      'rfc=rfc'
      'telefono=telefono'
      'contacto=contacto'
      'idpostulante=idpostulante'
      'telefonocontacto=telefonocontacto'
      'doccontratacion=doccontratacion'
      'infonavit=infonavit'
      'aplicacionInfonavit=aplicacionInfonavit'
      'terminoInfonavit=terminoInfonavit'
      'NumeroInfonavit=NumeroInfonavit'
      'FactorInfonavit=FactorInfonavit'
      'EstadoCivil=EstadoCivil'
      'estadonacimiento=estadonacimiento'
      'sexo=sexo'
      'nacionalidad=nacionalidad'
      'Municipio=Municipio'
      'Calle=Calle'
      'Numero=Numero'
      'Colonia=Colonia'
      'IdCiudad=IdCiudad'
      'TituloCiudad=TituloCiudad'
      'IdEstado=IdEstado'
      'TituloEstado=TituloEstado'
      'IdPais=IdPais'
      'TituloPais=TituloPais'
      'Domicilio=Domicilio'
      'fechanacimiento=fechanacimiento'
      'delegacion=delegacion'
      'nombremadre=nombremadre'
      'nombrepadre=nombrepadre'
      'CP=CP'
      'FechaReingreso=FechaReingreso'
      'IdPlazaDetalle=IdPlazaDetalle'
      'CodigoPlazaDetalle=CodigoPlazaDetalle'
      'IdCargo=IdCargo'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'IdProyecto=IdProyecto'
      'CodigoProyecto=CodigoProyecto'
      'TituloProyecto=TituloProyecto'
      'IdDepartamento=IdDepartamento'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'DescripcionDepartamento=DescripcionDepartamento'
      'FechaCartaConfidencial=FechaCartaConfidencial'
      'StrFechaCartaConfidencial=StrFechaCartaConfidencial'
      'Nivel=Nivel'
      'SalarioDiario=SalarioDiario'
      'SalarioIntegrado=SalarioIntegrado'
      'IdLocalidad=IdLocalidad'
      'CodigoLocalidad=CodigoLocalidad'
      'NombreLocalidad=NombreLocalidad'
      'NombreOrganizacion=NombreOrganizacion'
      'RFCPatronal=RFCPatronal'
      'RegPatIMSS=RegPatIMSS'
      'DomicilioFiscalOrg=DomicilioFiscalOrg'
      'tAplicacionInfonavit_Orig=tAplicacionInfonavit_Orig'
      'tAplicacionInfonavit=tAplicacionInfonavit'
      'IdbancoCFDI=IdbancoCFDI'
      'Sucursal=Sucursal'
      'Cuenta=Cuenta'
      'Clave=Clave'
      'NombreCorto=NombreCorto'
      'RazonSocial=RazonSocial'
      'MotivoBaja=MotivoBaja'
      'CuantoSiTemporal=CuantoSiTemporal'
      'BajaRecontratar=BajaRecontratar'
      'CausaVoluntaria=CausaVoluntaria'
      'CausaInvoluntaria=CausaInvoluntaria'
      'TipoCausa=TipoCausa'
      'IdSolicita=IdSolicita'
      'APaternoSol=APaternoSol'
      'AMaternoSol=AMaternoSol'
      'NombresSol=NombresSol'
      'IdCargoSol=IdCargoSol'
      'IdLocalidadSol=IdLocalidadSol'
      'NombreLocalidadSol=NombreLocalidadSol'
      'TituloCargoSol=TituloCargoSol'
      'MotivoBaja=MotivoBaja'
      'CuantoSiTemporal=CuantoSiTemporal'
      'BajaRecontratar=BajaRecontratar'
      'CausaVoluntaria=CausaVoluntaria'
      'CausaInvoluntaria=CausaInvoluntaria'
      'TipoCausa=TipoCausa'
      'ComentariosIngreso=ComentariosIngreso'
      'ComentariosBaja=ComentariosBaja'
      'DoctoActaNacimiento=DoctoActaNacimiento'
      'DoctoCURP=DoctoCURP'
      'DoctoNoPenales=DoctoNoPenales'
      'DoctoExamenMedico=DoctoExamenMedico'
      'DoctoRFC=DoctoRFC'
      'DoctoIMSS=DoctoIMSS'
      'DoctoCompDom=DoctoCompDom'
      'DoctoIFE=DoctoIFE'
      'DoctoCurriculum=DoctoCurriculum'
      'DoctoFotos=DoctoFotos'
      'DoctoContrato=DoctoContrato'
      'DoctoEstudios=DoctoEstudios'
      'DoctoInfonavit=DoctoInfonavit'
      'DoctoLicencia=DoctoLicencia'
      'DoctoDescripPto=DoctoDescripPto'
      'DoctoCartaConfi=DoctoCartaConfi')
    DataSource = dsPersonal
    BCDToCurrency = False
    Left = 640
    Top = 40
  end
  object dsBuscarPersonal: TDataSource
    Left = 632
    Top = 152
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 560
    Top = 144
  end
  object spdImagen: TSavePictureDialog
    Filter = 
      'All (*.png;*.jpg;*.jpeg;*.gif;*.tif;*.tiff;*.gif;*.cur;*.pcx;*.a' +
      'ni;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.emf;*.wmf' +
      ')|*.png;*.jpg;*.jpeg;*.gif;*.tif;*.tiff;*.gif;*.cur;*.pcx;*.ani;' +
      '*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.emf;*.wmf|PN' +
      'G graphics from DevExpress (*.png)|*.png|JPEG graphics from DevE' +
      'xpress (*.jpg)|*.jpg|JPEG graphics from DevExpress (*.jpeg)|*.jp' +
      'eg|GIF graphics from DevExpress (*.gif)|*.gif|TIFF graphics from' +
      ' DevExpress (*.tif)|*.tif|TIFF graphics from DevExpress (*.tiff)' +
      '|*.tiff|Imagen GIF de CompuServe (*.gif)|*.gif|Cursor files (*.c' +
      'ur)|*.cur|PCX Image (*.pcx)|*.pcx|ANI Image (*.ani)|*.ani|GIF Im' +
      'age (*.gif)|*.gif|Portable Network Graphics (*.png)|*.png|JPEG I' +
      'mage File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps ' +
      '(*.bmp)|*.bmp'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 696
    Top = 176
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer2Timer
    Left = 704
    Top = 296
  end
  object pmImagen: TPopupMenu
    Left = 504
    Top = 87
    object Actualizarcdigodebarras1: TMenuItem
      Caption = 'Actualizar c'#243'digo de barras'
      OnClick = Actualizarcdigodebarras1Click
    end
  end
  object frxBaja: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42945.768486226800000000
    ReportOptions.LastChange = 42947.707558900460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <frxDBPersonal."MotivoBaja"> = '#39'Terminacion de proyecto'#39' th' +
        'en'
      '    TerminacionProyecto.Text := '#39' X'#39';'
      '            '
      '  if <frxDBPersonal."MotivoBaja"> = '#39'Causa administrativa'#39' then'
      '    CausaAdministrativa.Text := '#39' X'#39';'
      '            '
      '  if <frxDBPersonal."MotivoBaja"> = '#39'Baja definitiva'#39' then'
      '    BajaDefinitiva.Text := '#39' X'#39';'
      '            '
      '  if <frxDBPersonal."MotivoBaja"> = '#39'Baja temporal'#39' then'
      '    BajaTemporal.Text := '#39' X'#39';'
      '  '
      '  if <frxDBPersonal."BajaRecontratar"> = '#39'Recontratable'#39' then'
      '    Recontratable.Text := '#39' X'#39';                                '
      ''
      '  if <frxDBPersonal."BajaRecontratar"> = '#39'No recontratable'#39' then'
      
        '    Norecontratable.Text := '#39' X'#39';                               ' +
        ' '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 624
    Top = 256
    Datasets = <
      item
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 1.500000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBPersonal."idpersonal"'
        ReprintOnNewPage = True
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 971.339210000000000000
        Top = 41.574830000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBPersonal
        DataSetName = 'frxDBPersonal'
        RowCount = 0
        object Memo74: TfrxMemoView
          Top = 767.244590000000000000
          Width = 740.787880000000000000
          Height = 177.637910000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Top = 699.213050000000000000
          Width = 740.787880000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'OBSERVACIONES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Top = 608.504330000000000000
          Width = 740.787880000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'ESPECIFIQUE LA CAUSA SI ES INVOLUNTARIA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Top = 514.016080000000000000
          Width = 740.787880000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'ESPECIFIQUE LA CAUSA SI ES VOLUNTARIA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Top = 491.338899999999900000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'RAZONES DE LA DESVINCULACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 427.086890000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'SI ES BAJA TEMPORAL ESPECIFIQUE POR CUANTO TIEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 381.732530000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVOS DE LA BAJA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 215.433210000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS DEL TRABAJADOR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 143.622140000000000000
          Width = 234.330860000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLICITADO POR:'
            '(JEFE DE DEPARTAMENTO '#210' SUPERVISOR INMEDIATO)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 234.330860000000000000
          Top = 143.622140000000000000
          Width = 268.346630000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."APaternoSol"] [frxDBPersonal."AMaternoSol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 234.330860000000000000
          Top = 170.078850000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'APELLIDO (S)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 502.677490000000000000
          Top = 143.622140000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombresSol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 502.677490000000000000
          Top = 170.078850000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE (S)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 188.976500000000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 132.283550000000000000
          Top = 188.976500000000000000
          Width = 215.433210000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."TituloCargoSol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 347.716760000000000000
          Top = 188.976500000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SUCURSAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 502.677490000000000000
          Top = 188.976500000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombreLocalidadSol"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 238.110390000000000000
          Width = 132.283550000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE COMPLETO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Top = 283.464750000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PUESTO Y/O CARGO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 132.283550000000000000
          Top = 238.110390000000000000
          Width = 287.244280000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."APaterno"] [frxDBPersonal."AMaterno"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 132.283550000000000000
          Top = 264.567100000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'APELLIDO (S)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 419.527830000000000000
          Top = 238.110390000000000000
          Width = 321.260050000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."Nombres"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 419.527830000000000000
          Top = 264.567100000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMBRE (S)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 132.283550000000000000
          Top = 283.464750000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 419.527830000000000000
          Top = 283.464750000000000000
          Width = 166.299320000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SUCURSAL (OFICINA):')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 585.827150000000000000
          Top = 283.464750000000000000
          Width = 154.960730000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."NombreLocalidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Top = 313.700990000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'NOMBRE DEL PROYECTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Top = 340.157700000000000000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA DE INGRESO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 173.858380000000000000
          Top = 313.700990000000000000
          Width = 566.929500000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBPersonal."TituloProyecto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 173.858380000000000000
          Top = 340.157700000000000000
          Width = 185.196970000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."FechaReingreso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 173.858380000000000000
          Top = 362.834880000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'dd   /  mm   /  aa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 359.055350000000000000
          Top = 340.157700000000000000
          Width = 177.637910000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA DE FINALIZACION:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 536.693260000000000000
          Top = 340.157700000000000000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBPersonal."FechaBaja"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 536.693260000000000000
          Top = 362.834880000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'dd   /  mm   /  aa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Top = 404.409709999999900000
          Width = 245.669450000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'TERMINACION DE PROYECTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 245.669450000000000000
          Top = 404.409709999999900000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'CAUSA ADMINISTRATIVA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 427.086890000000000000
          Top = 404.409709999999900000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'BAJA DEFINITIVA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 585.827150000000000000
          Top = 404.409709999999900000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'BAJA TEMPORAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object TerminacionProyecto: TfrxMemoView
          Left = 177.637910000000000000
          Top = 408.189240000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object CausaAdministrativa: TfrxMemoView
          Left = 381.732530000000000000
          Top = 408.189240000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object BajaDefinitiva: TfrxMemoView
          Left = 536.693260000000000000
          Top = 408.189240000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object BajaTemporal: TfrxMemoView
          Left = 691.653990000000000000
          Top = 408.189240000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Top = 445.984540000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBPersonal."CuantoSiTemporal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Top = 468.661720000000000000
          Width = 370.393940000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'RECONTRATABLE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Recontratable: TfrxMemoView
          Left = 154.960730000000000000
          Top = 472.441250000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 370.393940000000000000
          Top = 468.661720000000000000
          Width = 370.393940000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'NO RECONTRATABLE:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Norecontratable: TfrxMemoView
          Left = 604.724800000000000000
          Top = 472.441250000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Top = 540.472790000000000000
          Width = 740.787880000000000000
          Height = 68.031525350000000000
          DataField = 'CausaVoluntaria'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBPersonal."CausaVoluntaria"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Top = 631.181510000000000000
          Width = 740.787880000000000000
          Height = 68.031525350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBPersonal."CausaInvoluntaria"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Top = 721.890230000000000000
          Width = 740.787880000000000000
          Height = 45.354345350000000000
          DataField = 'ComentariosBaja'
          DataSet = frxDBPersonal
          DataSetName = 'frxDBPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBPersonal."ComentariosBaja"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Top = 865.512370000000000000
          Width = 245.669450000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ENCARGADO DE PROYECTO Y/O'
            'JEFE INMEDIATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Top = 771.024119999999900000
          Width = 245.669291340000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ELABOR'#211':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 495.118430000000000000
          Top = 865.512370000000000000
          Width = 245.669450000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'RECURSOS HUMANOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 495.118430000000000000
          Top = 771.024119999999900000
          Width = 245.669291340000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Vo. Bo.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Width = 740.787440630000000000
          Height = 117.165430000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 154.960730000000000000
          Width = 582.047620000000000000
          Height = 120.944960000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000001000
          Width = 582.047620000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'SINER, SERVICIOS DE INGENIERIA ESPECIALIZADA S.A. DE C.V.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Top = 49.133890000000000000
          Width = 582.047620000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '"FORMATO DE SALIDA DE PERSONAL"')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Top = 71.811070000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 279.685220000000000000
          Top = 71.811070000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'REVISI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Top = 71.811070000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'FECHA DE ACTUALIZACI'#211'N')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 154.960730000000000000
          Top = 94.488250000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'SIG-P02-F06')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 279.685220000000000000
          Top = 94.488250000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 415.748300000000000000
          Top = 94.488250000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Abril. 2017')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 117.165430000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clBlack
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 120.944960000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS DEL SUPERVISOR O JEFE INMEDIATO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 3.779527559999998000
          Width = 105.826771653543000000
          Height = 102.047244094488000000
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000A20000
            00A00802000000005820470000000467414D410000B18F0BFC61050000000970
            48597300000EC300000EC301C76FA86400004E0A4944415478DAED5D07601545
            DE9FD9F24ADE4B0F81547A13902245A42A0A881451D0B39C150B70A877DEA947
            5344C0AE67FF54ECE54445201401151541B0A2204AAFE9BDBCBEE5FBCFCCEE66
            F34AF2420244CF5563F2CAEECCFCE6DFCB60455150CBB830C6F05355D5E6BDAD
            AA620E93DBFEB2EB57B7CB3D70707F4596C8C330D7C4D1060D15FE6453087D2B
            9AAF4739FD686E1EE65B2D07E6139E4303DFA5AFC992FCE9279B5C35AE4B2EBB
            5896659EE79AB89DA28439D2A81A057334376C60B46698D993825729C283A37C
            40A3C6143AD5480F324FBB81671172E690A42EFDBF570F1F39BAF0E1FB5445A1
            94CCD57FB76856C08036F40EC65BA137317F26CA25659F8C74F30687DA12610E
            9D5583D3AE6FA8F49F80C77FE71D771F387864CDFAE588231F0CFBDD1386391A
            24CC1F60EF86DEB9FE6DDD3C309FF6AB294CBBFEDBD694BBFEFAD7699595D56B
            D7AEB4C5F2AAAA900DD0AC436D14D3367F0B354436CDCCB4FF90978A540E7307
            F61EBD64E2E516BBE3830FDF6EDBA1B54A5E3EDD233B85D71F1F6646296B733E
            9B34F9D276195D5E7AE59991A30628AA829B46CDBFAFEB8F0F33154CE8B9A75E
            B9EBCE396D523366DC71D33FEFBE8550F249900E2DF6FA9F80D95DE3BD7DC63D
            6B577FCA61F1EC117DDF7AE745AB8D3F194A408BBDFE2760DEFDD36F974FBE9E
            936DC565659D7BB47DF5CD673A74CEFE13E63FCEC534D895CB56DD7CE31D1DD2
            CFA8A97157B80A163F3AF7AFD3AE4427C1E3D662AF3F3ECCB24FBAF79EFB5E7C
            FEADF6196720953F707CD715D74E7CF2B9C77851F813E613BD9DC925D4580BEF
            C47CDAC6B788D9CA142E04F62BF380200EE123078F8C1F7B8954213A2C0956AB
            ED48F1A14E3D3BBFFED6336D3BB45154C4616A72A9B00A6076211CF5D3D9ECC2
            BA299ADDFA6F7176F3E98519FEC7F13C184B549126EFF1182F7BF78359B7DCD9
            B1F519DE2A09FE562DEAE182BCC79F5D70DD8D5324194C6A550E48A228CA305A
            20F6462EFD298639AC9734AA3BFC9160E600345541241E4528192C639F4F9A75
            EB1D6B976F6CE5CCB070367FC06B8BB5EE3D7EE82FD74C7CFCC98582D582C9E7
            145956302F905BB56C6AFE1366957D91E390C2EE4040C7BB77EE9932E90ACE6B
            8D11E3B0C2C98A9FB372E5D555B129C2D2D79FEF3BE84C9590BE425D943C468D
            18F09F309F3698612E24C288144424AD009279F1BC875F7CF28DE4B836AA8404
            9E8F4B8829AD2CB5DB63771DFCE1FEC573EFB867A62CCB0807384E806D111ACF
            6870E9FF94CDA74305E3C874780ECB019917C4E2E3E5178E9D5071CCDD2A3ECD
            E5F1F03CEEDDA7C7C143072A2B5C5EA53AAD6DCA6B6FBFD4AE5BB6A4F8788E27
            3003BFE75A22CC4D5C22F4078399A8DA4411039A16E1C547EE7BEAA9279F4F75
            645AB0CDEDF7FAFCEEB307F7AFA976FFB26B4F726ADCCFFBBFFBCFD38F5D3FE3
            2A5995119291C2F142234CACDF31D36E3084193D4FABFF8A34CAB04847196F67
            C259922581E3398E2B3852F49729D71EDB9FDBCA992E492A1685CAAAB2ACECCC
            3E67F6FBF493CD2A28674A659BCCE4773E7C3DBD5D9B8022F3605C81606F5AC4
            3D28A21CF4B17A62E40D2EEC298D3747B3E2D12F47D84F46B94FC37F18635991
            0166F8F53F8B9E7FECA1A792E35345D51290644EB4B85CD5F618DB840993B76D
            FD71DFFEDD59D9297B8EEC7CF8B145D74EBF4A424850A9018D1BC8F188665E41
            A234F426A7397BE4C4D7B7655C2455806604E51D2EBCFEEA9BF7EC3A989E94E9
            757B31CF4BB2029A37B0EE73869C1BE7485DB77EA5C38EDCEE8AE4F484151B3F
            4C4D4B506595985351CBE6B057503249A40CC07A9856FDB9602D453637EF1525
            43AB9D3FFD0F7E7DE6D1571E98BFA84D523A4865292081D00D488AC52A965694
            6666751C7FD194E52B3E28C93FDAA655E2E1A28377DD77E7AC3BA711359B49F7
            9031342A23AA41823B81ABC569DACD7B45994063FE3CFCB9F3873DD3AE9D5994
            57DC263ECDE7F6733C56642470023064B7D72DDA622E9A78697169C9979F7E12
            6B112B3DE54292B072FD7B9D3B672359413C879AC0AB7E1F30870ECB703B04BD
            753252FE2271A4E8941DA264C39F3E6F60DEBF173DF5E40B7D3AF7F1D5F80424
            C04700661EF33057B0A58B2A2AFA0D187CF690211FBEBBCC5B5AEE88B71D2C3B
            74C955E39F7872B128F2D4438A82D2C4FE276473F430375D603756F684EAB41B
            D77F76D38D7F8B11921C9C43720704CC11E4402E83D4E51585932B5CEEF856AD
            2EBDEC2FC70E1CFD62F5BAB8446791AFC8CB55FDF7BF4B878E1C6ACE2A698A0A
            865A9AA61DFA463426DAC948F58D7C134CB52B1531F9AB1AE4C6C15C894F8304
            1D0298B394E5D54CBB6EFAD79BBFED90D1D155E3264E0FEAA6561592F507FFC8
            B2C48B426969E9A8B153CEE8D7F7C365AF561C3DEA8C7516B84BFA0FEDFBD2D2
            A713531C922463A07DD81F0ACB17C326811D4C7CD1E76947895FD46BD2384AAB
            A5E648EADFA954AA233F4E45753331B14A6C5C99F9B1C9C065F8F1EC236F2DBA
            FFA1AC942CD927638E278E12C6CD0130ACB12E8B68292B2B69DBB1F7984B271F
            3AFAEB671F7E94608BF18BCAA1A263B3FE71C382C5F7C01D158568DD1CD92224
            AAA9729C6918755639146614819A237DA0FE17EB5FAB30CBD420CC2DE18A0033
            7BC59815560D0031018351F7E6CFB65E79D9B4445B8A055B948002A4AC202DE7
            1D99D2DF799E9765D9E5F28DBD644AC733CEF864DDBADFB66D494B4FCEAB2CB6
            24E357963E3D68E8D90466CC02D11226512F3EEC505164985B9AC179D2616ED4
            F60CB7402AE5D81C43B5F6C340BFAA4CE98DB8362B8BDDD7FD75DAB75B7ECC48
            CD94BC0AF059808AE339859023716F19B405AF0B025F515ED2A97BAF3193AF2A
            ABA85CFEFACB9CA732312D657FE1C1BEFDBBFFDFD2E7D2DBA692B8952AF30463
            1436D5374A985B08E4614A0742671269924157B3A8606160C632520564366931
            602C7198ED00309884F9F7DCFFCA4B6FA52566021D639913380BC00B38915815
            4911D1691E63499280A055EC977D68E4F82BBAF6ECBDE3BB6D5B577D283A38D1
            E1FCEDF09EDBEEB865DE92BF5B6C2298DAB041307940536BA822B96F4F190F08
            63509DB097BCE9D847A066F897679C9B3D40A1010A10CE84E078E1A5FFBC3E6F
            EEA2D609E9162CF8FD7E9B60972485503049D0A6E10CA06C9DA0D94FD1C69717
            9676ED3E60F884C99CC06F5AF9E16F3F6F6F939159E172B951D1134F3D30E9F2
            49F059BF4C4624622D1BA50E3B890266D44C9A7673AA604DBF4E1ACC88306D6A
            1B636A1E014325DAB082790EEDD8F6CB94C9D7A08025C99928FB7D40B6602513
            B58C2485C1DC1481E3608E1CFD69286240A15856FCD58161932EEDD6774051FE
            F1CF3E7CA7ACAC383935B5B4E6A833895FFADAF3BD07F697C87602D35B419AA2
            DF30CC28846987AE43B310EEEF55058BA07F12AC54225F31665E101420D95EA0
            4963B124BF7CC62D776EFD7C5B46AB4CBF57C22C6F8FA6FE698A1A8521743D00
            765E51032E4F426AC6D8ABAE898D4FD8FDDDB6CDEBD7C2F3E3E21C078FEFEDD9
            AFFBDB1FBE9A9A91080C83239B0C50D6D20841831304A19E956D21F2B8CE905A
            0ECC287C992121422A2261B1E177B09448E226C2BCDFABCCBDEB81D75E7EB76D
            9B76AA240524BF802CC4D0623447610ED2D14D0F22CAB3AA48EE4AF7D08913CF
            E83F48F2CB5BD7E5ECDAF15D7C5C22E86E070AF6DC75CFCCBBEFBD1DC4852291
            25E248E5BBCA2AEC98C6AE8FF04F981B3B9AD0600EB16299AA0BE304AEABD024
            111E686BE9B36FDF73E7C2D60959768B3DE0738B225234EB1A530E5FDF428B2A
            E75689CA2DB9DC56877DFC75D7C62766072A4BD72E7FEBE8E1BC84B83895F757
            49790B97CCBDE2BAAB88F14613886485B43940145A4E37A6FF84B9F1A3090733
            30616251C122ABE41F55C18245DCBAE9DBE937DFE62E57131CA9922F00A693A2
            FA698E0F8E066681640609D86251DCD5B2CFDD75D0E081A326D978A1E2F8C115
            CB977B5D55B17156AF5CE1956B5E7CE9F991178D20614A181BBD27CD38ABB5A4
            FF84B9F1A30915CF4C0FE588A74296159EB300E087F71EBFF986E907F61D6D93
            90E5AEF2F0080C2489BA35A3ED1A6351915F455E1E3939EC73BBB01033FA2FD7
            A665B4E724E5B75D3F6C5CBBDC61176C364B6E7E5E76B7F4FF7EF45256FB2CE0
            EABCC0D1743395E382F5E7A059FC0973BDA309354EA880553158360A7570F2A5
            F9D5D3AEBF7DFBE6ADEDB2DAD754B82CBC4843535892252271B14EC72A66FE68
            558F441B17FC21228E48730B12813025ECAEF2A575ED3262FC649B3D9EF3BBB7
            7DF1C9375BBF48888FB3586D878BF74EB86CF8E34F3C1E1BEFD4F46A223690D1
            BAE44F981B3F9A887D3C809203026FF5B9E539773DF4DCB34BBBB7EBAC040298
            F84E54A23583D4E6881B858870AA91E3C83023EA24E54065E6FC3E8C6DB25D08
            F095FEEA33CF1F3D60E828DEEB419E9A4FD6E5FCF6DB2F49892901BE3AB7EAD7
            E9B74C9FB7608E681149E23E47F712FE1F80F964C49B89D465EE2A468D881552
            68F7A0AF73AF3CFBE6BC394BDAC4B60533589624F2A2A2F9AD317180443B1790
            F1BCC0C3EE0149C02190F5624565795C62CA842957C5A4A6065414A8AC5EFBFE
            BBA505875353927C017F6E65EE5DF7DF35EB1F3770E4BB01EAE816B4FD038F06
            6D5C9508BF4196930BD709ADF689E4829DD44152C0302984A0EE6DFAA24C352A
            A01DFEE3351BFE3EF35F5629DEA23825D5DF94D40CDDAD01D307E59927DE6F45
            A92AAB3CA34FFFA113267955C1C60905FB7EFB74CD077E972B3931A53C505550
            53F0CC4B8F5EFE97F13024599110B672543EC8C486873D262B48C26AB4309FE2
            80470B8299ED39A6C7C2EF32D0192C9E2C0141739CB87DEB8FD3A7CDAC2EF524
            D8528072A227DC48CF3267596B91AB80E253D0F0311775EED557968130A5BD3B
            7FDAB07AB9D3295A6262F28BF35A67273FF3C2638386F601DA05D64353C73862
            4F53C9002FC25E442DB2A549CB8259CBAA5789938ABD067C157E3FB827F7CACB
            AF3F762037A37586E49128A38EBE78B1BE8B3941890B06D46FBBADB4BC32A555
            E6D849531C29A992E4B762EEFBAD9F7FB5795D424CBC232626B7E448DF737A3E
            F3F2131999AD5542D044EBA6FE39E226A3B65CCB12C9B56BDB9264B3E6739065
            3F851994615514B9AA8AEA1937FCEBE39C2FDB6775947C1E4CBC8FC02C9BD471
            D31C3E3202A0920A26135F515C3DE09C73FB8F3ADFA722018956D5FFF9A71FED
            FEE1A7588BD5E1B01C293F7CDE8451FF79FED1B8580B6C4185DC8827C9268864
            9C717CF867855DC028B3DE9ABEB02D51366BEE4CD87F324DEBF1CB0F2D7EE299
            275F494F684FFC1F48E604550EF8312734E54906AF66510D46D332960580CC8B
            BC32376AF294ACAEDDBC5ED9C2737E4FD9C71F7E509E7B34D66EE163F87D4547
            AFB8EE2F8F3E3A87B7811E48A22024868D69A814471B4AAA9DF3892660FF5E43
            174C9D96652F713E90A47A11507DEB9565B3EF9E9718932ECA7635000C1264A2
            A49284822651B379A56A0394D4081355BEC6ED8D6B9D3DE692A93171097E19D9
            44B1B2E0C8FA0FDEAEAE288E4B8CAF91FC7945794F3D7FDFD5375D054C3A80FC
            F053E42C24BADD984A3B742A5530F3AD9B185A8EFE0A8DD3210D66E0D8011A8C
            227AD7A68FB7DE78DD4D56DE192726481E45E0057857410A476ADA9A67779A17
            975A748420055E2C29AD1A30F4DC01234606789B14E01D16E9F8FE9DEB567D00
            F46B8F7156B92B6D8981175F7A7EE0C8FEA07563CA17597F849391F2D70CD33C
            D9B2B99EB905DD4D7F4DA1429A3F7AA0E0E66BA7EFF87E67767AC78027C0D33E
            217A96A6A822A9F9D7823E1D74680B27287E595285B153A7A66477F2F8059197
            1C36FEE7EFB67EB1FE633BCF5B6D42614D6E8FDEDD9F5FFA9FB69D32A8CA4D3B
            6120AE9EB482FAD7E1A422DD829836232C907360C77A6B7C77FF7DDEFBEF7D94
            D5BA7DC00D162949FBE27816081431296C0B34FB00788403A054092A3C409470
            8DCB97989539FA92A9823D5992496A918895ED9F7FBA63DB9709B176D5C21DCE
            3B70D1C4D1CFBEF4A823214605058C445804145DF56F948555CDB6B62D0766A4
            2BDBC08F1FBCFF89A71F7F2EBB4D7BBF4B460ACBF24198E46A22E27E022870F3
            53338F38580B091431F81D04ADCA55783C7DCE197ACEC8311E197BFD8AD3E150
            DD15EB3F7AF7E8C1BDF1C9495E9FBBB4BAE0CEBB66DD3967267C59560224425A
            37FBBD85383E4F0FCC11189422CBC44DB1E9936D53275F9996906E4536B07268
            6D3AF14310722125E71C4867C435FBDAA90227CA6408A0047001BFCF6AB1B95D
            1E6CB58E9D746946FB6E6E49809D65C572A0B260F9B2B7AACB2B525212CB5D25
            420C7EE6B9C7468C1D4C3389B4A6552D0EE6D33E08D300485A485161E9D557DD
            BCF3FBDD9949D9AA4705C2021D47C5820266162783D14C6C1662BA9C04494675
            400026109038AB45A56169B7DB939A953D76F2E58233C91B504047740ADCB183
            7BD6E77CE8F3B8525392724B8FB6EB9CF9E29BCF77EA9AAD9A7C602D57369F6C
            7D2FECF4CC4F9724E9F6DBEF7EF7ED0FDBA576945D8A55B12159429CA4608B0C
            1C1583292D712A8B3B35FF50593A38E87A928264AB08F2D8097F05A40A8F77E0
            88F3FB0C1926214196641EA9761EEFFCFAD3CD5F7EE1B45B6D0E61E7C11D33FF
            39F3BEC573AC629D7483DFABA6DD5C2C88042788FB08C89334E2A3597D32C78B
            EFBFB1E6EF7FFBA7D3161F678B930232585000BC1EDCA5B68EF674F5A4B98E31
            2BD5902969C36C2D18B96AAA6C09AD2EB8F8B2E4F42CAF4FE1B1409ACCC9EECF
            57AFDAF7D3F789294E59942ABC958F3DF6C825579E2FAB019E7C8F23255EC442
            93301683B8662417583D39BFA7B48CBDD9240DCD8605094BC33B1C47F2DED1DE
            5D07AFBF6656D1D1A22467B2EC93E0E5802C713CA765489F922E092113843D26
            8B9C525CE9E9D267C0B9632E429C5D5138BFAC5AEC7C4DFEB14F73969796E4C6
            2639CBAACA1C718E8F36BCD9B15336495722D69F402AF378E57F18661A6A24C9
            2008CB8AC2533ABD73E6BFDF58FA7EE7B65DFC2E3F47D37D08B9D3A0425366D8
            B8E50863E70062AAD72FFB657ECCF8C91DBAF5F2041456AE63B5E083BB7FDCB8
            FA2341956C898E83F9476FBDED9A850B671358914CB3C239A4154C37ECF06A2C
            CC27B1F74873C1CC7C46322963E498DF68D3BACF6FBDF976C567497424CA3E99
            C77C4092048B4086773AA9995A7358B109B6EA0A57ABB4EC0B2F9E22C6277A25
            890B289C881D16F4F99AD53BBFDB1697E2F4A0405975FEB2656F0DBD602058FA
            24CE464C7CAD02EB7F0E6623960C344C9C211C5F565875E355376DDBF25DBBAC
            2EEE2A97884120F2BC807D921F11D38943A70F66D889C04F7849B1F196A2E28A
            D1932EEDD2EF2CAF0CBA990086B24DE4FC95651F7FB42CBFF0484C626C6979FE
            8021FD5E7DF70547BC4D517C02070621467A9575FDCBF84763DA06CC8A026A17
            8F65FCDA8BEFDEFDF7D919ADDB2250A515C2CD35750B939347B8B0D4AC46AD82
            85CDE48DF0F5A009C287248EC02C48B28D13DC6EBF189738E18A2BEDF1C90109
            0BF061598EB1F047F6FFB2E28377E29D36D1CE1F2E38F2CFBB6EFBE7BD331535
            80314F2AFAFE3761463AD2B08A40CABB7FD87BD565D77A6AE4B89824BFC72B90
            040C9A3D42EBA4D85CC3CC30EA5C5DEA830CB9D43A05519126089F08C047050E
            0C291C902CD698E3C525C32F18D76FC830978C05F89718F4B0657D5B377EFCCB
            37DB1293E34AAACBE2D39DCB73DE6EDB310390E6C0F2E7A20A469D3AA61DC97A
            6BCA3322C1AC95AF49CA430B9F78F081C77A76ECE3AEF2F21CA980D212FCE829
            8E2AAA6D655EE7A12AB37DEABE5527BFBBBEC11825CB6ADD0604E60561F75468
            C905ADB58077D4808CB160BFF4CABF5A52D3900F38B228634514157751DEEAF7
            DE09C8D55687E348C1D16BA75DF6D013F7214EA673E1A2D1B4EB5FAE934ECD27
            C975C774931DDFEEBA78C294384B8A0DC5C8B4CCD4285757B112A902CA7CD5F5
            429883AAB5E30FFB2DFA569D8FE9B82AB50B4A9806296F5690AC52E1C1636B55
            45CD8073869E79EEF95200CC4191184C58B62379C7B6AFBEFC7C4D724A4A7145
            6942AB9837DE7DA1D759DD15D583B11523AE294D294E11D38EB28D4DA32E9596
            442D9CB7E4D9275FEC98D9C55B0D0A8BA815A2210E69B5A6E4E2E824839E1876
            C399300B1E7CF8C987B92762916C1D66449D6E2A493FE31861F2BE6ABF35C631
            F1DAEBED09C95ED0D064805A71D8B8CACA928DABFE5B52521A17EFDC7360F74D
            33AF7DF8A9F908F9694F0B3E68488D4A2B38759AB6DAAC8DCD58EDE8FEDD87C7
            8D9E24CAF6184BAC4C1820A72F6E6DB60D4BEC08791C0E3546CD7F86F6F60A9D
            90D9FD6CBEA9F99698266C921F40D29C2A49B2800451E5AAAA6AFA8D1CD577D8
            702F688BB2C0934E910A9806877EF97175CE87A929096595A5496DE297BEFE54
            AFB3BAA934DC122471C386A59B0E73A4EBF4C0CC2A539F7AE485C50B1FCB6ED5
            5EF2CABCCA295A4BA8DACFA83A5F0D57E12FD70FA4F18DB04B5797B6C22CA8F1
            26A9E220144B7D35922A60DE2A08D595D5D6F8E48BAFFEAB252E891405C858C5
            B22808C8EBFD64FD877B767F9B9596B97BFF9E7FCC9E3E7BE1ED2CF93C2C35A3
            960333A3781CA1CBE8895D709FE2FC922993AFCC3B50E6B0C403C6609C04E821
            E93A764C54322E2AA3BA4A1669FFA22AFA3C31D2DF883CF3A0D45A5CAB7BD5D9
            5858A99B7B44274B0E46616E3BD01778D2444E022B2020F3E78E1ED7A5573FB7
            8C7CA4E2861354CEC6598E1FFE7EF58A3793E392F28B4AFA0EEDF9C26B8FB44E
            6B1584604B94CD4D7F46B85BA28FD77C7CC335D39363B22CC88EFCC0F1A8224B
            1A2EB2D63DC496A28535987679239E6F063C4BB735E8512FC6D14A52EB22A4FD
            126ECC9A7B4ABB25BD1167DE25EC7750BD90242345201630898C2908400E80C4
            A9ACF66667B41F77C9E57EABDDA52ABCCAF30124F0765ECEDBB0E6AD03BB0F24
            26A71DAF38FAD4AB8BA74C9980A216C3270982680391217C26EC27D5B05F0CAA
            F826ECC183A65D7BC7A6F59FA524A5C97E5266A1104F885F1589D3897E12AB12
            962455F5ABBC1FF9948027E0F32A20C0493F64305438E4A2B752F5EE7FD40243
            BA2D84F4061608EB6F0719A30AAE4BE12A2BA1D49650E32A244F5F159162A342
            1A5B54C12A5A6D169B68B178FCBE1847DCB889535B67B6F70738CC59699F67EC
            B0A93FFFF0F5A68D6B5AB74EDE73F0E76BA75DBDE4913916BB6856068C5F83F4
            80480D87100AAB05875DEDF0CE804653F309C06CEC41C368D9B7FBD8C47153AA
            4BAB121C892E972720019858E6BC8AE0833D4192A5399E07DAC076A7E848B2C7
            C5252524B54E8E6F95688DB5F3569E1390D38EAD168BDD61B55A458B68812F71
            3C67B55A483914698E0FDF1738D6C1110BE6844B7DE721EAC202EEAB0424F20F
            FCEE0FF8A5809F742C01FBD82FF97C3EAFCFEB7649EE1A0277C027B92BAACB4B
            CACB4B2B6AAA6BCAAB2BCA7C15BD7B9C73DE7963A58020AB7C402213B408D8E7
            AA5CF5D1BBF90507AC369C9195F1EADBCF763DA30BC9E8C6C6D375653304E6B0
            36050A2FC2C30217DE6BD4BC4C3BECADB0393D8ADDE4BF6F7FF8D0838F2801D9
            293ADBB7EB9C999DE98875A465A438E2AD0E87232131C16EB30B9CC56E773AED
            0EBB680522B2C4C07F3C7130F29491D318E1A9B8E8741599D8596A80800DE0FB
            FD7EB7D75BE572036F713A135DF08727E0F5FA3D5E7FC0EB0B783D5F6EDAB8E9
            EB0D48955C1EF7834B164CB9EC5214D25E28D8E316F9F08CB07034EA3A61F748
            D827856723C6AC90BE7F0F1D3CE4AEF124272439EC4E203B479C8D6C8626D551
            9CB68B35E166E71052E502297EE21570C10C3D3585A545318E988E9D3AB0C20E
            7D15196F0BB3D8611FD1740FD509C31C7525B18A4C15121A3FE01AA84E500C5F
            1862DD1C41EA2A12F03DF88989A6AB06020AAD8C01FEAA00BF9588F2AB303D99
            8E5035342F99163AB13A1A446BE30CD9C17EA71C9EC79A1386B8D961E7F1A41C
            96D4B392F3072D245F44A09E76F82CBCA75B7BC1738D84138C8E1692181B5DC5
            3822E7AB0782066DDA13778F4490CD516E28933E1C164F99B84A0022B7D74D30
            F4492013FD3E4FC0EF0771E9F5F8800DBA250051869755099096995EE4039C15
            F84B22F0AB046A6AF469301B3853F7866AD4CFE893C675B432A66363ACABDE0C
            7841039A14C231890FD29E1745A20A5844D166B5F2226F8F01754C14051E040A
            BC0EFA1958CF1641E4541039C1B5CE8676A7289AF218A26405AF5258F31A355E
            D98E0A661446D30E3F9A485700B42CD07000408FC7EBF1BABC1E97D7EB05AE06
            52CDEB066507441BA9779054305714FA9B4C5269892D25290A838D14496A810C
            62C03234313DC4C4308E42C76456FDB4BDA528E6B9987815A7920690B2E926A4
            47B3AC30364B1D9F74D393BA0F8153A8874C20AA9F081B4EB402DC02FC0B30C7
            D89D369B2DC619638F8989B1C396003DC36EB5C22FA0388AACEB54E8D5A07B04
            3585699BA35D4615B942B40E8DADB1CF908EA686314A671EAC04D1D27D292083
            86E272BBABAAAADC2E57754DA50B7E56D700968140C0EF93A400CD8325597E8A
            4670602D9386504800B38474BE0D881622A889CB419569E899D34392CC9C2570
            303B8DA76981B0BA74C061F65BE88B548E04AD140E0A63B0CD416582CA8AADB5
            55A2A3C1D49EA74FA4E53EB47528CC8EA6F9D1DDC071F4FC598E30029A6D0CAB
            1763B70333B0DB631C8E98D8D87827689B4E67AC936C086223085CA82CD3050D
            2DA4A652C6BC27B4EA057DA706F5253536B74A37AF8242D43C85B56CC1A63508
            DD7A0A22ACD427B95C045197AB06B074BBDDF0B3A6A61A88D4EFF3CBA4E65765
            8D3E64D2FA56C0AC3122CF53F784EEE720FE2542A1704FFA71894A5B99352EE7
            39C6CD68392CFB3406A34B8B121AF314459EB67D0CE709094739618989F415A2
            2D4DB4F2769AA1494A1D190DD105638F93692095350863329BE745C608E88651
            551AC354685703983330274D56B08C093272A07DC162B1D86C76001BB077C601
            EE8ED858675C5C1CEC06781776493847AF5694C7903251A662124475CCA23AE1
            5555772EB17799B430361069B006F6023059B7BBB2A206A02D2D2D2D2F2F0754
            811503B13215862141D5178E314298196C585956D976653E2BCD77A539B0482F
            5D2C883EAFBF5572627A6626CC0EF604EC71919C45A210B318E64C98A2484524
            67118403070EFEF0C30E580B9D8F2911549868614634A60204077703D2040046
            8E1C9E9010EFF7C0D414895C32FD47A24D5FC1B626CC091610F488FDFB0F809E
            0063A6270B336A212C5DA1690DBCBE17C9EE21563AE9714685B466B6507649D4
            74C09570FB1820F7D8A4A4A478FDB293CB066B5017EF108E547743D492B5D929
            88747F9269DA0A800A4016179700A8656565802BD02BC85436441816AC8B2088
            6CEB911F3CF9CB4274150BBC6A8BB10371E7E5E7D32345180B02CB5762711B2D
            1CA5B935B1C7EDE9D9E38C73CF3BCF6A118CC1EAEEAC6048F6EE3BF8F1C7EB59
            113AFDA01CC1391015CC2AE9ED28909C16ADBC5D0680274F9E1CEB8C09FE9ED9
            9945FF2CAFA859F9D1EAF28A728B55D0DF61A44F183A18FBB52BACAAA0A96564
            64C2B37C3E20192FEC270A3BDB43442F81319017F5AD40F9BC1DB87B7272522B
            7A252424C4C490AD600CCA3022EAA2A97B8619D30EDA057EBF5C510180969594
            9496949494975700438601C1276170A044C4C43880B5008C205380E1D8E1BF18
            2B190DA89D045C72C12741F1A4C60977F8C8F1952B5751C5957537250E28CD4F
            C90E0C51350600423CBB6DDB8B2EBC10C49666B391A6CA8C49719AF79A0E16D8
            426E5EE18A952B2BCA2B62E3E240B101B9AF67259CF845DCAE54812F2F2FEBD0
            A1C3D4A95380A118E10C5A8F89B4EEDA3CE91C490F8945C78F16ACCA59E35724
            813304BFA11168C930DAE10B3535D959D9E3C75FE48CB54B12F00C822F8C9C5D
            6063C00F9FCFEF767B88AEEAF5F8E9DF6EF6B7C7038BC798BCC3614F4D4D494E
            867F9393921281DC83266E300FA40F42B329E156454545802B502CDC111E4005
            1ED94AA02A242626389D4E2BBD088A8C68411EF211F38A8CDD53545CF6C107CB
            49829FD6D49A2E86CA9C7FAC3D1BC110560D74F08484A4491327C0D0490C8ACA
            6FB536C064CED2C29555D5FBF61C8475D8BD7B37F01BABCDA2860F3B46D24B43
            B535A233C0C4815C8068D2D3D37AF7EEA5D47A8FF5F099D6781071BAF5FCEBEE
            DF367CFA096C06B0AA90FE51552F1121FD1F49322F9162D5D5D51DDB771C376E
            0C1046837B8EF4A592086553E20E00EE6EAAD812DD965E2A39DB960738001A18
            706A6AABC4C444CA56F920172986CD524DAE2A10AF70377815BE46AC002A0C88
            CB586CD83BA5CB72595B8CDA734460727C758D77E58A15C0F3615B50A4B5C67B
            FAB99B540F23661118C65E81B75E3C69525A46AA425B3CA84C0F376182751251
            64DA2215A3B5AB37FEB27B97C3698FD077265A47047058D8B755559543860C39
            FBEC8144A99115D00AF492795A4060B471678D8348A714E1FBEFB77FB5750B02
            AD01DBEBDC964E14C64F6A47888704F6B1B7678F9E179C7F2EC7518D3DB86F15
            322B43F52E38D1938821EA016B86503EEDACC501010223A41A9C9D35FDD69086
            CD4BC500D10329C7152303A91AB2DCB0F483C92184503029309457AF5973E8D0
            11D8347A220E313D55F3B143D47EA1EE0E65ECD80BBB76EDC4F275744786E6A2
            52D5DA541EAAB093253972F8F8FAF51B60C23C8961609636AA19B864CD549346
            69A8A00AFDA4A657036B22298818038B8C4F889F34693C702F1D00EDBB7A42A0
            919AA2327E03B07CF6D9E7BB76FD4CBC285A1B2B630F61A65D9266EEF4F9C07B
            069F3D70F0E0410845B492EBBF223A9A1405B83D2DE7D12E5D65516B572434E6
            15E9198DF6BF9047281B3FF974F7EE5F41A8D0A7722685C0ECBB27A934A0AF8D
            1A35AA6FDFDEEC45E057862EADE3C4B2F3C95FB03F61329515556BD6AC036542
            B45A48A90E576B844472FE502D1726CE33B58B9D48C491B307BD3D7AF41C367C
            087031EA5B931903D4AD1795FA12EA28AA4055EBD6AD3F78F080C562359C7E75
            B98F6A128ED2B923879D79E699CD953919097E5555CD60E13A898C0D3DFBC460
            86D5D9B6FD9BAD5BBF06DD4DA69C36ACBB14D64014C4EAAAEA81670F183E7C08
            4551622644D0F08C5F006390351B366C3874F00830225AECCEE94EB35A574FB8
            E44095695B46736C9532625086448B70FEF9A340FF32BB5098F268806DF66380
            A4FBEF7FDF2F292E05412729AC55461DB66BEC51781648C031A3CFEFD0A17DB3
            C31C0A5018984FE02ED17F057EEEFAE557307EC0E467E9D9E1EF43DC081874CD
            F48CF4AE5DBB806E5F565ADAA3E719D9D959E62C2576C210D2372C18B13FFDF4
            D396AFB672D4EFACD0B808F35BD15E9072A82981F4A0AFD9FD47D838C8175FC0
            EEB08F1E7D41BB76598CC40DB7038BB850DB04B608CECF2F2CC82F484A4E0298
            377FF9554545258824550B48844F4205F9181BEB9C307E5CEBD6A9A8314942CD
            00FFA9811904F3AA9CD52002CD2F86C2AC79381026564680B862CEEADFF7C20B
            C73052608BCE18A9E18C64E943DBB67DF315411A5BAC161051A06408A4A914E3
            960A0EE737306E428D563F4F1A5104407F1933E6024A6DE4CE5AAD97695BD0B6
            19E4F50DEB37FEF4D34ED0C911D28B48100ADB178C399DE0EBA01BB769D37AE2
            F871B171B1414CF5C4D6B6112898BDA0270366F6ADA2E2E255AB56834648FD44
            4663F390E540DA8A0089007F03C2753862C0CA6CD52AD9CCB1CDCE5BA68801A1
            6CD9B2ADA2B2AC5BD76E7BF7EDDFB76FBF45B452A14E9DA7C8AC7CE99A2D2DAD
            069D0B3657CF9E3D61631C397CB85FBF7EBD7AF5A44E539959BA46B2874EF444
            36E7E71343D9E3F6803C861D09AF5AAD36F26114363EA850CEC279DCEE4E9D3B
            8E1B3B46104D0E936685D95015833214B069BD1A4ECB3D81A130E1575555BD7A
            F59AE29212A033851ECC87310EDAFB0A757D9305A659DC4C7082EAD8FFAC7E43
            879E834CFA545D8551FB939A0C841CC186FEEDB77DBB7EFEA5BAA69AF00FE633
            0F5A50D25D0C4B0109B86EEFDE3DBB76EB0AE0813DEA7038A901599B27C6A40C
            535499B000C361DB365036BE8B71C4C8920C3A016C472DE32C9C738DED2E8C05
            9FD7D3AB578FF3CF3FCFFC6EF3C26C5E1FB3483A15A572CC3ACF59BD7AF72FBF
            C6381C8220DA6D36E0C9440952917116185D44CD582267CA4812D89092DF1717
            E71C37EE426077E671073DC148556077F37AFD2B57AC3A7AF498D3E1047D08EC
            45E0FF8C07307F02E95EA22A1EAF6BF8F06103070E306F9AA0BC0E8321B3AFC3
            CFDCDCFCB56BD779BC94CF07249BCD4622E512613F46F282AEC0135D5D967DE4
            78239E07FD6EE8D0A1604DA98DACBA68104BD490683F45B219486DEFDE3DC525
            654949C9A091C63A63F3F3F3BEFA6A0B9166BAF063D1219AAA470EA280DD006F
            793D6EBFCF3372E4C80103FA9BE3F07587618465B4E3C5CACB2BBFFC6233C00C
            1FF3F8BC8989893D7AF4888B8B833F8F1D3BBA67CF5E443C21C059F8418306F5
            EE7DA609D76033CF88F1B13F41E3DBB871E3AE5DBF3863E3A92120E8EA3A67D2
            D4B47C2040B873E7CEF17131E51555D5D5D57E9F7FD0A001DDBA75FD03C26C16
            A584D474EF686565F5B265CB3C1E2F0F70EADAAC991B835805AD5BE0B9F66D33
            CF1E3C382929915932F486E133558D273263ACACACBCA0A0E0D0A1436DDAB419
            34682055D650616121286B20F2B3B2B252535BC30E2025D63A4FAE3FB0CFDC23
            A0D8C306951512548057FC7E1FB1E54CBE17361DAA5838C68D1B979ED68A64BD
            046450C168728185F97D31E6FE38301BD36604C1CE8863593C9B367DBE73E74E
            41B41A5A03D2BC6601506D28BB53FAF4EE75CEE001A2C56258C3580BF3857109
            9AF461D63E99CC9C1C864258ABE66DA6D9BAF0A7D5E44291F5DA54A541ED84CD
            7EF7AFBF6DDFFE5D0D91FD445AEB7C883776335039A808DDBB771F3DFA3C8B28
            32A78D31C820C5E88F00B3768C8C49A361340B2B7BF8C8D19C9C1C4CF2E938C3
            C08005329CAFF0A9337BF61C32E46C9E3A49A8DE0B2BC8D62B0CCCE6BDA2EABD
            B2C3A653D57297DAE01DA65A7498AD834C4C9B71948ACAAAB56B371616E68360
            66030B4A2F8329C0CDC78C19DDBD5B67162135C5F2692A0C9DDD1F0A662DF668
            3636084DF3C09341FD3E72F8982DC6AEAFBB4CA990A704011F08C80169D0C001
            83CF1964AC11B0434A37E13320CDF94C0642062F41A6B41B1D334ED5FBC1EA39
            0EE12FE36E2E977BE3C6CF0E1D3E423156291D1BEE5B4D36BB5CAE76EDDA8E19
            33262E36864574D880B55D45A273F80FC5B43542D64B0A34F262A4C6F37BF71E
            58BF7E839E4E89699F2595A556B28181DA022F0F1B3EB45FBF3EBA5F568F1145
            002388A60D4E6E2C04A71D65A4D6597A3D7D3AEC6A1A717BB0DA3EFBECB39D3B
            77596D762343880249B308F49D0C9F071DBEF7993D91A618AAB58E6EB6E75B26
            35AB75333B1B94610D0C510F7181185EBB6EC3FEFD0762621C4C349ADD200C7C
            8FC7033ACEF9A3CEEDD6AD0B734B615676A17F0C698104552BAE3325C7184B10
            942765760AD5B5C2651AC2606A84C6C3B5901AD1FED0D6ADDBB77DBD0DE89813
            7823EA43374D6DFE2B186FE9E96913278E77C4D8E9AEADBB8C484B8343516BDA
            E68D6B9E752316FC34752B604446A8E1D8B1DCD56BD6195951A11F05A201A463
            ECB6F1E3C76564A4234AE20505C5C929490E875DD5FA0B305E2DA026359BA599
            FF6A6DBEBEDBED857B3B9C362659B76FFF16FEE53189F129E12AD50C47CAC891
            C37B9CD18D7D2BEC785A1CCC91821E4DBCF460302A2D2D5FBFE193C2C22220D9
            B0295A3042780B482431317EDC85172624C46DDBF6CDF7DFFDD8A64DEBA1C3CE
            C9CCCC60629DA51B872E41F40BCA5805858A44A38F1FCFDDBAE51B51E4479E3B
            2229290118F5579BB7FAFD018B6851231874C44CF778C0461F77E10534B5538D
            9423D072616EC6108AE17ACDCF2FFAF28BCD4525252CD5A14E2A7CC8A28001D3
            A17D3B6098070F1D02E6AAA83298BFBD7B9F79468FEEB14EA7C6CF23749D0F1D
            403D0FAAACACFAE597DD3B76FC44FA6963D4BE433B30B2BFFFFE7B9F97A47B6A
            8A5E04760662282D2D6DF0E0B3B3B3D259B895E644451C52346BFB7B8599DDF3
            E0C1C35F7DB5A5B8A8C402A28EE3C2CA81BA1A1070EF1A788524A37124E5DBEB
            F382346D95DA6AC080019D3A75A8EB5D091A766DC64B3D8CD4EBF5FDF6DB9EDD
            BB7717E41781B0B05A815D83B2EF0375DA6E733011AC996161F2FE81F1205114
            DC6E576CACF3DC91C33B77EE14567B6F8930A393209BE1EB870E1D59B76E9DC7
            ED71C6C649C4694C9C9E7430116BC558328220887EBF8FE7048526BCC1EE2829
            29EE3FA0FFA851E789021F6E39A2CDD3866F1D3D96BB6A658ED7EBB1DB635872
            1273562396534DF5001A6453C3F51D633B9284B6FC3E1FECA5A1C386F6E97326
            55419A27F474E20B7E7A346DEA765EBF7E7D5E6EBECD6E57A8F61496631BFA36
            8B1FD01830ACBB85FD29081C75A52863C75ED0B54B27D4981D19D676AAACAA5E
            B132A7ACB49C54F7A8ACAA0A51DF2A2931012E62842623D013668C036C01B7AB
            E6ACFE678D18318C5AE4E115FBE8AF2652DA696AB44C075C5C5CBA61C3C6FCBC
            02BB23460B0C53854BCF08A855D3CC2148235387C28F41E5898F8F07EBA5554A
            52D0BA507F13AE71B9F3F30B408343645BF02E971BA47BC78E1DEC769BE10533
            964C56D0A79F6EDAB56B97D56AA52311190B310212E6806E1000BA7B84443224
            BF1F348661C386C6E89E9F28F13B49109C36986950993F7E2CF7E38F37BA3C6E
            92E2A3A5D2319F3671411B3510B569E5B51E0F9E2D288B1181D60D17683D0079
            4C4C8C286AF9A980CBBA75EBF7EDDBC78C7266D43A9DCE091326646767EA0B4D
            122EDD1ED80D85C5C565C78E1D2B2171719AFE8099074DF3C9EBC9FA9A6B93F9
            DA8C402ABD3D27C952C0E7074501F4F3789225829ACEB17FAF309B68021D3C78
            68C3C68D3E1F5362110B2E1909E56C78249183A674104346B379641AAF9480EC
            605B30170AA8C00909896DDAB4015DB775EB5450BF5D6ECF471FADA8AAAA06EC
            193CA4C788DF7FFEF9A37AF6ECEEF578CBCA2B0AE95554545453E30A04E87953
            B48C0A7ED240934C7361C9B3905E96C1FC5F701FB6FF98586190FBBCBEACCCCC
            F3468D48494956433281FEB760467A622F63BCBFECFE6DD3A6CF6141D9CAB2A5
            64D4C364A111AB67D127BA09907EC0B396630B60C38BF093BEC2C5C6C6A6A6B6
            860F1C3B769C3D9125A5209AA59B9E9E063094949402BAA070C17048211861D1
            88DD8D81AA1F144A7A8151255193203447533496C27085D65457C30E1B337674
            6AAB64A449966857324A43E6F70833C183F560FD71C78E2FBFDC4C2A6331667C
            18939CED1A0E730EBD268CD9447A4912C752B8CDE95A2C7CC4625C6EB79B8D96
            D50018229F0536584918DB3A20AAD94E32521B58A0CC6039340D84146430EC2D
            A45E8B543CB02F1A240BEFC63A63468F1E939595AE6D116232CB6AB8CAAEFF09
            988DA5D118202689F55F7FBDFD9B6FBEB7D9AC403DB472DAD7AE7D7B81E30F1D
            3C080FB6DB6CA4CD087C5E10690B0A89913ED2D46F5645810DC232F801A572BD
            5E5931B2C46B3F630C8331063DDC49CF5FA0CBCE911E84ACD53B66094FF02A70
            0B97CB659438333562F405A3BA76EDCC425EACDE83AE5A73B63CFA3DC16C469A
            DC9007D312FB03D2E79F6FFEF9E79F81FE40EC75EBD66DC488A12016BFFF6EC7
            8F3FFE0868D9C1F4A2AB464E4247B5A16226AF8DFC13033CC318033A0BEB2063
            6CC0709F1995092425500B75A8F4186E91090B20688016703DF3CC337BF5ECBE
            73D7AF3B766805D6F0BDE1C3879DD9AB3B36EAC790C22256F59F287E8A34EDA0
            885013910B3BACFAE7667E2E10CAC7EBD71F3C7070C08001FDFBF707CA4634FD
            E3D0A123DBB76D2B2828B4586D0258D888D553D5890B9957C1EC4E31C2BA751F
            A7EA47036BA690EE4861C570AA918BCF9A08821D20C9018FDBD3AA55ABC18307
            813D06E8FAFD811F7EF861FBF6EDB051860C193270E0C03A73D5120954639061
            D724D252983F10BD172C1282A707E6B017A3425A795BD6AE5D3B0B490CD20EF9
            857B545454EEFC190CDADD207481DC8DE45FB3A72264A7AB46743274B0869D63
            EC09D662862516D6EE1BD86792ECF579AC56F18C337AF4EDDB2729291169710E
            42C4C06960779E75563F51B4D433DFB030870D5D84DD04A13ED1C6B947CC0E9A
            1672054D86867A5875053A72E4D84F3B761ECFCD55C2E76D05E765A27AD98979
            7DCDD96AE6C63A8A444EEC856D078C3A3333937638510CD160587D4149420D3E
            3174CD43218C44368D76680705D84FFB656EAE60247550FEA91AEB18F02BBB7F
            FDF5AB2D5B4C5488F5F9D7AE6AFD0F0A4B5B417853792C2726260CE8DFAF4B97
            2EACC896F952083BD153C0C2463F8356194520DCE8716A622CB8B6A01435920F
            D4BF76A18B18E5D783FC88C622EA70921F070E1CCA59BD9655F11ADFD2BB1F61
            FDAB0D5B26A8AE1BB5AEDB92DC02F4BE1E3DBA5F70FE798C1658EE182D9AAD53
            FF61908A99DB073D281A981B7CFDC47CDA6A63AB2E9AEB8AA46B98294357A658
            FB2DAC57419225DEBCF9AB6FBFFB01488A45A9D9A5B5BBD0EA626A61E6709810
            A7427BFF8512A249776371496F7676D6B80BC71AAEE9A05B999CAFB57575A120
            A16695CDA8F1DCB7659DC68EEA2A963ADF56907E4A116BDFB176EDBAFC8262E6
            F7AEDB44079B6EA332AEAB04E4308B821116385110CD86965A372D9025713A62
            6C63C78E6ED7AEAD796CE6988AA1DBD7438BA899346D14613734BCA42710883C
            6530EB2BC85E412C0DE8C081031FAD588139D23893917848BB244CAB20C11AC7
            71717189F189369B8DF93DE03DDADE4AB0DAACA0C71D3972C470A1188E0EB639
            98D0252DB53DEE73CE397BC488E106BA610BA61B7BD5C3C9A3D4B41BF7B89606
            73B8155169289A632982959595BFFEFA5B5E5E21D85D9555558028A985E2B5BA
            75A4E5DD493E9FBF5FBF3E679D7516E9A14A2D1FD65242EB31C1A183878EAE59
            B3065E14C8C583110C842D13BD1AAB7A5526EC92E4E4C49E3DBA83A68D4CE23C
            72BC39FA49B53098CDEEA153816AF0A51A93357BAC80199797571614E4E5E5E5
            171616555555FAFD7E8C08C992CE51D45B79D145E340B29A96AC8E64ADA9712D
            5FFE51555515A23A33CD12110175ABD5929494949696969E9ED6BA756BDAA18C
            0D23A292D5E002469C5BD3ECE650932CA2DBA485C3AC9A2A8EF43F3954B75ADC
            E5F2141616141515E71ECFABA8AC00BDA9A2A2AC7DFB0E13278E779254C05A03
            C9E819C244C0A79F7EFADD77DF818CB7DBEDB1B1B1898989006D9B3624786574
            54D20740FE63C5BA5ACFABA817E34F98A35A2373E8DE2065967913445E92A494
            96961414141C3B762C2DAD759F3E7D8DCE1375975553A1F6ED3BB063C70E2059
            4037353515900E9A227DB44C0FC6E0592A040D92B2128DD3CCB483EE503F3F6F
            749E363A21D9D094E5609125238CA8F7DAAFD58A0D20592914A26E709A32C6FA
            9F853137D9A46867CC80B9F9A56A2AB0335686E5111979E0BAE5D682606ED8D7
            1DFD89AFE65B37E8416CF09EF53F28C2BB8899C55CB8A372CD2C471FA74269AE
            561B370F266869427983F158A4F5BDABD5BF90A96BC5094F169D4A984F3E6986
            E116AA5E3786EBBE6A3E9F3E68C94C2FB21B6AAEC750361BCDD2ABB5A7C7A9FA
            A12B98B6FE0BB344A69F26DB3AEC6A36B00261F20B9A374215F60AB6E89BC548
            08B7A02125337A4245AD80D36A042346608260566B8FE956EB1F40D8ABEEA838
            1D0335DCA6C4A623594C4B14F659E11730146623F419BC7A91E46E530DAA930F
            73987BB292853A4A8C0E73434E41459F6AF8ACFD28875A37E1B24E9438EC6DC3
            3109F386C0BA21D060EA3F0EF762E316F924BA479AF9C2E619EBFFA74CBBD961
            8EB028B86930C3AE94EB7E89E9043C0A7335A2882BFC6A35EF3954A7307B2494
            67361C853572017084DE23D18F2A9218AD7F01427216D8776A33142290281F2E
            E5AFCE3D4F4036374A0B3E3DD45CD7E80C27F9C25C6AAD92564B8BD1ECCBA04F
            9AFF0C4A4308BD27A3D1B00333DFD020B5B0E30F4BE2C1F3FD4346A8D4506A8E
            EE2BC6878D26A80D225DAB99D77D34D6FF355E51A3B9A7B6E2C60D83AD85B023
            37EFCE7A5297C25FCDCCB41BF5BC282FDD4AC17A572FC2E5C809F6D4A822B93E
            A644DAA0AEB8410FC5AC2C919E2E66F8200D7B376CB8DA5865E6F2D4FBD428B4
            FC95053348CAB7A2925451ACF5FBD14EF051F413A822E8B7E44523711831EB2E
            ECA271E4BC2DDA2C9C33A495DEA22A22358775499D226A3EA14424D5EC79D00A
            1B110395082D723491C9A7614EEAD061437441253DF78AC59E8DF6042AD2E3BE
            916036E70FA95A4A3FED318238EA38E3498D9C2AD30F6A45AA9224D323CC580E
            5AED7163E126C8DAA9D34D165631E48C4E424CF3948903158B913A09353BCC8D
            96CD2708333939801D69AF25CF2255CFA16487B471751274CCD95898B63B5534
            0A206800D5B1C3CA68D64E6D27AFC8D4CCF27C3976CA0CD6FAE2ABF480515E91
            597729762A14620D8D68BC5913C9F49E61B2BD545562414CD3EBE1A39330627A
            0E157B5765398CF4B88426C17C1255B01381B936E79974D8C3F4E001424DF450
            6B06183BB5955525B18B9551915F3840826283F4F35A09BC9A6833E89539BDCD
            5335B37A551388DA96A29C8035012223511572441C391A9C235B4155D9C9EC58
            3F428931D83A2B485759D15FD7F83F0D958673F9D113F3C88EA4E57FB48C47A6
            59C97F2098D9394498C3119B06505CC909041A43D63CCC7A995AADAAA248F4D4
            3AFD4824B8B344A99B37E56C07659EB051D3223CF3796C8416E9EA733A630837
            3495C542C2F149D6F5E904AEBAEAD789C1DC125530CDB127A3E2A2D2CAAA4A8F
            C74DEA4B7D2484949195D1A9737BD8D60A6DB1AD657598E210005B5161F19EDD
            7BE1E51E679C919892086B7460DFE11F7FDC91D52EAB7FFF7EBC00828EC24533
            4658F7FD5023046E5F515EB57FDF01B7C7D3A56BC7F4F436ECE01BB6872ACB3D
            A5A525C5A5251E9787497D9FCFDF262DB567CF1E2094E999BF7520211A8624EF
            DD7B38F758AE163743F44344B35442C1070DCF66B52525262726262526C6D3D3
            4E915954450FF389427092616643DCFAD5F6B7DF7AE79BEFBEA100FBFD810056
            78BFECCD48CBF868C5F2AC76690AC18A2C10C709F4309A5A65EAE597963EB0F0
            0180F9BEB9F75E77D3F5556535D75D73C3175BBE48488C1B376EFC8205F72625
            27C096D10FC10E1F7587DFD7ADDD38EBB6598180EFFAEB6EB86FC13CC62A0E1F
            3AF6FEB2952B56E49455947ADD6EBF5FA2AE72459200E656CB96BDDBAD7B2772
            E22C1F0C735969E5DD77DDFBF1C7AB79CE1608C858A59DC0890911663105EC16
            78C116E3703AE3FAF7EBF7972B2F1D3264306F0D56EBEA81B941F3DAB89A146F
            46758541649D13D7067054F60ACAF930E7DED9F36B0A02355E25DF7F14215F9C
            9060B7C655FBAB460C1FFAEA1BAFB44E4FA4629760457424A2FEC04E17581868
            C1BD731F5AFC1F1B97FDCFF93366CF9D597038F7C241D7B950598C682BAA281C
            3976D8830F2FCCEE9049E803FE2547B7C183656ADBF094FB2B147EEEDDD7975D
            3BEDA6143EFBCACB273FFAFAFDF0CE96CD5BEEB963C1819F0B5CAABB4A3E6AC7
            715621DE220A306697D7D5AA4DE29AF52BBBF7E880A8A8467AEF60669315E615
            DFFCD73BBFF8E2878CECA4E2B28280CF25C0E3645EE5048A00B59AC84F1AFD44
            3677A0D42B55F328B99533958FF5DC7AED1DFF9A7F8BD5CE0765A1349867122A
            9B4F24DE5C0F78280AC160AE23650AD1B163C72F99F497EADC4AE4E6070D1F72
            C165E7B5ED9499644BB1F09680EA4F488A6D93D18AA4511358C8A15CC4282626
            2C3C4BA00B84962C5CF8F8C3CF59D40E33FE7DCD9C39B7141DCD9B78CE74B752
            6E156C55BEF24A4F49BF41BDE6DF3FFFECC1FD353C883A2FD37420816AF84C16
            F0EFBDFEC1ADB7DD96823A4E997CE192D766E7E7E54EBEF8CA920355AA57183E
            61C8A55347B74ECD8C8B4BB17282AC2A3EBFCFE614B23BB4112CCC602312816A
            625493C4B828BFE81FB72E786FF586A1FDFBDC33FB8E6EDDDB4B5E09944AC40B
            34B384EA639AE207FFB754FB8BAB6B2ABFFEE2E70FDFCE29AF28AAA8AA7CFAE5
            25575D3395AD274B436B907E50889C6ECE24A1286F646C31A62A336D68F3E6CD
            575E3953ADE207F63DF3B9A50FB5E9D8C6700899770611DD241440EECC334B09
            241A35A5162E78E0C9479EE695B6B7CDB96EEEDC1985C7F2279D736B85BF30C6
            11CBDB70654D71B5A71418ECDC7BE65DFA978BC9D9D0C84F6C5D5500911FF007
            389E99C5FCB237DFBF69C6CC04A5ED6553263CF2FAFC0D1B365D73CD1DC883C7
            5D30F491171E484E49084F403840FA83AA028BA64901991788465E703CEFCE5B
            17BEB366EDD0017DDF7AFBD9B69D33A25CC047EFFDBFE79E79AEDC5D3CEB9FB7
            CCBF6F9EC09B0EFC8D2E13EB64C9E6E83D6DB84E7B7462D1AE5FBFFE86EBFF59
            9C5F73CF6DB3EE7FFC1F60A67A5524A8942393072BCC0B0656934A0C2662A520
            927BC5234CC942418B162D7EFCA1FF884A3B8079F69CE979878F5F36E28EA315
            FBD23AB479EDD5A5EF2E7BFD95575E5624D9CE3B6F9E76F3ED7367DAECA224F9
            A8CB891C4B45157D9240B2ECADF76E9A3123416977F9D4490FBF3A3F27E7939B
            6E9A575498BF64FEACBB16DCA6AA22987884F4FD30061EEC3CD0E141BF23DE31
            72B62B2B69C79AA2270A258585B7DD70EFBB6B73869F3DE0D5D79EEAD0355BEB
            39CA69CE1F4C8EFED4CFACC5E4CC7191E410E20F5E5BB3F0FE070F1DDB35EB5F
            3317DCBF807A60EA9C4FD844089A04338A4E3623DD47617095CF3FFFE2AF57CF
            7095AB170C1DFEDA7B4FDB1344D4D005FA0F6860F4F04FC224972C5AFCE8834F
            704AF6ED736E9C3B6746FE91DCA923FE7EACF2B7A4768E4F36AC8F8DB53FF1E8
            332FBDB0D45B1100A67FF135E3172E9E034A99A2F840D4F31CAD4425321ABFF7
            C6BB37CFFA5B92DA7EEA94090FBF726FCEAA4F6F9E36A7B8B878D1FCE9772FB8
            03F424FA7099B84C38FABBC1768C8674EC2770660117E515DE7EEB82FFE6AC1E
            36E0CC975F79AA4BCF0E32399954E5356B4FA59D949953076E29616CA1DC1E2D
            7F63FD7DF3171DCEDDF5B77F4D5FB0E07E30F3222727052F2C3A95B219D52B42
            909E54C568FAE0A1C3632F18A7BA052B8E1F70CED9975D3331353D9E2A570868
            42A6DE31D2FA4946568B9D1C3E1E1767B1EB8FA086D8C285F73FF1D0B39C9C79
            C7BC697367CF28389677E9B03B8E55FC92D05658B1E2A30EED3BC087DF7C69D9
            A2F98FB9AA7C018B6FC4A8818B16CDEBD4B593AAC8F4C4307AE42881F99D9B67
            CD4A52DB4D9D3211605E9BB3E1E61B67971557DEF38F9BFE367BBAC8DBFC7EBF
            8CFD5651A44DE804C25D88130393AA7992A34F26252B92D566898DB717E516CF
            BA75DEB2D5ABCF1DD8FFD5379F6EDB250B45772D99F7C28BCF2EADF616CCB8F3
            C6F9F7CED73BFDABF5676BD513888C64779D38CC283AA66DDE95C091DE7EE38D
            79F7CC2B2F937D92353EC1E18C93C986075B92BA1FE8861061F783CA16638FED
            94DDF5C2B1A3CE1F3D22BB531ABD81B4F081FB9F78F0055EC9BA63EEB439B3A7
            E7126ABE3DB7F2B784B63827674576560760AB58C09FADDABEE8FE4777EEFBD9
            66C79D3A672F5AFCC0E0610311758F51539C5BF6D6BB4436ABD9974D99F4C8AB
            0BD6AD5A77EB4D77DB95C4840431E094AD9C9D74DDE7FCA0216042D920298993
            96F8E090C4D3DEAA60694B8A1463B7BEFADAFFB54A49BEE1AF77AE5CF7D990DE
            67FCEBEE99ED3AA7F9A90755D04E1667E4A9C7D18906878B4B4ABFFC744BCEF2
            0DDE1A8FCB5FF1EC2B8F4C993A29ACA5D414082242137D6667582E11F4315693
            A27BB2B4A388377FF2F9A60D5BB66FFDF5D7FDBF54D6147A7DE40CF280EA632C
            4DE78FC4811927A6C5C63962E3AC8F3EB678DCC5A3E1AD454B163DBE1854B0AC
            DBE6DC386FCE8CBC23B9978E98955FB52F315B5CB56A65567616901A479BD41C
            D8757CDE7D73BEFCF22BD84429C9ADE7CF9F7BC9E56310A76DFC0FDE7CEFA6BF
            CD4854DB4E993AE1E1A50BD6ACC89971CB9C046B7A5579DEE19AFD9469C358FD
            BA8FCA3CBB80C971E5E3B07DD3A64F7AF5EA7ED5E5B76FDFBA2723D556E32E12
            ED601D58FC3208642271807B7BFC9E801CA03C09B404729E3BCCDAE3561D1836
            B330F3D61977DF37DD66B71AB94AD170EC50ECD1C9A0E6683C6D46E736E67B32
            248EE251CA4B6A6ADC2E97CFE5F1F8C909908A9FA45F6352D6E221878C57171C
            2FC959B9FEE09EC3C469267A56AC7EFFACB37ADFB770C1D38F3CC7CB59B7CDBD
            71EEECE979478E4F19715B7EF5FEC42CCBCA55ABB2B2D38996AE27939416153D
            B8F8D165FF5D13F08146CCDDF68F69336EBB21C649D2B0DF7FFDBD9B67CD4846
            1DA64C19FFE02BF7AECB597FE38D77238F386A44BF61E38772A082811926D270
            86D6BF9EED54724C377197060264CF62252ED679D1840B033EEF0DD7DCBDF9D3
            9D996D6C3535C582153470ABCDEAE4286387AF803D985792E797034483435619
            0500DE1E5DFA9F376CE89061FDFB0FEA678DE5F585FC1DC28CF52209DD6DC942
            07A8213341BB4AF2AAFE3973EED75F7F935F79FC89A71EBE71DA950B1F78F0C9
            871F17E46CA0E63944D33E3A65E41D007372A600D49CDE364B557DD4CDCD7A2F
            22BFDBF37FCFBFF1C4632F7A3D01B75475C56517DFB7F8DFAD5BB75EFEE6F269
            336E8D57DA4E9D7AD1C3AFDD9793B3E196690B8A8B8AE7DD7DFDFC07EF69208F
            20E4EDFCC2DCE937DCB7F1E3ED03FB76EDDC2973CF811DFBF61EB48A0EA72591
            17717A56FA65574EE937B0776C628CD7EFF6B902A28D773AE3129CC9F10936C2
            38EAB4EFFDBDC16C70ECDA4391E97C40A901ED1B713E5039791EB6B604129083
            5D4ECC5C129CE268E897A54CBDF6D40773673F50E62A7CE8890766DD7EE3030F
            3CF4C4C38FF104E6EBE7CE99997FE4D81490CD55FB92B3B855AB5665B46DABAA
            7E7AB43B4FBB78F9789E9C18F4EEEB1FCD9BB3A8CA5589556EC479FD1F7FE2D1
            9DDFECBAF2BA6B9251FBA9978D5BF2EA5C30A86EBC614E7949E9BDB3A7CD5E74
            2787441AF6060D59D0965E735B2A345C48BD9D983ADA90CC735C5151DEEDD316
            81A67DDED9835F7EF93F36275ABD62DDF28F56EDFDE55095AB2A2E2EAE73E74E
            3DFBF73A77C4F0C1430624B572D6024A589C5755C0ACB704E58F35362C719AA9
            59EF658A6AB30434725048C73B6213130B99F1C6DAE46855336A963EF6C1834B
            1E2FACC85BF2D8BD336FBB7ED1E2071F5FF238AF66CDFAF7F5F3E6FEADE0E8F1
            A9C36F3F56B927B12D9FB36A5566765BEADAE458E21D3D258735F8E13E5BFBD5
            FC058B0EED3BCE8BDE5EBD7BB74B6DFBF1A64F0385962BAE9AF0D0EBF356AD5C
            3F6DDA5DD515AE7FCEBAFEFEC7E7600D5063A875738654EAC4E5B0211F8AF273
            FF71D3E2B7D7E40C1DD4EF8D379E6E4F35EDAAE2EACD5F6CFD70E5AAAD9BBFDE
            73E427984FBBD6BD7AF53C73C890B3C64F1EDDA34F67ED9E60EC11B35E0CC944
            6BDC75DA60367D4C9524951EA44E4312AC0BA3A2B5BBA31A36F576713AC6146C
            B7D7F3D34F3F3F38F7B9C387F2F32A0E3FF9F4A2ABAE9BBA68D18227963C27AA
            D933FF7DED5C80F9F0D1A923FF7EBC6A6F7C9675D5CA15D9ED32118D3561ED44
            338EC6922512FEE1C5C3BB73172E7C68DD27393CB6C6207B6C6242FEDE9AEB6E
            9CB2E8E5BBBFFFF6DB4BA75CCF7B1C29C989772FB873EC054363EC761A31D6E7
            627635B317655D39E351C9F1C27FDCBAE0CD35AB879FDDFFE5D79EE8DCB52D58
            CD1C2DDF5202E89B6DDF7FB2F1F31DDFEEF87CD317A5BEC2EC84EEC9E9693DFB
            75BBEEDAC903FAF78D4D880D5DB4DF13CCC6B819D2209E7373F35F7AEACD92A2
            3C7BACA8060462452149E5AC0AB15B88979838CB30A748A03D951D2D3870F4F8
            119BDCA6DAE5C3A22F67FDDBBDFBF75A78FF9C271F7AC986DBFF6DF675FF9E3D
            9DC03CE28E3CD721679A6D55CEF2B6EDD2E880C856A24903CCFD425C57246AC4
            E3AAB2EAC71F7BEA95A5EF245B136D4E47FE6F35575C3D61C9EBF7F8BCD50F2C
            78F8F51797238F938B4559E9311D323A25A5B5C1A2A4E95E5AE90F4B3BF393A3
            EFB000B675724AC26DFF98891579D6F5B3DF59B76EC8A03E4BDFF84FE72EED60
            5E547B630709932B6F7FDED75BBEFDEC934D1FE57C965F59E6B4C6C6C5077AF4
            E87CF965578D9B78615A7A72CB82F9042EC3ADB365CB962B2FBFF5686EAE8377
            48EC14EBDA0A963A0392C86B35F0FF94C4A4B3CE1A34FDD69BC74F1ACBF3DCE2
            450FCE9FBF1884C092258BEEBCEB8EFCA305E70E1B77F0D8BE1EBDBBAD5AB522
            2B2B8315B6D36C102DE0A1791BA8F711386DC01F78F185571F5CF8584D252843
            95B366CC78ECD945F096ABC2F5D69BEFBEF1EABBDFEFFCC127D5606411915341
            410716308BC1031883EE1050BD71B18E4D9B36B66B9BF1D72B6E58FD49CED9FD
            CF79F5CD97BB75EBA2251EE91117E37255BBBFDDFEFD679F6C7E7FD947FB0FED
            834D638941B366CCBA77C15C5B8C2D68D19A1D88F030372AEF24ECEDEAA47161
            7C3CF7F8CBCFBD535254419BCDCB46BF3499240EA91CEBEF441DD0C064E3E26C
            6DDBA767666674EFDE352DA335BD9DFAEDF61FDE7EE303D1A65CFE97A9FD07F5
            F7B9FCAFBFFAF6F7DFFDD067508FABAEBE1ACC1B553B88951DB1CC878E993AD3
            D0671BBE7AF3D5F73811DD79F7ED67F4EC0423005A07EE7EE8E0A1C3878EEEDB
            7FE8D891E36E8F3FB4BF263516889248AB64A5B4F4949B6EB92E2931E9FDFF7E
            B061E3C77DFBF5BBE6DAAB139212A89F0719792141DE05C92FFDBA6BFFD62DDF
            ECDDB3D72FBB2E38FFBC8B265EC88B82F9412717E6E6BD7BD019C6E47709EBAE
            7976544FE809C9D451C4D5CD5C66AE13AA84C31D1089652045A2E998C09D15A4
            F0AC929D35193252B7C2766253E8F791EC567D01352696431CE5CB726DBE1171
            66D3DD1EDA2C976AD7DAD0241991868DBA52497B6CB3241005EB69BCA1B0915D
            28D1708D42BEC25CE62C4E199A79DF08E41AD549A8196136E2CD665F98AE6A1B
            39F141C9F166C4A9FAADEAEB483D8CC429A16ADF208C1171CC794153660DB38D
            0540C39F7A43D2BE14F816CFE9DE2D721F1EB32012EDB9AFF282F1C53015919A
            3EA669782441916365D3DADD94DA6A30530EB269594022617A6A03321A97296A
            23DA5AB4449851DDE8054C12D3DC4D4C20E28D8F6A499706329822A9722A6BF9
            C03177746D77004595687308DA515D45342E818D33085453A151C87A8056C591
            342D722FCC028ECCE842584BF49265B245785E0D63DEA8F4785A6A22328E444C
            74D0AB5541E5B48A02D03958432AF3991CB5CB4233CC55BDCF027C9C3AD44E4A
            FD6944984F860A86EBB42F6787A7D7969C1B1972FA20F4EF60C6D299DDAAEA30
            B3467F8AC11A30C315D5EAFFD8749EAF3131D324254A9124D18C0520D889AFB4
            F323CBCD36071A43E7420BFBC8FDB4C38A642540438D02C7F3448EF09C710659
            A43BB0232CD9F0598E3063F251862E9A019193A769EBCA116239B0AA762E666D
            9A58C86AAA46B85AB7CA98C455589D0B8D1A0568B200E1996A4833B608A24EA9
            AB10B186CA5AC3027D9C46C635173217B8BF4C6FC031955EDBAF0ACF72D0516D
            714DF8BC00FAA2423BD2D1F20395DA6918B55C988DA1049538D4FF1564906C9D
            E5437A6583F1BB6AEA15515BD9A6D29A2B83DA545A588C550E45779912111503
            483D34A43BBDB4D2262E0CCC24B358415A8B199A0540648091E38FCD9553C606
            359AD1D0C21126C565ED886E15E3461E8B508FEB2248A53792B4825EF97FAD19
            1483C523B0740000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo67: TfrxMemoView
          Top = 941.102970000000000000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'ELABOR'#211':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Top = 956.221090000000000000
          Width = 740.787880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            'KAREN M. GONZALEZ GARCIA.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 143.622140000000000000
          Top = 956.221090000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            ' ( Recursos Humanos) ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object cdSolicita: TZReadOnlyQuery
    Params = <>
    Left = 536
    Top = 280
  end
  object cdCapacidad: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 152
    Top = 296
  end
  object cdCapacidadxPersonal: TZQuery
    Connection = connection.zConnection
    Params = <>
    Left = 56
    Top = 296
  end
  object frxDBCapacidadxPersonal: TfrxDBDataset
    UserName = 'frxDBCapacidadxPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdCapacidadxPersonal=IdCapacidadxPersonal'
      'IdCapacidad=IdCapacidad'
      'IdCargo=IdCargo'
      'Titulo=Titulo'
      'Descripcion=Descripcion'
      'TituloCargo=TituloCargo'
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NombreCompleto=NombreCompleto'
      'Anios=Anios'
      'Valoracion=Valoracion'
      'Comentarios=Comentarios')
    DataSet = cdCapacidadxPersonal
    BCDToCurrency = False
    Left = 56
    Top = 248
  end
  object frxDBPagina2: TfrxDBDataset
    UserName = 'frxDBPagina2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdCapacidadxPersonal=IdCapacidadxPersonal'
      'IdCapacidad=IdCapacidad'
      'IdCargo=IdCargo'
      'Titulo=Titulo'
      'Descripcion=Descripcion'
      'TituloCargo=TituloCargo'
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NombreCompleto=NombreCompleto'
      'Anios=Anios'
      'Valoracion=Valoracion'
      'Comentarios=Comentarios')
    DataSet = cdCapacidadxPersonal
    BCDToCurrency = False
    Left = 248
    Top = 144
  end
  object frxDBPagina3: TfrxDBDataset
    UserName = 'frxDBPagina3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal')
    DataSet = cdPagina3
    BCDToCurrency = False
    Left = 352
    Top = 168
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
    Left = 384
    Top = 288
  end
  object cdCargo: TZReadOnlyQuery
    Connection = connection.zConnection
    Params = <>
    Left = 816
    Top = 280
  end
  object pmColores: TPopupMenu
    Left = 440
    Top = 152
    object Capturarfechadeentregadepase1: TMenuItem
      Caption = 'Capturar fecha de entrega de pase...'
      OnClick = Capturarfechadeentregadepase1Click
    end
    object Eliminarfechadeentregadepase1: TMenuItem
      Caption = 'Eliminar fecha de entrega de pase'
      OnClick = Eliminarfechadeentregadepase1Click
    end
  end
end
