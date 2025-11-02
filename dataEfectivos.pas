unit dataEfectivos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, VirtualTable,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.StorageBin, MemDS;

type
  Tdata_efectivo = class(TDataModule)
    tbEnEfectCUC: TFDTable;
    tbEnMonCUC: TFDTable;
    tbEnEfectCUP: TFDTable;
    DSEnEfectCUC: TDataSource;
    DSEnMonCUC: TDataSource;
    DSEnEfectMN: TDataSource;
    tbDesgloseUSD_BilletesC: TFDTable;
    tbDesgloseUSD_MonedaC: TFDTable;
    DSDesgloseUSD_BilletesC: TDataSource;
    DSDesgloseUSD_MonedaC: TDataSource;
    DesgloseEUR_BilletesC: TFDTable;
    DesgloseEUR_MonedaC: TFDTable;
    DSDesgloseEUR_BilletesC: TDataSource;
    DSDesgloseEUR_MonedaC: TDataSource;
    DesgloseComercioDigital: TFDTable;
    DSDesgloseComercioDigital: TDataSource;

    // Cuentas
    Cuentas: TFDQuery;

    // Enlaces y operaciones
  tbLink: TFDMemTable;

    tbOperacion: TFDQuery;
    QInsert: TFDQuery;

    // Pagos REST
    PaymentCreate: TRESTRequest;
    paymentGet: TRESTRequest;
    PaymentResponse_Data: TFDMemTable;
    tbEnEfectCUCid_enlace: TLargeintField;
    tbEnEfectCUCFecha: TSQLTimeStampField;
    tbEnEfectCUCIntegerField100: TIntegerField;
    tbEnEfectCUCSubTotal100: TIntegerField;
    tbEnEfectCUCIntegerField300: TIntegerField;
    tbEnEfectCUCSubTotal300: TIntegerField;
    tbEnEfectCUCIntegerField500: TIntegerField;
    tbEnEfectCUCSubTotal500: TIntegerField;
    tbEnEfectCUCIntegerField1000: TIntegerField;
    tbEnEfectCUCSubTotal1000: TIntegerField;
    tbEnEfectCUCIntegerField2000: TIntegerField;
    tbEnEfectCUCSubTotal2000: TIntegerField;
    tbEnEfectCUCIntegerField5000: TIntegerField;
    tbEnEfectCUCSubTotal5000: TIntegerField;
    tbEnEfectCUCIntegerField10000: TIntegerField;
    tbEnEfectCUCSubTotal10000: TIntegerField;
    tbEnEfectCUCTotal: TIntegerField;
    tbEnMonCUCid_enlace: TLargeintField;
    tbEnMonCUCFecha: TSQLTimeStampField;
    tbEnMonCUCIntegerField005: TIntegerField;
    tbEnMonCUCSubTota005: TBCDField;
    tbEnMonCUCIntegerField010: TIntegerField;
    tbEnMonCUCSubTota010: TBCDField;
    tbEnMonCUCIntegerField025: TIntegerField;
    tbEnMonCUCSubTota025: TBCDField;
    tbEnMonCUCIntegerField050: TIntegerField;
    tbEnMonCUCSubTota050: TBCDField;
    tbEnMonCUCIntegerField100: TIntegerField;
    tbEnMonCUCSubTota100: TIntegerField;
    tbEnMonCUCTotal: TFMTBCDField;
    tbEnEfectCUPid_enlace: TLargeintField;
    tbEnEfectCUPid_operacion: TStringField;
    tbEnEfectCUPFecha: TSQLTimeStampField;
    tbEnEfectCUPid_row: TLargeintField;
    tbEnEfectCUPIntegerField1cup: TIntegerField;
    tbEnEfectCUPSubTotal1cup: TIntegerField;
    tbEnEfectCUPIntegerField3cup: TIntegerField;
    tbEnEfectCUPSubTotal3cup: TIntegerField;
    tbEnEfectCUPIntegerField5cup: TIntegerField;
    tbEnEfectCUPSubTotal5cup: TIntegerField;
    tbEnEfectCUPIntegerField10cup: TIntegerField;
    tbEnEfectCUPSubTotal10cup: TIntegerField;
    tbEnEfectCUPIntegerField20cup: TIntegerField;
    tbEnEfectCUPSubTotal20cup: TIntegerField;
    tbEnEfectCUPIntegerField50cup: TIntegerField;
    tbEnEfectCUPSubTotal50cup: TIntegerField;
    tbEnEfectCUPIntegerField100cup: TIntegerField;
    tbEnEfectCUPSubTotal100cup: TIntegerField;
    tbEnEfectCUPIntegerField200cup: TIntegerField;
    tbEnEfectCUPSubTotal200cup: TIntegerField;
    tbEnEfectCUPIntegerField500cup: TIntegerField;
    tbEnEfectCUPSubTotal500cup: TIntegerField;
    tbEnEfectCUPIntegerField1000cup: TIntegerField;
    tbEnEfectCUPSubTotal1000cup: TIntegerField;
    tbEnEfectCUPTotal: TIntegerField;
    tbDesgloseUSD_BilletesCid_enlace: TLargeintField;
    tbDesgloseUSD_BilletesCFecha: TSQLTimeStampField;
    tbDesgloseUSD_BilletesCIntegerField100: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal100: TIntegerField;
    tbDesgloseUSD_BilletesCIntegerField200: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal200: TIntegerField;
    tbDesgloseUSD_BilletesCIntegerField500: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal500: TIntegerField;
    tbDesgloseUSD_BilletesCIntegerField1000: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal1000: TIntegerField;
    tbDesgloseUSD_BilletesCIntegerField2000: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal2000: TIntegerField;
    tbDesgloseUSD_BilletesCIntegerField5000: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal5000: TIntegerField;
    tbDesgloseUSD_BilletesCIntegerField10000: TIntegerField;
    tbDesgloseUSD_BilletesCSubTotal10000: TIntegerField;
    tbDesgloseUSD_BilletesCTotal: TIntegerField;
    tbDesgloseUSD_MonedaCid_enlace: TLargeintField;
    tbDesgloseUSD_MonedaCFecha: TSQLTimeStampField;
    tbDesgloseUSD_MonedaCIntegerField001: TIntegerField;
    tbDesgloseUSD_MonedaCSubTota001: TBCDField;
    tbDesgloseUSD_MonedaCIntegerField005: TIntegerField;
    tbDesgloseUSD_MonedaCSubTota005: TBCDField;
    tbDesgloseUSD_MonedaCIntegerField010: TIntegerField;
    tbDesgloseUSD_MonedaCSubTota010: TBCDField;
    tbDesgloseUSD_MonedaCIntegerField025: TIntegerField;
    tbDesgloseUSD_MonedaCSubTota025: TBCDField;
    tbDesgloseUSD_MonedaCIntegerField050: TIntegerField;
    tbDesgloseUSD_MonedaCSubTota050: TBCDField;
    tbDesgloseUSD_MonedaCIntegerField100: TIntegerField;
    tbDesgloseUSD_MonedaCSubTota100: TIntegerField;
    tbDesgloseUSD_MonedaCTotal: TFMTBCDField;
    DesgloseComercioDigitalid_enlace: TLargeintField;
    DesgloseComercioDigitalFecha: TSQLTimeStampField;
    DesgloseComercioDigitalCliente: TStringField;
    DesgloseComercioDigitalNoTelefono: TStringField;
    DesgloseComercioDigitalPlataforma: TStringField;
    DesgloseComercioDigitalSucursalBancaria: TStringField;
    DesgloseComercioDigitalMoneda: TStringField;
    DesgloseComercioDigitalNoTransaccion: TStringField;
    DesgloseComercioDigitalCredito: TCurrencyField;
    CuentasID: TIntegerField;
    CuentasCuentaBancaria: TWideStringField;
    CuentasMoneda: TWideStringField;
    DesgloseEUR_BilletesCid_enlace: TLargeintField;
    DesgloseEUR_BilletesCFecha: TSQLTimeStampField;
    DesgloseEUR_BilletesCIntegerField500: TIntegerField;
    DesgloseEUR_BilletesCSubTotal500: TIntegerField;
    DesgloseEUR_BilletesCIntegerField1000: TIntegerField;
    DesgloseEUR_BilletesCSubTotal1000: TIntegerField;
    DesgloseEUR_BilletesCIntegerField2000: TIntegerField;
    DesgloseEUR_BilletesCSubTotal2000: TIntegerField;
    DesgloseEUR_BilletesCIntegerField5000: TIntegerField;
    DesgloseEUR_BilletesCSubTotal5000: TIntegerField;
    DesgloseEUR_BilletesCIntegerField10000: TIntegerField;
    DesgloseEUR_BilletesCSubTotal10000: TIntegerField;
    DesgloseEUR_BilletesCIntegerField20000: TIntegerField;
    DesgloseEUR_BilletesCSubTotal20000: TIntegerField;
    DesgloseEUR_BilletesCIntegerField50000: TIntegerField;
    DesgloseEUR_BilletesCSubTotal50000: TIntegerField;
    DesgloseEUR_BilletesCTotal: TIntegerField;
    DesgloseEUR_MonedaCid_enlace: TLargeintField;
    DesgloseEUR_MonedaCFecha: TSQLTimeStampField;
    DesgloseEUR_MonedaCCurrencyField001: TCurrencyField;
    DesgloseEUR_MonedaCSubTota001: TFMTBCDField;
    DesgloseEUR_MonedaCCurrencyField005: TCurrencyField;
    DesgloseEUR_MonedaCSubTota005: TFMTBCDField;
    DesgloseEUR_MonedaCCurrencyField010: TCurrencyField;
    DesgloseEUR_MonedaCSubTota010: TFMTBCDField;
    DesgloseEUR_MonedaCCurrencyField020: TCurrencyField;
    DesgloseEUR_MonedaCSubTota020: TFMTBCDField;
    DesgloseEUR_MonedaCCurrencyField050: TCurrencyField;
    DesgloseEUR_MonedaCSubTota050: TFMTBCDField;
    DesgloseEUR_MonedaCCurrencyField100: TCurrencyField;
    DesgloseEUR_MonedaCSubTota100: TCurrencyField;
    DesgloseEUR_MonedaCCurrencyField200: TCurrencyField;
    DesgloseEUR_MonedaCSubTota200: TCurrencyField;
    DesgloseEUR_MonedaCTotal: TFMTBCDField;
    FDMemTable1: TFDMemTable;
    tbLinkrel: TStringField;
    tbLinkmethod: TStringField;
    tbLinkhref: TStringField;
    ResponseData: TFDMemTable;
    ResponseDatatransaction_uuid: TWideStringField;
    ResponseDatacurrency: TWideStringField;
    ResponseDatacreated_at: TDateTimeField;
    ResponseDataupdated_at: TDateTimeField;
    ResponseDatastatus_code: TFloatField;
    ResponseDatastatus_denom: TWideStringField;
    ResponseDatadescription: TWideStringField;
    ResponseDatainvoice_number: TWideStringField;
    ResponseDatamerchant_op_id: TLargeintField;
    ResponseDataterminal_id: TWideStringField;
    ResponseDataamount: TWideStringField;
    ResponseDataitems: TWideStringField;
    ResponseDatalinks: TWideStringField;
    ResponseDatacommission: TWideStringField;
    ResponseDatatransaction_signature: TWideStringField;
    // ... y así para cada campo de cada tabla

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data_efectivo: Tdata_efectivo;

implementation

uses DCaja, ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
