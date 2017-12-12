program prPersonal;

uses
  Vcl.Forms,
  Personal in 'Personal.pas' {FrmMain},
  UInteliDialog in 'Comunes\UInteliDialog.pas' {InteliDialog},
  URegistro in 'Comunes\URegistro.pas',
  frm_connection in 'frm_connection.pas' {connection: TDataModule},
  frm_acceso in 'frm_acceso.pas' {frmacceso},
  frm_AltaServidor in 'frm_AltaServidor.pas' {frmAltaServidor},
  UTFrmPersonal in 'UTFrmPersonal.pas' {FrmPersonal},
  UTFrmTomarFoto in 'UTFrmTomarFoto.pas' {FrmTomarFoto},
  VFrames in 'VFrames.pas',
  VSample in 'VSample.pas',
  DelphiZXIngQRCode in 'DelphiZXIngQRCode.pas',
  UExcelConst in 'UExcelConst.pas',
  UTFrmBuscarPersonal in 'UTFrmBuscarPersonal.pas' {FrmBuscarPersonal},
  UTFrmContratar in 'UTFrmContratar.pas' {FrmContratar},
  UTFrmDocumentosPersonal in 'UTFrmDocumentosPersonal.pas' {FrmDocumentosPersonal},
  UTFrmReporteDatos in 'UTFrmReporteDatos.pas' {FrmReporteDatos},
  UTFrmCartaConf in 'UTFrmCartaConf.pas' {FrmCartaConf},
  UTFrmCartaCompromiso in 'UTFrmCartaCompromiso.pas' {FrmCartaCompromiso},
  UTFrmConsultaVacaciones in 'UTFrmConsultaVacaciones.pas' {FrmConsultaVacaciones},
  UTFrmPermisoAusencia in 'UTFrmPermisoAusencia.pas' {FrmPermisoAusencia},
  UTFrmListaPermisos in 'UTFrmListaPermisos.pas' {FrmListaPermisos},
  UTFrmAbrirPersonal in 'UTFrmAbrirPersonal.pas' {FrmAbrirPersonal},
  Borrar in 'Borrar.pas' {Form1},
  UTFrmMostrarPersonal in 'UTFrmMostrarPersonal.pas' {FrmMostrarPersonal},
  UTFrmConsultaMovimientos in 'UTFrmConsultaMovimientos.pas' {FrmConsultaMovimientos},
  UTFrmHistorialContratacion in 'UTFrmHistorialContratacion.pas' {FrmHistorialContratacion},
  UTFrmMovimientosExcel in 'UTFrmMovimientosExcel.pas' {FrmMovimientosExcel},
  UTFrmCartaConfidencial in 'UTFrmCartaConfidencial.pas' {FrmCartaConfidencial},
  UTFrmDeptos in 'UTFrmDeptos.pas' {FrmDeptos},
  UTFrmAsignarPlazaVacante in 'UTFrmAsignarPlazaVacante.pas' {FrmAsignarPlazaVacante},
  UTFrmPlaza in 'UTFrmPlaza.pas' {FrmPlaza},
  UTFrmPlazaDetalle in 'UTFrmPlazaDetalle.pas' {FrmPlazaDetalle},
  UTFrmCompetencias in 'UTFrmCompetencias.pas' {FrmCompetencias},
  UTFrmEscolaridad in 'UTFrmEscolaridad.pas' {FrmEscolaridad},
  UTFrmSoftware in 'UTFrmSoftware.pas' {FrmSoftware},
  UTFrmRecursos in 'UTFrmRecursos.pas' {FrmRecursos},
  UTFrmEstadoPendientes in 'UTFrmEstadoPendientes.pas' {FrmEstadoPendientes},
  UTFrmCorreo in 'UTFrmCorreo.pas' {FrmCorreo},
  UTFrmCatalogoCorreos in 'UTFrmCatalogoCorreos.pas' {FrmCatalogoCorreos},
  UTFrmCatalogoNominas in 'UTFrmCatalogoNominas.pas' {FrmCatalogoNominas},
  UCalcularNomina in 'UCalcularNomina.pas',
  UTFrmAbrirNomina in 'UTFrmAbrirNomina.pas' {FrmAbrirNomina},
  UTFrmSeleccionarPersonal in 'UTFrmSeleccionarPersonal.pas' {FrmSeleccionarPersonal},
  UTFrmListaRaya in 'UTFrmListaRaya.pas' {FrmListaRaya},
  UTFrmRecibosNomina in 'UTFrmRecibosNomina.pas' {FrmRecibosNomina},
  UTFrmInasistencias in 'UTFrmInasistencias.pas' {FrmInasistencias},
  UTFrmProgramaVacaciones in 'UTFrmProgramaVacaciones.pas' {FrmProgramaVacaciones},
  UTFrmPagoVacaciones in 'UTFrmPagoVacaciones.pas' {FrmPagoVacaciones},
  UTFrmCiudad in 'UTFrmCiudad.pas' {FrmCiudad},
  UTFrmEstado in 'UTFrmEstado.pas' {FrmEstado},
  UTFrmPais in 'UTFrmPais.pas' {FrmPais},
  UTFrmDepartamento in 'UTFrmDepartamento.pas' {FrmDepartamento},
  UTFrmEmpresa in 'UTFrmEmpresa.pas' {FrmEmpresa},
  UTFrmLocalidad in 'UTFrmLocalidad.pas' {FrmLocalidad},
  UTFrmBanco in 'UTFrmBanco.pas' {FrmBanco},
  UTFrmCargo in 'UTFrmCargo.pas' {FrmCargo},
  UTFrmProyecto in 'UTFrmProyecto.pas' {FrmProyecto},
  UTFrmTablaIMSS in 'UTFrmTablaIMSS.pas' {FrmTablaIMSS},
  UTFrmTablaISPT in 'UTFrmTablaISPT.pas' {FrmTablaISPT},
  UTFrmSubsidioTablaISPT in 'UTFrmSubsidioTablaISPT.pas' {FrmSubsidioTablaISPT},
  UTFrmVacaciones in 'UTFrmVacaciones.pas' {FrmVacaciones},
  UTFrmPrestaciones in 'UTFrmPrestaciones.pas' {FrmPrestaciones},
  UTFrmTipoInasistencia in 'UTFrmTipoInasistencia.pas' {FrmTipoInasistencia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(Tfrmacceso, frmacceso);
  Application.CreateForm(TInteliDialog, InteliDialog);
  Application.CreateForm(Tconnection, connection);
  Application.Run;
end.
