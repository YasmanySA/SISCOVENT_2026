program SISCOVENTv2025;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form35},
  TMSWindowsCrack in 'TMSWindowsCrack.pas',
  TipoReport in 'TipoReport.pas' {TipRport},
  Secion in 'Secion.pas' {FLogin},
  ReportTicket in 'ReportTicket.pas' {FTicket},
  RegistroUser in 'RegistroUser.pas' {Reg},
  Propina in 'Propina.pas' {FormPropina},
  permisos in 'permisos.pas' {Froles},
  Ofertas in 'Ofertas.pas' {AddOferta},
  NewPrereserva in 'NewPrereserva.pas' {FNewPreReserva},
  MensajeUsuario in 'MensajeUsuario.pas' {MensUser},
  Interfaz in 'Interfaz.pas' {Themes: TDataModule},
  InheritedConnectForm in 'InheritedConnectForm.pas',
  GSalva in 'GSalva.pas' {Salva},
  gastos in 'gastos.pas' {F_Gasto},
  funtions in 'funtions.pas',
  FCalendar in 'FCalendar.pas' {FEventos},
  Facturas in 'Facturas.pas' {Facturacion},
  EstadoCuentas in 'EstadoCuentas.pas' {fEstadoCuentas},
  EnzonaQR in 'EnzonaQR.pas' {dataEnzonaQR: TDataModule},
  DesgloseUSD in 'DesgloseUSD.pas' {F_EnEfecUSD},
  DesgloseMN in 'DesgloseMN.pas' {F_EnEfecMN},
  DesgloseEUR in 'DesgloseEUR.pas' {F_EnEfecEUR},
  DesgloseBanco in 'DesgloseBanco.pas' {DesgloseCredito},
  DataResumen in 'DataResumen.pas' {DM_Resumen: TDataModule},
  DataPromo in 'DataPromo.pas' {DM_promo: TDataModule},
  DataFacturas in 'DataFacturas.pas' {DMFacturas: TDataModule},
  DataEnzonaToken in 'DataEnzonaToken.pas' {EnzonaToken: TDataModule},
  dataEfectivos in 'dataEfectivos.pas' {data_efectivo: TDataModule},
  dataContratosEntrada in 'dataContratosEntrada.pas' {DMContratosEntrada: TDataModule},
  dataContratos in 'dataContratos.pas' {DMContratos: TDataModule},
  DataClientes in 'DataClientes.pas' {DM_Clientes: TDataModule},
  DataClasif_U in 'DataClasif_U.pas' {DM_Clasif_U: TDataModule},
  DataClasif in 'DataClasif.pas' {DM_Clasif_E},
  dataCierreEfectivo in 'dataCierreEfectivo.pas' {DMCierre: TDataModule},
  ControlPromo in 'ControlPromo.pas' {Control_Agentes},
  Contratos in 'Contratos.pas' {Fcontratos},
  ContratoFotografia in 'ContratoFotografia.pas' {Contrato},
  ConexionDM in 'ConexionDM.pas' {dataconex: TDataModule},
  ClientesDetalles in 'ClientesDetalles.pas' {DetallesClient},
  Clientes in 'Clientes.pas' {Cliente},
  ClassLogin in 'ClassLogin.pas',
  Backup in 'Backup.pas' {FBackUp},
  ArregloOperaciones in 'ArregloOperaciones.pas' {OperacionesArreglo},
  ArregloComprobantes in 'ArregloComprobantes.pas' {FArregloComp},
  Arreglo in 'Arreglo.pas' {ArregloDB},
  Alerta in 'Alerta.pas' {FAlerta},
  Ajustes in 'Ajustes.pas' {Ajuste},
  AdminPass in 'AdminPass.pas' {PassAdmin},
  Main in 'Main.pas' {MainMenus},
  ResumenVentasMensual in 'ResumenVentasMensual.pas' {ResumMensual},
  Sobres in 'Sobres.pas' {FSobres},
  dataResumenGastos in 'dataResumenGastos.pas' {DMResumenGastos: TDataModule},
  NuevaCaja in 'NuevaCaja.pas' {FormaCajaNew},
  ClassGlobal in 'ClassGlobal.pas',
  tableopen in 'tableopen.pas',
  Vcl.Themes,
  System.SysUtils,
  Vcl.Styles,
  Splash in 'Splash.pas' {FSplash},
  Servicios in 'Servicios.pas' {Clasificador},
  Cierre in 'Cierre.pas' {F_Cierre},
  html in 'html.pas',
  MensajeClave in 'MensajeClave.pas' {MensaClave},
  email in 'email.pas' {dm_mail: TDataModule},
  MainPrueba in 'MainPrueba.pas' {FMainPrueba},
  changuePass in 'changuePass.pas' {FchanguePass},
  dataEncrypt in 'dataEncrypt.pas' {DMEncrypt: TDataModule},
  pruebaLogin in 'pruebaLogin.pas' {fTestLogin},
  enzonapayment in 'enzonapayment.pas' {paymentenzona: TDataModule},
  DataSet.Serialize.Config in 'src\DataSet.Serialize.Config.pas',
  DataSet.Serialize.Consts in 'src\DataSet.Serialize.Consts.pas',
  DataSet.Serialize.Export in 'src\DataSet.Serialize.Export.pas',
  DataSet.Serialize.Import in 'src\DataSet.Serialize.Import.pas',
  DataSet.Serialize.Language in 'src\DataSet.Serialize.Language.pas',
  DataSet.Serialize in 'src\DataSet.Serialize.pas',
  DataSet.Serialize.UpdatedStatus in 'src\DataSet.Serialize.UpdatedStatus.pas',
  DataSet.Serialize.Utils in 'src\DataSet.Serialize.Utils.pas',
  rest in 'rest.pas' {DataModule1: TDataModule},
  tasaactual in 'tasaactual.pas' {Ftasa},
  notication in 'notication.pas' {data_notify: TDataModule},
  send_notify in 'send_notify.pas' {fsend_notify},
  CierreExtraciones in 'CierreExtraciones.pas' {F_CierreExtraciones},
  CierreMensualCUP in 'CierreMensualCUP.pas' {F_CierreDesglose},
  Venta in 'Venta.pas' {FormVenta},
  DCaja in 'DCaja.pas' {DMCaja: TDataModule},
  setting in 'setting.pas' {fSetting},
  dataLogin in 'dataLogin.pas' {dmLogin: TDataModule};

