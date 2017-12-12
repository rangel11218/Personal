object FrmAsignarPlazaVacante: TFrmAsignarPlazaVacante
  Left = 0
  Top = 0
  Caption = 'Asignar plaza vacante, Solicitud:'
  ClientHeight = 382
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 341
    Width = 737
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 737
    Height = 341
    Align = alClient
    TabOrder = 1
    object tvDatos: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsProceso
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object ColTituloCargo: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'TituloCargo'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tvDatos
    end
  end
  object dsPlazaDetalle: TDataSource
    Left = 392
    Top = 192
  end
  object cdPlazaAsignacion: TZQuery
    Params = <>
    Left = 320
    Top = 120
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 320
    Top = 272
  end
  object dsPlazaAsignacion: TDataSource
    DataSet = cdPlazaAsignacion
    Left = 176
    Top = 104
  end
  object cdPlazaAsignacionPendientes: TZReadOnlyQuery
    Params = <>
    Left = 160
    Top = 200
  end
  object cdProceso: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 88
  end
  object dsProceso: TDataSource
    DataSet = cdProceso
    Left = 576
    Top = 160
  end
end
