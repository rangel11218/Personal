object FrmPlazaDetalle: TFrmPlazaDetalle
  Left = 0
  Top = 0
  Caption = 'Consulta detalle de plazas ocupadas'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 49
    Width = 635
    Height = 250
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 299
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPlazasAsignadas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      object ColTituloCargo: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'TituloCargo'
        Visible = False
        GroupIndex = 0
      end
      object ColNombreCompleto: TcxGridDBColumn
        Caption = 'Empleado'
        DataBinding.FieldName = 'NombreCompleto'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Padding.Bottom = 2
    TabOrder = 1
    object rgVerPlazas: TRadioGroup
      Left = 0
      Top = 0
      Width = 345
      Height = 47
      Align = alLeft
      Caption = #191'Qu'#233' plazas desea ver?'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Ocupadas'
        'Vacantes')
      TabOrder = 0
      OnClick = rgVerPlazasClick
      ExplicitHeight = 39
    end
    object Panel2: TPanel
      Left = 345
      Top = 0
      Width = 290
      Height = 47
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 224
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
  object cdPlazasAsignadas: TZReadOnlyQuery
    Params = <>
    Left = 312
    Top = 152
  end
  object dsPlazasAsignadas: TDataSource
    DataSet = cdPlazasAsignadas
    Left = 464
    Top = 136
  end
end