{$R *.res}

begin

  FSplash := TFSplash.Create(application);
  // FSplash.show;
  FSplash.Update;

  FSplash := TFSplash.Create(application);
  FSplash.dxActivityIndicator1.Active := true;
  FSplash.Show;
  Sleep(3000);

  application.Initialize;
  application.MainFormOnTaskbar := true;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TMainMenus, MainMenus);
  Application.CreateForm(Tdataconex, dataconex);
  Application.CreateForm(Tdm_mail, dm_mail);
  Application.CreateForm(TDMCaja, DMCaja);
  Application.CreateForm(TDM_Clasif_E, DM_Clasif_E);
  Application.CreateForm(TDM_Clasif_U, DM_Clasif_U);
  Application.CreateForm(TFormVenta, FormVenta);
  Application.CreateForm(TdataEnzonaQR, dataEnzonaQR);
  Application.CreateForm(TEnzonaToken, EnzonaToken);
  Application.CreateForm(Tdata_efectivo, data_efectivo);
  Application.CreateForm(TFTicket, FTicket);
  Application.CreateForm(TF_EnEfecUSD, F_EnEfecUSD);
  Application.CreateForm(TF_EnEfecMN, F_EnEfecMN);
  Application.CreateForm(TF_EnEfecEUR, F_EnEfecEUR);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TDMEncrypt, DMEncrypt);
//  Application.CreateForm(TfTestLogin, fTestLogin);
  Application.CreateForm(TFtasa, Ftasa);
  Application.CreateForm(TFchanguePass, FchanguePass);
  Application.CreateForm(TReg, Reg);
//  Application.CreateForm(TDMFacturas, DMFacturas);
  Application.CreateForm(Tdata_notify, data_notify);
//  Application.CreateForm(Tfsend_notify, fsend_notify);
  Application.CreateForm(TDataModule1, DataModule1);
//  Application.CreateForm(Tpaymentenzona, paymentenzona);
  Application.CreateForm(TfSetting, fSetting);
//  Application.CreateForm(TDesgloseCredito, DesgloseCredito);
//  Application.CreateForm(TFArregloComp, FArregloComp);
//  Application.CreateForm(TOperacionesArreglo, OperacionesArreglo);
  Application.CreateForm(TClasificador, Clasificador);
//  Application.CreateForm(TDM_Resumen, DM_Resumen);
////  Application.CreateForm(TResumMensual, ResumMensual);
//  Application.CreateForm(TDMCierre, DMCierre);
//  Application.CreateForm(TDMResumenGastos, DMResumenGastos);
//  Application.CreateForm(TF_Cierre, F_Cierre);
//  Application.CreateForm(TF_CierreExtraciones, F_CierreExtraciones);
//  Application.CreateForm(TF_CierreDesglose, F_CierreDesglose);
//  Application.CreateForm(TArregloDB, ArregloDB);
//  Application.CreateForm(TF_Gasto, F_Gasto);
  Application.CreateForm(TAjuste, Ajuste);
  Application.CreateForm(TdmLogin, dmLogin);
//   Application.CreateForm(TVerify_code, Verify_code)

  // Application.CreateForm(TFchanguePass, FchanguePass)
  while not FSplash.vCompletado do
    //
      application.ProcessMessages;

  FSplash.Hide;
  FSplash.Free;
  application.Run;

end.

