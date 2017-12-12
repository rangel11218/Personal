object FrmBuscarPersonal: TFrmBuscarPersonal
  Left = 0
  Top = 0
  Caption = 'Buscar Personal'
  ClientHeight = 393
  ClientWidth = 896
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lvRecetas: TListView
    Left = 0
    Top = 62
    Width = 896
    Height = 290
    Align = alClient
    Columns = <
      item
        Caption = 'Personal'
      end
      item
        Caption = 'C'#243'digo'
      end
      item
        Caption = 'Grupo'
      end
      item
        Caption = 'No. IMSS'
      end
      item
        Caption = 'CURP'
      end
      item
        Caption = 'RFC'
      end
      item
        Caption = 'Empresa'
      end
      item
        Caption = 'Departamento'
      end
      item
        Caption = 'Localidad'
      end
      item
        Caption = 'Proyecto'
      end
      item
        Caption = 'Cargo'
      end>
    HideSelection = False
    LargeImages = connection.Imagenes32
    MultiSelect = True
    GroupHeaderImages = connection.Imagenes16
    GroupView = True
    ReadOnly = True
    RowSelect = True
    SmallImages = connection.Imagenes16
    TabOrder = 1
    OnChange = lvRecetasChange
    OnDblClick = lvRecetasDblClick
    OnKeyDown = lvRecetasKeyDown
  end
  object pnlInferior: TPanel
    Left = 0
    Top = 352
    Width = 896
    Height = 41
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 3
    object btnAbrir: TAdvGlowButton
      Left = 689
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = ' &Abrir'
      ImageIndex = 2
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnAbrirClick
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
      Enabled = False
    end
    object btnCancelar: TAdvGlowButton
      Left = 789
      Top = 5
      Width = 100
      Height = 31
      Align = alRight
      Caption = ' &Cerrar'
      ImageIndex = 3
      Images = connection.IconosBarra
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnCancelarClick
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
    object pnlBuscar: TPanel
      Left = 7
      Top = 5
      Width = 585
      Height = 31
      Align = alClient
      BevelOuter = bvNone
      Caption = '|'
      Padding.Top = 3
      Padding.Bottom = 3
      TabOrder = 2
      object JvLabel2: TJvLabel
        Left = 0
        Top = 3
        Width = 49
        Height = 25
        Align = alLeft
        AutoSize = False
        Caption = 'Buscar:'
        Transparent = True
        HotTrack = False
        ExplicitTop = 0
      end
      object eBuscar: TEdit
        Left = 49
        Top = 3
        Width = 481
        Height = 25
        Align = alClient
        TabOrder = 0
        OnKeyDown = eBuscarKeyDown
        ExplicitHeight = 21
      end
      object Panel4: TPanel
        Left = 530
        Top = 3
        Width = 55
        Height = 25
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnAbajo: TAdvGlowButton
          Left = 9
          Top = 0
          Width = 23
          Height = 25
          Align = alRight
          ImageIndex = 29
          Images = connection.Imagenes16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btnAbajoClick
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
        object btnArriba: TAdvGlowButton
          Left = 32
          Top = 0
          Width = 23
          Height = 25
          Align = alRight
          ImageIndex = 28
          Images = connection.Imagenes16
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = btnArribaClick
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
    object Panel3: TPanel
      Left = 592
      Top = 5
      Width = 97
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 41
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 680
      Top = 1
      Width = 215
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object JvLabel1: TJvLabel
        Left = 8
        Top = 14
        Width = 63
        Height = 13
        Caption = 'Visualizaci'#243'n:'
        Transparent = True
        HotTrack = False
      end
      object cbVista: TComboBox
        Left = 79
        Top = 8
        Width = 122
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Iconos'
        OnChange = cbVistaChange
        Items.Strings = (
          'Iconos'
          'Lista'
          'Reporte'
          'Iconos peque'#241'os')
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 679
      Height = 39
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object JvLabel3: TJvLabel
        Left = 6
        Top = 11
        Width = 58
        Height = 13
        Caption = 'Seleccionar:'
        Transparent = True
        HotTrack = False
      end
      object btnProceder: TAdvGlowButton
        Left = 351
        Top = 3
        Width = 100
        Height = 31
        Caption = '&Proceder'
        ImageIndex = 6
        Images = connection.IconosBarra
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        TabStop = True
        OnClick = btnProcederClick
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
      object Buscar: TComboBox
        Left = 68
        Top = 8
        Width = 277
        Height = 21
        TabOrder = 0
        OnKeyDown = BuscarKeyDown
      end
      object btnGrupos: TAdvGlowButton
        Left = 457
        Top = 3
        Width = 100
        Height = 31
        Hint = 'Seleccionar un grupo completo de personas'
        Caption = '&Grupos'
        ImageIndex = 7
        Images = connection.ImageList1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        PopupMenu = pmGrupos
        TabOrder = 2
        OnClick = btnGruposClick
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
  object tsTipo: TTabSet
    Left = 0
    Top = 41
    Width = 896
    Height = 21
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Tabs.Strings = (
      'Todos'
      'Nunca Contratados'
      'Contratados'
      'Bajas')
    TabIndex = 0
    TabPosition = tpTop
    OnChange = tsTipoChange
  end
  object dsMenu: TDataSource
    Left = 264
    Top = 224
  end
  object cdGrupo: TZReadOnlyQuery
    Params = <>
    Left = 440
    Top = 200
  end
  object pmGrupos: TPopupMenu
    Left = 568
    Top = 152
    object Eduardo1: TMenuItem
      Caption = 'Todos'
      Checked = True
      RadioItem = True
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
end
