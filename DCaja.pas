unit DCaja;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  System.Win.TaskbarCore, Vcl.Taskbar, REST.Types, REST.Client,
  REST.Authenticator.Basic, Data.Bind.Components, Data.Bind.ObjectScope,
  FireDAC.Phys.Intf, FireDAC.Stan.Async, FireDAC.DApt;


type
  TDMCaja = class(TDataModule)
    DSVentasCaja: TDataSource;
    DSHistorico_Ventas: TDataSource;
    tbCaja: TFDQuery;
    tbVentasOperaciones: TFDQuery;
    DSVentasOperaciones: TDataSource;
    tbOperacionesTotal: TFDQuery;
    tbOperacionesTotalenlace_id: TLargeintField;
    tbOperacionesTotalTotalGenerales: TCurrencyField;
    tbOperacionesTotalTotalInsumos: TCurrencyField;
    tbOperacionesTotalSubtotalCUP: TCurrencyField;
    Tbdescrip: TFDQuery;
    DSClasif_Descrip: TDataSource;
    q_clearservices_usefrecuenty: TFDQuery;
    IntegerField1: TIntegerField;
    BooleanField2: TBooleanField;
    DateTimeField2: TDateTimeField;
    WideStringField2: TWideStringField;
    BooleanField3: TBooleanField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    StringField4: TStringField;
    tbVentaOperacionesFind: TFDQuery;
    DStbVentaOperacionesFind: TDataSource;
    tbServices: TFDQuery;
    tbServicesServicio: TWideStringField;
    DStbServices: TDataSource;
    qlastnumber: TFDQuery;
    qlastnumberlastnumber: TLargeintField;
    qreset_inc: TFDQuery;
    tbApis: TFDQuery;
    tbApisID: TIntegerField;
    tbApisname: TStringField;
    tbApisConsumerKey: TStringField;
    tbApisConsumerSecret: TStringField;
    tbApisscope: TStringField;
    tbApisgrant_type: TStringField;
    tbApisComercio: TStringField;
    tbApismerchant_uuid: TStringField;
    tbApisenabled: TIntegerField;
    tbApistype: TStringField;
    DSApis: TDataSource;
    tbDescripLoadServices: TFDQuery;
    UniQuery1: TFDQuery;
    WideStringField1: TWideStringField;
    tbCambioActual: TFDQuery;
    Taskbar1: TTaskbar;
    Q_insertmedidas: TFDQuery;
    Q_Plasicado: TFDQuery;
    Q_PlasticadoResumen: TFDQuery;
    DSQ_Plasicado: TDataSource;
    DSQ_PlasticadoResumen: TDataSource;
    tbInsertPrecio: TFDQuery;
    QMedidasPlasticado2: TFDQuery;
    DSMedidasPlasticado: TDataSource;
    RESTClient1: TRESTClient;
    ApiOpenBox: TRESTRequest;
    RESTResponse1: TRESTResponse;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
    tbsetting: TFDTable;
    tbsettingid: TIntegerField;
    tbsettingkey: TStringField;
    tbsettingvalue: TStringField;
    tbCambioActualid: TLargeintField;
    tbCambioActualid_fecha: TSQLTimeStampField;
    tbCambioActualUSD: TCurrencyField;
    tbCambioActualMLC: TCurrencyField;
    tbCambioActualEUR: TCurrencyField;
    tbCajaNoComp: TLargeintField;
    tbCajaNoOperacion: TStringField;
    tbCajaIDUser: TIntegerField;
    tbCajaFecha: TSQLTimeStampField;
    tbCajaHora: TSQLTimeStampField;
    tbCajaTotalVentaCUP: TCurrencyField;
    tbCajaEfectivoCUP: TCurrencyField;
    tbCajaEfectivoEUR: TCurrencyField;
    tbCajaEfectivoUSD: TCurrencyField;
    tbCajaEfectivoCUC: TCurrencyField;
    tbCajaComercioE_CUP: TCurrencyField;
    tbCajaComercioE_USD: TCurrencyField;
    tbCajaNoTarjetaCredito: TStringField;
    tbCajanameComercio: TStringField;
    tbCajaPropina: TCurrencyField;
    tbCajaCambioCUP: TCurrencyField;
    tbCajaGastosGenerales: TCurrencyField;
    tbCajaGastosInsumos: TCurrencyField;
    tbCajahistory: TBooleanField;
    tbCajaShare: TBooleanField;
    tbCajac_usd: TCurrencyField;
    tbCajac_eur: TCurrencyField;
    tbCajac_mlc: TCurrencyField;
    tbCajadate_openbox: TSQLTimeStampField;
    tbVentasOperacionesID: TLargeintField;
    tbVentasOperacionesenlace_id: TLargeintField;
    tbVentasOperacionesenlace_operacion: TStringField;
    tbVentasOperacionesFecha: TSQLTimeStampField;
    tbVentasOperacioneshora: TTimeField;
    tbVentasOperacionesServicios: TWideStringField;
    tbVentasOperacionesDescripcion: TWideStringField;
    tbVentasOperacionesPrecioCUP: TCurrencyField;
    tbVentasOperacionesCantidad: TCurrencyField;
    tbVentasOperacionesSubtotalCUP: TCurrencyField;
    tbVentasOperacionesGastosInsumos: TCurrencyField;
    tbVentasOperacionesGastosGenerales: TCurrencyField;
    tbVentasOperacionesTotalInsumos: TCurrencyField;
    tbVentasOperacionesTotalGenerales: TCurrencyField;
    Q_Plasicadoid_enlaceCaja: TLargeintField;
    Q_PlasicadoId_Operacion: TStringField;
    Q_Plasicadoid_date: TSQLTimeStampField;
    Q_PlasicadoLargo: TFMTBCDField;
    Q_PlasicadoAncho: TFMTBCDField;
    Q_PlasicadoArea: TFMTBCDField;
    Q_PlasicadoPrecio: TFMTBCDField;
    Q_PlasticadoResumenid_enlaceCaja: TLargeintField;
    Q_PlasticadoResumenId_Operacion: TStringField;
    Q_PlasticadoResumenid_date: TSQLTimeStampField;
    Q_PlasticadoResumenArea: TFMTBCDField;
    Q_PlasticadoResumenPrecio: TFMTBCDField;
    tbDescripLoadServicesid_enlace: TIntegerField;
    tbDescripLoadServicesfrequently_use: TBooleanField;
    tbDescripLoadServicesusedate: TSQLTimeStampField;
    tbDescripLoadServicesDescripcion: TWideStringField;
    tbDescripLoadServicesHabilitado: TBooleanField;
    tbDescripLoadServicesCod_Descrip: TIntegerField;
    tbDescripLoadServicesCodigoProducto: TWideStringField;
    tbDescripLoadServicescolor: TStringField;
    tbDescripLoadServicesServicio: TWideStringField;
    tbDescripLoadServicesProducto: TWideStringField;
    QMedidasPlasticado2ID: TLargeintField;
    QMedidasPlasticado2PrecioBase: TFMTBCDField;
    QMedidasPlasticado2Tipo: TStringField;
    QMedidasPlasticado2Largo: TCurrencyField;
    QMedidasPlasticado2Ancho: TCurrencyField;
    QMedidasPlasticado2unit: TIntegerField;
    QMedidasPlasticado2Preciocm2: TFMTBCDField;
    Tbdescripid_enlace: TIntegerField;
    Tbdescripfrequently_use: TBooleanField;
    Tbdescripusedate: TSQLTimeStampField;
    TbdescripDescripcion: TWideStringField;
    TbdescripHabilitado: TBooleanField;
    TbdescripCod_Descrip: TIntegerField;
    TbdescripCodigoProducto: TWideStringField;
    Tbdescripcolor: TStringField;
    TbdescripServicio: TWideStringField;
    TbdescripProducto: TWideStringField;
    tbVentaOperacionesFindID: TLargeintField;
    tbVentaOperacionesFindenlace_id: TLargeintField;
    tbVentaOperacionesFindenlace_operacion: TStringField;
    tbVentaOperacionesFindFecha: TSQLTimeStampField;
    tbVentaOperacionesFindhora: TTimeField;
    tbVentaOperacionesFindServicios: TWideStringField;
    tbVentaOperacionesFindDescripcion: TWideStringField;
    tbVentaOperacionesFindPrecioCUP: TCurrencyField;
    tbVentaOperacionesFindCantidad: TCurrencyField;
    tbVentaOperacionesFindSubtotalCUP: TCurrencyField;
    tbVentaOperacionesFindGastosInsumos: TCurrencyField;
    tbVentaOperacionesFindGastosGenerales: TCurrencyField;
    tbVentaOperacionesFindTotalInsumos: TCurrencyField;
    tbVentaOperacionesFindTotalGenerales: TCurrencyField;
    tbPreciosInsert: TFDQuery;
    tbPreciosInsertID_codigo: TFDAutoIncField;
    tbPreciosInsertid_enlace: TLargeintField;
    tbPreciosInsertPrecio: TCurrencyField;
    tbPreciosInsertCantidad: TSmallintField;
    tbPreciosInsertDetalles: TWideStringField;
    tbPreciosInsertReglaCarrito: TLargeintField;
    tbPreciosInsertPrecioRegla: TCurrencyField;
    Q_Prices_list: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    LargeintField1: TLargeintField;
    CurrencyField1: TCurrencyField;
    SmallintField1: TSmallintField;
    WideStringField6: TWideStringField;
    LargeintField2: TLargeintField;
    CurrencyField2: TCurrencyField;
    DSPrices_list: TDataSource;
    procedure ApiOpenBoxBeforeExecute(Sender: TCustomRESTRequest);
  private
    { Private declarations }
  public

  function getkeysetting(key:string):string;
    { Public declarations }
  end;

var
  DMCaja: TDMCaja;

implementation

uses ConexionDM, Venta,setting;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TDMCaja }

procedure TDMCaja.ApiOpenBoxBeforeExecute(Sender: TCustomRESTRequest);
begin
RESTClient1.BaseURL:= tbsettingvalue.Value;
end;

function TDMCaja.getkeysetting(key: string): string;
begin




end;

end.
