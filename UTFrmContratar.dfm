object FrmContratar: TFrmContratar
  Left = 0
  Top = 0
  Caption = 'FrmContratar'
  ClientHeight = 541
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 497
    Width = 637
    Height = 44
    Align = alBottom
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 3
    object btnAceptar: TAdvGlowButton
      Left = 430
      Top = 5
      Width = 100
      Height = 34
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
    object btnCancelar: TAdvGlowButton
      Left = 530
      Top = 5
      Width = 100
      Height = 34
      Align = alRight
      Caption = '&Cancelar'
      ImageIndex = 4
      Images = connection.IconosBarra
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
  end
  object gbContratacion: TGroupBox
    Left = 0
    Top = 123
    Width = 637
    Height = 236
    Align = alBottom
    Caption = 'Contrataci'#243'n'
    TabOrder = 1
    object JvLabel4: TJvLabel
      Left = 84
      Top = 23
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel5: TJvLabel
      Left = 56
      Top = 45
      Width = 73
      Height = 13
      Caption = 'Departamento:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel6: TJvLabel
      Left = 81
      Top = 122
      Width = 48
      Height = 13
      Caption = 'Localidad:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel7: TJvLabel
      Left = 82
      Top = 144
      Width = 47
      Height = 13
      Caption = 'Proyecto:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel15: TJvLabel
      Left = 92
      Top = 166
      Width = 37
      Height = 13
      Caption = 'Puesto:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel16: TJvLabel
      Left = 31
      Top = 100
      Width = 98
      Height = 13
      Caption = 'Fecha Contrataci'#243'n:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel17: TJvLabel
      Left = 247
      Top = 100
      Width = 73
      Height = 13
      Caption = 'Fecha Ingreso:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel18: TJvLabel
      Left = 64
      Top = 188
      Width = 65
      Height = 13
      Caption = 'Salario diario:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel19: TJvLabel
      Left = 280
      Top = 187
      Width = 85
      Height = 13
      Caption = 'Salario integrado:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel20: TJvLabel
      Left = 19
      Top = 67
      Width = 110
      Height = 13
      Caption = 'Asignar plaza vacante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrack = False
    end
    object IdDepartamento: TDBLookupComboBox
      Left = 137
      Top = 42
      Width = 281
      Height = 21
      DataField = 'IdDepartamento'
      DataSource = dsPersonalIMSS
      KeyField = 'IdDepartamento'
      ListField = 'TituloDepartamento'
      ListSource = dsDepartamento
      TabOrder = 1
    end
    object IdLocalidad: TDBLookupComboBox
      Left = 137
      Top = 119
      Width = 281
      Height = 21
      DataField = 'IdLocalidad'
      DataSource = dsPersonalIMSS
      KeyField = 'IdLocalidad'
      ListField = 'NombreLocalidad'
      ListSource = dsLocalidad
      TabOrder = 4
    end
    object IdProyecto: TDBLookupComboBox
      Left = 137
      Top = 141
      Width = 281
      Height = 21
      DataField = 'IdProyecto'
      DataSource = dsPersonalIMSS
      KeyField = 'IdProyecto'
      ListField = 'TituloProyecto'
      ListSource = dsProyecto
      TabOrder = 6
    end
    object cbIdOrganizacion: TComboBox
      Left = 137
      Top = 20
      Width = 281
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbIdOrganizacionChange
    end
    object IdCargo: TDBLookupComboBox
      Left = 137
      Top = 163
      Width = 281
      Height = 21
      DataField = 'IdCargo'
      DataSource = dsPersonalIMSS
      KeyField = 'IdCargo'
      ListField = 'TituloCargo'
      ListSource = dsCargo
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 25
      Top = 212
      Width = 125
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = '?Retenci'#243'n Sindical'#191
      DataField = 'Sindicato'
      DataSource = dsPersonalIMSS
      ParentBiDiMode = False
      TabOrder = 5
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
    object IdPlazaDetalle: TcxLookupComboBox
      Left = 137
      Top = 64
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'IdPlazaDetalle'
      Properties.ListColumns = <
        item
          Caption = 'Solicitud Plazas'
          Width = 120
          FieldName = 'CodigoPlaza'
        end
        item
          Caption = 'Puesto'
          Width = 120
          FieldName = 'TituloCargo'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsPlazaDetalle
      TabOrder = 2
      Width = 489
    end
    object SalarioDiario: TcxDBCalcEdit
      Left = 137
      Top = 185
      TabOrder = 7
      Width = 121
    end
    object SalarioIntegrado: TcxDBCalcEdit
      Left = 371
      Top = 185
      TabOrder = 8
      Width = 121
    end
  end
  object gbDomicilio: TGroupBox
    Left = 0
    Top = 359
    Width = 637
    Height = 138
    Align = alBottom
    Caption = 'Domicilio'
    TabOrder = 2
    object JvLabel11: TJvLabel
      Left = 313
      Top = 68
      Width = 21
      Height = 13
      Caption = 'C.P.'
      Transparent = True
      HotTrack = False
    end
    object JvLabel9: TJvLabel
      Left = 317
      Top = 46
      Width = 17
      Height = 13
      Caption = 'No.'
      Transparent = True
      HotTrack = False
    end
    object JvLabel8: TJvLabel
      Left = 53
      Top = 46
      Width = 27
      Height = 13
      Caption = 'Calle:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel10: TJvLabel
      Left = 57
      Top = 68
      Width = 23
      Height = 13
      Caption = 'Col.:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel14: TJvLabel
      Left = 57
      Top = 90
      Width = 23
      Height = 13
      Caption = 'Pais:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel12: TJvLabel
      Left = 300
      Top = 92
      Width = 37
      Height = 13
      Caption = 'Estado:'
      Transparent = True
      HotTrack = False
    end
    object JvLabel13: TJvLabel
      Left = 43
      Top = 112
      Width = 37
      Height = 13
      Caption = 'Ciudad:'
      Transparent = True
      HotTrack = False
    end
    object Calle: TDBEdit
      Left = 84
      Top = 43
      Width = 200
      Height = 21
      DataField = 'Calle'
      DataSource = dsPersonalIMSS
      Enabled = False
      TabOrder = 1
    end
    object CP: TDBEdit
      Left = 341
      Top = 65
      Width = 54
      Height = 21
      DataField = 'CP'
      DataSource = dsPersonalIMSS
      Enabled = False
      TabOrder = 4
    end
    object Numero: TDBEdit
      Left = 341
      Top = 43
      Width = 54
      Height = 21
      DataField = 'Numero'
      DataSource = dsPersonalIMSS
      Enabled = False
      TabOrder = 2
    end
    object Colonia: TDBEdit
      Left = 84
      Top = 65
      Width = 200
      Height = 21
      DataField = 'Colonia'
      DataSource = dsPersonalIMSS
      Enabled = False
      TabOrder = 3
    end
    object cbPais: TComboBox
      Left = 84
      Top = 87
      Width = 200
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 5
    end
    object cbEstado: TComboBox
      Left = 341
      Top = 87
      Width = 200
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 6
    end
    object IdCiudad: TDBLookupComboBox
      Left = 84
      Top = 109
      Width = 200
      Height = 21
      DataField = 'IdCiudad'
      DataSource = dsPersonalIMSS
      Enabled = False
      KeyField = 'IdCiudad'
      ListField = 'TituloCiudad'
      TabOrder = 7
    end
    object cbDomicilio: TCheckBox
      Left = 16
      Top = 20
      Width = 129
      Height = 17
      Caption = 'Usar Domiclio original'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbDomicilioClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 123
    Align = alClient
    TabOrder = 0
    object NombreCompleto: TDBText
      Left = 119
      Top = 11
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
    object JvLabel1: TJvLabel
      Left = 119
      Top = 45
      Width = 67
      Height = 18
      Caption = 'No. IMSS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrack = False
    end
    object NumeroSeguroSocial: TDBText
      Left = 191
      Top = 44
      Width = 164
      Height = 19
      AutoSize = True
      DataField = 'NumeroSeguroSocial'
      DataSource = dsPersonal
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CURP: TDBText
      Left = 191
      Top = 67
      Width = 48
      Height = 19
      AutoSize = True
      DataField = 'CURP'
      DataSource = dsPersonal
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLabel2: TJvLabel
      Left = 125
      Top = 68
      Width = 61
      Height = 18
      Caption = 'C.U.R.P.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrack = False
    end
    object JvLabel3: TJvLabel
      Left = 140
      Top = 93
      Width = 46
      Height = 18
      Caption = 'R.F.C.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrack = False
    end
    object RFC: TDBText
      Left = 191
      Top = 92
      Width = 35
      Height = 19
      AutoSize = True
      DataField = 'RFC'
      DataSource = dsPersonal
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Century Schoolbook'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object AdvPicture1: TImage
      Left = 8
      Top = 12
      Width = 105
      Height = 105
    end
  end
  object pnlEntregaPase: TPanel
    Left = 156
    Top = 335
    Width = 445
    Height = 115
    TabOrder = 4
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
      Width = 443
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 6
      Padding.Top = 4
      Padding.Right = 6
      Padding.Bottom = 4
      TabOrder = 0
      object AdvGlowButton4: TAdvGlowButton
        Left = 337
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
        Left = 237
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
      Left = 158
      Top = 35
      TabOrder = 1
      Width = 100
    end
  end
  object dsPersonal: TDataSource
    Left = 392
    Top = 80
  end
  object cdPersonalIMSS: TZQuery
    AfterPost = cdPersonalIMSSAfterPost
    Params = <>
    Left = 472
    Top = 16
  end
  object dsPersonalIMSS: TDataSource
    DataSet = cdPersonalIMSS
    Left = 560
    Top = 16
  end
  object cdOrganizacion: TZReadOnlyQuery
    Params = <>
    Left = 560
    Top = 256
  end
  object dsOrganizacion: TDataSource
    DataSet = cdOrganizacion
    Left = 480
    Top = 256
  end
  object cdDepartamento: TZReadOnlyQuery
    AfterOpen = cdDepartamentoAfterOpen
    Params = <>
    MasterFields = 'IdOrganizacion'
    MasterSource = dsOrganizacion
    LinkedFields = 'IdOrganizacion'
    Left = 40
    Top = 16
  end
  object dsDepartamento: TDataSource
    DataSet = cdDepartamento
    Left = 40
    Top = 64
  end
  object cdLocalidad: TZReadOnlyQuery
    Params = <>
    MasterFields = 'IdOrganizacion'
    MasterSource = dsOrganizacion
    LinkedFields = 'IdOrganizacion'
    Left = 320
    Top = 360
  end
  object dsLocalidad: TDataSource
    DataSet = cdLocalidad
    Left = 240
    Top = 360
  end
  object cdProyecto: TZReadOnlyQuery
    Params = <>
    Left = 400
    Top = 16
  end
  object dsProyecto: TDataSource
    DataSet = cdProyecto
    Left = 264
    Top = 80
  end
  object cdCargo: TZReadOnlyQuery
    Params = <>
    Left = 560
    Top = 312
  end
  object dsCargo: TDataSource
    DataSet = cdCargo
    Left = 480
    Top = 312
  end
  object SaveDialog1: TSaveDialog
    Left = 512
    Top = 88
  end
  object cdPlazaDetalle: TZReadOnlyQuery
    Params = <>
    MasterFields = 'IdDepartamento'
    MasterSource = dsDepartamento
    LinkedFields = 'IdDepartamento'
    Left = 480
    Top = 160
  end
  object dsPlazaDetalle: TDataSource
    DataSet = cdPlazaDetalle
    Left = 560
    Top = 160
  end
  object cdPlazaAsignacion: TZQuery
    Params = <>
    Left = 472
    Top = 384
  end
end
